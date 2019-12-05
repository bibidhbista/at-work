Create PROCEDURE [dbo].[Admin_LS_CheckThreshholds]

	@DB varchar(50),
	@Success int OUTPUT 

AS

SET NOCOUNT ON

DECLARE @CopyLatency int, @RestoreLatency int
DECLARE @i int
SET @i = 0
SET @Success = 0

DECLARE @DBs TABLE
(
	DB varchar(100) NOT NULL,
	FilePath varchar(1000) NULL,
	LastCopiedFile varchar(100) NULL, 
	LastRestoredFile varchar(100) NULL, 
	CopyLatency int NULL,
	RestoreLatency int NULL
)

WHILE @i<5 
BEGIN

	delete from @DBs
	INSERT INTO @DBs exec Admin_LS_DbsPastThreshhold
	select  @CopyLatency=CopyLatency, @RestoreLatency=RestoreLatency from @DBs where DB = @DB

	IF @CopyLatency > -30 and @RestoreLatency > -300
	BEGIN
		set @i=10
		SET @Success=1
	END
	ELSE
	BEGIN
		set @i = @i + 1
		WAITFOR DELAY '00:01:00'
	END

END


