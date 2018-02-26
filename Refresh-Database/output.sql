-- [-- DB CONTEXT --] --
USE [ETL_Maintenance]
 
-- [-- DB USERS --] --
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'dbo') BEGIN CREATE USER  [dbo] FOR LOGIN [sa] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\dsvc_colsecpldg') BEGIN CREATE USER  [FHLBDM\dsvc_colsecpldg] FOR LOGIN [FHLBDM\dsvc_colsecpldg] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\dsvc_dusbonds') BEGIN CREATE USER  [FHLBDM\dsvc_dusbonds] FOR LOGIN [FHLBDM\dsvc_dusbonds] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\dsvc_railoanprice') BEGIN CREATE USER  [FHLBDM\dsvc_railoanprice] FOR LOGIN [FHLBDM\dsvc_railoanprice] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\ETLUser') BEGIN CREATE USER  [FHLBDM\ETLUser] FOR LOGIN [FHLBDM\etluser] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'fhlbdm\fogsrvc') BEGIN CREATE USER  [fhlbdm\fogsrvc] FOR LOGIN [FHLBDM\fogsrvc] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-FHLBAPPS-Coll-Student Loans') BEGIN CREATE USER  [FHLBDM\G-FHLBAPPS-Coll-Student Loans] FOR LOGIN [FHLBDM\G-FHLBAPPS-Coll-Student Loans] 
WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-FHLB-Developers') BEGIN CREATE USER  [FHLBDM\G-FHLB-Developers] FOR LOGIN [FHLBDM\G-FHLB-Developers] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\G-SQL Public') BEGIN CREATE USER  [FHLBDM\G-SQL Public] FOR LOGIN [FHLBDM\G-SQL Public] WITH DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\IT-Divisional Risk Team') BEGIN CREATE USER  [FHLBDM\IT-Divisional Risk Team] FOR LOGIN [FHLBDM\IT-Divisional Risk Team] WITH 
DEFAULT_SCHEMA = [dbo] END; 
IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] =  'FHLBDM\PKalakot') BEGIN CREATE USER  [FHLBDM\PKalakot] FOR LOGIN [FHLBDM\PKalakot] WITH DEFAULT_SCHEMA = [FHLBDM\PKalakot] END; 
-- [-- ORPHANED USERS --] --
-- [-- DB ROLES --] --
EXEC sp_addrolemember @rolename = 'db_datareader', @membername = 'fhlbdm\fogsrvc'
EXEC sp_addrolemember @rolename = 'db_datareader', @membername = 'FHLBDM\G-FHLBAPPS-Coll-Student Loans'
EXEC sp_addrolemember @rolename = 'db_datareader', @membername = 'FHLBDM\G-SQL Public'
EXEC sp_addrolemember @rolename = 'db_ddladmin', @membername = 'fhlbdm\fogsrvc'
EXEC sp_addrolemember @rolename = 'db_owner', @membername = 'FHLBDM\ETLUser'
EXEC sp_addrolemember @rolename = 'db_owner', @membername = 'FHLBDM\G-FHLB-Developers'
EXEC sp_addrolemember @rolename = 'SSIS_Role', @membername = 'FHLBDM\dsvc_colsecpldg'
EXEC sp_addrolemember @rolename = 'SSIS_Role', @membername = 'FHLBDM\dsvc_dusbonds'
EXEC sp_addrolemember @rolename = 'SSIS_Role', @membername = 'FHLBDM\dsvc_railoanprice'
 
-- [-- OBJECT LEVEL PERMISSIONS --] --
DENY EXECUTE ON [dbo].[fn_diagramobjects] TO [guest]
DENY EXECUTE ON [dbo].[sp_alterdiagram] TO [guest]
DENY EXECUTE ON [dbo].[sp_creatediagram] TO [guest]
DENY EXECUTE ON [dbo].[sp_dropdiagram] TO [guest]
DENY EXECUTE ON [dbo].[sp_helpdiagramdefinition] TO [guest]
DENY EXECUTE ON [dbo].[sp_helpdiagrams] TO [guest]
DENY EXECUTE ON [dbo].[sp_renamediagram] TO [guest]
GRANT EXECUTE ON [dbo].[fn_diagramobjects] TO [public]
GRANT EXECUTE ON [dbo].[sp_alterdiagram] TO [public]
GRANT EXECUTE ON [dbo].[sp_creatediagram] TO [public]
GRANT EXECUTE ON [dbo].[sp_dropdiagram] TO [public]
GRANT EXECUTE ON [dbo].[sp_helpdiagramdefinition] TO [public]
GRANT EXECUTE ON [dbo].[sp_helpdiagrams] TO [public]
GRANT EXECUTE ON [dbo].[sp_renamediagram] TO [public]
GRANT EXECUTE ON [dbo].[udf_Add_Leading_Zeros_Remove_Decimal] TO [FHLBDM\G-SQL Public]
GRANT EXECUTE ON [dbo].[udf_Convert_Date_Types_to_Numeric_Date] TO [FHLBDM\ETLUser]
GRANT EXECUTE ON [dbo].[udf_Convert_Date_Types_to_Numeric_Date] TO [FHLBDM\G-SQL Public]
GRANT EXECUTE ON [dbo].[udf_Convert_Numeric_Date_to_Char] TO [FHLBDM\ETLUser]
GRANT EXECUTE ON [dbo].[udf_Convert_Numeric_Date_to_Char] TO [FHLBDM\G-SQL Public]
GRANT EXECUTE ON [dbo].[udf_Convert_Numeric_Date_to_Date] TO [FHLBDM\ETLUser]
GRANT EXECUTE ON [dbo].[udf_Convert_Numeric_Date_to_Date] TO [FHLBDM\G-SQL Public]
GRANT EXECUTE ON [dbo].[udf_Convert_Numeric_Date_to_Datetime] TO [FHLBDM\ETLUser]
GRANT EXECUTE ON [dbo].[udf_Convert_Numeric_Date_to_Datetime] TO [FHLBDM\G-SQL Public]
GRANT EXECUTE ON [dbo].[udf_Round_Numeric_to_Bankers_Rounding] TO [FHLBDM\G-SQL Public]
GRANT EXECUTE ON [dbo].[usp_Add_Connection] TO [FHLBDM\G-FHLB-Developers]
GRANT EXECUTE ON [dbo].[usp_Add_Connection_to_Process] TO [FHLBDM\G-FHLB-Developers]
GRANT EXECUTE ON [dbo].[usp_Add_Process] TO [FHLBDM\G-FHLB-Developers]
GRANT EXECUTE ON [dbo].[usp_Add_Process_Setting] TO [FHLBDM\G-FHLB-Developers]
GRANT EXECUTE ON [dbo].[usp_Add_Report_to_Process] TO [FHLBDM\G-FHLB-Developers]
GRANT EXECUTE ON [dbo].[usp_Get_Process_Setting] TO [FHLBDM\dsvc_colsecpldg]
GRANT EXECUTE ON [dbo].[usp_Get_Process_Setting] TO [FHLBDM\ETLUser]
GRANT EXECUTE ON [dbo].[usp_Get_Process_Setting] TO [FHLBDM\G-FHLB-Developers]
GRANT EXECUTE ON [dbo].[usp_Get_Process_Setting] TO [SSIS_Role]
GRANT EXECUTE ON [dbo].[usp_Get_Process_Settings] TO [FHLBDM\dsvc_colsecpldg]
GRANT EXECUTE ON [dbo].[usp_Get_Process_Settings] TO [FHLBDM\G-FHLB-Developers]
GRANT EXECUTE ON [dbo].[usp_Get_Process_Settings] TO [SSIS_Role]
GRANT EXECUTE ON [dbo].[usp_Get_Processes_Log_ID] TO [FHLBDM\dsvc_colsecpldg]
GRANT EXECUTE ON [dbo].[usp_Get_Processes_Log_ID] TO [FHLBDM\ETLUser]
GRANT EXECUTE ON [dbo].[usp_Get_Processes_Log_ID] TO [FHLBDM\G-FHLB-Developers]
GRANT EXECUTE ON [dbo].[usp_Get_Processes_Log_ID] TO [SSIS_Role]
GRANT EXECUTE ON [dbo].[usp_Get_Report_Name_Prefix_for_Onbase] TO [FHLBDM\dsvc_colsecpldg]
GRANT EXECUTE ON [dbo].[usp_Get_Report_Name_Prefix_for_Onbase] TO [SSIS_Role]
GRANT EXECUTE ON [dbo].[usp_Insert_Into_Error_Log] TO [FHLBDM\dsvc_colsecpldg]
GRANT EXECUTE ON [dbo].[usp_Insert_Into_Error_Log] TO [FHLBDM\ETLUser]
GRANT EXECUTE ON [dbo].[usp_Insert_Into_Error_Log] TO [FHLBDM\G-FHLB-Developers]
GRANT EXECUTE ON [dbo].[usp_Insert_Into_Error_Log] TO [SSIS_Role]
GRANT EXECUTE ON [dbo].[usp_Insert_Into_Processes_Task_Detail] TO [FHLBDM\dsvc_colsecpldg]
GRANT EXECUTE ON [dbo].[usp_Insert_Into_Processes_Task_Detail] TO [FHLBDM\ETLUser]
GRANT EXECUTE ON [dbo].[usp_Insert_Into_Processes_Task_Detail] TO [FHLBDM\G-FHLB-Developers]
GRANT EXECUTE ON [dbo].[usp_Insert_Into_Processes_Task_Detail] TO [SSIS_Role]
GRANT EXECUTE ON [dbo].[usp_Insert_Into_Processes_Task_Variables] TO [FHLBDM\dsvc_colsecpldg]
GRANT EXECUTE ON [dbo].[usp_Insert_Into_Processes_Task_Variables] TO [FHLBDM\G-FHLB-Developers]
GRANT EXECUTE ON [dbo].[usp_Insert_Into_Processes_Task_Variables] TO [SSIS_Role]
GRANT EXECUTE ON [dbo].[usp_Insert_Process_Business_Dates] TO [FHLBDM\dsvc_colsecpldg]
GRANT EXECUTE ON [dbo].[usp_Insert_Processes_Reconciliation_Detail] TO [FHLBDM\dsvc_colsecpldg]
GRANT EXECUTE ON [dbo].[usp_Insert_Processes_Reconciliation_Detail] TO [FHLBDM\ETLUser]
GRANT EXECUTE ON [dbo].[usp_Insert_Processes_Reconciliation_Detail] TO [FHLBDM\G-FHLB-Developers]
GRANT EXECUTE ON [dbo].[usp_Insert_Processes_Reconciliation_Detail] TO [SSIS_Role]
GRANT EXECUTE ON [dbo].[usp_rebuild_database_indexes] TO [FHLBDM\ETLUser]
GRANT EXECUTE ON [dbo].[usp_ReportAutoGenDS] TO [FHLBDM\dsvc_colsecpldg]
GRANT EXECUTE ON [dbo].[usp_ReportAutoGenDS] TO [SSIS_Role]
GRANT EXECUTE ON [dbo].[usp_Send_Mail] TO [FHLBDM\dsvc_colsecpldg]
GRANT EXECUTE ON [dbo].[usp_Send_Mail] TO [FHLBDM\G-FHLB-Developers]
GRANT EXECUTE ON [dbo].[usp_Send_Mail] TO [SSIS_Role]
GRANT EXECUTE ON [dbo].[usp_SSIS_Package_IT_Division_Report] TO [FHLBDM\G-FHLB-Developers]
GRANT EXECUTE ON [dbo].[usp_SSIS_Package_IT_Division_Report] TO [FHLBDM\G-SQL Public]
GRANT EXECUTE ON [dbo].[usp_Update_Process_Log_End_Process] TO [FHLBDM\dsvc_colsecpldg]
GRANT EXECUTE ON [dbo].[usp_Update_Process_Log_End_Process] TO [FHLBDM\ETLUser]
GRANT EXECUTE ON [dbo].[usp_Update_Process_Log_End_Process] TO [FHLBDM\G-FHLB-Developers]
GRANT EXECUTE ON [dbo].[usp_Update_Process_Log_End_Process] TO [SSIS_Role]
GRANT EXECUTE ON [dbo].[usp_Update_Process_Setting] TO [FHLBDM\dsvc_colsecpldg]
GRANT EXECUTE ON [dbo].[usp_Update_Process_Setting] TO [FHLBDM\G-FHLB-Developers]
GRANT EXECUTE ON [dbo].[usp_Update_Process_Setting] TO [SSIS_Role]
GRANT EXECUTE ON [dbo].[usp_Update_RunDate] TO [FHLBDM\dsvc_colsecpldg]
GRANT EXECUTE ON [dbo].[usp_Update_RunDate] TO [FHLBDM\ETLUser]
GRANT EXECUTE ON [dbo].[usp_Update_RunDate] TO [FHLBDM\G-FHLB-Developers]
GRANT EXECUTE ON [dbo].[usp_Update_RunDate] TO [SSIS_Role]
GRANT EXECUTE ON [dbo].[usp_Update_RunDate2] TO [FHLBDM\dsvc_colsecpldg]
GRANT EXECUTE ON [dbo].[usp_Update_RunDate2] TO [FHLBDM\ETLUser]
GRANT EXECUTE ON [dbo].[usp_Update_RunDate2] TO [FHLBDM\G-FHLB-Developers]
GRANT EXECUTE ON [dbo].[usp_Update_RunDate2] TO [SSIS_Role]
GRANT EXECUTE ON [dbo].[usp_Validate_Last_Run_Completed] TO [FHLBDM\ETLUser]
GRANT SELECT ON [dbo].[Processes] TO [FHLBDM\dsvc_colsecpldg]
GRANT SELECT ON [dbo].[Processes] TO [FHLBDM\G-FHLBAPPS-Coll-Student Loans]
GRANT SELECT ON [dbo].[Processes_Log] TO [FHLBDM\G-FHLBAPPS-Coll-Student Loans]
GRANT SELECT ON [dbo].[ReportsAutomated] TO [FHLBDM\dsvc_colsecpldg]
GRANT SELECT ON [dbo].[RptsAutoServerName] TO [FHLBDM\dsvc_colsecpldg]
GRANT SELECT ON [dbo].[V_SSIS_Configurations] TO [FHLBDM\G-FHLB-Developers]
GRANT SELECT ON [dbo].[V_SSIS_Configurations] TO [SSIS_Role]
GRANT SELECT ON [dbo].[V_SSISPackage_Connections_Configurations] TO [FHLBDM\G-FHLB-Developers]
GRANT SELECT ON [dbo].[V_SSISPackage_Connections_Configurations] TO [SSIS_Role]
GRANT SELECT ON [dbo].[vw_Automated_Reports] TO [FHLBDM\G-FHLB-Developers]
GRANT SELECT ON [dbo].[vw_Automated_Reports] TO [SSIS_Role]
GRANT SELECT ON [dbo].[vw_Errors] TO [FHLBDM\G-FHLB-Developers]
GRANT SELECT ON [dbo].[vw_Errors] TO [FHLBDM\IT-Divisional Risk Team]
GRANT SELECT ON [dbo].[vw_Errors] TO [SSIS_Role]
GRANT SELECT ON [dbo].[vw_Process_Automated_Reports] TO [FHLBDM\G-FHLB-Developers]
GRANT SELECT ON [dbo].[vw_Process_Automated_Reports] TO [FHLBDM\IT-Divisional Risk Team]
GRANT SELECT ON [dbo].[vw_Process_Automated_Reports] TO [SSIS_Role]
GRANT SELECT ON [dbo].[vw_Processes_Run_Time] TO [FHLBDM\G-FHLB-Developers]
GRANT SELECT ON [dbo].[vw_Processes_Run_Time] TO [FHLBDM\IT-Divisional Risk Team]
GRANT SELECT ON [dbo].[vw_Processes_Run_Time] TO [SSIS_Role]
GRANT SELECT ON [dbo].[vw_Processes_Task_Detail_Run_Time] TO [FHLBDM\G-FHLB-Developers]
GRANT SELECT ON [dbo].[vw_Processes_Task_Detail_Run_Time] TO [FHLBDM\IT-Divisional Risk Team]
GRANT SELECT ON [dbo].[vw_Processes_Task_Detail_Run_Time] TO [SSIS_Role]
GRANT SELECT ON [dbo].[vw_SSIS_Package_Departments] TO [FHLBDM\G-FHLB-Developers]
GRANT SELECT ON [dbo].[vw_SSIS_Package_Departments] TO [SSIS_Role]
GRANT SELECT ON [dbo].[vw_SSIS_Package_IT_Division_Report] TO [FHLBDM\G-FHLB-Developers]
GRANT SELECT ON [dbo].[vw_SSIS_Package_IT_Division_Report] TO [SSIS_Role]
GRANT SELECT ON [dbo].[vw_SSIS_Package_Tidal_Job_Email_Tasks] TO [SSIS_Role]
GRANT SELECT ON [dbo].[vw_SSIS_Packages] TO [FHLBDM\G-FHLB-Developers]
GRANT SELECT ON [dbo].[vw_SSIS_Packages] TO [SSIS_Role]
-- [-- TYPE LEVEL PERMISSIONS --] --
 
-- [--DB LEVEL PERMISSIONS --] --
GRANT CONNECT TO [FHLBDM\dsvc_colsecpldg]
GRANT CONNECT TO [FHLBDM\dsvc_dusbonds]
GRANT CONNECT TO [FHLBDM\dsvc_railoanprice]
GRANT CONNECT TO [FHLBDM\ETLUser]
GRANT CONNECT TO [fhlbdm\fogsrvc]
GRANT CONNECT TO [FHLBDM\G-FHLBAPPS-Coll-Student Loans]
GRANT CONNECT TO [FHLBDM\G-FHLB-Developers]
GRANT CONNECT TO [FHLBDM\G-SQL Public]
GRANT CONNECT TO [FHLBDM\IT-Divisional Risk Team]
 
-- [--DB LEVEL SCHEMA PERMISSIONS --] --
