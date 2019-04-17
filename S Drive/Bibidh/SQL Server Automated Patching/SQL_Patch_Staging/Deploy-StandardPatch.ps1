# For remote install of the standard deploy (no need to kill sessions, etc. this would be for Dev/Test/UAT environments) 

[CmdletBinding()]
    Param
    (
        # The SQL SERVER version that is going to be patched.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        [ValidateNotNull()]
        $path,
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        $computerName
    )




# Check to see sccm has a pending reboot
try{
    $util = [wmiclass]"\\.\root\ccm\clientsdk:CCM_ClientUtilities"
    $status = $util.DetermineIfRebootPending()
    $RebootRequired =$status.RebootPending
}catch{
    write-error "WMICLASS ERROR"}

# Check to see if there's a pending reboot
$baseKey = [Microsoft.Win32.RegistryKey]::OpenRemoteBaseKey("LocalMachine",$computerName)
$key = $baseKey.OpenSubKey("Software\Microsoft\Windows\CurrentVersion\Component Based Servicing\")
$subkeys = $key.GetSubKeyNames()
$key2 = $baseKey.OpenSubKey("SYSTEM\CurrentControlSet\Control\Session Manager")
$values = $key2.GetValueNames()
$key.Close()
$key2.Close()
$baseKey.Close()
    
If ($subkeys | Where {$_ -like "Reboot%"}) { $RebootRequired = $true } 
elseif ($values| where {$_ -eq "pendingfilerenameoperations"}){$RebootRequired = $true}
elseif (($status -ne $null) -and $status.RebootPending){$RebootRequired = $true}
else {$RebootRequired = $false}


# Check to see if reboot is pending or not
# If yes, Restart before installation else install, restart, and check if the services are up
$flag =0
while ($flag -eq 0){
    # when reboot isn't required
    if(!$RebootRequired){

       # Start up the installer in the background: Silent installation
       $flag=1
       
       $installer = dir 'C:\sql patching\updates\sql2016' | ? name -Like '*sql*.exe'
       $path += "\$installer"

       
       $command = "$path /QUIET /ALLINSTANCES /IAcceptSQLServerLicenseTerms /INDICATEPROGRESS"
       $datetime=get-date -f g
       try{
              echo "*****$datetime - Patch Installation Started*****"
              $process = [WMICLASS]"\\$computerName\ROOT\CIMV2:win32_process"
              $result = $process.Create($command) 
              
              if($result.ProcessId)
              {
                  # Check to see if the installation has finshed or not
                  
                  $IsFinished = Get-CimInstance -ClassName Win32_Process -Filter "ProcessID='$($result.ProcessID)'" -ComputerName $computerName
                  while($IsFinished)
                  {
                       Start-Sleep -Seconds 2
                       $IsFinished =Get-CimInstance -ClassName Win32_Process -Filter "ProcessID='$($result.ProcessID)'" -ComputerName $computerName
                  }
       
                  echo "********Finshed Patching $computerName ---- "(get-date -f G)" ----- Restarting the server after the installation*****"

                  Restart-Computer -ComputerName $computerName -Wait -For PowerShell -Timeout 300 -Delay 2 -force
              }else
              {
                 Write-error "Error has occured" -ErrorAction Stop
              }
       }
       catch{
             Write-Error "Couldn't patch $computer with $path. Couldn't start the patch installer. Check the patch installer version you are trying to install."  -ErrorAction stop
       }
       

       # Checks to see if the required services are running. Also, pulls back the status to a database for alerting.
       
       .$PsScriptRoot\Log-ServiceAccounts.ps1 -computerName $computerName

          
    }
    # when reboot is required
    else{
        echo "There is a pending reboot for $computerName. The installation will continue after the restart... "
        Restart-Computer -ComputerName $computerName -Wait -For PowerShell -Timeout 300 -Delay 2 -force
        Echo "$computername has been restarted successfully...."
        $flag = 0
        $RebootRequired = $false
    }
}



