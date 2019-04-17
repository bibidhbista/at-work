#########################################################################################
#########################################################################################
## Powershell Script that will backup SPECIFIC SERVER AND DATABASE FOR DEPLOYS
## REQUIRES MANDATORY SERVERNAME AND DATABASENAME FOR BACKUP TO \\pfs02\sqlbackup
## GENERATES PROGRESS BAR AFTER 10% (TO 100%) FOR THE DESTINATION LOCATION
## COMPRESSED BACKUPS WITH TIMSTAMP AND "PSMAN" FILENAME WITH OUTPUT LOG TO C:\db_mgmt\log
## ADDED Test-Path/New-Item LOGIC FOR CHECKING FOR 'SQL' DIRECTORY FOR EXISTENCE/CREATION IF 
## NEEDED FOR BACKUP PATH
## ADDED VALIDATION SET TO CHECK FOR PERFORMING BACKUPS ON VALID SERVERS
## 45 DAYS RETENTION CHECK ON "SQL" BACKUP PATH FOR *.BAK FILES
## Creation/Update Date 3/29/2017 
## RAM 
#########################################################################################

#$ServerName = Read-Host -Prompt 'Please enter a valid SQL SERVER NAME' 
#$DatabaseName = Read-Host -Prompt 'Please enter a valid SQL SERVER DATABASE FOR THE SERVER'
#$daysToStoreBackups = 8

param( 
   [Parameter(Mandatory=$True, HelpMessage='ENTER A VALID SQL SERVER ENVIRONMENT FOR CONNECTION - NO ALIASES')]
   [ValidateNotNullorEmpty()]  
   [ValidateSet('DDMSQL12','TDMSQL12','UDMSQL12','PDMSQL12','DDMSQL09','TDMSQL09','PDMSQL09','TSHAREPSQL02','PSHAREPSQL02','DDMSQL10','TDMSQL05', 'UDMSQL15', 
'TDMSQL10','TQRMSQL11','TVIEWSQL01','HVMSQL04','PADMINSQL01','PADMINSQL02','PADMINSQL03','PDSXAPP02','PDMSQL05','PDMSQL10','PFOGSQL01','PQRMSQL11','PVMSQL04',
'PDMSSIS01','DDMSQL14','PDMSQL14','PDMSQL13','DDMSSIS01','UDMSQL07','DDMSQL08','UDMSQL10','PDMSSRS04','DDMSQL13','DDMSQL07','PDMSQL15','TDMSQL13',
'SQLTEST2016','PDMSQL07','TDMSSIS01','TDMSQL07','TDMSSRS04','DDMSSRS04','UDMSQL14','TDMSQL14','UDMSSRS04','UDMSSIS01','PDMSQL08','DDMSSIS02', 'DDMSQL15','TDMSQL15',
'TDMSSIS02','UDMSSIS02','PDMSSIS02','QDMSQL14','SQLTEST2016','SQLTEST2016-1','SQLTEST2016-2','SQLTEST2016-3','SQLTEST2016-4')]
   [string] $ServerName,
   
   
   [Parameter(Mandatory=$True, HelpMessage='ENTER A VALID SQL SERVER DATABASE FOR BACKUP')]
   [ValidateNotNullorEmpty()] 
   [string] $DatabaseName,
   
   
   $daysToStoreBackups = 8
)


[System.Reflection.Assembly]::LoadWithPartialName("Microsoft.SqlServer.SMO") | Out-Null
[System.Reflection.Assembly]::LoadWithPartialName("Microsoft.SqlServer.SmoExtended") | Out-Null
[System.Reflection.Assembly]::LoadWithPartialName("Microsoft.SqlServer.ConnectionInfo") | Out-Null
[System.Reflection.Assembly]::LoadWithPartialName("Microsoft.SqlServer.SmoEnum") | Out-Null

# Check free space and send alert if lower than a threshold
Echo "Checking Drive Space..."
.$PSScriptRoot\DiskSpaceAlerts.ps1


$server = New-Object ("Microsoft.SqlServer.Management.Smo.Server") $ServerName
#$db = $server.Databases[$DatabaseName]
$conContext = $server.ConnectionContext
$conContext.StatementTimeout = 0 

$backupDirectory = '\\pfs02\sqlbackup\' + $ServerName


Start-Transcript -Path C:\db_mgmt\log\psman\LastBackup.log -Force |out-null

try
{
    #$dbName = $DatabaseName.Name

    $timestamp = Get-Date -format yyyy-MM-dd-HHmmss
	$defpath = '\\pfs02\sqlbackup\' + $ServerName + '\SQL'
	if(!(Test-Path $defpath)) 
	{New-Item -ItemType Directory -Force -Path $defpath
	"Path $defpath Created Successfully..."
	# | Out-Null (no output created when directory is created)
	}
    $targetPath = $backupDirectory + "\SQL\" + $DatabaseName + "_" + $timestamp + "_PSMAN" +"_$env:username" +".bak"

    $smoBackup = New-Object ("Microsoft.SqlServer.Management.Smo.Backup")
    $smoBackup.Action = "Database"
    $smoBackup.BackupSetDescription = "Full Backup of " + $DatabaseName
    $smoBackup.BackupSetName = $DatabaseName + " Backup"
    $smoBackup.Database = $DatabaseName
    $smoBackup.MediaDescription = "Disk"
    $smoBackup.Devices.AddDevice($targetPath, "File")
	$smoBackup.CompressionOption = "On"
	 $percent = [Microsoft.SqlServer.Management.Smo.PercentCompleteEventHandler] {
                     Write-Progress -id 1 -activity "Backing up database $DatabaseName to $targetPath " -percentcomplete $_.Percent -status ([System.String]::Format("Progress: {0} %", $_.Percent))
            }
                    $smoBackup.add_PercentComplete($percent)
                    $smoBackup.add_Complete($complete)
    $smoBackup.SqlBackup($server)
	 Write-Progress -id 1 -activity "Backing up database $DatabaseName to $targetPath " -percentcomplete 0 -status ([System.String]::Format("Progress: {0} %", 0))         
	$error[0] | format-list -force
	  

    "Backed up $DatabaseName ($serverName) to $targetPath"
	Write-Output $((Get-Date –f o) + ' Backup of database for ' + $DatabaseName + ' completed successfully.')
	
}
catch
{
	$ErrorMessage = $_.Exception.Message
	Write-Output $((Get-Date –f o) + ' Error during executing backup of database ' + $DatabaseName + ' on database source server ' + $ServerName +':  ' + $ErrorMessage ) 
	} 

Get-ChildItem "$defpath\*.bak" |? { $_.lastwritetime -le (Get-Date).AddDays(-$daysToStoreBackups)} |% {Remove-Item $_ -force }  
"Removed all previous backups older than $daysToStoreBackups days"
"Have a Nice Day!"




	
