--Get top query plans by handle for total worker time
select top 50 
    sum(qs.total_worker_time) as total_cpu_time, 
    sum(qs.execution_count) as total_execution_count,
    count(*) as  number_of_statements, 
    qs.plan_handle,
	 dm_exec_sql_text.text AS TSQL_Text
from 
    sys.dm_exec_query_stats qs
	CROSS APPLY sys.dm_exec_sql_text(QS.plan_handle)
group by qs.plan_handle,dm_exec_sql_text.text
order by sum(qs.total_worker_time) desc

--Any query where average is longer than 3 secons
SELECT 
               db_name(dm_exec_sql_text.dbid), dm_exec_sql_text.text AS TSQL_Text,
dm_exec_query_stats.total_elapsed_time*1.0/dm_exec_query_stats.execution_count/1000000,
               'DBCC FREEPROCCACHE (0x' + convert(varchar(max),dm_exec_query_stats.plan_handle,2) + ')'
FROM sys.dm_exec_query_stats 
CROSS APPLY sys.dm_exec_sql_text(dm_exec_query_stats.plan_handle)
--CROSS APPLY sys.dm_exec_query_plan(dm_exec_query_stats.plan_handle)
WHERE --db_name(dm_exec_sql_text.dbid) IN ('MIDOC_FOODSERVICE','MIDOC_MEDICAL') and 
dm_exec_query_stats.total_elapsed_time*1.0/dm_exec_query_stats.execution_count/1000000 >= 3
order by dm_exec_query_stats.total_elapsed_time/dm_exec_query_stats.execution_count desc

--free specific cached plan
DBCC FREEPROCCACHE (0x050012003EC4C60B507F8BCF1600000001000000000000000000000000000000000000000000000000000000)

--Search for a specific store procedure(s)
SELECT TOP 10
                              databases.name,
               dm_exec_query_stats.plan_handle,
               dm_exec_sql_text.text AS TSQL_Text,
               dm_exec_query_stats.creation_time, 
               dm_exec_query_stats.execution_count,
               dm_exec_query_stats.total_worker_time AS total_cpu_time,
               dm_exec_query_stats.total_elapsed_time, 
               dm_exec_query_stats.total_logical_reads, 
               dm_exec_query_stats.total_physical_reads, 
               dm_exec_query_plan.query_plan
FROM sys.dm_exec_query_stats 
CROSS APPLY sys.dm_exec_sql_text(dm_exec_query_stats.plan_handle)
CROSS APPLY sys.dm_exec_query_plan(dm_exec_query_stats.plan_handle)
INNER JOIN sys.databases
ON dm_exec_sql_text.dbid = databases.database_id
WHERE dm_exec_sql_text.text LIKE '%WHERE      BASE.OFFACTID = @P0     AND BASE.H_OFFACTID = @P1%';
