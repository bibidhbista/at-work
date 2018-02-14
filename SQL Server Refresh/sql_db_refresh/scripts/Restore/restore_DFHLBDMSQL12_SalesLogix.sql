USE [master]

PRINT N'Setting Database SalesLogix to SINGLE_USER Mode.';  
ALTER DATABASE [SalesLogix] SET SINGLE_USER WITH ROLLBACK IMMEDIATE  
PRINT N'Database SalesLogix set to SINGLE_USER Mode successfully.';
PRINT N' ';     
GO



RESTORE DATABASE [SalesLogix] FROM  DISK = N'\\pfs02\SQLtempBackup\PROD\SalesLogix.bak' WITH  FILE = 3,  NOUNLOAD,  REPLACE,  STATS = 5

GO



PRINT N' ';  
PRINT N'#############################################################################';  
PRINT N'SalesLogix  database restored successfully.'; 
PRINT N'#############################################################################';
PRINT N' ';  
Go


USE [master]
GO
ALTER DATABASE [SalesLogix] SET RECOVERY SIMPLE WITH NO_WAIT
GO

PRINT N' ';  
PRINT N'#############################################################################';  
PRINT N'SalesLogix  database Recovery Model set to SIMPLE successfully.'; 
PRINT N'#############################################################################';
PRINT N' ';  
Go

PRINT N'Setting Database SalesLogix to MULTI_USER Mode.';  
ALTER DATABASE [SalesLogix] SET MULTI_USER
PRINT N'Database SalesLogix set to MULTI_USER Mode successfully.';  
GO
