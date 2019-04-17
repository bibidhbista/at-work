CREATE EVENT SESSION [error_trap] ON SERVER 
ADD EVENT sqlserver.error_reported 
    ( 
        ACTION    (package0.collect_system_time,package0.last_error,sqlserver.client_app_name,sqlserver.client_hostname,sqlserver.database_id,sqlserver.database_name,sqlserver.nt_username,sqlserver.plan_handle,sqlserver.query_hash,sqlserver.session_id,sqlserver.sql_text,sqlserver.tsql_frame,sqlserver.tsql_stack,sqlserver.username)
        WHERE    ([severity]>16) 
    ) 
ADD TARGET package0.event_file 
    ( 
        SET filename=N'E:\XEvents\error_trap.xel' 
    ) 
WITH 
    (        
        STARTUP_STATE=OFF 
    ) 
GO

ALTER EVENT SESSION [error_trap] ON SERVER 
STATE = START; 
GO

--ALTER EVENT SESSION [error_trap] ON SERVER 
--STATE = STOP; 
--GO

RAISERROR(40555,17,0) WITH	Log




IF (OBJECT_ID('tempdb..#e') IS NOT NULL) DROP TABLE #e 
go

WITH cte AS 
( 
    SELECT 
        CAST(event_data AS XML) AS event_data 
    FROM 
        sys.fn_xe_file_target_read_file('E:\XEvents\error_trap*.xel', NULL, NULL, NULL) 
), 
cte2 AS 
( 
    SELECT 
        event_number = ROW_NUMBER() OVER (ORDER BY T.x) 
    ,    event_name = T.x.value('@name', 'varchar(100)') 
    ,    event_timestamp = T.x.value('@timestamp', 'datetimeoffset') 
    ,    event_data 
    FROM 
        cte    
    CROSS APPLY 
        event_data.nodes('/event') T(x) 
) 
SELECT * INTO #e FROM cte2 
go

WITH cte3 AS 
( 
    SELECT 
        c.event_number, 
        c.event_timestamp, 
        --data_field = T2.x.value('local-name(.)', 'varchar(100)'), 
        data_name = T2.x.value('@name', 'varchar(100)'), 
        data_value = T2.x.value('value[1]', 'varchar(max)'), 
        data_text = T2.x.value('text[1]', 'varchar(max)') 
    FROM 
        #e c 
    CROSS APPLY 
        c.event_data.nodes('event/*') T2(x) 
), 
cte4 AS 
( 
    SELECT 
        * 
    FROM 
        cte3 
    WHERE 
        data_name IN ('error_number', 'severity', 'message', 'database_name', 'database_id', 'client_hostname', 'client_app_name', 'collect_system_time', 'username') 
) 
SELECT 
    * 
FROM 
    cte4 
PIVOT 
    (MAX(data_value) FOR data_name IN ([error_number], [severity], [message], database_name, database_id, username, client_hostname, client_app_name, collect_system_time)) T 
WHERE 
    [severity] > 10 
ORDER BY 
    event_timestamp DESC 
go 
