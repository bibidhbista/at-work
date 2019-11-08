SELECT
      row_number() over(order by user_seeks,user_lookups,user_scans),
      [Database] = d.name,
      [Schema]= s.name,
      [Table]= o.name,
      [Index]= x.name,
      [Scans] = user_scans,
      [Seeks] = user_seeks,
      [Lookups] = user_lookups,
      [Last Scan] = last_user_scan,
	  [Last Seek] = last_user_seek,
      [System Scans] = system_scans
FROM  sys.dm_db_index_usage_stats u
INNER JOIN sys.sysdatabases d on u.database_id = d.dbid
INNER JOIN sys.sysindexes x on u.object_id = x.id  and u.index_id = x.indid
INNER JOIN sys.objects o on u.object_id = o.object_id
INNER JOIN sys.schemas s on s.schema_id = o.schema_id
where  x.name is not NULL
AND x.name LIKE '%remoteincomingmsgs%'
order by 1 DESC


--Which stored procedures are using a specifc index
DECLARE @Index SYSNAME = N'IX_RemoteIncomingMsgs_Status_Filtered';
DECLARE @Index SYSNAME = N'IX_RemoteIncomingMsgs_Status_EnteredDate';
DECLARE @Index SYSNAME = N'PK_RemoteIncomingMsgBatches';
IX_RemoteIncomingMsgs_RemoteMsgConfigId_EnteredDate_Filtered
--RemoteIncomingMsgBatches

SELECT t.[text], s.execution_count, --CONVERT(XML, p.query_plan),
s.last_worker_time,
 obj = QUOTENAME(OBJECT_SCHEMA_NAME(t.objectid))   + '.' + QUOTENAME(OBJECT_NAME(t.objectid))
FROM sys.dm_exec_query_stats AS s
CROSS APPLY sys.dm_exec_text_query_plan
(
  s.plan_handle, s.statement_start_offset, s.statement_end_offset
) AS p
CROSS APPLY sys.dm_exec_sql_text(s.plan_handle) AS t
WHERE p.query_plan LIKE '%Index="\[' + @Index + '\]"%' ESCAPE '\';



SELECT * FROM sys.databases

