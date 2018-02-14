USE master

PRINT N'Setting Database yearly to SINGLE_USER Mode.';  
ALTER DATABASE [yearly] SET SINGLE_USER WITH ROLLBACK IMMEDIATE  
PRINT N'Database yearly set to SINGLE_USER Mode successfully.';
PRINT N' ';     
GO


RESTORE DATABASE [yearly] FROM  DISK = N'\\pfs02\SQLtempBackup\Prod\yearly.bak' WITH  FILE = 1,  NOUNLOAD,  REPLACE,  STATS = 10
GO



PRINT N' ';  
PRINT N'#############################################################################';  
PRINT N'yearly database restored successfully.'; 
PRINT N'#############################################################################';
PRINT N' ';  
Go


PRINT N'Setting Database yearly to MULTI_USER Mode.';  
ALTER DATABASE [yearly] SET MULTI_USER
PRINT N'Database yearly set to MULTI_USER Mode successfully.';  
GO