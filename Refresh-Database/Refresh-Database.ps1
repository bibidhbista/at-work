
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
'PFHLBDMSSIS01','DFHLBDMSQL14','PFHLBDMSQL14','PFHLBDMSQL13','DFHLBDMSSIS01','UFHLBDMSQL07','DFHLBDMSQL08','UFHLBDMSQL10','PFHLBDMSSRS04','DFHLBDMSQL13','DFHLBDMSQL07','PFHLBDMSQL15','UFHLBDMSQL15','TFHLBDMSQL13',
'SQLTEST2016','PFHLBDMSQL07','TFHLBDMSSIS01','TFHLBDMSQL07','TFHLBDMSSRS04','DFHLBDMSSRS04','UFHLBDMSQL14','TFHLBDMSQL14','UFHLBDMSSRS04','UFHLBDMSSIS01','PFHLBDMSQL08','DFHLBDMSSIS02', 'DFHLBDMSQL15','TFHLBDMSQL15',
'TFHLBDMSSIS02','UFHLBDMSSIS02','PFHLBDMSSIS02','QFHLBDMSQL14','SQLTEST2016','SQLTEST2016-1','SQLTEST2016-2','SQLTEST2016-3','SQLTEST2016-4')]
   [string] $SourceServer,
   
   [Parameter(Mandatory=$True, HelpMessage='ENTER A VALID SQL SERVER ENVIRONMENT FOR CONNECTION - NO ALIASES')]
   [ValidateNotNullorEmpty()]  
   [ValidateSet('DFHLBDMSQL12','TFHLBDMSQL12','UFHLBDMSQL12','PFHLBDMSQL12','DFHLBDMSQL09','TFHLBDMSQL09','PFHLBDMSQL09','TSHAREPSQL02','PSHAREPSQL02','DFHLBDMSQL10','TFHLBDMSQL05', 
'TFHLBDMSQL10','TQRMSQL11','TVIEWSQL01','HVMSQL04','PADMINSQL01','PADMINSQL02','PADMINSQL03','PDSXAPP02','PFHLBDMSQL05','PFHLBDMSQL10','PFOGSQL01','PQRMSQL11','PVMSQL04',
'PFHLBDMSSIS01','DFHLBDMSQL14','PFHLBDMSQL14','PFHLBDMSQL13','DFHLBDMSSIS01','UFHLBDMSQL07','DFHLBDMSQL08','UFHLBDMSQL10','PFHLBDMSSRS04','DFHLBDMSQL13','DFHLBDMSQL07','PFHLBDMSQL15','TFHLBDMSQL13',
'SQLTEST2016','PFHLBDMSQL07','TFHLBDMSSIS01','TFHLBDMSQL07','TFHLBDMSSRS04','DFHLBDMSSRS04','UFHLBDMSQL14','TFHLBDMSQL14','UFHLBDMSSRS04','UFHLBDMSSIS01','PFHLBDMSQL08','DFHLBDMSSIS02', 'DFHLBDMSQL15','TFHLBDMSQL15','UFHLBDMSQL15',
'TFHLBDMSSIS02','UFHLBDMSSIS02','PFHLBDMSSIS02','QFHLBDMSQL14','SQLTEST2016','SQLTEST2016-1','SQLTEST2016-2','SQLTEST2016-3','SQLTEST2016-4')]
   [string] $DestinationServer,


   
   [Parameter(Mandatory=$true, HelpMessage='ENTER A VALID SQL SERVER DATABASE FOR MIGRATION')]
   [ValidateNotNullorEmpty()] 
   [string] $SourceDatabaseName,
   [Parameter(Mandatory=$true, HelpMessage='ENTER A VALID SQL SERVER DATABASE FOR MIGRATION. Leave Blank if same as the Source Database Name')]
   [string] $DestDatabaseName
   
   )


#### Environment Check
$SourceEnv = $SourceServer.tolower().Substring(0,1)
$DestEnv = $DestinationServer.tolower().Substring(0,1)

if (($DestEnv -eq "p")){
  Write-Error "Environment Mismatch! Are you sure you want to refresh to PRODUCTION?!! Are ya??!" -ErrorAction Stop
}


$backupDirectory = "\\pfs02\sqlbackup\dbatools_staging\For_Refresh\$SourceServer`_to_$DestinationServer\"
md $backupDirectory -Force|Out-Null
$daysToStoreBackups= 7
# $fromBakPath  ################################ for restore from a backup path

if($DestDatabaseName.Length -le 0){
    $DestDatabaseName = $SourceDatabaseName
}

###################### Doesn't neccessarily always exist ################################### Run COPY-DATABASE for the same environment (ex. for refresh from PFS12 to DFS15 ===> Run COPY-DFS12 to DFS15. THEN REFRESH from PFS12 to DFS15.
############################################################################################
############################## Script out permissions ######################################
############################################################################################
Write-Host "#################################################      Sripting out permissions from $DestDatabaseName : $DestinationServer #################################################" 
$timestamp = get-date -f MMddyyyy_HHmm
$logPath = "$backupDirectory\Permission_Script"
md $logPath -Force|Out-Null
$logfileName = "$SourceDatabaseName`_to_$DestDatabaseName`_$timestamp.sql"
$logfile = "$logPath\$logfileName"


try{
    Invoke-Sqlcmd -InputFile "$PSScriptRoot\Permission_Extract.sql"  -serverinstance $DestinationServer -database $DestDatabaseName -Verbose 4> $logfile #routes verbose outputs to file
    Invoke-Item $logfile
    Write-Host "Successfully extracted all permissions from $DestinationServer : $DestDatabaseName and saved the query file to $logfile" -BackgroundColor Green
}catch{
   Write-Error "Couldn't extract permissions from $DestinationServer : $DestDatabaseName. Make sure the target database exists on $DestinationServer. Check if you have sufficient permissions to run the permissions extract script on $PSScriptRoot! $_.Exception.Message" -ErrorAction Stop
}

############################################ Copy to central Location ###########################################
#$permFilePath = "$backupDirectory\Permissions"
#md $permFilePath -Force|Out-Null
#cpi -Path $logfile -Destination "$permFilePath\$logfileName.sql"
#################################################################################################################
    


###########################################################################################
################ Backup destination database before overwriting it (CYA) ##################
###########################################################################################
$backupDirectoryCya = "$backupDirectory\BeforeRefresh_DBackup\$DestinationServer"
md $backupDirectoryCya -force|Out-null # Creates if it doesn't exist

# Backup db for CYA purposes: Format=> ssw_010141996_1301_CYA.bak    
Write-Host "#################################################      Backing up $DestDatabaseName : $DestinationServer to $backupDirectoryCya for CYA #################################################" 
try{
    Backup-DbaDatabase -SqlInstance $DestinationServer -Database $DestDatabaseName -BackupDirectory $backupDirectoryCya -CompressBackup -CopyOnly -BackupFileName "$DestDatabaseName`_$timestamp`_CYA.bak"
}

catch{
    Write-Error "Error: Backup of $DestDatabaseName from $DestinationServer failed to $backupDirectoryCya. Make sure you have installed dbatools before trying again. Check if you have sufficient permissions to run the permissions extract script on $PSScriptRoot!$_.Exception.Message" -ErrorAction Stop    
}



############################################################################################
###################################### Refreshing Database #################################
############################################################################################
Write-Host "#################################################   Refreshing $SourceDatabaseName from $SourceServer to $DestinationServer as $DestDatabaseName #################################################"
try{
    #$DatabaseName = (Get-DbaDatabase -SqlInstance $SourceServer|Out-GridView -PassThru)
    #$DatabaseName = $DatabaseName.name
    
    

    #Copy dbadatbase acting weird and fails to restore
    #$sourceServer = 'pfhlbdmsql12'
    #$DestinationServer= 'dfhlbdmsql12'
    #
    #$SourceDatabaseName='Collateral_Staging'
    #$DestDatabaseName='Collateral_Staging_OLD'
    #$backupDirectory='\\pfs02\sqlbackup\dbaTools_Staging\For_Refresh\pfhlbdmsql12_to_dfhlbdmsql12'
    #Remove-DbaDatabase -SqlInstance $DestinationServer -Database $DestDatabaseName -Confirm:$True
    #Copy-dbadatabase -Source $SourceServer -Destination $DestinationServer -Database $SourceDatabaseName -BackupRestore -NetworkShare $backupDirectory -force

    
    Backup-DbaDatabase -SqlInstance $SourceServer -Database $SourceDatabaseName -BackupDirectory $backupDirectory -CompressBackup -CopyOnly -BackupFileName "$SourceDatabaseName`_$timestamp`_forRefresh_CYA.bak"|Restore-DbaDatabase -SqlInstance $DestinationServer -WithReplace

    ################################## restore from file path ####################################
    #Restore-DbaBackupFromDirectory -SqlInstance $DestinationServer -Path $fromBakPath -withreplace

    Write-Host "Refresh of $SourceServer : $SourceDatabaseName to $DestinationServer : $DestDatabaseName completed successfully" -BackgroundColor Green

}catch{
    Write-Error "Error: Refresh of $SourceDatabaseName from $SourceServer to $DestinationServer as $DestDatabaseName failed. Make sure you have installed dbatools before trying again. Check if you have sufficient permissions to run the permissions extract script on $PSScriptRoot!$_.Exception.Message" -ErrorAction Stop    
}


############################################################################################
############# Removing Higher Env. permissions from recently refreshed db ##################
############################################################################################
Write-Host "################################################# Removing permissions from $DestinationServer : $DestDatabaseName that came from $SourceServer : $SourceDatabaseName #################################################" 
Get-DbaDatabaseUser -ExcludeSystemUser -SqlInstance $DestinationServer -Database $DestDatabaseName | Remove-DbaDbUser


############################################################################################
############################# Apply permissions on destination server ######################
############################################################################################
Write-Host "################################################# Applying permissions to $DestinationServer : $DestDatabaseName #################################################" 
try{
    Invoke-Sqlcmd -InputFile $logfile -serverinstance $DestinationServer -database $DestDatabaseName -Verbose 
    Write-Host "Successfully reapplied all permissions from $DestDatabaseName (extracted before refresh) to $DestinationServer : $DestDatabaseName (after refresh) using the query file $permFilePath" -BackgroundColor Green
    Write-Host "End of Migration: Successfully refreshed $SourceDatabaseName from $SourceServer to $DestDatabaseName : $DestinationServer and reapplied required permissions."
}catch{
    Write-Error "Couldn't apply permissions to $DestinationServer : $DestDatabaseName . Check if you have sufficient permissions to run the permissions extract script on $PSScriptRoot! $_.Exception.Message" -ErrorAction Stop
}


############################################################################################
########### Remove older backups for specific databases matching ssw*CYA.bak ###############
############################################################################################
try{
    Write-Host "#################################################      Removing all previous backups of $DatabaseName done for backups older than $daysToStoreBackups days #################################################" 
    gci "$backupDirectory\*$DestDatabaseName*_CYA.bak" -Recurse |? { $_.lastwritetime -le (Get-Date).AddDays(-$daysToStoreBackups)} |% {Remove-Item $_ -force }  
}catch{
    Write-Error "Couldn't remove older backups of $DestDatabaseName from $backupDirectory. Check if you have sufficient permissions to run the permissions extract script on $PSScriptRoot! $_.Exception.Message" -ErrorAction Stop
}




############################################################################################
###################### Take care of orphan users/Migrate Logins ############################
############################################################################################
Write-Host "###################################    Migrating logins and fixing of orphan users  #################################################" 
try{
    # For Windows/SQL Orphan Users
    $object = Repair-DbaOrphanUser -SqlInstance $DestinationServer -Database $DatabaseName
    $users = $object.user
    $count = $users.count

    # If there are SQL Orphan Users
    if($count -gt 0){
       Write-Host "Following SQL Orphan User(s) were fixed: " -BackgroundColor Green
       #foreach($user in $users){
              # Copy-DbaLogin -Source $SourceServer -Destination tfhlbdmsql12  -Login $user # Migrates Logins with password so they don't have to be reentered for SQL Logins
       #}
        Repair-DbaOrphanUser -SqlInstance $DestinationServer -Database $DatabaseName -Verbose|ft -AutoSize
    }

    # For Windows Orphan Users
    #try{
    #    Invoke-Sqlcmd -InputFile "$PSScriptRoot\Windows_Orphan_Fix.sql" -serverinstance $DestinationServer -database $DatabaseName -Verbose 
    #}catch{
    #    Write-Error "Couldn't fix Windows Orphaned Users. Check if you have sufficient permissions to run the permissions extract script on $PSScriptRoot!" -ErrorAction Stop
    #}
    #
    #Write-Host "Fixed both SQL and Windows Orphan Users!" -BackgroundColor Green
    #Write-Host "End of Migration: Successfully copied $DatabaseName from $SourceServer to $DestinationServer and reapplied required permissions."
}catch{
    Write-Error "Error: Couldn't repair orphan users. Make sure you have installed dbatools before trying again. Check if you have sufficient permissions to run the permissions extract script on $PSScriptRoot! $_.Exception.Message" -ErrorAction Stop            
}


try{
    Write-Host "#################################################      Removing all previous backups of $DatabaseName done for backups older than $daysToStoreBackups days #################################################" 
    gci "$backupDirectory\*$DestDatabaseName*.bak" -Recurse |? { $_.lastwritetime -le (Get-Date).AddDays(-$daysToStoreBackups)} |% {Remove-Item $_ -force }  
}catch{
    Write-Error "Couldn't remove older backups of $DestDatabaseName from $backupDirectory. Check if you have sufficient permissions to run the permissions extract script on $PSScriptRoot! $_.Exception.Message" -ErrorAction Stop
}





#specific database
#copy-dbadatabase -source tfhlbdmsql12 -Destination ufhlbdmsql15 -Database teadvantage -BackupRestore -NetworkShare "\\pfs02\sqlbackup\dbaTools_Staging" -force