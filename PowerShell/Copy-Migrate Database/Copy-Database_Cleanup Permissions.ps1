
<#

AUTHOR: BIBIDH BISTA

REQUIRES DBATOOLS FROM DBATOOLS.IO FOR COPYING THE DATABASE
THE FOLDER MUST CONTAIN TWO SQL SCRIPTS THAT WORK ON FIXING ORPHAN USERS FOR SQL USERS AND WINDOWS USERS RESPECTIVELY.

PARAMS:

REQUIRED:
SOURCESERVER             : SOURCE SERVERNAME WHERE THE DATABASE TO BE MOVE RESIDES                                  
DESTINATIONSERVER        : DESTINATION SERVERNAME WHERE THE DATABASE IS TO BE MOVED       
DATABASENAME             : NAME OF THE DATABASE TO BE MOVED FROM SOURCE SERVER TO DESTINATION SERVER

#>



param( 
   [Parameter(Mandatory=$True, HelpMessage='ENTER A VALID SQL SERVER ENVIRONMENT FOR CONNECTION - NO ALIASES')]
   [ValidateNotNullorEmpty()]  
#   [ValidateSet('DDMSQL12','TDMSQL12','UDMSQL12','PDMSQL12','DDMSQL09','TDMSQL09','PDMSQL09','TSHAREPSQL02','PSHAREPSQL02','DDMSQL10','TDMSQL05', 
#'TDMSQL10','TQRMSQL11','TVIEWSQL01','HVMSQL04','PADMINSQL01','PADMINSQL02','PADMINSQL03','PDSXAPP02','PDMSQL05','PDMSQL10','PFOGSQL01','PQRMSQL11','PVMSQL04',
#'PDMSSIS01','DDMSQL14','PDMSQL14','PDMSQL13','DDMSSIS01','UDMSQL07','DDMSQL08','UDMSQL10','PDMSSRS04','DDMSQL13','DDMSQL07','PDMSQL15','UDMSQL15','TDMSQL13',
#'SQLTEST2016','PDMSQL07','TDMSSIS01','TDMSQL07','TDMSSRS04','DDMSSRS04','UDMSQL14','TDMSQL14','UDMSSRS04','UDMSSIS01','PDMSQL08','DDMSSIS02', 'DDMSQL15','TDMSQL15',
#'TDMSSIS02','UDMSSIS02','PDMSSIS02','QDMSQL14','SQLTEST2016','SQLTEST2016-1','SQLTEST2016-2','SQLTEST2016-3','SQLTEST2016-4')]
   [string] $SourceServer,
   
   [Parameter(Mandatory=$True, HelpMessage='ENTER A VALID SQL SERVER ENVIRONMENT FOR CONNECTION - NO ALIASES')]
   [ValidateNotNullorEmpty()]  
#   [ValidateSet('DDMSQL12','TDMSQL12','UDMSQL12','PDMSQL12','DDMSQL09','TDMSQL09','PDMSQL09','TSHAREPSQL02','PSHAREPSQL02','DDMSQL10','TDMSQL05', 
#'TDMSQL10','TQRMSQL11','TVIEWSQL01','HVMSQL04','PADMINSQL01','PADMINSQL02','PADMINSQL03','PDSXAPP02','PDMSQL05','PDMSQL10','PFOGSQL01','PQRMSQL11','PVMSQL04','DDMSQL07\DEV1','TDMSQL07\TEST1','UDMSQL07\UAT1',
#'PDMSSIS01','DDMSQL14','PDMSQL14','PDMSQL13','DDMSSIS01','UDMSQL07','DDMSQL08','UDMSQL10','PDMSSRS04','DDMSQL13','DDMSQL07','PDMSQL15','TDMSQL13',
#'SQLTEST2016','PDMSQL07','TDMSSIS01','TDMSQL07','TDMSSRS04','DDMSSRS04','UDMSQL14','TDMSQL14','UDMSSRS04','UDMSSIS01','PDMSQL08','DDMSSIS02', 'DDMSQL15','TDMSQL15','UDMSQL15',
#'TDMSSIS02','UDMSSIS02','PDMSSIS02','QDMSQL14','SQLTEST2016','SQLTEST2016-1','SQLTEST2016-2','SQLTEST2016-3','SQLTEST2016-4')]
   [string] $DestinationServer,


   
   [Parameter(Mandatory=$true, HelpMessage='ENTER A VALID SQL SERVER DATABASE FOR MIGRATION')]
   [ValidateNotNullorEmpty()] 
   [string] $DatabaseName
)

#### Check
#$SourceEnv = $SourceServer.tolower().Substring(0,1)
#$DestEnv = $DestinationServer.tolower().Substring(0,1)
#
#if (($DestEnv -eq "p") -and ($SourceEnv -ne "p")){
#    Write-Error "Environment Mismatch! Can only migrate to lower environment" -ErrorAction Stop
#}

#$backupDirectory = "\\pfs02\sqlbackup\dbatools_staging\For_Migration\$SourceServer`_to_$DestinationServer\$DatabaseName"
$backupDirectory = "P:\Backup_Restore\For_Migration\$SourceServer`_to_$DestinationServer\$DatabaseName"

md $backupDirectory -Force|Out-Null
$daysToStoreBackups= 7


############################################################################################
############################## Script out permissions ######################################
############################################################################################
Write-Host "#################################################      Scripting out permissions from $DatabaseName : $SourceServer #################################################" 
$timestamp = get-date -f MMddyyyy_HHmm
$logPath = "$backupDirectory\Permission_Scripts"
md $logPath -Force|Out-Null
$logFileName = "$DatabaseName`_$SourceServer`_Permissions_$timestamp.sql"
$logfile = "$logPath\$logFileName"

try{
    Invoke-Sqlcmd -InputFile "$PSScriptRoot\Permission_Extract.sql"  -serverinstance $SourceServer -database $DatabaseName -Verbose 4> $logfile #routes verbose outputs to file
    Write-Host "Successfully extracted all permissions from $SourceServer : $DatabaseName and saved the query file to $logfile" -BackgroundColor Green
}catch{
    Write-Error "Couldn't extract permissions from $SourceServer : $DatabaseName . Check if you have sufficient permissions to run the permissions extract script on $PSScriptRoot! $_.Exception.Message" -ErrorAction Stop
}


############################################################################################
###################################### Migrate DB ##########################################
############################################################################################
Write-Host "#################################################   Migrating $DatabaseName from $SourceServer to $DestinationServer #################################################"
try{
    #$DatabaseName = (Get-DbaDatabase -SqlInstance $SourceServer|Out-GridView -PassThru)
    #$DatabaseName = $DatabaseName.name
    #Copy-dbadatabase -Source $SourceServer -Destination $DestinationServer -Database $DatabaseName -BackupRestore -NetworkShare "\\pfs02\sqlbackup\dbaTools_Staging" -force
    
    #Copy dbadatbase acting weird and fails to restore
    Backup-DbaDatabase -SqlInstance $SourceServer -Database $DatabaseName -BackupDirectory $backupDirectory -CopyOnly -BackupFileName "$DatabaseName`_$timestamp`_$SourceServer.bak"|Restore-DbaDatabase -SqlInstance $DestinationServer
    Write-Host "Migration of $SourceServer : $DatabaseName to $DestinationServer : $DatabaseName completed successfully" -BackgroundColor Green

}catch{
    Write-Error "Error: Migration of $DatabaseName from $SourceServer to $DestinationServer failed. Make sure you have installed dbatools before trying again. Check if you have sufficient permissions to run the permissions extract script on $PSScriptRoot!" -ErrorAction Stop    
}


############################################################################################
############# Removing Higher Env. permissions from recently refreshed db ##################
############################################################################################
Write-Host "################################################# Removing permissions from $DestinationServer : $DatabaseName that came from $SourceServer : $DatabaseName #################################################" 
Get-DbaDatabaseUser -ExcludeSystemUser -SqlInstance $DestinationServer -Database $DatabaseName | Remove-DbaDbUser




############################################################################################
############################# Apply permissions on destination server ######################
############################################################################################
#Write-Host "################################################# Applying permissions to $DestinationServer : $DatabaseName #################################################" 
#try{
#    Invoke-Sqlcmd -InputFile $logfile -serverinstance $DestinationServer -database $DatabaseName -Verbose 
#    Write-Host "Successfully applied all permissions from $SourceServer : $DatabaseName to $DestinationServer : $DatabaseName and saved the query file to $logfile" -BackgroundColor Green
#}catch{
#    Write-Error "Couldn't apply permissions to $DestinationServer : $DatabaseName . Check if you have sufficient permissions to run the permissions extract script on $PSScriptRoot! $_.Exception.Message" -ErrorAction Stop
#}
#
#
#
#############################################################################################
####################### Take care of orphan users/Migrate Logins ############################
#############################################################################################
#Write-Host "###################################    Migrating logins and fixing of orphan users  #################################################" 
#try{
#    # For Windows/SQL Orphan Users
#    $object = Repair-DbaOrphanUser -SqlInstance $DestinationServer -Database $DatabaseName
#    $users = $object.user
#    $count = $users.count
#
#    # If there are SQL Orphan Users
#    if($count -gt 0){
#        Write-Host "Following SQL Orphan User(s) were fixed: " -BackgroundColor Green
#        foreach($user in $users){
#                Copy-DbaLogin -Source $SourceServer -Destination $DestinationServer -Login $user # Migrates Logins with password so they don't have to be reentered for SQL Logins
#        }
#        Repair-DbaOrphanUser -SqlInstance $DestinationServer -Database $DatabaseName|ft -AutoSize
#    }
#
#    # For Windows Orphan Users
#    #try{
#    #    Invoke-Sqlcmd -InputFile "$PSScriptRoot\Windows_Orphan_Fix.sql" -serverinstance $DestinationServer -database $DatabaseName -Verbose 
#    #}catch{
#    #    Write-Error "Couldn't fix Windows Orphaned Users. Check if you have sufficient permissions to run the permissions extract script on $PSScriptRoot!" -ErrorAction Stop
#    #}
#    #
#    #Write-Host "Fixed both SQL and Windows Orphan Users!" -BackgroundColor Green
#    #Write-Host "End of Migration: Successfully copied $DatabaseName from $SourceServer to $DestinationServer and reapplied required permissions."
#}catch{
#    Write-Error "Error: Couldn't repair orphan users. Make sure you have installed dbatools before trying again. Check if you have sufficient permissions to run the permissions extract script on $PSScriptRoot! $_.Exception.Message" -ErrorAction Stop            
#}



try{
    Write-Host "#################################################      Removing all previous backups of $DatabaseName done for backups older than $daysToStoreBackups days #################################################" 
    gci "$backupDirectory\*$SourceServer*.bak" -Recurse |? { $_.lastwritetime -le (Get-Date).AddDays(-$daysToStoreBackups)} |% {Remove-Item $_ -force }  
}catch{
    Write-Error "Couldn't remove older backups of $DestDatabaseName from $backupDirectory. Check if you have sufficient permissions to run the permissions extract script on $PSScriptRoot! $_.Exception.Message" -ErrorAction Stop
}



#specific database
#copy-dbadatabase -source tdmsql12 -Destination udmsql15 -Database teadvantage -BackupRestore -NetworkShare "\\pfs02\sqlbackup\dbaTools_Staging" -force
