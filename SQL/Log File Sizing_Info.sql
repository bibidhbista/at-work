-- More details on: https://www.sqlshack.com/sql-server-transaction-log-part-1-log-structure-write-ahead-logging-wal-algorithm/

-- Log growth log truncation counters.  In the perfect situation you should not be seeing any “Log Growths” and the “Log Truncations” should be increasing frequently. 
SELECT * from sys.dm_os_performance_counters
where counter_name in ('Log Growths','Log Shrinks','Percent Log Used','Log Flush Waits/sec','Log Bytes Flushed/sec','Log Flushes/sec','Log Truncations') 
and instance_name='admiral'

-- If your log is not getting truncated properly, you can check what is preventing this
SELECT [log_reuse_wait_desc]
	FROM sys.databases
	WHERE [name] = N'admiral'
GO

-- LSN details current/start/end
sp_help 'sys.fn_dblog'
