USE master

PRINT N'Setting Database EOM to SINGLE_USER Mode.';  
ALTER DATABASE [eom] SET SINGLE_USER WITH ROLLBACK IMMEDIATE  
PRINT N'Database EOM set to SINGLE_USER Mode successfully.';
PRINT N' ';     
GO


RESTORE DATABASE [eom] FROM  DISK = N'\\pfs02\SQLtempBackup\Prod\EOM.bak' WITH  FILE = 1,  NOUNLOAD,  REPLACE,  STATS = 10
GO

PRINT N' ';  
PRINT N'#############################################################################';  
PRINT N'eom database restored successfully.'; 
PRINT N'#############################################################################';
PRINT N' ';  
Go


PRINT N'Setting Database EOM to MULTI_USER Mode.';  
ALTER DATABASE [eom] SET MULTI_USER
PRINT N'Database eom set to MULTI_USER Mode successfully.';  
GO