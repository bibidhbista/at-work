USE [ETL_Maintenance]
GO
/****** Object:  StoredProcedure [dbo].[usp_Update_RunDate_Powershell]    Script Date: 7/12/2016 8:40:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Bibidh Bista>
-- Create date: <2016-07-01 13:49:36.617>
-- Description:	<Updates the run date on Process_settings table on ETL_Maintenance based on the parameters provided from powershell script>
-- =============================================
ALTER PROCEDURE [dbo].[usp_Update_RunDate_Powershell]
	-- Parameters for the stored procedure here
	@ProcID int, @RunDate DATE
AS
BEGIN
	SET NOCOUNT ON;
	--DECLARING REQUIRED VARIABLES
	DECLARE @COUNT INT, @FILE_PREFIX_DATE NVARCHAR(8), @LogID INT, @UserName NVARCHAR(100),@LOGTEXT NVARCHAR(MAX), @OldDate DATE, @ERRORTEXT NVARCHAR(MAX)
	
	SELECT @LogID =ID FROM PROCESSES WHERE NAME = 'USP_UPDATE_RUNDATE_POWERSHELL'
	SELECT @UserName = LOGINAME FROM sys.sysprocesses WHERE spid = @@SPID
	SELECT @OldDate = VALUE FROM PROCESS_SETTINGS where Process_ID = @ProcID and name ='rundate'

	-- CREATE PROCESS IN PROCESSES TABLE IF IT DOESN'T EXIST ALREADY
	
	IF @LogID IS NULL 
		BEGIN
			DECLARE	@return_value int
			EXEC	@return_value = [dbo].[usp_Add_Process]
				@Process_NM = N'usp_Update_Rundate_Powershell',
				@Process_Type = N'Stored Procedure',
				@Process_Description = N'Adhoc Powershell Script called from Tidal to update rundate and fileprefixdate',
				@Department = N'IT-Database Administrators',
				@Action = N'Insert'
		END

	SELECT @LogID =ID FROM PROCESSES WHERE NAME = 'USP_UPDATE_RUNDATE_POWERSHELL'
	-- CHECK TO SEE IF THE RUNDATE ENTERED IS IN THE 1 YEAR RANGE
	BEGIN TRY
			IF ABS(datediff(year,@RunDate, getdate()))<=1
				BEGIN
					--UPDATE THE RUNDATE WITH PROVIDED RUNDATE FROM PARAM
					update Process_Settings set VALUE = @RunDate where Process_ID = @ProcID and name ='rundate'

					--UPDATE FILE_PREFIX_DATE IF EXISTS
					SELECT @FILE_PREFIX_DATE = REPLACE(@RunDate, '-', '')
					SELECT @COUNT= COUNT(NAME) FROM PROCESS_SETTINGS WHERE PROCESS_ID = @ProcID  AND NAME='FILE_PREFIX_DATE'
				
					UPDATE  PROCESS_SETTINGS SET Value =  CASE 
																WHEN @COUNT = 1 then @FILE_PREFIX_DATE  
															END
							WHERE PROCESS_ID = @ProcID  AND NAME='FILE_PREFIX_DATE' 

					SET @LOGTEXT = 'The RunDate has been successfully changed from '+ CAST(@OldDate AS nvarchar) + ' to ' + CAST(@RunDate as nvarchar)
					INSERT INTO Processes_Log VALUES (@LogID, CAST(GETDATE() AS DATE), GETDATE(),GETDATE(), 'Success', @LogText, @UserName)  -- Sucess Log
				END
				ELSE						
					RAISERROR (15600,-1,-1);  	
						
		END TRY
		BEGIN CATCH
				SET @ERRORTEXT = 'There was an error updating RunDate from '+ CAST(@OldDate AS nvarchar) + ' to ' + CAST(@RunDate as nvarchar)
				INSERT INTO Error_Log VALUES (@LogID, GETDATE(), ERROR_PROCEDURE(), ERROR_LINE(), ERROR_NUMBER(), @ERRORTEXT)  -- Error log in Error log
				INSERT INTO Processes_Log VALUES (@LogID, CAST(GETDATE() AS DATE), GETDATE(),GETDATE(), 'Failed', @ERRORTEXT, @UserName)  -- Error log in process log
				RAISERROR (15600,-1,-1, 'usp_Update_RunDate_Powershell_error. The date you entered is more than 1 year away or behind current date. Check the date and try again!');  	
		END CATCH
			
END


		
