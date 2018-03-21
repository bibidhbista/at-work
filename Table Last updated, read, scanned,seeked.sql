SELECT OBJECT_NAME(OBJECT_ID) AS ObjectName, last_user_update,*
FROM sys.dm_db_index_usage_stats
WHERE database_id = DB_ID( 'ptidalrepository')



AND OBJECT_ID=OBJECT_ID('dwh.Accounts')


-- Check Last restart

SELECT sqlserver_start_time AS LastStartTime, * FROM sys.dm_os_sys_info