USE master


PRINT N'Setting Database DWH_Auditing to SINGLE_USER Mode.';  
ALTER DATABASE [DWH_Auditing] SET SINGLE_USER WITH ROLLBACK IMMEDIATE  
PRINT N'Database DWH_Auditing set to SINGLE_USER Mode successfully.';
PRINT N' ';     
GO


RESTORE DATABASE [DWH_Auditing] FROM  DISK = N'\\pfs02\SQLtempBackup\Prod\DWH_AUDITING.bak' WITH  FILE = 1,  MOVE N'DWH_Auditing_Log' TO N'F:\MSSQL10_50.MSSQLSERVER\MSSQL\Logs\DWH_Auditing.LDF',  NOUNLOAD,  REPLACE,  STATS = 10
GO



PRINT N' ';  
PRINT N'#############################################################################';  
PRINT N'DWH_Auditing database restored successfully.'; 
PRINT N'#############################################################################';
PRINT N' ';  
Go


PRINT N'Setting Database DWH_Auditing to MULTI_USER Mode.';  
ALTER DATABASE [DWH_Auditing] SET MULTI_USER
PRINT N'Database DWH_Auditing set to MULTI_USER Mode successfully.';  
GO