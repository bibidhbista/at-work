

CREATE PROCEDURE [dbo].[ServerPerfMon_PerfMonCounters_i]

	@CounterId INT,

	@MachineName varchar(1024) ,

	@CounterName varchar(1024) ,

	@InstanceName varchar(1024) NULL

AS



INSERT INTO PerfMonCounters (CounterId, MachineName, CounterName, InstanceName)

VALUES (@CounterId, @MachineName, @CounterName, @InstanceName)





