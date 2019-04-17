# Lists all the indexes with >1000 pages and 20% avg fragmenatation for all databases in all servers in the list

 $AllServers = gc "$psscriptroot\specific.txt" 
 Remove-Item "$psscriptroot\IndexCheck.csv" -force
    
 $currentServerName = ''
 # remove this if querying all the servers on the list 
 #$AllServers='*servername*'
 # Loop Through all servers
 $AllServers| %{
    # Execute a command
    $currentServerName = $_
    Write-Host "[processing '$currentServerName' inside the loop]"
    $databases = Get-DbaDatabase -SqlInstance $_
    
    # take this away when querying all databases
    #$databases = 'qrm_source'
    #$databases.name ='qrm_source'
    # Loop through all the databases for a server
    $databases|%{

    #Actual sql query to pull in results
$sqlQuery=@"
DECLARE @DatabaseID INT 
SET @DatabaseID = DB_ID()
SELECT @@SERVERNAME AS servername,
       DB_NAME(@DatabaseID) AS DatabaseName,
       schemas.[name] AS SchemaName,
       objects.[name] AS ObjectName,
       indexes.[name] AS IndexName,
       objects.type_desc AS ObjectType,
       indexes.type_desc AS IndexType,
       dm_db_index_physical_stats.partition_number AS PartitionNumber,
       dm_db_index_physical_stats.page_count AS [PageCount],
       dm_db_index_physical_stats.avg_fragmentation_in_percent AS AvgFragmentationInPercent
FROM sys.dm_db_index_physical_stats (@DatabaseID, NULL, NULL, NULL, 'LIMITED') dm_db_index_physical_stats
INNER JOIN sys.indexes indexes ON dm_db_index_physical_stats.[object_id] = indexes.[object_id] AND dm_db_index_physical_stats.index_id = indexes.index_id
INNER JOIN sys.objects objects ON indexes.[object_id] = objects.[object_id]
INNER JOIN sys.schemas schemas ON objects.[schema_id] = schemas.[schema_id]
WHERE objects.[type] IN('U','V')
AND objects.is_ms_shipped = 0
AND indexes.[type] IN(1,2,3,4)
AND indexes.is_disabled = 0
AND indexes.is_hypothetical = 0
AND dm_db_index_physical_stats.alloc_unit_type_desc = 'IN_ROW_DATA'
AND dm_db_index_physical_stats.index_level = 0
AND dm_db_index_physical_stats.page_count >= 1000
AND [avg_fragmentation_in_percent] > 20
"@
        & INVOKE-SQLCMD -Query $sqlQuery -ServerInstance $currentServerName -Database $_.name|Export-Csv -Append -Path "$psscriptroot\IndexCheck.csv" -Encoding ascii -NoTypeInformation -Force
        }
 }

 # open the csv file to see results
 Invoke-Item -Path "$psscriptroot\IndexCheck.csv"


  
