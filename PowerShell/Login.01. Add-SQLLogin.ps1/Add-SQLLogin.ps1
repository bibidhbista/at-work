##################################################################################
## PURPOSE: Add SQL Login to a list of servers with a pre-defined server role   
##                                                                              
## NAME: Add-SQLLogin.ps1                                                       
##                                                                              
## AUTHOR: Bibidh Bista                                                         
##                                                                              
## TYPE: SQL Login                                                              
##                                                                              
###################################################################################



$LoginToAdd = ''
$ServerRoleForLogin = 'sysadmin'

$Query = @"
USE [master]
If not Exists (
	SELECT loginname from master.dbo.syslogins WHERE name= '$LoginToAdd' and dbname = 'master'
	) 
BEGIN 
CREATE LOGIN [$LoginToAdd] FROM WINDOWS WITH DEFAULT_DATABASE= [master], DEFAULT_LANGUAGE=[us_english]
EXEC sp_addsrvrolemember '$LoginToAdd', '$ServerRoleForLogin'
END
"@


$AllServers = gc "$PSScriptRoot\AllSQLServers.txt" 
$Count = 0
$AllServers|%{
    $Count+=1
}

Write-output "List has $count server(s) in it." 
foreach($server in $AllServers)
{
    try{
            Invoke-Sqlcmd -Query $QUERY -ServerInstance $server}
    catch{
            Write-Error "Failed for $server... :(" -ErrorAction Stop
    }

}

Write-host "Permissions applied to all of $Count server(s) on the list."
