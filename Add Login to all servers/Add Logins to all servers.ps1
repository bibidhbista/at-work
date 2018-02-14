$QUERY=@"
USE [master]
If not Exists (
	SELECT loginname from master.dbo.syslogins WHERE name= 'FHLBDM\G-Sql Maintenance' and dbname = 'master'
	) 
BEGIN 
CREATE LOGIN [FHLBDM\G-Sql Maintenance] FROM WINDOWS WITH DEFAULT_DATABASE= [master], DEFAULT_LANGUAGE=[us_english]
EXEC sp_addsrvrolemember 'FHLBDM\G-SQL Maintenance', 'sysadmin'
END
"@



$AllServers = gc "N:\Projects\Maint_Plans\AllSQLServers.txt" 
 $count=0
 $AllServers|%{
    $count+=1
 }

 Write-output "List has $count server(s) in it." 
 $count=0
 foreach($server in $AllServers)
{
    try{
            $count+=1
            Invoke-Sqlcmd -Query $QUERY -ServerInstance $server}
    catch{
            Write-Error "Failed for $server... :(" -ErrorAction Stop
    }

}


    Write-host "Permissions applied to $count server(s)."