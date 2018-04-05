SELECT db_name(dest.dbid) as DBName,deqs.last_execution_time AS [Time],  dest.text AS [Query], dest.*
FROM sys.dm_exec_query_stats AS deqs
CROSS APPLY sys.dm_exec_sql_text(deqs.sql_handle) AS dest
--WHERE db_name(dest.dbid) LIKE '%HUB%'
ORDER BY DBName DESC, Time desc