# Connection Settings
$Date = Get-date -Format MMddyyyy_HHmm
$StartDate = Get-Date
$HomeDir= $PSScriptRoot
$LogsDir = "$HomeDir\Logs"
$TranscriptPath ="$LogsDir\Sync-Tables_$Date.log"

$SourceServer = "C_SQLGLOBAL\C_SQLGLOBAL"
$SourceDB = "OpsData"
$DestServer ="C_DEVSQLGLOBAL\C_DEVSQLGLOBAL"
$DestDB = "DevOpsData"
$DaysToStoreLogs = 10
$ErrorActionPreference = "Stop"

# For SMTP
$EmailTo = "bibidhb@a-t-g.com"
$EmailFrom = "CoreView@a-t-g.com"
$EmailSubject = ''
$body=''

# Send-Mail
function Send-Mail{
param ($EmailSub)
        $body+= "<hr><br> See logs at $HomeDir for more details <br><br><hr>"
        Send-MailMessage -To $EmailTO -From $EmailFrom -SmtpServer smtp -Subject "$EmailSub" -BodyAsHtml $body -Attachments $TranscriptPath
        Write-host "Sent an email from $EmailFrom to $EmailTo on $(Get-Date). " -BackgroundColor DarkGreen -NoNewline
}

# Vars to hold generated BCP commands
$outCmd =''
$TruncateCmd =''
$inCmd =''
$BCPOutFileName=''
$SourceTableName =''
$SourceSchemaName=''


# List of tables to sync
$INList = "'Calls','ContactAddresses','ContactEmails','ContactMain','ContactPhones','dmAgencies','IncMsgActions','Income','IncomingMsgs_FY','InmateAliases','InmateFiles','InateInfo','InmateStgs','InmateUID','OutgoingMsgs_FY','OutMsgActions','OutMsgRecipients','OutsidePersonWorkTable','PhoneList','STGInfo','TableDailyRecIds','Visitors','Visits','Withdrawals'"

# Table Comparison
$SourceTables      = Invoke-Sqlcmd -ServerInstance $SourceServer   -Database $SourceDB     -Query "SELECT schema_name(schema_id) as SchemaName,NAME AS Name FROM SYS.TABLES T WHERE T.NAME NOT LIKE 'SYS%' AND T.NAME NOT LIKE '%EXCLUSIONLIST%' AND T.NAME NOT LIKE '%IMPORT%' AND T.NAME NOT LIKE '%DMOPTIONS%' AND T.NAME  not LIKE '\_%' ESCAPE '\' and t.name IN ($INList)  order by t.name"  
$DestinationTables = Invoke-Sqlcmd -ServerInstance $DestServer     -Database $DestDB       -Query "SELECT schema_name(schema_id) as SchemaName,NAME AS Name FROM SYS.TABLES T WHERE T.NAME NOT LIKE 'SYS%' AND T.NAME NOT LIKE '%EXCLUSIONLIST%' AND T.NAME NOT LIKE '%IMPORT%' AND T.NAME NOT LIKE '%DMOPTIONS%' AND T.NAME  not LIKE '\_%' ESCAPE '\' and t.name IN ($INList)  order by t.name"  
$SourceTablesCount = $SourceTables.Count
$DestinationTablesCount = $DestinationTables.Count

$SourceTableNames = $SourceTables.name
$SourceSchemaNames = $SourceTables.Schemaname
$IndExecTime=''
$Count=0


Start-Transcript $TranscriptPath
cd $HomeDir
# For each destination table supplied that exists on both
foreach ($DestTable in $DestinationTables){
    $DestTableName =$DestTable.name
    $DestSchemaName = $DestTable.SchemaName
    

 if (($SourceTableNames.Contains($DestTableName)) -and ($SourceSchemaNames.Contains($DestSchemaName))){
    # Only if the table also exists in source
    foreach($SourceTable in $SourceTables){
    
        $SourceTableName =$SourceTable.name
        $SourceSchemaName = $SourceTable.SchemaName
        $BCPOutFileName=''

        $SourceFullName ="$SourceSchemaName.$SourceTableName"
        $DestFullName ="$DestSchemaName.$DestTableName"
        try{
             if ($SourceFullName -eq $DestFullName){
                #Write-host "[$DestSchemaName].[$DestTableName] exists on both SOURCE: ($SourceServer) and DESTINATION: ($DestServer) Generating bcp commands ..." #-BackgroundColor Green
                Write-Host "** Currently working on moving data from $SourceServer : [$SourceSchemaName].[$SourceTableName] to $DestServer : [$DestSchemaName].[$DestTableName]**"
                $IndStartTime =  Get-Date
                $BCPOutFileName = "BCPOUT_$SourceSchemaName`_$SourceTableName`_$date.txt"

                # out
                $Count += 1
                $outCmd = "bcp  $SourceDB.$SourceSchemaName.$SourceTableName out $BCPOutFileName -S $SourceServer -N -E -T >> `"$LogsDir\BCPOUT_$SourceTableName`_$date.log`"`n"
            
                #Truncate before load
                $TruncateCmd ="osql -S $DestServer -d $DestDB -T -E  -Q`"Truncate table $DestSchemaName.$DestTableName`" -o  `"$LogsDir\BCPIN_$SourceTableName`_$date.log`"`n"
                $inCmd = "bcp $DestDB.$DestSchemaName.$DestTableName in $BCPOutFileName -S $DestServer -q -N -E -T >> `"$LogsDir\BCPIN_$SourceTableName`_$date.log`"`n"
            
                ###############################################################
                ###############################################################
                ################## USE WITH CAUTION ###########################
                ############## RUN GENERATED BCP COMMANDS #####################
                ###############################################################
                ###############################################################
            
      
                Write-Progress -Activity "** Executing BCPOUT Commands for $DestTableName table ** " -Status "Progress:"
                cmd /c $outCmd
                
                Write-Progress -Activity "`n`n ** Executing TRUNCATE Commands for $DestTableName ** " -Status "Progress:"            
                cmd /c $TruncateCmd
                
                Write-Progress -Activity "`n`n ** Executing BCPIN Commands for $DestTableName table ** " -Status "Progress:"         
                cmd /c $inCmd            
                
                Write-Host "`n`n ** Deleting BCPOUT File for $SourceTableName ** " 
                ri $BCPOutFileName
                $IndEndTime =  Get-Date
                $IndTimeDiffMinutes = ((New-TimeSpan -Start $IndStartTime -End $IndEndTime).Minutes).ToString()

                $IndExecTime +="`nIt took $IndTimeDiffMinutes minutes for table $DestTableName."
                break;
          
            }else{
                #write-host "[$DestSchemaName].[$DestTableName] exists on $DestServer but not on the source server ($SourceServer)" 
                }
        }catch{
                $ErrorMessage = $_.Exception.Message
                $EmailSubject = "ERROR: Sync-Tables Failed!"
                $body+= $ErrorMessage
                Stop-Transcript
                Send-Mail $EmailSubject                       # Send Error Email
                Write-Error "$EmailSubject" -ErrorAction STOP
            }
        }
    }
    
}
if($LASTEXITCODE -eq 0){
    $body += "Data Synchronization completed successfully!"
    Write-Host "`n`n ** Data Synchronization completed successfully! Generated BCP Commands for $Count tables ** " 
    
    $EndDate =Get-date
    $TimeDiff = New-TimeSpan -Start $StartDate -End $EndDate

    Write-Host "`n`n ** Details about total execution time  ** " 
    $IndExecTime


    Write-Host "`n`n ** Details about total execution time  ** " 
    $TimeDiff
    
    # Delete logs
    Get-ChildItem "$HomeDir\*.log" -Recurse|? { $_.lastwritetime -le (Get-Date).AddDays(-$DaysToStoreLogs)} |% {Remove-Item $_ -force }  
    "Removed all previous backups older than $DaysToStoreLogs days."


    Stop-Transcript
    $EmailSubject = 'CoreView Test : Sync-Tables Status'
    Send-Mail $EmailSubject
}



#$outCmd|Out-File "BCPOut.txt"
#$TruncateCmd, $inCmd |Out-File "BCPIn.txt"
#ii $HomeDir,"BCPOut.txt","BCPIn.txt"