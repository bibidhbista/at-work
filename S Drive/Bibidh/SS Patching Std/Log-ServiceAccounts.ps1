 [CmdletBinding()]
    Param
    (
        # The SQL SERVER version that is going to be patched.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        [ValidateNotNull()]
        $computerName
  
    )
    
       # Check if all the agents are up: sql server services and the SQL agent... if not fire remotely
        $services = get-service -ComputerName $computerName | ? name -like '*sql*'
       
       # Start the SQL server services
       foreach ($sqlagent in $services)
       {
            try{
                Get-Service -Name $sqlagent.Name -ComputerName $computerName | Set-Service -Status Running
            }
            catch{
                $ErrorMessage = $_.Exception.Message
                $FailedItem = $_.Exception.ItemName
                Write-Error "ERROR: Starting $sqlagent `n$errormessage $faileditem" -ErrorAction SilentlyContinue
            }
        }
        
         
       # Pull back the status to a database for alerting
       # System name is computer name ////  startname is the service account name
       $serviceAccounts = Get-WmiObject win32_service -ComputerName $computerName| ? name -like '*sql*'|select name, systemname, startname, startmode, state
       Echo "Logging the status of service accounts on $computerName ...."
       
       
       #$query = ("USE [test_patching] TRUNCATE TABLE SERVICE_ACCOUNTS")
       #$ServiceAcc= Invoke-SQLCmd $query -ServerInstance "pdmsql08" -Database 'logs'

       # put the service account wmiobject in a database for alerting/logging
       foreach($sAcc in $serviceAccounts){
           $computer_name = $sAcc.systemname
           $startmode = $sAcc.startmode
           $status = $sAcc.state
           $service_name = $sAcc.name
           $service_account =$sAcc.startname
           $datetime = get-date -f G

               $query = ("USE [Logs] "+
                 "INSERT INTO service_accounts(computer_name,startmode,status,service_name,service_account,dateandtime) "+
                 "VALUES('$computer_name','$startmode','$status','$service_name','$service_account','$datetime');")
                $ServiceAcc= Invoke-SQLCmd $query -ServerInstance "pdmsql08" -Database 'Logs'
        }
        
        Echo "Succesfully logged the status of service accounts on $computerName to the service accounts table in Logs db (pdmsql08)."
        
