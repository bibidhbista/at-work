USE [master]

PRINT N'Setting Database Principia_Interface to SINGLE_USER Mode.';  
ALTER DATABASE [Principia_Interface] SET SINGLE_USER WITH ROLLBACK IMMEDIATE  
PRINT N'Database Principia_Interface set to SINGLE_USER Mode successfully.';
PRINT N' ';     
GO

RESTORE DATABASE [Principia_Interface] FROM  DISK = N'\\pfs02\SQLtempBackup\Prod\Principia_Interface.bak' WITH  FILE = 1,  MOVE N'Principia_Interface_Log' TO N'F:\MSSQL10_50.MSSQLSERVER\MSSQL\Logs\Principia_Interface.LDF',  NOUNLOAD,  REPLACE,  STATS = 5
PRINT N' ';  
PRINT N'#############################################################################';  
PRINT N'Principia_Interface database restored successfully.'; 
PRINT N'#############################################################################';
PRINT N' ';  
Go


PRINT N'Setting Database Principia_Interface to MULTI_USER Mode.';  
ALTER DATABASE [Principia_Interface] SET MULTI_USER
PRINT N'Database Principia_Interface set to MULTI_USER Mode successfully.';  
GO