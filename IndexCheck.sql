-- List indexes with fragmentations greater than 20%
EXEC sys.sp_MSforeachdb '
use [?]
DECLARE @DatabaseID INT; 
Declare @DBName nvarchar(35);

SET @DatabaseID = ;
SET @DBName = DB_Name(@databaseID);

SELECT DB_name() AS DatabaseName,
       schemas.[name] AS SchemaName,
       objects.[name] AS ObjectName,
       indexes.[name] AS IndexName,
       objects.type_desc AS ObjectType,
       indexes.type_desc AS IndexType,
       dm_db_index_physical_stats.partition_number AS PartitionNumber,
       dm_db_index_physical_stats.page_count AS [PageCount],
       dm_db_index_physical_stats.avg_fragmentation_in_percent AS AvgFragmentationInPercent
FROM sys.dm_db_index_physical_stats (DB_ID(), NULL, NULL, NULL, ''LIMITED'') dm_db_index_physical_stats
INNER JOIN sys.indexes indexes ON dm_db_index_physical_stats.[object_id] = indexes.[object_id] AND dm_db_index_physical_stats.index_id = indexes.index_id
INNER JOIN sys.objects objects ON indexes.[object_id] = objects.[object_id]
INNER JOIN sys.schemas schemas ON objects.[schema_id] = schemas.[schema_id]
WHERE objects.[type] IN(''U'',''V'')
AND objects.is_ms_shipped = 0
AND indexes.[type] IN(1,2,3,4)
AND indexes.is_disabled = 0
AND indexes.is_hypothetical = 0
AND dm_db_index_physical_stats.alloc_unit_type_desc = ''IN_ROW_DATA''
AND dm_db_index_physical_stats.index_level = 0
AND dm_db_index_physical_stats.page_count >= 1000
AND [avg_fragmentation_in_percent] > 20
'


--List unused or inefficient indexes  
-- Compare Seeks/Scans/Lookups Value vs Updates value to find potentially unused indexes  -- caution w deleting unique indexes because it violates business req
-- Statistics resets on index rebuilds/server restart so might not contain aprop. statistics for scheduled jobs that use the indexes

select 
    s.Name + N'.' + t.name as [Table]
    ,i.name as [Index] 
    ,i.is_unique as [IsUnique]
    ,ius.user_seeks as [Seeks], ius.user_scans as [Scans]
    ,ius.user_lookups as [Lookups]
    ,ius.user_seeks + ius.user_scans + ius.user_lookups as [Reads]
    ,ius.user_updates as [Updates], ius.last_user_seek as [Last Seek]
    ,ius.last_user_scan as [Last Scan], ius.last_user_lookup as [Last Lookup]
    ,ius.last_user_update as [Last Update]
from 
    sys.tables t with (nolock) join sys.indexes i with (nolock) on
        t.object_id = i.object_id
    join sys.schemas s with (nolock) on 
        t.schema_id = s.schema_id
    left outer join sys.dm_db_index_usage_stats ius on
        ius.database_id = db_id() and
        ius.object_id = i.object_id and 
        ius.index_id = i.index_id
order by
    s.name, t.name, i.index_id
option (recompile)





-- List of redundant indexes (w same leftmost cols.)

select
    s.Name + N'.' + t.name as [Table]
    ,i1.index_id as [Index1 ID], i1.name as [Index1 Name]
    ,dupIdx.index_id as [Index2 ID], dupIdx.name as [Index2 Name] 
    ,c.name as [Column]
from 
    sys.tables t join sys.indexes i1 on
        t.object_id = i1.object_id
    join sys.index_columns ic1 on
        ic1.object_id = i1.object_id and
        ic1.index_id = i1.index_id and 
        ic1.index_column_id = 1  
    join sys.columns c on
        c.object_id = ic1.object_id and
        c.column_id = ic1.column_id      
    join sys.schemas s on 
        t.schema_id = s.schema_id
    cross apply
    (
        select i2.index_id, i2.name
        from
            sys.indexes i2 join sys.index_columns ic2 on       
                ic2.object_id = i2.object_id and
                ic2.index_id = i2.index_id and 
                ic2.index_column_id = 1  
        where	
            i2.object_id = i1.object_id and 
            i2.index_id > i1.index_id and 
            ic2.column_id = ic1.column_id
    ) dupIdx     
order by
    s.name, t.name, i1.index_id


-- Max length for index keys --> cannont be greater than 900 bytes 
SELECT SUM(max_length)AS TotalIndexKeySize FROM sys.columns
SELECT * FROM sys.[columns]
