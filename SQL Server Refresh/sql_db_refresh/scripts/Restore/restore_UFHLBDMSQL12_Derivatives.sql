USE master

PRINT N'Setting Database Derivatives to SINGLE_USER Mode.';  
ALTER DATABASE [Derivatives] SET SINGLE_USER WITH ROLLBACK IMMEDIATE  
PRINT N'Database Derivatives set to SINGLE_USER Mode successfully.';
PRINT N' ';     
GO



RESTORE DATABASE [Derivatives] FROM  DISK = N'\\pfs02\SQLtempBackup\Prod\Derivatives.bak' WITH  FILE = 1,  MOVE N'Derivatives_log' TO N'F:\MSSQL10_50.MSSQLSERVER\MSSQL\Log\Derivatives_1.ldf',  NOUNLOAD,  STATS = 10
GO


PRINT N' ';  
PRINT N'#############################################################################';  
PRINT N'Derivatives database restored successfully.'; 
PRINT N'#############################################################################';
PRINT N' ';  
Go


PRINT N'Setting Database Derivatives to MULTI_USER Mode.';  
ALTER DATABASE [Derivatives] SET MULTI_USER
PRINT N'Database Derivatives set to MULTI_USER Mode successfully.';  
GO