-- shrink %
SELECT percent_complete, start_time, status, command, estimated_completion_time, cpu_time, total_elapsed_time
FROM sys.dm_exec_requests where command ='DbccFilesCompact'

SELECT name ,size/128.0 - CAST(FILEPROPERTY(name, 'SpaceUsed') AS int)/128.0 AS AvailableSpaceInMB
FROM sys.database_files;
dbcc sqlperf(logspace)
DBCC SQLPERF("sys.dm_os_wait_stats",CLEAR);

  --index frag %
  exec sp_MSforeachdb 'use [?];
  SELECT db_name() as DBName,OBJECT_NAME(ind.OBJECT_ID) AS TableName,
ind.name AS IndexName, indexstats.index_type_desc AS IndexType,
indexstats.avg_fragmentation_in_percent
FROM sys.dm_db_index_physical_stats(DB_ID(), NULL, NULL, NULL, NULL) indexstats
INNER JOIN sys.indexes ind
ON ind.object_id = indexstats.object_id
AND ind.index_id = indexstats.index_id
WHERE indexstats.avg_fragmentation_in_percent > 30
ORDER BY indexstats.avg_fragmentation_in_percent DESC
'

-- Search all db/schema/table for a string
Set NOCOUNT ON
DECLARE @ALLTABLES TABLE(DbName sysname, SchemaName sysname, TableName sysname)
DECLARE @SearchDb nvarchar(200)
  DECLARE @SearchSchema nvarchar(200)
  DECLARE @SearchTable nvarchar(200)
  DECLARE @SQL nvarchar(4000)
SET @SearchDb = '%'
SET @SearchSchema = '%'
SET @SearchTable = '%'
SET @SQL = 'select ''?'' as DbName, s.name as SchemaName, t.name as TableName from [?].sys.tables t inner join sys.schemas s on t.schema_id=s.schema_id WHERE ''?'' LIKE '''+@SearchDb+''' AND s.name LIKE '''+@SearchSchema+''' AND t.name LIKE '''+@SearchTable+''''

INSERT INTO @ALLTABLES (DbName, SchemaName, TableName)
  EXEC sp_msforeachdb @SQL
SET NOCOUNT OFF
SELECT * FROM @ALLTABLES ORDER BY DbName, SchemaName, TableName

-- Search column name
Create table #yourcolumndetails(DBaseName varchar(100), TableSchema varchar(50), TableName varchar(100),ColumnName varchar(100), DataType varchar(100), CharMaxLength varchar(100))

EXEC sp_MSForEachDB @command1='USE [?];
  INSERT INTO #yourcolumndetails SELECT
  Table_Catalog
  ,Table_Schema
  ,Table_Name
  ,Column_Name
  ,Data_Type
  ,Character_Maximum_Length
  FROM INFORMATION_SCHEMA.COLUMNS
  WHERE COLUMN_NAME like ''%BOND%'''

select * from #yourcolumndetails
Drop table #yourcolumndetails