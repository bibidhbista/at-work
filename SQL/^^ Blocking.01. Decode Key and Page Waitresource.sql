-- Decoding Wait resource  https://littlekendra.com/2016/10/17/decoding-key-and-page-waitresource-for-deadlocks-and-blocking/
-- 1. WAITRESOURCE ===>  PAGE: database_id:data_file_id:page_number
-- for “PAGE: 6:3:70133”
--DBCC TRACEON (3604);
--GO
--DBCC PAGE ('WideWorldImporters',3,70133,2); -- /* DBCC PAGE (DatabaseName, FileNumber, PageNumber, DumpStyle)*/
--GO

-- 2. WAITRESOURCE ===>  KEY: 25:72057619295567872 (3297a8396086) 
declare @keyValue varchar(256);
SET @keyValue = 'KEY: 47:72057594228441088 (1a2c77b2a720)' --Output from deadlock graph: process-list/process[waitresource] -- CHANGE HERE !


------------------------------------------------------------------------
--Should not have to change anything below this line: 
declare @lockres nvarchar(255), @hobbitID bigint, @dbid int, @databaseName sysname;
--.............................................
--PARSE @keyValue parts:
SELECT @dbid = LTRIM(SUBSTRING(@keyValue, CHARINDEX(':', @keyValue) + 1, CHARINDEX(':', @keyValue, CHARINDEX(':', @keyValue) + 1) - (CHARINDEX(':', @keyValue) + 1) ));
SELECT @hobbitID = convert(bigint, RTRIM(SUBSTRING(@keyValue, CHARINDEX(':', @keyValue, CHARINDEX(':', @keyValue) + 1) + 1, CHARINDEX('(', @keyValue) - CHARINDEX(':', @keyValue, CHARINDEX(':', @keyValue) + 1) - 1)));
SELECT @lockRes = RTRIM(SUBSTRING(@keyValue, CHARINDEX('(', @keyValue) + 0, CHARINDEX(')', @keyValue) - CHARINDEX('(', @keyValue) + 1));
--.............................................
--Validate DB name prior to running dynamic SQL
SELECT @databaseName = db_name(@dbid);  
IF not exists(select * from sys.databases d where d.name = @databaseName)
BEGIN
    RAISERROR(N'Database %s was not found.', 16, 1, @databaseName);
    RETURN;
END

declare @objectName sysname, @indexName sysname, @schemaName sysname;
declare @ObjectLookupSQL as nvarchar(max) = '
SELECT @objectName = o.name, @indexName = i.name, @schemaName = OBJECT_SCHEMA_NAME(p.object_id, @dbid)
FROM ' + quotename(@databaseName) + '.sys.partitions p
JOIN ' + quotename(@databaseName) + '.sys.indexes i ON p.index_id = i.index_id AND p.[object_id] = i.[object_id]
JOIN ' + quotename(@databaseName)+ '.sys.objects o on o.object_id = i.object_id
WHERE hobt_id = @hobbitID'
;
--print @ObjectLookupSQL
--Get object and index names
exec sp_executesql @ObjectLookupSQL
    ,N'@dbid int, @hobbitID bigint, @objectName sysname OUTPUT, @indexName sysname OUTPUT, @schemaName sysname OUTPUT'
    ,@dbid = @dbid
    ,@hobbitID = @hobbitID
    ,@objectName = @objectName output
    ,@indexName = @indexName output
    ,@schemaName = @schemaName output
;

DECLARE @fullObjectName nvarchar(512) = quotename(@databaseName) + '.' + quotename(@schemaName) + '.' + quotename(@objectName);
SELECT fullObjectName = @fullObjectName, lockIndex = @indexName, lockRes_key = @lockres, hobt_id = @hobbitID, waitresource_keyValue = @keyValue;

--Validate object name prior to running dynamic SQL
IF OBJECT_iD( @fullObjectName) IS NULL 
BEGIN
    RAISERROR(N'The object "%s" was not found.',16,1,@fullObjectName);
    RETURN;
END

--Get the row that was blocked
--NOTE: we use the NOLOCK hint to avoid locking the table when searching by %%lockres%%, which might generate table scans.
DECLARE @finalResult nvarchar(max) = N'SELECT lockResKey = %%lockres%% ,* 
FROM ' + @fullObjectName
+ ISNULL(' WITH(NOLOCK INDEX(' + QUOTENAME(@indexName) + ')) ', '')  
+ ' WHERE %%lockres%% = @lockres'
;

--print @finalresult
EXEC sp_executesql @finalResult, N'@lockres nvarchar(255)', @lockres = @lockres;