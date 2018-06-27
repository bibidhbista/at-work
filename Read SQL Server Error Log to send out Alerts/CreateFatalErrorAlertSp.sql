USE [AMAdmin]
GO

/****** Object:  StoredProcedure [dbo].[Admin_SQL_FatalError_Alert]    Script Date: 6/27/2018 9:32:59 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


Create PROCEDURE [dbo].[Admin_SQL_FatalError_Alert] @Hours [int] = NULL  
AS
	BEGIN
		SET NOCOUNT ON;
		DECLARE @ERRORMSG varchar(8000)
		DECLARE @SNO INT
		DECLARE @Hrs INT
		DECLARE @SQLVERSION VARCHAR(4)
		IF @Hours IS NULL  -- If the optional parameter is not passed, @Hrs value is set to 6
			SET @Hrs = 24
		ELSE
			SET @Hrs = @Hours

				BEGIN
				CREATE TABLE #ErrorLog
				(LogDate DATETIME, ProcessInfo VARCHAR(50) ,[Text] VARCHAR(4000))
			    
				INSERT INTO #ErrorLog
				EXEC sp_readerrorlog
			
			IF EXISTS (SELECT TOP 1 * FROM #ErrorLog)
				-- There is some data in SQL error log that needs to be stored
				BEGIN
				IF  EXISTS (SELECT * FROM dbo.sysobjects 
				WHERE  id = OBJECT_ID(N'[dbo].[SQL_FATALERROR_LOG]') 
				AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
				BEGIN		
							DROP TABLE DBO.SQL_FATALERROR_LOG;
							SELECT * INTO [dbo].[SQL_FATALERROR_LOG] FROM #ErrorLog el  WHERE LogDate > (CAST(DATEADD(HH,-@HRS,GETDATE()) AS VARCHAR(23))) AND
				(([text] LIKE 'Error 823%') OR ([text] LIKE 'Error 824%') OR ([text] LIKE 'Error 825%')
				OR ([text] LIKE 'Error 832%') OR ([text] LIKE 'Error 855%') OR ([text] LIKE 'error 856%') OR ([text] LIKE '%Severity 19%')
				OR ([text] LIKE '%Severity 20%') OR ([text] LIKE '%Severity 21%') OR ([text] LIKE '%Severity 22%') OR ([text] LIKE '%Severity 23%')
				OR ([text] LIKE '%Severity 24%') OR ([text] LIKE '%Severity 25%'))
				END
			ELSE
				BEGIN
						
						--CREATE TABLE [dbo].[SQL_FATALERROR_LOG]
						--(LogDate DATETIME, ProcessInfo VARCHAR(50) ,[Text] VARCHAR(4000))
											
						SELECT * INTO [dbo].[SQL_FATALERROR_LOG] FROM #ErrorLog  WHERE LogDate > (CAST(DATEADD(HH,-@HRS,GETDATE()) AS VARCHAR(23))) and
				(([text] LIKE 'Error 823%') OR ([text] LIKE 'Error 824%') OR ([text] LIKE 'Error 825%')
				OR ([text] LIKE 'Error 832%') OR ([text] LIKE 'Error 855%') OR ([text] LIKE 'error 856%') OR ([text] LIKE '%Severity 19%')
				OR ([text] LIKE '%Severity 20%') OR ([text] LIKE '%Severity 21%') OR ([text] LIKE '%Severity 22%') OR ([text] LIKE '%Severity 23%')
				OR ([text] LIKE '%Severity 24%') OR ([text] LIKE '%Severity 25%'))
				END
				END
			ELSE  -- No error messages have been in the last @Hrs minutes
				Print 'No Error Messages'
			END

			DROP TABLE #ErrorLog
		END


GO


