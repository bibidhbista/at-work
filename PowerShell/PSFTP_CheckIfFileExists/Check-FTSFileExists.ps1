#[CmdletBinding()]
#Param( 
#   [Parameter(Mandatory=$True, HelpMessage='ENTER A VALID JOB ID: ')]
#   [ValidateNotNullorEmpty()]  
#   [int] $JobId ,                                                                     
#   [Parameter(Mandatory=$True, HelpMessage='ENTER A VALID PACKAGE ID:')]
#   [ValidateNotNullorEmpty()]  
#   [int] $PackageId                                                                 
#   )
#.\psftp.exe Atg\mdocsftp@atgmsm -pw ";0Thp8W8O;C?|o6PN6C:hD,!+" -bc -batch -hostkey "ecdsa-sha2-nistp256 256 82:13:46:0a:98:d7:c1:99:10:08:2f:81:9b:ee:5b:9f"
#lcd C:\Data\Interfaces\86_GarciaLabs\Input\  cd FTS  dir   mget GARCIARE*  

import-module C:\util\sqlmaint\sqlserverpowershellcmdlet\sqlserver
$JobId = 86
$PackageId = 1  

# Connection settings
$ServerName    = 'MIDOCSQL'
$psftpPath     = "C:\Data\Interfaces\Util"
$DBName         = 'MIDOC_INTERFACE'
$JobsTable      = 'INTF_Jobs'
$JobFilesTable  = 'INTF_JobFiles'

$JobCommands   = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "EXEC Admin_JobCommands $JobId, $PackageId"
$Jobs          = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "Select JobNm, SSISPackage from $JobsTable where JobId = $JobId and PackageId =$PackageId"
$JobFiles      = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "Select FileConnValue, FTSfile, ZippedFlag,StringToMatch from $JobFilesTable where JobId = $JobId and PackageId =$PackageId and InputType =1"

$ConnectionString = $JobCommands.FTSConn
$ParentJobFolder  = $JobFiles.FileConnValue|Select -First 1
$Pos              = $ParentJobFolder.IndexOf("\Input\")
$ParentJobFolder  = $ParentJobFolder.Substring(0,$Pos)
$RemoteDir        = "FTS"
$StringToMatch    = $JobFiles.StringToMatch
$SearchCommand    = "lcd $ParentJobFolder`r`ncd $RemoteDir`r`ndir $StringToMatch"
$SearchCmdFile    = "$ParentJobFolder\SearchCmd.txt"
$SearchCommand | Out-File "$SearchCmdFile" -Encoding ascii -Force
$Connect          = "$psftpPath\psftp.exe $ConnectionString -b `"$SearchCmdFile`""
$PSFTPError       = "PSFTP Connect to remote failed."        
$Count            = 0 

# Loop vars
#$CheckEvery = 10 # in seconds
#$FileFound        = 0
$FileFoundMsg     = ""

##loop continuosly until the file is found
#while ($FileFound -ne 2){


Write-Host "Searching for file(s) matching $StringToMatch in remote directory ($RemoteDir)."
$PSFTPOut   = iex $Connect 2>&1
if($LASTEXITCODE -eq 0){
    #if found
    $PSFTPOutString =""
    $PSFTPOut | % { $PSFTPOutString += "$_ "} 
    $Count = ($PSFTPOutString -split "$StringToMatch" |Measure-Object).count -1
    if($Count > 1){
        #$FileFound=1
        #$CheckEvery = 300 
        
        $FileFoundMsg = "Matching file(s) has been found"
        exit 1
    }else{
        #loop if not found
        #$FileFound=0
        #$CheckEvery =10
        
        $FileFoundMsg = "No matching file(s) found"
        exit 0

    }
    #Write-Host "$FileFoundMsg.`r`nSleeping for $CheckEvery seconds.`r`n"
    #Start-Sleep $CheckEvery
    #cls
}else{
    $ErrorMessage = "PSFTP CONNECT to remote failed for JobID $JobId and PackageID $PackageId. DETAILS: $PSFTPOut".replace("'","''")
    Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "INSERT INTO INTF_JobLog VALUES ($JobId, $PackageID, '$ErrorMessage','Check-FTSFileExists','Failure', getdate())"
    Write-Error $PSFTPError -ErrorAction Stop
}    


#}
    