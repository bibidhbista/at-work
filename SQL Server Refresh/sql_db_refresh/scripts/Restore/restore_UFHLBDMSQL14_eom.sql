USE master

PRINT N'Setting Database EOM to SINGLE_USER Mode.';  
ALTER DATABASE [eom] SET SINGLE_USER WITH ROLLBACK IMMEDIATE  
PRINT N'Database EOM set to SINGLE_USER Mode successfully.';
PRINT N' ';     
GO


RESTORE DATABASE [eom] FROM  DISK = N'\\pfs02\SQLtempBackup\Prod\EOM.bak' WITH  FILE = 1,  MOVE N'EOM_Log' TO N'F:\MSSQL10_50.MSSQLSERVER\MSSQL\Logs\eom.ldf',  NOUNLOAD,  REPLACE,  STATS = 10
GO


PRINT N' ';  
PRINT N'#############################################################################';  
PRINT N'EOM database restored successfully.'; 
PRINT N'#############################################################################';
PRINT N' ';  
Go


PRINT N'Setting Database EOM to MULTI_USER Mode.';  
ALTER DATABASE [eom] SET MULTI_USER
PRINT N'Database EOM set to MULTI_USER Mode successfully.';  
GO