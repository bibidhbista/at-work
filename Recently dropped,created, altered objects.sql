-- Query 
-- read all available traces.
DECLARE @current VARCHAR(500);
DECLARE @start VARCHAR(500);
DECLARE @indx INT;
SELECT @current = path
FROM sys.traces
WHERE is_default = 1;
SET @current = REVERSE(@current)
SELECT @indx = PATINDEX('%\%', @current)
SET @current = REVERSE(@current)
SET @start = LEFT(@current, LEN(@current) - @indx) + '\log.trc';
-- CHNAGE FILER AS NEEDED
SELECT CASE EventClass
WHEN 46 THEN 'Object:Created'
WHEN 47 THEN 'Object:Deleted'
WHEN 164 THEN 'Object:Altered'
END, DatabaseName, ObjectName, HostName, ApplicationName, LoginName, StartTime
FROM::fn_trace_gettable(@start, DEFAULT) --WHERE databasename != 'tempdb' ORDER BY starttime	DESC
WHERE EventClass IN (46,47,164) AND EventSubclass = 0 AND DatabaseID <> 2 AND databasename ='SalesLogix' AND objectname LIKE '%account%'
ORDER BY StartTime DESC



-- Database auto-growth query
-- read all available traces.
DECLARE @current VARCHAR(500);
DECLARE @start VARCHAR(500);
DECLARE @indx INT;
SELECT @current = path
FROM sys.traces
WHERE is_default = 1;
SET @current = REVERSE(@current)
SELECT @indx = PATINDEX('%\%', @current)
SET @current = REVERSE(@current)
SET @start = LEFT(@current, LEN(@current) - @indx) + '\log.trc';
-- CHNAGE FILER AS NEEDED
SELECT *
FROM::fn_trace_gettable(@start, DEFAULT)
WHERE EventClass IN (92,93) -- growth event
ORDER BY StartTime DESC