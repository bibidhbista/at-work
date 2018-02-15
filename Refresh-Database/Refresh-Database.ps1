
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

#

param( 
   [Parameter(Mandatory=$True, HelpMessage='ENTER A VALID SQL SERVER ENVIRONMENT FOR CONNECTION - NO ALIASES')]
   [ValidateNotNullorEmpty()]  
   [ValidateSet('DFHLBDMSQL12','TFHLBDMSQL12','UFHLBDMSQL12','PFHLBDMSQL12','DFHLBDMSQL09','TFHLBDMSQL09','PFHLBDMSQL09','TSHAREPSQL02','PSHAREPSQL02','DFHLBDMSQL10','TFHLBDMSQL05', 
'TFHLBDMSQL10','TQRMSQL11','TVIEWSQL01','HVMSQL04','PADMINSQL01','PADMINSQL02','PADMINSQL03','PDSXAPP02','PFHLBDMSQL05','PFHLBDMSQL10','PFOGSQL01','PQRMSQL11','PVMSQL04',
'PFHLBDMSSIS01','DFHLBDMSQL14','PFHLBDMSQL14','PFHLBDMSQL13','DFHLBDMSSIS01','UFHLBDMSQL07','DFHLBDMSQL08','UFHLBDMSQL10','PFHLBDMSSRS04','DFHLBDMSQL13','DFHLBDMSQL07','PFHLBDMSQL15','TFHLBDMSQL13',
'SQLTEST2016','PFHLBDMSQL07','TFHLBDMSSIS01','TFHLBDMSQL07','TFHLBDMSSRS04','DFHLBDMSSRS04','UFHLBDMSQL14','TFHLBDMSQL14','UFHLBDMSSRS04','UFHLBDMSSIS01','PFHLBDMSQL08','DFHLBDMSSIS02', 'DFHLBDMSQL15','TFHLBDMSQL15',
'TFHLBDMSSIS02','UFHLBDMSSIS02','PFHLBDMSSIS02','QFHLBDMSQL14','SQLTEST2016','SQLTEST2016-1','SQLTEST2016-2','SQLTEST2016-3','SQLTEST2016-4')]
   [string] $SourceServer,
   
   [Parameter(Mandatory=$True, HelpMessage='ENTER A VALID SQL SERVER ENVIRONMENT FOR CONNECTION - NO ALIASES')]
   [ValidateNotNullorEmpty()]  
   [ValidateSet('DFHLBDMSQL12','TFHLBDMSQL12','UFHLBDMSQL12','PFHLBDMSQL12','DFHLBDMSQL09','TFHLBDMSQL09','PFHLBDMSQL09','TSHAREPSQL02','PSHAREPSQL02','DFHLBDMSQL10','TFHLBDMSQL05', 
'TFHLBDMSQL10','TQRMSQL11','TVIEWSQL01','HVMSQL04','PADMINSQL01','PADMINSQL02','PADMINSQL03','PDSXAPP02','PFHLBDMSQL05','PFHLBDMSQL10','PFOGSQL01','PQRMSQL11','PVMSQL04',
'PFHLBDMSSIS01','DFHLBDMSQL14','PFHLBDMSQL14','PFHLBDMSQL13','DFHLBDMSSIS01','UFHLBDMSQL07','DFHLBDMSQL08','UFHLBDMSQL10','PFHLBDMSSRS04','DFHLBDMSQL13','DFHLBDMSQL07','PFHLBDMSQL15','TFHLBDMSQL13',
'SQLTEST2016','PFHLBDMSQL07','TFHLBDMSSIS01','TFHLBDMSQL07','TFHLBDMSSRS04','DFHLBDMSSRS04','UFHLBDMSQL14','TFHLBDMSQL14','UFHLBDMSSRS04','UFHLBDMSSIS01','PFHLBDMSQL08','DFHLBDMSSIS02', 'DFHLBDMSQL15','TFHLBDMSQL15',
'TFHLBDMSSIS02','UFHLBDMSSIS02','PFHLBDMSSIS02','QFHLBDMSQL14','SQLTEST2016','SQLTEST2016-1','SQLTEST2016-2','SQLTEST2016-3','SQLTEST2016-4')]
   [string] $DestinationServer,


   
   [Parameter(Mandatory=$true, HelpMessage='ENTER A VALID SQL SERVER DATABASE FOR MIGRATION')]
   [ValidateNotNullorEmpty()] 
   [string] $SourceDatabaseName,
   [Parameter(Mandatory=$true, HelpMessage='ENTER A VALID SQL SERVER DATABASE FOR MIGRATION. Leave Blank if same as the Source Database Name')]
   [string] $DestDatabaseName
   
   )


$backupDirectory = "\\pfs02\sqlbackup\dbatools_staging\"
$daysToStoreBackups= 7
# $fromBakPath  ################################ for restore from a backup path

if($DestDatabaseName.Length -le 0){
    $DestDatabaseName = $SourceDatabaseName
}


############################################################################################
############################## Script out permissions ######################################
############################################################################################
Write-Host "#################################################      Sripting out permissions from $DestDatabaseName : $DestinationServer #################################################" 
$timestamp = get-date -f MMddyyyy_HHmm
$logPath = "\$PSScriptRoot\Permisssion_Scripts\Destination\$DestinationServer"
md $logPath -Force|Out-Null
$logfile = "$logPath\$SourceDatabaseName`_to_$DestDatabaseName`_Perms_$timestamp.sql"
try{
    Invoke-Sqlcmd -InputFile "$PSScriptRoot\Permission Extract.sql"  -serverinstance $DestinationServer -database $DestDatabaseName -Verbose 4> $logfile #routes verbose outputs to file
    Write-Host "Successfully extracted all permissions from $DestinationServer : $DestDatabaseName and saved the query file to $logfile" -BackgroundColor Green
}catch{
    Write-Error "Couldn't extract permissions from $DestinationServer : $DestDatabaseName . Check if you have sufficient permissions to run the permissions extract script on $PSScriptRoot!" -ErrorAction Stop
}

    

###########################################################################################
################ Backup destination database before overwriting it (CYA) ##################
###########################################################################################
$backupDirectoryCya = "filesystem::$backupDirectory\$DestinationServer\"
md $backupDirectoryCya -force|Out-null # Creates if it doesn't exist

# Backup db for CYA purposes: Format=> ssw_010141996_1301_CYA.bak    
Write-Host "#################################################      Backing up $DestDatabaseName : $DestinationServer to $backupDirectoryCya for CYA #################################################" 
try{
    Backup-DbaDatabase -SqlInstance $DestinationServer -Database $DestDatabaseName -BackupDirectory $backupDirectory -CompressBackup -CopyOnly -BackupFileName "$DestDatabaseName`_$timestamp`_CYA.bak"
    # Remove older backups for specific databases matchine ssw*CYA.bak
    Write-Host "#################################################      Removing all previous backups of $DatabaseName done for CYA older than $daysToStoreBackups days #################################################" 
    gci "$backupDirectoryCya\*$DestDatabaseName*_CYA.bak" |? { $_.lastwritetime -le (Get-Date).AddDays(-$daysToStoreBackups)} |% {Remove-Item $_ -force }  
    }

catch{
    Write-Error "Error: Backup of $DestDatabaseName from $DestinationServer failed to $backupDirectoryCya. Make sure you have installed dbatools before trying again. Check if you have sufficient permissions to run the permissions extract script on $PSScriptRoot!" -ErrorAction Stop    
}



############################################################################################
###################################### Refreshing Database #################################
############################################################################################
Write-Host "#################################################   Refreshing $SourceDatabaseName from $SourceServer to $DestinationServer as $DestDatabaseName #################################################"
try{
    #$DatabaseName = (Get-DbaDatabase -SqlInstance $SourceServer|Out-GridView -PassThru)
    #$DatabaseName = $DatabaseName.name
    #Copy-dbadatabase -Source $SourceServer -Destination $DestinationServer -Database $DatabaseName -BackupRestore -NetworkShare "\\pfs02\sqlbackup\dbaTools_Staging" -force
    
    #Copy dbadatbase acting weird and fails to restore
    Backup-DbaDatabase -SqlInstance $SourceServer -Database $SourceDatabaseName -BackupDirectory $backupDirectory -CompressBackup -CopyOnly|Restore-DbaDatabase -SqlInstance $DestinationServer -RestoredDatabaseNamePrefix -WithReplace

    ################################## restore from file path ####################################
    #Restore-DbaBackupFromDirectory -SqlInstance $DestinationServer -Path $fromBakPath -withreplace

    Write-Host "Refresh of $SourceServer : $SourceDatabaseName to $DestinationServer : $DestDatabaseName completed successfully" -BackgroundColor Green

}catch{
    Write-Error "Error: Refresh of $SourceDatabaseName from $SourceServer to $DestinationServer as $DestDatabaseName failed. Make sure you have installed dbatools before trying again. Check if you have sufficient permissions to run the permissions extract script on $PSScriptRoot!" -ErrorAction Stop    
}


###########################################################################################
###########################################################################################
###########################################################################################
Write-Host "################################################# Removing permissions from $DestinationServer : $DestDatabaseName that came from $SourceServer : $SourceDatabaseName #################################################" 
Get-DbaDatabaseUser -ExcludeSystemUser -SqlInstance $DestinationServer -Database $DestDatabaseName | Remove-DbaDbUser


############################################################################################
############################# Apply permissions on destination server ######################
############################################################################################
Write-Host "################################################# Applying permissions to $DestinationServer : $DestDatabaseName #################################################" 
try{
    Invoke-Sqlcmd -InputFile $logfile -serverinstance $DestinationServer -database $DestDatabaseName -Verbose 
    Write-Host "Successfully reapplied all permissions from for $DestinationServer : $DestDatabaseName and saved the query file to $logfile" -BackgroundColor Green
}catch{
    Write-Error "Couldn't apply permissions to $DestinationServer : $DestDatabaseName . Check if you have sufficient permissions to run the permissions extract script on $PSScriptRoot!" -ErrorAction Stop
}


## There shouldn't be orphan users!!


############################################################################################
###################### Take care of orphan users/Migrate Logins ############################
############################################################################################
Write-Host "###################################    Migrating logins and fixing of orphan users  #################################################" 
try{
    # For SQL Orphan Users
    $object = Repair-DbaOrphanUser -SqlInstance $DestinationServer -Database $DatabaseName
    $users = $object.user
    $count = $users.count

    # If there are SQL Orphan Users
    if($count -gt 0){
        Write-Host "Following SQL Orphan User(s) were fixed: " -BackgroundColor Green
        foreach($user in $users){
                Copy-DbaLogin -Source $SourceServer -Destination $DestinationServer -Login $user # Migrates Logins with password so they don't have to be reentered for SQL Logins
        }
        Repair-DbaOrphanUser -SqlInstance $DestinationServer -Database $DatabaseName|ft -AutoSize
    }

    # For Windows Orphan Users
    try{
        Invoke-Sqlcmd -InputFile "$PSScriptRoot\Windows Orphan Fix.sql" -serverinstance $DestinationServer -database $DatabaseName -Verbose 
    }catch{
        Write-Error "Couldn't fix Windows Orphaned Users. Check if you have sufficient permissions to run the permissions extract script on $PSScriptRoot!" -ErrorAction Stop
    }

    Write-Host "Fixed both SQL and Windows Orphan Users!" -BackgroundColor Green
    Write-Host "End of Migration: Successfully copied $DatabaseName from $SourceServer to $DestinationServer and reapplied required permissions."
}catch{
    Write-Error "Error: Couldn't repair orphan users. Make sure you have installed dbatools before trying again. Check if you have sufficient permissions to run the permissions extract script on $PSScriptRoot!" -ErrorAction Stop            
}




#specific database
#copy-dbadatabase -source tfhlbdmsql12 -Destination ufhlbdmsql15 -Database teadvantage -BackupRestore -NetworkShare "\\pfs02\sqlbackup\dbaTools_Staging" -force