-- Run SP Creation script below before running these if the SP [sp_blocked_process_report_viewer_dbi] doesn't already exist 
-- https://www.brentozar.com/archive/2014/03/extended-events-doesnt-hard/
-- atgdbmon..eventfiles where imported = 0
declare @Trace nvarchar(max)
set @trace = 'I:\ExtendedEvents\Blocking\Blocking_0_132251184009300000.xel'


IF EXISTS (Select 1 from sys.tables where name ='bpr')
BEGIN
	DROP TABLE bpr
END

CREATE TABLE bpr (
    EndTime DATETIME,
    TextData XML,
    EventClass INT DEFAULT(137)
);
GO
 

WITH events_cte AS (
    SELECT
        DATEADD(mi,
        DATEDIFF(mi, GETUTCDATE(), CURRENT_TIMESTAMP),
        xevents.event_data.value('(event/@timestamp)[1]',
           'datetime2')) AS [event_time] ,
        xevents.event_data.query('(event[@name="blocked_process_report"]/data[@name="blocked_process"]/value/blocked-process-report)[1]')
            AS blocked_process_report
    FROM    sys.fn_xe_file_target_read_file
        ('I:\ExtendedEvents\Blocking\Blocking_0_132251184009300000.xel',null,
         null, null)
        CROSS APPLY (SELECT CAST(event_data AS XML) AS event_data) as xevents
)
INSERT INTO bpr (EndTime, TextData)
SELECT
    [event_time],
    blocked_process_report
FROM events_cte
WHERE blocked_process_report.value('(blocked-process-report[@monitorLoop])[1]', 'nvarchar(max)') IS NOT NULL
ORDER BY [event_time] DESC ;
 
EXEC [sp_blocked_process_report_viewer_dbi] @Trace='bpr', @Type='TABLE';


-- SP CREATION
if exists (select 1 from sys.procedures where name = N'sp_blocked_process_report_viewer_dbi')
    drop procedure [dbo].[sp_blocked_process_report_viewer_dbi];
go
 
 
CREATE PROCEDURE [dbo].[sp_blocked_process_report_viewer_dbi]
(
       @Trace nvarchar(max),
       @Type varchar(10) = 'FILE'
)
  
AS
  
SET NOCOUNT ON
  
-- Validate @Type
IF (@Type NOT IN('FILE', 'TABLE', 'XMLFILE'))
       RAISERROR ('The @Type parameter must be ''FILE'', ''TABLE'' or ''XMLFILE''', 11, 1)
  
IF (@Trace LIKE '%.trc' AND @Type <> 'FILE')
       RAISERROR ('Warning: You specified a .trc trace. You should also specify @Type = ''FILE''', 10, 1)
  
IF (@Trace LIKE '%.xml' AND @Type <> 'XMLFILE')
       RAISERROR ('Warning: You specified a .xml trace. You should also specify @Type = ''XMLFILE''', 10, 1)
     
  
CREATE TABLE #ReportsXML
(
       monitorloop nvarchar(100) NOT NULL,
       endTime datetime NULL,
       blocking_spid INT NOT NULL,
       blocking_ecid INT NOT NULL,
       blocking_bfinput NVARCHAR(MAX),
       blocked_spid INT NOT NULL,
       blocked_ecid INT NOT NULL,
       blocked_bfinput NVARCHAR(MAX),
       blocked_waitime BIGINT,
       blocked_hierarchy_string as CAST(blocked_spid as varchar(20)) + '.' + CAST(blocked_ecid as varchar(20)) + '/',
       blocking_hierarchy_string as CAST(blocking_spid as varchar(20)) + '.' + CAST(blocking_ecid as varchar(20)) + '/',
       bpReportXml xml not null,
       primary key clustered (monitorloop, blocked_spid, blocked_ecid),
       unique nonclustered (monitorloop, blocking_spid, blocking_ecid, blocked_spid, blocked_ecid)
)
  
DECLARE @SQL NVARCHAR(max);
DECLARE @TableSource nvarchar(max);
  
-- define source for table
IF (@Type = 'TABLE')
BEGIN
       -- everything input by users get quoted
       SET @TableSource = ISNULL(QUOTENAME(PARSENAME(@Trace,4)) + N'.', '')
             + ISNULL(QUOTENAME(PARSENAME(@Trace,3)) + N'.', '')
             + ISNULL(QUOTENAME(PARSENAME(@Trace,2)) + N'.', '')
             + QUOTENAME(PARSENAME(@Trace,1));
END
  
-- define source for trc file
IF (@Type = 'FILE')
BEGIN
       SET @TableSource = N'sys.fn_trace_gettable(N' + QUOTENAME(@Trace, '''') + ', -1)';
END
  
-- load table or file
IF (@Type IN('TABLE', 'FILE'))
BEGIN
       SET @SQL = N'    
             INSERT #ReportsXML(blocked_ecid, blocked_spid, blocked_bfinput , blocking_ecid, blocking_spid,
                                blocking_bfinput, blocked_waitime, monitorloop, bpReportXml,endTime)
             SELECT
                    blocked_ecid,
                    blocked_spid,
                    blocked_inputbuffer,
                    blocking_ecid,
                    blocking_spid,
                    blocking_inputbuffer,
                blocked_waitime,
                    COALESCE(monitorloop, CONVERT(nvarchar(100), endTime, 120), ''unknown''),
                    bpReportXml,
                    EndTime
             FROM ' + @TableSource + N'
             CROSS APPLY (
                    SELECT CAST(TextData as xml)
                    ) AS bpReports(bpReportXml)
             CROSS APPLY (
                    SELECT
monitorloop = bpReportXml.value(''(//@monitorLoop)[1]'', ''nvarchar(100)''),
blocked_spid = bpReportXml.value(''(/blocked-process-report/blocked-process/process/@spid)[1]'', ''int''),
blocked_ecid = bpReportXml.value(''(/blocked-process-report/blocked-process/process/@ecid)[1]'', ''int''),
                           blocked_inputbuffer = bpReportXml.value(''(/blocked-process-report/blocked-process/process/inputbuf/text())[1]'', ''nvarchar(max)''),
blocking_spid = bpReportXml.value(''(/blocked-process-report/blocking-process/process/@spid)[1]'', ''int''),
blocking_ecid = bpReportXml.value(''(/blocked-process-report/blocking-process/process/@ecid)[1]'', ''int''),
                           blocking_inputbuffer = bpReportXml.value(''(/blocked-process-report/blocking-process/process/inputbuf/text())[1]'', ''nvarchar(max)''),
blocked_waitime = bpReportXml.value(''(/blocked-process-report/blocked-process/process/@waittime)[1]'', ''bigint'')
                    ) AS bpShredded
             WHERE EventClass = 137';
           
       EXEC (@SQL);
END
  
IF (@Type = 'XMLFILE')
BEGIN
       CREATE TABLE #TraceXML(
             id int identity primary key,
             ReportXML xml NOT NULL 
       )
     
       SET @SQL = N'
             INSERT #TraceXML(ReportXML)
             SELECT col FROM OPENROWSET (
                           BULK ' + QUOTENAME(@Trace, '''') + N', SINGLE_BLOB
                    ) as xmldata(col)';
  
       EXEC (@SQL);
     
       CREATE PRIMARY XML INDEX PXML_TraceXML ON #TraceXML(ReportXML);
  
       WITH XMLNAMESPACES
       (
             'http://tempuri.org/TracePersistence.xsd' AS MY
       ),
       ShreddedWheat AS
       (
             SELECT
                    bpShredded.blocked_ecid,
                    bpShredded.blocked_spid,
                    bpShredded.blocked_inputbuffer,
                    bpShredded.blocked_waitime,
                    bpShredded.blocking_ecid,
                    bpShredded.blocking_spid,
                    bpShredded.blocking_inputbuffer,
                    bpShredded.monitorloop,
                    bpReports.bpReportXml,
                    bpReports.bpReportEndTime
             FROM #TraceXML
             CROSS APPLY
                    ReportXML.nodes('/MY:TraceData/MY:Events/MY:Event[@name="Blocked process report"]')
                    AS eventNodes(eventNode)
             CROSS APPLY
                    eventNode.nodes('./MY:Column[@name="EndTime"]')
                    AS endTimeNodes(endTimeNode)
             CROSS APPLY
                    eventNode.nodes('./MY:Column[@name="TextData"]')
                    AS bpNodes(bpNode)
             CROSS APPLY(
                    SELECT CAST(bpNode.value('(./text())[1]', 'nvarchar(max)') as xml),
                           CAST(LEFT(endTimeNode.value('(./text())[1]', 'varchar(max)'), 19) as datetime)
             ) AS bpReports(bpReportXml, bpReportEndTime)
             CROSS APPLY(
                    SELECT
                           monitorloop = bpReportXml.value('(//@monitorLoop)[1]', 'nvarchar(100)'),
                           blocked_spid = bpReportXml.value('(/blocked-process-report/blocked-process/process/@spid)[1]', 'int'),
                           blocked_ecid = bpReportXml.value('(/blocked-process-report/blocked-process/process/@ecid)[1]', 'int'),
                           blocked_inputbuffer = bpReportXml.value('(/blocked-process-report/blocked-process/process/inputbuf/text())[1]', 'nvarchar(max)'),
                           blocking_spid = bpReportXml.value('(/blocked-process-report/blocking-process/process/@spid)[1]', 'int'),
                           blocking_ecid = bpReportXml.value('(/blocked-process-report/blocking-process/process/@ecid)[1]', 'int'),
                           blocking_inputbuffer = bpReportXml.value('(/blocked-process-report/blocking-process/process/inputbuf/text())[1]', 'nvarchar(max)'),
                           blocked_waitime = bpReportXml.value('(/blocked-process-report/blocked-process/process/@waittime)[1]', 'bigint')
             ) AS bpShredded
       )
       INSERT #ReportsXML(blocked_ecid,blocked_spid,blocking_ecid,blocking_spid,
             monitorloop,bpReportXml,endTime)
       SELECT blocked_ecid,blocked_spid,blocking_ecid,blocking_spid,
             COALESCE(monitorloop, CONVERT(nvarchar(100), bpReportEndTime, 120), 'unknown'),
             bpReportXml,bpReportEndTime
       FROM ShreddedWheat;
     
       DROP TABLE #TraceXML
  
END
  
-- Organize and select blocked process reports
;WITH Blockheads AS
(
       SELECT blocking_spid, blocking_ecid, monitorloop, blocking_hierarchy_string
       FROM #ReportsXML
       EXCEPT
       SELECT blocked_spid, blocked_ecid, monitorloop, blocked_hierarchy_string
       FROM #ReportsXML
),
Hierarchy AS
(
       SELECT monitorloop, blocking_spid as spid, blocking_ecid as ecid,
             cast('/' + blocking_hierarchy_string as varchar(max)) as chain,
             0 as level
       FROM Blockheads
     
       UNION ALL
     
       SELECT irx.monitorloop, irx.blocked_spid, irx.blocked_ecid,
             cast(h.chain + irx.blocked_hierarchy_string as varchar(max)),
             h.level+1
       FROM #ReportsXML irx
       JOIN Hierarchy h
             ON irx.monitorloop = h.monitorloop
             AND irx.blocking_spid = h.spid
             AND irx.blocking_ecid = h.ecid
)
SELECT
       ISNULL(CONVERT(nvarchar(30), irx.endTime, 120),
             'Lead') as traceTime,
       SPACE(4 * h.level)
             + CAST(h.spid as varchar(20))
             + CASE h.ecid
                    WHEN 0 THEN ''
                    ELSE '(' + CAST(h.ecid as varchar(20)) + ')'
             END AS blockingTree,
       irx.blocked_waitime,
       bdp.last_trans_started as blocked_last_trans_started,
       bdp.wait_resource AS blocked_wait_resource,
       bgp.wait_resource AS blocking_wait_resource,
       bgp.[status] AS blocked_status,
       bdp.[status] AS blocking_status,
       bdp.lock_mode AS blocked_lock_mode,
       bdp.isolation_level as blocked_isolation_level,
       bgp.isolation_level as blocking_isolation_level,
       bdp.app AS blocked_app,
       DB_NAME(bdp.current_db) AS blocked_db,
       '-----> blocked statement' AS blocked_section,
       CAST('' + irx.blocked_bfinput + '' AS XML) AS blocked_input_buffer,
       CASE
             WHEN bdp.frame_blocked_process_xml IS NULL THEN CAST('' + irx.blocked_bfinput + '' AS XML)
             ELSE bdp.frame_blocked_process_xml
       END AS frame_blocked_process_xml,
       DB_NAME(bgp.current_db) AS blocking_db,
       bgp.app AS blocking_app,
       'blocking statement ----->' AS blocking_section,
       CAST('' + irx.blocking_bfinput + '' AS XML) AS blocking_input_buffer,
       CASE
             WHEN bgp.frame_blocking_process_xml IS NULL THEN CAST('' + irx.blocking_bfinput + '' AS XML)
             ELSE bgp.frame_blocking_process_xml
       END AS frame_blocking_process_xml,
       irx.bpReportXml
from Hierarchy h
left join #ReportsXML irx
       on irx.monitorloop = h.monitorloop
       and irx.blocked_spid = h.spid
       and irx.blocked_ecid = h.ecid
outer apply
(
       select
             T.x.value('(./process/@waitresource)[1]', 'nvarchar(256)') AS wait_resource,
             T.x.value('(./process/@lasttranstarted)[1]', 'datetime') as last_trans_started,
             T.x.value('(./process/@lockMode)[1]', 'nvarchar(60)') as lock_mode,
             T.x.value('(./process/@status)[1]', 'nvarchar(60)') as [status],
             T.x.value('(./process/@isolationlevel)[1]', 'nvarchar(60)') as isolation_level,
             T.x.value('(./process/@currentdb)[1]', 'int') as current_db,
             T.x.value('(./process/@clientapp)[1]', 'nvarchar(200)') as app,
             cast(
             (select SUBSTRING(txt.text,(ISNULL(T.x.value('./@stmtstart', 'int'), 0) / 2) + 1,
                           ((CASE ISNULL(T.x.value('./@stmtend', 'int'), -1)
                                  WHEN -1 THEN DATALENGTH(txt.text)
                                  ELSE T.x.value('./@stmtend', 'int')
                              END - ISNULL(T.x.value('./@stmtstart', 'int'), 0)) / 2) + 1) + CHAR(13) AS statement_txt
                       from bpReportXml.nodes('//blocked-process/process/executionStack/frame') AS T(x)
                       cross apply sys.dm_exec_sql_text(T.x.value('xs:hexBinary(substring((./@sqlhandle), 3))', 'varbinary(max)')) AS txt
                       for XML path('')) as xml) AS frame_blocked_process_xml
       from bpReportXml.nodes('//blocked-process') AS T(x)
) AS bdp
outer apply
(
       select
             T.x.value('(./process/@waitresource)[1]', 'nvarchar(256)') AS wait_resource,
             T.x.value('(./process/@status)[1]', 'nvarchar(60)') as [status],
             T.x.value('(./process/@isolationlevel)[1]', 'nvarchar(60)') as isolation_level,
             T.x.value('(./process/@currentdb)[1]', 'int') as current_db,
             T.x.value('(./process/@clientapp)[1]', 'nvarchar(200)') as app,
             cast(
             (select SUBSTRING(txt.text,(ISNULL(T.x.value('./@stmtstart', 'int'), 0) / 2) + 1,
                           ((CASE ISNULL(T.x.value('./@stmtend', 'int'), -1)
                                  WHEN -1 THEN DATALENGTH(txt.text)
                                  ELSE T.x.value('./@stmtend', 'int')
                              END - ISNULL(T.x.value('./@stmtstart', 'int'), 0)) / 2) + 1) + CHAR(13) AS statement_txt
                       from bpReportXml.nodes('//blocking-process/process/executionStack/frame') AS T(x)
                       cross apply sys.dm_exec_sql_text(T.x.value('xs:hexBinary(substring((./@sqlhandle), 3))', 'varbinary(max)')) AS txt
                       for XML path('')) as xml) AS frame_blocking_process_xml
             from bpReportXml.nodes('//blocking-process') AS T(x)
) AS bgp
order by h.monitorloop, h.chain
  
DROP TABLE #ReportsXML
GO



