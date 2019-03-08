CREATE EVENT SESSION [Blocking] ON SERVER 
ADD EVENT sqlserver.blocked_process_report
ADD TARGET package0.event_file(SET filename=N'H:\ExtendedEvents\Blocking\Blocking.xel',max_file_size=(250),max_rollover_files=(14))
WITH (MAX_MEMORY=4096 KB,EVENT_RETENTION_MODE=ALLOW_SINGLE_EVENT_LOSS,MAX_DISPATCH_LATENCY=30 SECONDS,MAX_EVENT_SIZE=0 KB,MEMORY_PARTITION_MODE=NONE,TRACK_CAUSALITY=ON,STARTUP_STATE=OFF)
GO


CREATE EVENT SESSION [Deadlocks] ON SERVER 
ADD EVENT sqlserver.xml_deadlock_report
ADD TARGET package0.event_file(SET filename=N'H:\ExtendedEvents\Deadlocks\Deadlocks.xel',max_file_size=(250),max_rollover_files=(14))
WITH (MAX_MEMORY=4096 KB,EVENT_RETENTION_MODE=ALLOW_SINGLE_EVENT_LOSS,MAX_DISPATCH_LATENCY=30 SECONDS,MAX_EVENT_SIZE=0 KB,MEMORY_PARTITION_MODE=NONE,TRACK_CAUSALITY=ON,STARTUP_STATE=OFF)
GO

CREATE EVENT SESSION [Errors] ON SERVER 
ADD EVENT sqlserver.error_reported(
    ACTION(package0.collect_system_time,package0.last_error,sqlserver.client_app_name,sqlserver.client_hostname,sqlserver.database_id,sqlserver.database_name,sqlserver.nt_username,sqlserver.plan_handle,sqlserver.query_hash,sqlserver.session_id,sqlserver.sql_text,sqlserver.tsql_frame,sqlserver.tsql_stack,sqlserver.username)
    WHERE ([severity]<>(14) AND [severity]>=(11)))
ADD TARGET package0.event_file(SET filename=N'H:\ExtendedEvents\Errors\Errors.xel',max_file_size=(250),max_rollover_files=(14))
WITH (MAX_MEMORY=4096 KB,EVENT_RETENTION_MODE=ALLOW_SINGLE_EVENT_LOSS,MAX_DISPATCH_LATENCY=30 SECONDS,MAX_EVENT_SIZE=0 KB,MEMORY_PARTITION_MODE=NONE,TRACK_CAUSALITY=ON,STARTUP_STATE=OFF)
GO

CREATE EVENT SESSION [SlowQueries] ON SERVER 
ADD EVENT sqlserver.rpc_completed(SET collect_statement=(1)
    ACTION(sqlserver.client_app_name,sqlserver.client_hostname,sqlserver.database_id,sqlserver.database_name,sqlserver.plan_handle,sqlserver.session_id,sqlserver.sql_text,sqlserver.transaction_id,sqlserver.username)
    WHERE ([duration]>=(1000000) AND [database_name]<>'master' AND [database_name]<>'ASPState' AND [database_name]<>'ASPStateMobile'))
ADD TARGET package0.event_file(SET filename=N'H:\ExtendedEvents\SlowQueries\SlowQueries.xel',max_rollover_files=(14))
WITH (MAX_MEMORY=4096 KB,EVENT_RETENTION_MODE=ALLOW_SINGLE_EVENT_LOSS,MAX_DISPATCH_LATENCY=30 SECONDS,MAX_EVENT_SIZE=0 KB,MEMORY_PARTITION_MODE=NONE,TRACK_CAUSALITY=ON,STARTUP_STATE=OFF)
GO

CREATE EVENT SESSION [TimeOuts] ON SERVER 
ADD EVENT sqlserver.rpc_completed(SET collect_statement=(1)
    ACTION(sqlserver.client_app_name,sqlserver.client_hostname,sqlserver.database_id,sqlserver.database_name,sqlserver.plan_handle,sqlserver.session_id,sqlserver.sql_text)
    WHERE ([result]=(2)))
ADD TARGET package0.event_file(SET filename=N'H:\ExtendedEvents\TimeOuts\TimeOuts.xel',max_rollover_files=(14))
WITH (MAX_MEMORY=4096 KB,EVENT_RETENTION_MODE=ALLOW_SINGLE_EVENT_LOSS,MAX_DISPATCH_LATENCY=30 SECONDS,MAX_EVENT_SIZE=0 KB,MEMORY_PARTITION_MODE=NONE,TRACK_CAUSALITY=ON,STARTUP_STATE=OFF)
GO

