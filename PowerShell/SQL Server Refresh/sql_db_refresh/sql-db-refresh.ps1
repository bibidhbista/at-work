
Param(   
   [Parameter(Mandatory=$True)]
   [ValidateNotNull()]
   [ValidateSet('DEV', 'TEST','UAT', 'QA')]
   [string] $target_env,
   
   [Parameter(Mandatory=$True)]
   #[ValidateSet('*')] 
   [ValidateSet("DWH_Auditing","eom","eom_pc","","Staging","MPF_Level_Yield","MPP_Level_Yield","MPF_LnCmt", "QRM_Source","qtr","yearly","Derivatives","Principia_Interface","SalesLogix")]
   [string]$DBInput
   
)

#Target Environment Definition based on filtering the $DBInput database names to denote appropriate destination environment
####DEV Environments
#($substring_list | %{$string.contains($_)}) -contains $true

$db_14_list="AHP", "AHP_Final","AHP_Final_SEA","AHP_Rescore","AHP_Working","AHP_Working_SEA","BCP","cia","Director_Election","DlyInvestRpt","DWH_Auditing","eom","eom_pc","","APPS","Staging","MKTG_DWH","MPF_DWH","MPF_Level_Yield","MPF_LnCmt","MPP_Level_Yield","Principia_Interface","QRM_Source","qtr","UDAHelper","VRI","yearly"
$db_12_list="AML","CBS_Reconciliations","Collateral_Interface","Collateral_Reporting","Collateral_Staging","Data_Depot","Derivatives","peAdvantage","Products_Interface","Products_Reporting","pStatement_Sea","SalesLogix"
$db_10_list="Response_Analytics"
$db_07_list="DEA","HUB","HUBCore","HUBPersistent","HUBStaging","InfoGov"

if ($db_14_list -contains $DBInput)
{
$db_server='14'
$db_source_server='PDMSQL14'
}
if ($db_12_list -contains $DBInput)
{
$db_server='12'
$db_source_server='PDMSQL12'
}
if ($db_10_list -contains $DBInput)
{
$db_server='10'
$db_source_server='PDMSQL10'
}
if ($db_07_list -contains $DBInput)
{
$db_server='07'
$db_source_server='PDMSQL07'
}

if ($target_env -eq 'DEV' -And $db_server -eq '14')
    {
    $target_server='DDMSQL14'
    }

if ($target_env -eq 'DEV' -And $db_server -eq '12')
    {
	$target_server='DDMSQL12'
    }

if ($target_env -eq 'DEV' -And $db_server -eq '10')
    {
	$target_server='DDMSQL10'
    }
    
if ($target_env -eq 'DEV' -And $db_server -eq '07')
    {
	$target_server='DDMSQL07'
    }   
    
###TEST Environments
if ($target_env -eq 'TEST' -And $db_server -eq '14')
    {
    $target_server='TDMSQL14'
    }

if ($target_env -eq 'TEST' -And $db_server -eq '12')
    {
	$target_server='TDMSQL12'
    }

if ($target_env -eq 'TEST' -And $db_server -eq '10')
    {
	$target_server='TDMSQL10'
    }
    
if ($target_env -eq 'TEST' -And $db_server -eq '07')
    {
	$target_server='TDMSQL07'
    }   
###UAT Environments
if ($target_env -eq 'UAT' -And $db_server -eq '14')
    {
    $target_server='UDMSQL14'
    }

if ($target_env -eq 'UAT' -And $db_server -eq '12')
    {
	$target_server='UDMSQL12'
    }

if ($target_env -eq 'UAT' -And $db_server -eq '10')
    {
	$target_server='UDMSQL10'
    }
    
if ($target_env -eq 'UAT' -And $db_server -eq '07')
    {
	$target_server='UDMSQL07'
    }       
###QA Environments
if ($target_env -eq 'QA' -And $db_server -eq '14')
    {
    $target_server='QDMSQL14'
    }

#######QA Servers not built yet but coming soon.
#if ($target_env -eq 'QA' -And $DBInput -contains  $db_12_list)
#    {
#	$target_server='QDMSQL12'
#    }

#if ($target_env -eq 'QA' -And $DBInput -contains $db_10_list)
#    {
#	$target_server='QDMSQL10'
#    }
    
#if ($target_env -eq 'QA' -And $DBInput -contains $db_07_list)
#    {
#	$target_server='QDMSQL07'
#    }        
    

#Write-Host 'Target Environment:  ' $target_env
#Write-Host 'Source Database:  ' $DBInput
#Write-Host 'Target Server Name:  ' $target_server
# Import PowerShell modules and clear error variable
$sqlpsPath2008R2 = 'C:\Program Files (x86)\Microsoft SQL Server\100\Tools\Binn'
if ( Test-Path $sqlpsPath2008R2 -PathType Container ) { 
												dir $sqlpsPath2008R2 Microsoft.SqlServer.Management.*.dll | select -expand fullname | import-module -DisableNameChecking
												$error.clear()
											}
$sqlpsPath2012 = 'C:\Program Files (x86)\Microsoft SQL Server\110\Tools\Binn'
if ( Test-Path $sqlpsPath2012 -PathType Container ) { 
												dir $sqlpsPath2012 Microsoft.SqlServer.Management.*.dll | select -expand fullname | import-module -DisableNameChecking
												$error.clear()
											}
										
$sqlpsPath2014 = 'C:\Program Files (x86)\Microsoft SQL Server\120\Tools\Binn'
if ( Test-Path $sqlpsPath2014 -PathType Container ) { 
												dir $sqlpsPath2014 Microsoft.SqlServer.Management.*.dll | select -expand fullname | import-module -DisableNameChecking
												$error.clear()
											}
$sqlpsPath2016 = 'C:\Program Files (x86)\Microsoft SQL Server\130\Tools\Binn'
if ( Test-Path $sqlpsPath2016 -PathType Container ) { 
												dir $sqlpsPath2016 Microsoft.SqlServer.Management.*.dll | select -expand fullname | import-module -DisableNameChecking
												$error.clear()
											}

											
#dir $sqlpsPath Microsoft.SqlServer.Management.*.dll | select -expand fullname | import-module
#import-module sqlps –DisableNameChecking
#$logfile_path = 'D:\db_mgmt\sql\sql_db_refresh\logs\'
$logfile_path = 'C:\db_mgmt\sql\sql_db_refresh\logs\'
$dbrefresh_logfile=$logfile_path+(Get-Date -Format "MMddyyyyhhmmss")+'-sqldbrefresh_'+$DBInput+'_'+$target_server+'.log'
$script_path = 'c:\db_mgmt\sql\sql_db_refresh\scripts\'
$bk_prod_path = '\\pfs02\SQLtempBackup\PROD'
$bk_dev_path = '\\pfs02\SQLtempBackup\DEV'
$bk_test_path = '\\pfs02\SQLtempBackup\TEST'
$bk_uat_path = '\\pfs02\SQLtempBackup\UAT'
$bk_qa_path ='\\pfs02\SQLtempBackup\QA'
$BackupName = $DBInput + '.bak'

########################################
## Backup Source DB                   ## 
########################################
#Purge Previous database backup on PFS02
$bk_source_filename="$bk_prod_path\$BackupName"
#Get-ChildItem "$bk_prod_path\$BackupName" |% {Remove-Item $_ -force } 

if (Test-Path $bk_source_filename) {
  Remove-Item $bk_source_filename
}


##when target environment like %12 then PDMSQL12, %14 then PDMSQL14, %10 then PDMSQL10, %07 then PDMSQL07
##backup source database first
Write-Output $((Get-Date –f o) + ' Starting backup of ' + $DBInput + ' database on source server ' + $db_source_server ) | Tee-Object -file $dbrefresh_logfile
try
    {
	Invoke-Sqlcmd -InputFile $script_path'\Backup\backup_'$db_source_server'_'$DBInput'.sql' -ServerInstance $db_source_server -Database master -Verbose -AbortOnError -QueryTimeout 4800| out-null | Tee-Object -file $dbrefresh_logfile
	}
catch
	{
	$ErrorMessage = $_.Exception.Message
	Write-Output $((Get-Date –f o) + ' Error during executing backup of database ' + $DBInput + ' on database source server ' + $db_source_server +':  ' + $ErrorMessage )  | Tee-Object -file $dbrefresh_logfile
	} 
Write-Output $((Get-Date –f o) + ' Backup Source Database Script for ' + $DBInput + ' completed successfully.') | Tee-Object -file $dbrefresh_logfile



######################################################################################
# Delete existing target database backup in appropriate environment folder on PFS02 ##
######################################################################################

if ($target_env -eq 'DEV')
{
$bk_target_filename="$bk_dev_path\$BackupName"
    if (Test-Path $bk_target_filename) {
    Remove-Item $bk_target_filename
    }
#Get-ChildItem "$bk_dev_path\$BackupName" |% {Remove-Item $_ -force }  "previous backup database file has been deleted."
}
if ($target_env -eq 'TEST')
{
$bk_target_filename="$bk_test_path\$BackupName"
    if (Test-Path $bk_target_filename) {
    Remove-Item $bk_target_filename
    }
#Get-ChildItem "$bk_test_path\$BackupName" |% {Remove-Item $_ -force }  "previous backup database file has been deleted."
}
if ($target_env -eq 'UAT')
{
$bk_target_filename="$bk_uat_path\$BackupName"
    if (Test-Path $bk_target_filename) {
    Remove-Item $bk_target_filename
    }
#Get-ChildItem "$bk_uat_path\$BackupName" |% {Remove-Item $_ -force }  "previous backup database file has been deleted."
}
if ($target_env -eq 'QA')
{
$bk_target_filename="$bk_qa_path\$BackupName"
    if (Test-Path $bk_target_filename) {
    Remove-Item $bk_target_filename
    }
#Get-ChildItem "$bk_qa_path\$BackupName" |% {Remove-Item $_ -force }  "previous backup database file has been deleted."
}


##Backup Target Database
Write-Output $((Get-Date –f o) + ' Starting backup of ' + $DBInput + ' database on target server ' + $target_server ) | Tee-Object -file $dbrefresh_logfile
try
    {
	Invoke-Sqlcmd -InputFile $script_path'\Backup\backup_'$target_server'_'$DBInput'.sql' -ServerInstance $target_server -Database master -Verbose -AbortOnError -QueryTimeout 4800| out-null | Tee-Object -file $dbrefresh_logfile
    }
catch
	{
	$ErrorMessage = $_.Exception.Message
	Write-Output $((Get-Date –f o) + ' Error during executing backup of database ' + $DBInput + ' on database target server ' + $target_server +':  ' + $ErrorMessage ) -foregroundcolor Red | Tee-Object -file $dbrefresh_logfile
	} 
Write-Output $((Get-Date –f o) + ' Backup Source Database Script for ' + $DBInput + ' completed successfully.') -foregroundcolor Green| Tee-Object -file $dbrefresh_logfile

#######################################################################################
# Backup Permissions on Target Environment for reapplying after database refresh     ##
# --added maxcharlength to ensure that commands were not truncated for a varchar max ##
#######################################################################################
Write-Output $((Get-Date –f o) + ' Starting backup of ' + $DBInput + ' database permissions on target server ' + $target_server ) | Tee-Object -file $dbrefresh_logfile
try
    {
	Invoke-Sqlcmd -InputFile $script_path\BackupSQLPermissions.sql -ServerInstance $target_server -Database $DBInput -MaxCharLength 8000 -Verbose -QueryTimeout 1400 -AbortOnError | Out-File -filePath $script_path'Permissions\perm_'$target_server'_'$DBInput'.sql'
    #Invoke-Sqlcmd -Query "select stmt from db_permissions" -ServerInstance $target_server -Database $DBInput -Verbose | Out-File -filePath $script_path'Permissions\perm_'$target_server'_'$DBInput'.sql'
    }
catch
	{
	$ErrorMessage = $_.Exception.Message
	Write-Output $((Get-Date –f o) + ' Error during executing the backup of database permissions on the ' + $DBInput + ' on database target server ' + $target_server +':  ' + $ErrorMessage ) -foregroundcolor Red | Tee-Object -file $dbrefresh_logfile
	} 
Write-Output $((Get-Date –f o) + ' Backup of Target Database Permissions Script for ' + $DBInput + ' on target server ' + $target_server + ' completed successfully.') -foregroundcolor Green| Tee-Object -file $dbrefresh_logfile


##########################################
## Restore Source DB to Destination DB  ##
##########################################

##Kill all current user Sessions on Destination DB
###Write-Output $((Get-Date –f o) + ' Starting Kill Users for ' + $DBInput) | Tee-Object -file $dbrefresh_logfile
###try
###    {
###	Invoke-Sqlcmd -InputFile $script_path\KillUsersConnectedDB.sql -ServerInstance $target_server -Database $DBInput -Verbose -AbortOnError -QueryTimeout 1400 | out-null | Tee-Object -file $dbrefresh_logfile
###	}
###catch
###	{
###	$ErrorMessage = $_.Exception.Message
###	Write-Output $((Get-Date –f o) + ' Error during executing Kill Users for ' + $DBInput + ' refresh scripts: ' + $ErrorMessage )  | Tee-Object -file $dbrefresh_logfile
###	} 
###Write-Output $((Get-Date –f o) + ' Kill Users Script for ' + $DBInput + ' completed') | Tee-Object -file $dbrefresh_logfile

###########################
## Set Single User Mode  ##
###########################

# Connect to the specified instance
#$s = new-object ('Microsoft.SqlServer.Management.Smo.Server') $server
# get database collection 
###$dbs = $s.Databases | where-object {$_.IsSystemObject -eq $FALSE -and $_.IsAccessible -eq $TRUE}

###$arr = $DBInput -split ','
###foreach ($element in $arr){   

###		$query = "ALTER DATABASE $element SET SINGLE_USER WITH ROLLBACK IMMEDIATE"
###	Write-Output $query | Tee-Object -file $dbrefresh_logfile
###        Invoke-Sqlcmd -Query "$query;" -ServerInstance $target_server -Database $DBInput
###		If ($LastExitCode -ne 0) {
###			Write-Output $((Get-Date –f o) + ' Error executing ' + $query +' '+ $LastExitCode +' '+ $element)  | Tee-Object -file $dbrefresh_logfile
###			}
###        $query = "ALTER DATABASE $element SET MULTI_USER"
###		Write-Output $query | Tee-Object -file $dbrefresh_logfile
###        Invoke-Sqlcmd -Query "$query;" -ServerInstance $target_server -Database $DBInput     
###		If ($LastExitCode -ne 0) {
###			Write-Output $((Get-Date –f o) + ' Error executing ' + $query +' '+ $LastExitCode +' '+ $element)  | Tee-Object -file $dbrefresh_logfile
###			}
###	}
    
    
##Write-Output  $((Get-Date –f o) + ' Starting ' + $tsm_action +' '+ $target_server + ' ' + $DBInput+ ' ' + $tsm_retention) | Tee-Object -file $dbrefresh_logfile

###########################
###########################
### RESTORE the Database ##
###########################
###########################

#if ( $DBInput.contains("") and $target_server -eq 'TDMSQL14')
#    { 
	   Write-Output $((Get-Date –f o) + ' Starting database restore for on ' + $target_server + ' for the ' + $DBInput + ' database.') | Tee-Object -file $dbrefresh_logfile
	try
	{
	   Invoke-Sqlcmd -InputFile $script_path'\Restore\restore_'$target_server'_'$DBInput'.sql' -ServerInstance $target_server -Database master -Verbose -AbortOnError -QueryTimeout 4800 | out-null | Tee-Object -file $dbrefresh_logfile
	}
	catch
	{
	   $ErrorMessage = $_.Exception.Message
	   Write-Output $((Get-Date –f o) + ' Error during executing database restore script on the ' + $target_server + ' for the ' + $DBInput + 'database: ' + $ErrorMessage ) -foregroundcolor Red | Tee-Object -file $dbrefresh_logfile
	} 
    Write-Output $((Get-Date –f o) + ' Database Restore on ' + $target_server + ' for '+$DBInput+' completed successfully.') -foregroundcolor Green| Tee-Object -file $dbrefresh_logfile
#	}
    
#######################################################################
## Restore Permissions on Target Environment after database refresh  ##
#######################################################################
Write-Output $((Get-Date –f o) + ' Starting restore of ' + $DBInput + ' database permissions on target server ' + $target_server ) | Tee-Object -file $dbrefresh_logfile
try
    {
	Invoke-Sqlcmd -InputFile $script_path'\Permissions\perm_'$target_server'_'$DBInput'.sql' -ServerInstance $target_server -Database $DBInput -Verbose -AbortOnError -QueryTimeout 800 | out-null | Tee-Object -file $dbrefresh_logfile
    }
catch
	{
	$ErrorMessage = $_.Exception.Message
	Write-Output $((Get-Date –f o) + ' Error during executing the restore of database permissions on the ' + $DBInput + ' on database target server ' + $target_server +':  ' + $ErrorMessage ) -foregroundcolor Red | Tee-Object -file $dbrefresh_logfile
	} 
Write-Output $((Get-Date –f o) + ' Restore of Target Database Permissions Script for ' + $DBInput + ' on target server ' + $target_server + ' completed successfully.') -foregroundcolor Green| Tee-Object -file $dbrefresh_logfile

#####################################
## Orphanned User Fix on All DB's  ##
#####################################

# Connect to the specified instance
$s = new-object ('Microsoft.SqlServer.Management.Smo.Server') $target_server
# get database collection 
$dbs = $s.Databases | where-object {$_.IsSystemObject -eq $FALSE -and $_.IsAccessible -eq $TRUE}
  
foreach ($element in $arr){   

foreach ($db in $dbs  | where-Object {$_.name -eq $element}) {
   $dbname=$db.Name
   #$dbname='qtr'
   #Get orphaned users.
   # users with login = "" are orphaned users
   
     
   $OrphanUser = $db.Users | Where-Object {$_.Login -eq "" -and $_.IsSystemObject -eq $False}
#if there are no orphaned users in a database 
#move to next database
   if(!$OrphanUser)
   {
        #No orphan user for database.
        Write-Output "There are no orphan users for database $dbname" | Tee-Object -file $dbrefresh_logfile
   }
   else {
   foreach($user in $OrphanUser)
     {
        $username=$user.name
        #get login name with same name as that of orphaned user.
        $login = $s.logins | where-object {$_.name -eq $user.name  -and $_.isdisabled -eq $False -and $_.IsSystemObject -eq $False -and $_.IsLocked -eq $False}
         
        #if a login doesn't exists; move to next orphaned user
        if(!$login)
        {
            Write-Output "Login for user $username in $dbname does not exist" -foregroundcolor Red
            #break;            
        }
		else
        {
            #fix orphan user.
            $query="ALTER USER " +  $username + " WITH LOGIN = " +  $username
            $database=$user.Parent.Name
            Write-Output "Mapping user $dbname.$username to $username" | Tee-Object -file $dbrefresh_logfile
			Write-Output $query | Tee-Object -file $dbrefresh_logfile
            #execute the query.
            Invoke-Sqlcmd -Query "$query;" -ServerInstance $target_server -Database $dbname
			If ($LastExitCode -ne 0) {
			Write-Output $((Get-Date –f o) + ' Error executing ' + $query +' '+ $LastExitCode +' '+ $element)  | Tee-Object -file $dbrefresh_logfile
             
			}
        }
        }
		}

#Remove-PSSession $Session

########################################
## Kill Final Sessions on DB Restored ##
########################################
##Kill all current user Sessions on Destination DB
###Write-Output $((Get-Date –f o) + ' Starting Kill Users for ' + $DBInput) | Tee-Object -file $dbrefresh_logfile
###try
###    {
###	Invoke-Sqlcmd -InputFile $script_path\KillUsersConnectedDB.sql -ServerInstance $target_server -Database $DBInput -Verbose -AbortOnError -QueryTimeout 1400 | out-null | Tee-Object -file $dbrefresh_logfile
###	}
###catch
###	{
###	$ErrorMessage = $_.Exception.Message
###	Write-Output $((Get-Date –f o) + ' Error during executing Kill Users for ' + $DBInput + ' refresh scripts: ' + $ErrorMessage )  | Tee-Object -file $dbrefresh_logfile
###	} 
###Write-Output $((Get-Date –f o) + ' Final Kill Users Script for ' + $DBInput + ' completed') | Tee-Object -file $dbrefresh_logfile

		
#		if ( $server.contains("ddmsql")) {
#		
#        $query = "EXEC sp_addrolemember N'db_owner', N'DM\G--Developers'"
#		#Write-Output $((Get-Date –f o) 'Granting db_owner to G--Developers' )| Tee-Object -file $dbrefresh_logfile -append
#		Write-Output $query | Tee-Object -file $tsm_logfile -append
#        Invoke-Sqlcmd -Query "$query;" -ServerInstance $svr -Database $dbname
#		If ($LastExitCode -ne 0) {
#			Write-Output $((Get-Date –f o) + ' Error executing ' + $query +' '+ $LastExitCode +' '+ $element)  | Tee-Object -file $dbrefresh_logfile -append
#             
#			}
		
		
        }
}

#####################################
## Applying Post Refresh Scripts   ##
#####################################
		
#		if ( $dbname.contains(""))
#        { 
#			Write-Output $((Get-Date –f o) + ' starting Post-Deploy for ') | Tee-Object -file $dbrefresh_logfile -append
#			try
#			{
#				Invoke-Sqlcmd -InputFile $script_path\Post_Deploy_Script.publish.sql -ServerInstance $target_server -Database $dbname -Verbose -AbortOnError | Tee-Object -file $dbrefresh_logfile -append
#                Invoke-Sqlcmd -InputFile $script_path\Post_Deploy_Script_DanMullins.sql -ServerInstance $target_server -Database $dbname -Verbose -AbortOnError  -QueryTimeout 1200 | Tee-Object -file $dbrefresh_logfile -append
#			}
#			catch
#			{
#				$ErrorMessage = $_.Exception.Message
#				Write-Output $((Get-Date –f o) + ' Error during executing post refresh scripts: ' + $ErrorMessage )  | Tee-Object -file $dbrefresh_logfile -append
#			} 
#           Write-Output $((Get-Date –f o) + ' Post-Deploy for  completed') | Tee-Object -file $dbrefresh_logfile -append
#		}
#		
#		
#		
#  }
#       
#}

#}

#if ($count -gt 0)
#{
#    [Environment]::Exit('20'); 
#   }


#Get-ChildItem –Path  $logfile_path"*daily*.log" –Recurse | Where-Object CreationTime –lt (Get-Date).AddDays(-20) | Remove-Item
