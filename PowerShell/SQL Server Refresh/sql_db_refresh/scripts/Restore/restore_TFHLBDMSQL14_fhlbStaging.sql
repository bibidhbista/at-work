USE master

PRINT N'Setting Database fhlbStaging to SINGLE_USER Mode.';  
ALTER DATABASE [fhlbStaging] SET SINGLE_USER WITH ROLLBACK IMMEDIATE  
PRINT N'Database fhlbStaging set to SINGLE_USER Mode successfully.';
PRINT N' ';     
GO


RESTORE DATABASE [fhlbStaging] FROM  DISK = N'\\pfs02\SQLtempBackup\Prod\fhlbStaging.bak' WITH  FILE = 1,  NOUNLOAD,  REPLACE,  STATS = 10
GO


PRINT N' ';  
PRINT N'#############################################################################';  
PRINT N'fhlbStaging  database restored successfully.'; 
PRINT N'#############################################################################';
PRINT N' ';  
Go


PRINT N'Setting Database fhlbStaging to MULTI_USER Mode.';  
ALTER DATABASE [fhlbStaging] SET MULTI_USER
PRINT N'Database fhlbStaging set to MULTI_USER Mode successfully.';  
GO