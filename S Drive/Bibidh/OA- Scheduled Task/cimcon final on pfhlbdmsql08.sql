-- CREATE PROCESS LOG TABLE
USE [ScheduledTask]
GO

/****** Object:  Table [dbo].[Process_Log]    Script Date: 6/20/2017 4:10:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CIMCON_Log](
	[ID] [numeric](18, 0) PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[Server_Name][nvarchar](50),
	[Run_Date] [date] NULL,
	[Start_Datetime] [datetime] NOT NULL ,
	[End_Datetime] [datetime] NULL,
	[End_Result] [varchar](500) NOT NULL,
	[Log_Text] [varchar](500) NOT NULL,
	[User_Name] [varchar](255) NOT NULL)
GO



-- Create stored proc for details/error logging

USE [ScheduledTask]
GO
/****** Object:  StoredProcedure [dbo].[usp_Logging_Cimcon_Scheduled]    Script Date: 6/15/2017 1:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Bibidh Bista>
-- Create date: <2017-06-17 13:49:36.617>
-- Last Update date: <2017-06-20 11:11>
-- Description:	<Logs details of CIMCON scheduled task execution to execution_log table>
-- =============================================
CREATE PROCEDURE [dbo].[usp_logging_cimcon_scheduled]
-- Parameters for the stored procedure here
	@LogText nvarchar(MAX)=NULL,@StartDate nvarchar(50)=null, @ServerName nvarchar(50)=null
AS
BEGIN
	DECLARE @UserName NVARCHAR(100),@STATE NVARCHAR(MAX)=''
	SELECT @UserName = LOGINAME FROM sys.sysprocesses WHERE spid = @@SPID
	SET @STATE = CASE WHEN (@LogText like 'S%') THEN 'Sucess'
            ELSE 'Failure' 
	END
	INSERT INTO [dbo].[CIMCON_Log] VALUES (@ServerName, CAST(GETDATE() AS DATE), CONVERT(datetime, @StartDate, 121),GETDATE(), @state, @LogText, @UserName)  -- Sucess Log
End
