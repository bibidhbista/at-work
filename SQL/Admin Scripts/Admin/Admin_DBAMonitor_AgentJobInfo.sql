

Create Procedure [dbo].[Admin_DBAMonitor_AgentJobInfo]



AS



-- Get SQL Server Agent jobs and Category information (Query 4) (SQL Server Agent Jobs)

SELECT sj.name AS [JobName], sj.[description] AS [JobDescription], SUSER_SNAME(sj.owner_sid) AS [JobOwner],

sj.date_created, sj.[enabled], sj.notify_email_operator_id, sc.name AS [CategoryName]

FROM msdb.dbo.sysjobs AS sj WITH (NOLOCK)

INNER JOIN msdb.dbo.syscategories AS sc WITH (NOLOCK)

ON sj.category_id = sc.category_id

ORDER BY sj.name OPTION (RECOMPILE);



-- Gives you some basic information about your SQL Server Agent jobs, who owns them and how they are configured

-- Look for Agent jobs that are not owned by sa

-- Look for jobs that don't have a notify_email_operator_id





-- Get SQL Server Agent Alert Information (Query 5) (SQL Server Agent Alerts)

SELECT name, event_source, message_id, severity, [enabled], has_notification, 

       delay_between_responses, occurrence_count, last_occurrence_date, last_occurrence_time

FROM msdb.dbo.sysalerts WITH (NOLOCK)

ORDER BY name OPTION (RECOMPILE);







