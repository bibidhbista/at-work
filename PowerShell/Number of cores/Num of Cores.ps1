

 $AllServers = gc "N:\Projects\Number of cores\AllSQLServers.txt" 
 Remove-Item "N:\Projects\Number of cores\Results_CMNumCores.csv" -force
 $AllServers| %{
    # Execute a command
         Write-Host "[processing '$_' inside the loop]"
         

$sqlQuery = @"             
              
-- Script to get CPU and Memory Info
SELECT
@@SERVERNAME AS serverName,
 cpu_count AS [Number of Logical CPU]
,hyperthread_ratio
,cpu_count/hyperthread_ratio AS [Number of Physical CPU]
--,physical_memory_kb/1048576 AS [Total Physical Memory IN GB]
FROM sys.dm_os_sys_info OPTION (RECOMPILE);




"@
         & INVOKE-SQLCMD -Query $sqlQuery -ServerInstance $_ -Database 'MASTER'|Export-Csv -Append -Path "N:\Projects\Number of cores\Results_CMNumCores.csv" -Encoding ascii -NoTypeInformation -Force
 }

 Invoke-Item -Path "N:\Projects\Number of cores\Results_CMNumCores.csv"