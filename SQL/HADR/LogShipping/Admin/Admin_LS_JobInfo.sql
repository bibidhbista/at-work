Create PROCEDURE [dbo].[Admin_LS_JobInfo]
	@JobId uniqueidentifier,
	@Enabled tinyint OUTPUT,
	@ExecStatus int OUTPUT,
	@RunTime int OUTPUT

/*WITH ENCRYPTION*/
AS

SET NOCOUNT ON

DECLARE @JobInfo TABLE (
JobID uniqueidentifier NOT NULL,
LastRunDate varchar(8) NULL,
LastRunTime varchar(6) NULL,
NextRunDate varchar(8) NULL,
NextRunTime varchar(6) NULL,
NextRunScheduleID int NULL,
RequestedToRun int NULL,
RequestSource int NULL,
RequestSourceID varchar(100) NULL,
Running int NULL,
CurrentStep int NULL,
CurrentRetryAttempt int NULL,	
State int NULL
)

	INSERT INTO @JobInfo exec master.dbo.xp_sqlagent_enum_jobs 1, 'sa', @JobId

	SELECT @Enabled = CASE WHEN NextRunTime IS NULL THEN 0 ELSE 1 END, @ExecStatus = Running,
		@RunTime = CASE WHEN Running=1 THEN DATEDIFF(minute,convert(datetime,SUBSTRING(lastrundate,1,4) + '-' + SUBSTRING(lastrundate,5,2) + '-' + SUBSTRING(lastrundate,7,2) + ' ' + SUBSTRING(lastruntime,1,2) + ':' + SUBSTRING(lastruntime,3,2)+ ':' + SUBSTRING(lastruntime,5,2) + '.000'),getdate())-5 ELSE 0 END
	from @JobInfo

