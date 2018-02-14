USE master


PRINT N'Setting Database FHLB to SINGLE_USER Mode.';  
ALTER DATABASE [fhlb] SET SINGLE_USER WITH ROLLBACK IMMEDIATE  
PRINT N'Database FHLB set to SINGLE_USER Mode successfully.';
PRINT N' ';     
GO



RESTORE DATABASE [fhlb] FROM  DISK = N'\\pfs02\SQLtempBackup\Prod\fhlb.bak' WITH  FILE = 1,  MOVE N'FHLB_log' TO N'F:\MSSQL10_50.MSSQLSERVER\MSSQL\Logs\fhlb.ldf',  NOUNLOAD,  REPLACE,  STATS = 10
GO


PRINT N' ';  
PRINT N'#############################################################################';  
PRINT N'FHLB database restored successfully.'; 
PRINT N'#############################################################################';
PRINT N' ';  
Go


PRINT N'Setting Database FHLB to MULTI_USER Mode.';  
ALTER DATABASE [fhlb] SET MULTI_USER
PRINT N'Database FHLB set to MULTI_USER Mode successfully.';  
GO