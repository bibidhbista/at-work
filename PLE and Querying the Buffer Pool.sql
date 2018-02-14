-- PLE QUERY
/*
		1.  All NUMAs have good PLE if (ple_per_4GB is > 300 sec)
		2.  If ple_per_4gb<300, memory is not reused efficiently as the performance will rely on the disk which is much slower than memory,
			and will generate a lot of disk IO and stress the storage. So, by looking at the PLE normalized to 4GB and per numa node, we can spot 
			the opportunity for optimization and investigate further (which objects are using the most of buffer cache memory, the distribution of 
			“hotness” of it’s indexes and partitions etc).
*/


-- ple_per_4gb of every NUMA node should be > 300 sec !
SELECT numa_node = ISNULL(NULLIF(ple.instance_name, ''), 'ALL'), 
    ple_sec = ple.cntr_value, db_node_mem_GB = dnm.cntr_value*8/1048576,
    ple_per_4gb = ple.cntr_value * 4194304 / (dnm.cntr_value*8)     -- All NUMAs have good PLE if (ple_per_4GB is > 300 sec)
FROM sys.dm_os_performance_counters ple join sys.dm_os_performance_counters dnm
    on ple.instance_name = dnm.instance_name
    and ple.counter_name='Page life expectancy' -- PLE per NUMA node
    and dnm.counter_name='Database pages' -- buffer pool size (pages) per NUMA node

-- DBCC DROPCLEANBUFFERS only drops clean pages
/*
	DROPCLEANBUFFERS drops *clean* pages from the buffer pool only.
	A clean page is one that has not been changed since it was read into memory or last written to disk. A dirty page is one that 
	has not been written to disk since it was last changed. Dirty pages are not dropped by DBCC DROPCLEANBUFFERS, they are only 
	made clean by writing them to disk (either through one of the various kinds of checkpoints or by the lazy writer – or one of 
	the per-NUMA node lazy writers if you have NUMA configured).
*/
	SELECT *,
    [DirtyPageCount] * 8 / 1024 AS [DirtyPageMB],
    [CleanPageCount] * 8 / 1024 AS [CleanPageMB]
FROM
    (SELECT
        (CASE WHEN ([database_id] = 32767)
            THEN N'Resource Database'
            ELSE DB_NAME ([database_id]) END) AS [DatabaseName],
        SUM (CASE WHEN ([is_modified] = 1)
            THEN 1 ELSE 0 END) AS [DirtyPageCount],
        SUM (CASE WHEN ([is_modified] = 1)
            THEN 0 ELSE 1 END) AS [CleanPageCount]
    FROM sys.dm_os_buffer_descriptors
    GROUP BY [database_id]) AS [buffers]
ORDER BY [DatabaseName]
GO


	
-- Buffer pool query 
-- % of index in cache or the buffer pool

IF OBJECT_ID('TempDB..#BufferSummary') IS NOT NULL BEGIN
	DROP TABLE #BufferSummary
END

IF OBJECT_ID('TempDB..#BufferPool') IS NOT NULL BEGIN
	DROP TABLE #BufferPool
END

CREATE TABLE #BufferPool
(
	Cached_MB Int
	, Database_Name SysName
	, Schema_Name SysName NULL
	, Object_Name SysName NULL
	, Index_ID Int NULL
	, Index_Name SysName NULL
	, Used_MB Int NULL
	, Used_InRow_MB Int NULL
	, Row_Count BigInt NULL
)

SELECT Pages = COUNT(1)
	, allocation_unit_id
	, database_id
INTO #BufferSummary
FROM sys.dm_os_buffer_descriptors 
GROUP BY allocation_unit_id, database_id 
	
DECLARE @DateAdded SmallDateTime  
SELECT @DateAdded = GETDATE()  
  
DECLARE @SQL NVarChar(4000)  
SELECT @SQL = ' USE [?]  
INSERT INTO #BufferPool (
	Cached_MB 
	, Database_Name 
	, Schema_Name 
	, Object_Name 
	, Index_ID 
	, Index_Name 
	, Used_MB 
	, Used_InRow_MB 
	, Row_Count 
	)  
SELECT sum(bd.Pages)/128 
	, DB_Name(bd.database_id)
	, Schema_Name(o.schema_id)
	, o.name
	, p.index_id 
	, ix.Name
	, i.Used_MB
	, i.Used_InRow_MB
	, i.Row_Count     
FROM #BufferSummary AS bd 
	LEFT JOIN sys.allocation_units au ON bd.allocation_unit_id = au.allocation_unit_id
	LEFT JOIN sys.partitions p ON (au.container_id = p.hobt_id AND au.type in (1,3)) OR (au.container_id = p.partition_id and au.type = 2)
	LEFT JOIN (
		SELECT PS.object_id
			, PS.index_id 
			, Used_MB = SUM(PS.used_page_count) / 128 
			, Used_InRow_MB = SUM(PS.in_row_used_page_count) / 128
			, Used_LOB_MB = SUM(PS.lob_used_page_count) / 128
			, Reserved_MB = SUM(PS.reserved_page_count) / 128
			, Row_Count = SUM(row_count)
		FROM sys.dm_db_partition_stats PS
		GROUP BY PS.object_id
			, PS.index_id
	) i ON p.object_id = i.object_id AND p.index_id = i.index_id
	LEFT JOIN sys.indexes ix ON i.object_id = ix.object_id AND i.index_id = ix.index_id
	LEFT JOIN sys.objects o ON p.object_id = o.object_id
WHERE database_id = db_id()  
GROUP BY bd.database_id   
	, o.schema_id
	, o.name
	, p.index_id
	, ix.Name
	, i.Used_MB
	, i.Used_InRow_MB
	, i.Row_Count     
HAVING SUM(bd.pages) > 128  
ORDER BY 1 DESC;'  

EXEC sp_MSforeachdb @SQL

SELECT Cached_MB 
	, Pct_of_Cache = CAST(Cached_MB * 100.0 / SUM(Cached_MB) OVER () as Dec(20,3))
	, Pct_Index_in_Cache = CAST(Cached_MB * 100.0 / CASE Used_MB WHEN 0 THEN 0.001 ELSE Used_MB END as DEC(20,3))
	, Database_Name 
	, Schema_Name 
	, Object_Name 
	, Index_ID 
	, Index_Name 
	, Used_MB 
	, Used_InRow_MB 
	, Row_Count 
FROM #BufferPool 
ORDER BY Cached_MB DESC