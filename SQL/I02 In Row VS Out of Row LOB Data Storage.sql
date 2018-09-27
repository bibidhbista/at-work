-- In-Row Data vs LOB_Data
SELECT TOP 20 OBJECT_NAME(p.object_id) AS Object_Name
       , i.name AS Index_Name
       , ps.in_row_used_page_count AS IN_ROW_DATA
       , ps.lob_used_page_count AS LOB_DATA
	   
FROM sys.dm_db_partition_stats ps
JOIN sys.partitions p ON ps.partition_id = p.partition_id
JOIN sys.indexes i ON p.index_id = i.index_id AND p.object_id = i.object_id
WHERE OBJECTPROPERTY (p.[object_id], 'IsUserTable') = 1 AND ps.lob_used_page_count>0

-- View current large value type in row or out of row value for a table
SELECT NAME,LARGE_VALUE_TYPES_OUT_OF_ROW FROM SYS.TABLES
WHERE LARGE_VALUE_TYPES_OUT_OF_ROW = 1 AND NAME LIKE 'XMLTest%' 


-- Data Space/FG Query
SELECT T.NAME AS [TABLE NAME]
, LOB_DATA_SPACE_ID AS [DATA SPACE ID]
, DS.NAME AS [DATA SPACE NAME]
FROM SYS.TABLES AS T
INNER JOIN SYS.DATA_SPACES AS DS
ON T.LOB_DATA_SPACE_ID = DS.DATA_SPACE_ID;
GO
