SELECT [sch].[name] + '.' + [so].[name] AS [TableName] ,
[ss].[name] AS [Statistic],
[sp].[last_updated] AS [StatsLastUpdated] ,
[sp].[rows] AS [RowsInTable] ,
[sp].[rows_sampled] AS [RowsSampled] ,
[sp].[modification_counter] AS [RowModifications]
FROM [sys].[stats] [ss]
JOIN [sys].[objects] [so] ON [ss].[object_id] = [so].[object_id]
JOIN [sys].[schemas] [sch] ON [so].[schema_id] = [sch].[schema_id]
OUTER APPLY [sys].[dm_db_stats_properties]([so].[object_id],
[ss].[stats_id]) sp
WHERE [so].[type] = 'U'
AND [sp].[modification_counter] > 0--change accordingly
ORDER BY [sp].[last_updated] DESC;

--sp_updatestats
--UPDATE STATISTICS Production.Product(Products)     WITH FULLSCAN