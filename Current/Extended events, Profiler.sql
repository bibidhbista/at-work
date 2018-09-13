-- Recently executed queries
SELECT execquery.last_execution_time AS [Date Time], execsql.text AS [Script] FROM sys.dm_exec_query_stats AS execquery
CROSS APPLY sys.dm_exec_sql_text(execquery.sql_handle) AS execsql
ORDER BY execquery.last_execution_time DESC

-- Why log space hasn't been reclaimed?
DECLARE @path NVARCHAR(260);

SELECT 
   @path = REVERSE(SUBSTRING(REVERSE([path]), 
   CHARINDEX('\', REVERSE([path])), 260)) + N'log.trc'
FROM    sys.traces
WHERE   is_default = 1;

SELECT 
   DatabaseName,
   [FileName],
   SPID,
   Duration,
   StartTime,
   EndTime,
   FileType = CASE EventClass 
       WHEN 92 THEN 'Data'
       WHEN 93 THEN 'Log'
   END
FROM sys.fn_trace_gettable(@path, DEFAULT)
WHERE
   EventClass IN (92,93)
ORDER BY
   StartTime DESC;

   select log_reuse_wait_desc,* from sys.databases


-- list all the events available to trace in Profiler vs XE
   /* Profiler */
SELECT trace_event_id, name
FROM sys.trace_events;
 
/* XE */
SELECT pkg.name AS PkgName, 
  pkg.description as PkgDescr, 
  obj.name as EventName, 
  obj.description as EventDescr
FROM sys.dm_xe_objects obj
  inner join sys.dm_xe_packages pkg ON pkg.guid = obj.package_guid
WHERE obj.object_type='event'
  and pkg.name NOT IN ('qds', 'ucs', 'SecAudit');

