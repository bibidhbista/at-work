
----------------------------------------------------------------------------------------------------------------------
---------------------------------------------------- DMVs ------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
 
  /*
		Execution Related
					sys.dm_exec_connections         =   Current User Connections
					sys.dm_exec_sessions            =   Current User + System Connections
					sys.dm_exec_requests            =   Currently executing requests
					sys.dm_exec_cached_plans
					sys.dm_exec_query_plans
					sys.dm_exec_sql_text			=   View actual queries being ran by passing in particular sql handle
					sys.dm_exec_query_stats
		
		Index Related
					sys.dm_db_index_physical_stats
					sys.dm_db_index_usage_stats
		
		SQL Server Operating System
					sys.dm_os_performance_counters
					sys.dm_os_schedulers
					sys.dm_os_nodes
					sys.dm_os_waiting_tasks
					sys.dm_os_wait_stats
		I/O Related
					sys.dm_io_virtual_file_stats
  */

  


----------------------------------------------------------------------------------------------------------------------
--------------------------------------------- DMVs related to execution ----------------------------------------------
----------------------------------------------------------------------------------------------------------------------

-- Get a List of All USER Connections 
SELECT * FROM sys.dm_exec_connections
-- Get a List of All USER AND SYSTEM Sessions
-- (Session ID) > 50 = User Connections
SELECT * FROM sys.dm_exec_sessions

-- Get critical fields only from the list of all user connections:
 SELECT c.session_id
 , c.auth_scheme
 , c.node_affinity
 , s.login_name
 , db_name(s.database_id) AS database_name
 , CASE s.transaction_isolation_level
 WHEN 0 THEN 'Unspecified'
 WHEN 1 THEN 'Read Uncomitted'
 WHEN 2 THEN 'Read Committed'
 WHEN 3 THEN 'Repeatable'
 WHEN 4 THEN 'Serializable'
 WHEN 5 THEN 'Snapshot'
 END AS transaction_isolation_level
 , s.status
 , t.text
 , c.most_recent_sql_handle
 FROM sys.dm_exec_connections c
 INNER JOIN sys.dm_exec_sessions s ON c.session_id = s.session_id -- inner join only gives user connection as connection only has user connections and not system sessions
 CROSS APPLY sys.dm_exec_sql_text(c.most_recent_sql_handle) AS t

 

-- Passing sql handle to view sql text
SELECT t.*
FROM sys.dm_exec_requests AS r
CROSS APPLY sys.dm_exec_sql_text(r.sql_handle) AS t


-- Obtain information about the top five queries by average CPU time
-- Statement offset is for accounting for comments before and after t-sql queries -- GENIUS!!
SELECT TOP 5 total_worker_time/execution_count AS [Avg CPU Time],
total_worker_time,
execution_count,  
st.text,
	qs.statement_start_offset,
	qs.statement_end_offset,
     SUBSTRING(st.text, (qs.statement_start_offset/2)+1,   
        ((CASE qs.statement_end_offset  
          WHEN -1 THEN DATALENGTH(st.text)  
         ELSE qs.statement_end_offset  
         END - qs.statement_start_offset)/2) + 1) AS statement_text  
FROM sys.dm_exec_query_stats AS qs  
CROSS APPLY sys.dm_exec_sql_text(qs.sql_handle) AS st  
ORDER BY total_worker_time/execution_count DESC;  
-- WHERE session_id = 59 -- modify this value with your actual spid
----------------------------------------------------------------------------------------------------------------------
--------------------------------------------- DMVs for Index Usage ---------------------------------------------------
----------------------------------------------------------------------------------------------------------------------

-- Index Usage Stats
select DB_NAME(database_id) as DBName,* from  sys.dm_db_index_physical_stats(DB_ID(),NULL,NULL,NULL,'Limited')
select * from sys.dm_db_index_usage_stats


-- Using sys.dm_db_index_physical_stats to show the number of page-compressed pages
SELECT o.name,  
    ips.partition_number,  
    ips.index_type_desc,  
    ips.record_count, ips.avg_record_size_in_bytes,  
    ips.min_record_size_in_bytes,  
    ips.max_record_size_in_bytes,  
    ips.page_count, ips.compressed_page_count  
FROM sys.dm_db_index_physical_stats ( DB_ID(), NULL, NULL, NULL, 'DETAILED') ips  
JOIN sys.objects o on o.object_id = ips.object_id  
ORDER BY record_count DESC;  


----------------------------------------------------------------------------------------------------------------------
--------------------------------------------- DMVs for SQL Server OS Usage ---------------------------------------------------
----------------------------------------------------------------------------------------------------------------------


-- Ring buffer 
SELECT * FROM sys.dm_os_ring_buffers AS dorb;