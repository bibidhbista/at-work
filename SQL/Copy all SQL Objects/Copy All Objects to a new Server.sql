SELECT * FROM dbo.Bankmate_HCPT

USE [master]
GO

/******************************************************************************************************
 *                       Create the requisite linked servers                                          *
 ******************************************************************************************************/

IF NOT EXISTS(SELECT 1 FROM sys.servers where name = 'TDMSQL15')
BEGIN
	EXEC master.dbo.sp_addlinkedserver @server = N'TDMSQL15', @srvproduct=N'SQL Server'
	EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'TDMSQL15',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
END

IF NOT EXISTS(SELECT 1 FROM sys.servers where name = 'dwh3')
BEGIN
EXEC master.dbo.sp_addlinkedserver @server = N'dwh3', @srvproduct=N'SQL Server'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'dwh3',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
END

IF NOT EXISTS(SELECT 1 FROM sys.servers where name = 'dwhtest')
BEGIN
EXEC master.dbo.sp_addlinkedserver @server = N'dwhtest', @srvproduct=N'SQL Server'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'dwhtest',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL
END

EXEC master.dbo.sp_addlinkedserver @server = N'PBANKM01', @srvproduct=N'IBM', @provider=N'IBMDA400', @datasrc=N'PBANKM01', @catalog=N'8'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'PBANKM01',@useself=N'False',@locallogin=NULL,@rmtuser=N'etluser',@rmtpassword='s@f34sql'

IF NOT EXISTS(SELECT 1 FROM sys.servers where name = 'PBANKM01')
BEGIN
EXEC master.dbo.sp_addlinkedserver @server = N'PBANKM01', @srvproduct=N'IBM', @provider=N'IBMDA400', @datasrc=N'PBANKM01', @catalog=N'KUMQUAT'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'PBANKM01',@useself=N'False',@locallogin=NULL,@rmtuser=N'etluser',@rmtpassword='s@f34sql'
END

IF NOT EXISTS(SELECT 1 FROM sys.servers where name = 'TBANKM01')
BEGIN
EXEC master.dbo.sp_addlinkedserver @server = N'TBANKM01', @srvproduct=N'IBM', @provider=N'IBMDA400', @datasrc=N'TBANKM01', @catalog=N'KUMQUAT'
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'TBANKM01',@useself=N'False',@locallogin=NULL,@rmtuser=N'etluser',@rmtpassword='s@f34sql'
END


USE [Collateral_Reporting]
GO

/******************************************************************************************************
 *                     Create the synonyms for SQL12 and SQL15                                        *
 ******************************************************************************************************/

IF NOT EXISTS (SELECT 1 FROM sys.synonyms WHERE name = 'ETL_Maintenance_Process_Business_Dates') CREATE SYNONYM [dbo].[ETL_Maintenance_Process_Business_Dates] FOR [TDMSQL12].[ETL_Maintenance].[dbo].[Process_Business_Dates]
IF NOT EXISTS (SELECT 1 FROM sys.synonyms WHERE name = 'ETL_Maintenance_Processes') CREATE SYNONYM [dbo].[ETL_Maintenance_Processes] FOR [TDMSQL12].[ETL_Maintenance].[dbo].[Processes]
IF NOT EXISTS (SELECT 1 FROM sys.synonyms WHERE name = 'ETL_Maintenance_Processes_Log') CREATE SYNONYM [dbo].[ETL_Maintenance_Processes_Log] FOR [TDMSQL12].[ETL_Maintenance].[dbo].[Processes_Log]
IF NOT EXISTS (SELECT 1 FROM sys.synonyms WHERE name = 'ETL_Maintenance_vw_Errors') CREATE SYNONYM [dbo].[ETL_Maintenance_vw_Errors] FOR [TDMSQL12].[ETL_Maintenance].[dbo].[vw_Errors]
IF NOT EXISTS (SELECT 1 FROM sys.synonyms WHERE name = 'SalesLogix_CustomerSummaryView') CREATE SYNONYM [dbo].[SalesLogix_CustomerSummaryView] FOR [TDMSQL12].[SalesLogix].[dbo].[CustomerSummaryView]
IF NOT EXISTS (SELECT 1 FROM sys.synonyms WHERE name = 'SalesLogix_sysdba_CONTACT') CREATE SYNONYM [dbo].[SalesLogix_sysdba_CONTACT] FOR [TDMSQL12].[SalesLogix].[sysdba].[CONTACT]
IF NOT EXISTS (SELECT 1 FROM sys.synonyms WHERE name = 'SalesLogix_sysdba__ACCOUNTEXT') CREATE SYNONYM [dbo].[SalesLogix_sysdba__ACCOUNTEXT] FOR [TDMSQL12].[SalesLogix].[sysdba].[_ACCOUNTEXT]
IF NOT EXISTS (SELECT 1 FROM sys.synonyms WHERE name = 'SalesLogix_sysdba__CONTACTROLE') CREATE SYNONYM [dbo].[SalesLogix_sysdba__CONTACTROLE] FOR [TDMSQL12].[SalesLogix].[sysdba].[_CONTACTROLE]

/******************************************************************************************************
 *       Update existing procedures with synonyms to replace old references                           *
 ******************************************************************************************************/

DECLARE @Name as NVARCHAR(255),
		@Body AS NVARCHAR(MAX)

DECLARE UpdateCursor CURSOR FOR
	SELECT	distinct 
			s.name + '.' + o.name full_name,
			REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(sm.definition
				,'ETL_Maintenance.dbo.Process_Business_Dates', 'ETL_Maintenance_Process_Business_Dates')
				,'ETL_Maintenance.dbo.Processes_Log', 'ETL_Maintenance_Processes_Log')
				,'ETL_Maintenance.dbo.Processes', 'ETL_Maintenance_Processes')
				,'ETL_Maintenance.dbo.vw_Errors', 'ETL_Maintenance_vw_Errors')
				,'ETL_Maintenance.dbo.udf_Convert_Numeric_Date_to_Date', 'Collateral_Staging.dbo.udf_Convert_Numeric_Date_to_Date')
				,'ETL_Maintenance.dbo.udf_Convert_Date_Types_to_Numeric_Date', 'Collateral_Staging.dbo.udf_Convert_Date_Types_to_Numeric_Date')
				,'SalesLogix.dbo.CustomerSummaryView', 'SalesLogix_CustomerSummaryView')
				,'SalesLogix.sysdba._ACCOUNTEXT', 'SalesLogix_sysdba__ACCOUNTEXT')
				,'SalesLogix.sysdba.CONTACT', 'SalesLogix_sysdba_CONTACT')
				,'SalesLogix.sysdba._CONTACTROLE', 'SalesLogix_sysdba__CONTACTROLE')
				,'CustomerSummaryView.', 'SalesLogix_CustomerSummaryView.')
				,'_ACCOUNTEXT.', 'SalesLogix_sysdba__ACCOUNTEXT.')
				,'CONTACT.', 'SalesLogix_sysdba_CONTACT.')
				,'_CONTACTROLE.', 'SalesLogix_sysdba__CONTACTROLE.')
				,'Processes_Log.', 'ETL_Maintenance_Processes_Log.')
				,'Processes.', 'ETL_Maintenance_Processes.')
				,'vw_Errors.', 'ETL_Maintenance_vw_Errors.')
				,'CREATE VIEW', 'ALTER VIEW')
				,'CREATE FUNCTION', 'ALTER FUNCTION')
				,'CREATE PROCEDURE', 'ALTER PROCEDURE')
	FROM	tdmsql12.collateral_reporting_old.sys.objects o
			INNER JOIN tdmsql12.collateral_reporting_old.sys.schemas s
			ON o.schema_id = s.schema_id
			INNER JOIN tdmsql12.collateral_reporting_old.sys.sql_modules sm
			ON sm.object_id = o.object_id
			INNER JOIN tDMSQL12.master.sys.databases db 
			ON	sm.definition LIKE '%' + db.name+ '.%'
	WHERE	db.name in ('SalesLogix','ETL_Maintenance')

OPEN UpdateCursor
FETCH NEXT FROM UpdateCursor INTO @Name, @Body

WHILE @@FETCH_STATUS = 0
BEGIN
	DECLARE @MSG VARCHAR(255)
	BEGIN TRY
		EXEC sp_EXECUTESQL @Body
		SET @MSG = @Name + ' Succeeded'
		PRINT @MSG
	END TRY
	BEGIN CATCH
		SET @MSG = @Name + ' Failed'
		PRINT @MSG
		Print ERROR_MESSAGE()
		Print RIGHT(@Body,2)
	END CATCH
	FETCH NEXT FROM UpdateCursor INTO @Name, @Body
END

CLOSE UpdateCursor
DEALLOCATE UpdateCursor

USE Collateral_Staging
GO


/******************************************************************************************************
 *                     Create the synonyms for SQL12 and SQL15                                        *
 ******************************************************************************************************/

IF NOT EXISTS (SELECT 1 FROM sys.synonyms WHERE name = 'ETL_Maintenance_Error_Log') CREATE SYNONYM [dbo].[ETL_Maintenance_Error_Log] FOR [TDMSQL12].[ETL_Maintenance].[dbo].[Error_Log]
IF NOT EXISTS (SELECT 1 FROM sys.synonyms WHERE name = 'ETL_Maintenance_Processes') CREATE SYNONYM [dbo].[ETL_Maintenance_Processes] FOR [TDMSQL12].[ETL_Maintenance].[dbo].[Processes]
IF NOT EXISTS (SELECT 1 FROM sys.synonyms WHERE name = 'ETL_Maintenance_Processes_Log') CREATE SYNONYM [dbo].[ETL_Maintenance_Processes_Log] FOR [TDMSQL12].[ETL_Maintenance].[dbo].[Processes_Log]
IF NOT EXISTS (SELECT 1 FROM sys.synonyms WHERE name = 'ETL_Maintenance_Processes_Reconciliation_Detail') CREATE SYNONYM [dbo].[ETL_Maintenance_Processes_Reconciliation_Detail] FOR [TDMSQL12].[ETL_Maintenance].[dbo].[Processes_Reconciliation_Detail]
IF NOT EXISTS (SELECT 1 FROM sys.synonyms WHERE name = 'ETL_Maintenance_usp_Get_Processes_Log_ID') CREATE SYNONYM [dbo].[ETL_Maintenance_usp_Get_Processes_Log_ID] FOR [TDMSQL12].[ETL_Maintenance].[dbo].[usp_Get_Processes_Log_ID]
IF NOT EXISTS (SELECT 1 FROM sys.synonyms WHERE name = 'ETL_Maintenance_usp_Insert_Into_Error_Log') CREATE SYNONYM [dbo].[ETL_Maintenance_usp_Insert_Into_Error_Log] FOR [TDMSQL12].[ETL_Maintenance].[dbo].[usp_Insert_Into_Error_Log]
IF NOT EXISTS (SELECT 1 FROM sys.synonyms WHERE name = 'ETL_Maintenance_usp_Insert_Processes_Reconciliation_Detail') CREATE SYNONYM [dbo].[ETL_Maintenance_usp_Insert_Processes_Reconciliation_Detail] FOR [TDMSQL12].[ETL_Maintenance].[dbo].[usp_Insert_Processes_Reconciliation_Detail]
IF NOT EXISTS (SELECT 1 FROM sys.synonyms WHERE name = 'ETL_Maintenance_usp_Send_Mail') CREATE SYNONYM [dbo].[ETL_Maintenance_usp_Send_Mail] FOR [TDMSQL12].[ETL_Maintenance].[dbo].[usp_Send_Mail]
IF NOT EXISTS (SELECT 1 FROM sys.synonyms WHERE name = 'ETL_Maintenance_usp_Update_Process_Log_End_Process') CREATE SYNONYM [dbo].[ETL_Maintenance_usp_Update_Process_Log_End_Process] FOR [TDMSQL12].[ETL_Maintenance].[dbo].[usp_Update_Process_Log_End_Process]
IF NOT EXISTS (SELECT 1 FROM sys.synonyms WHERE name = 'SalesLogix_CustomerSummaryView') CREATE SYNONYM [dbo].[SalesLogix_CustomerSummaryView] FOR [TDMSQL12].[SalesLogix].[dbo].[CustomerSummaryView]

/******************************************************************************************************
 *       Update existing procedures with synonyms to replace old references                           *
 ******************************************************************************************************/

DECLARE @Name as NVARCHAR(255),
		@Body AS NVARCHAR(MAX)

DECLARE UpdateCursor CURSOR FOR
	SELECT	distinct 
			s.name + '.' + o.name full_name,
			REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(sm.definition 
			,'ETL_Maintenance.dbo.Error_Log', 'ETL_Maintenance_Error_Log')
			,'ETL_Maintenance.dbo.Processes', 'ETL_Maintenance_Processes')
			,'ETL_Maintenance.dbo.Processes_Log', 'ETL_Maintenance_Processes_Log')
			,'ETL_Maintenance.dbo.Processes_Reconciliation_Detail', 'ETL_Maintenance_Processes_Reconciliation_Detail')
			,'ETL_Maintenance.dbo.udf_Convert_Date_Types_to_Numeric_Date', 'dbo.udf_Convert_Date_Types_to_Numeric_Date')
			,'ETL_Maintenance.dbo.udf_Convert_Numeric_Date_to_Char', 'dbo.udf_Convert_Numeric_Date_to_Char')
			,'ETL_Maintenance.dbo.udf_Convert_Numeric_Date_to_Date', 'dbo.udf_Convert_Numeric_Date_to_Date')
			,'ETL_Maintenance.dbo.usp_Get_Processes_Log_ID', 'ETL_Maintenance_usp_Get_Processes_Log_ID')
			,'ETL_Maintenance.dbo.usp_Insert_Into_Error_Log', 'ETL_Maintenance_usp_Insert_Into_Error_Log')
			,'ETL_Maintenance.dbo.usp_Insert_Processes_Reconciliation_Detail', 'ETL_Maintenance_usp_Insert_Processes_Reconciliation_Detail')
			,'ETL_Maintenance.dbo.usp_Send_Mail', 'ETL_Maintenance_usp_Send_Mail')
			,'ETL_Maintenance.dbo.usp_Update_Process_Log_End_Process', 'ETL_Maintenance_usp_Update_Process_Log_End_Process')
			,'SalesLogix.dbo.CustomerSummaryView', 'SalesLogix_CustomerSummaryView')
			,'CustomerSummaryView.', 'SalesLogix_CustomerSummaryView.')
			,'_ACCOUNTEXT.', 'SalesLogix_sysdba__ACCOUNTEXT.')
			,'CONTACT.', 'SalesLogix_sysdba_CONTACT.')
			,'_CONTACTROLE.', 'SalesLogix_sysdba__CONTACTROLE.')
			,'Processes_Log.', 'ETL_Maintenance_Processes_Log.')
			,'Processes.', 'ETL_Maintenance_Processes.')
			,'vw_Errors.', 'ETL_Maintenance_vw_Errors.')
			,'CREATE VIEW', 'ALTER VIEW')
			,'CREATE FUNCTION', 'ALTER FUNCTION')
			,'CREATE PROCEDURE', 'ALTER PROCEDURE')
			, 'CREATE VIEW', 'ALTER VIEW')
	FROM	TDMsql12.collateral_staging_old.sys.objects o
			INNER JOIN TDMsql12.collateral_staging_old.sys.schemas s
			ON o.schema_id = s.schema_id
			INNER JOIN TDMsql12.collateral_staging_old.sys.sql_modules sm
			ON sm.object_id = o.object_id
			INNER JOIN TDMSQL12.master.sys.databases db 
			ON	sm.definition LIKE '%' + db.name+ '.%'
	WHERE	db.name in ('SalesLogix','ETL_Maintenance')

OPEN UpdateCursor
FETCH NEXT FROM UpdateCursor INTO @Name, @Body

WHILE @@FETCH_STATUS = 0
BEGIN
	DECLARE @MSG VARCHAR(255)
	BEGIN TRY
		EXEC sp_EXECUTESQL @Body
		SET @MSG = @Name + ' Succeeded'
		PRINT @MSG
	END TRY
	BEGIN CATCH
		SET @MSG = @Name + ' Failed'
		PRINT @MSG
		Print ERROR_MESSAGE()
		Print RIGHT(@Body,2)
	END CATCH
	FETCH NEXT FROM UpdateCursor INTO @Name, @Body
END

CLOSE UpdateCursor
DEALLOCATE UpdateCursor
