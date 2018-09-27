USE master

PRINT N'Setting Database QRM_Source to SINGLE_USER Mode.';  
ALTER DATABASE [QRM_Source] SET SINGLE_USER WITH ROLLBACK IMMEDIATE  
PRINT N'Database QRM_Source set to SINGLE_USER Mode successfully.';
PRINT N' ';     
GO

RESTORE DATABASE [QRM_Source] FROM  DISK = N'\\pfs02\SQLtempBackup\Prod\QRM_Source.bak' WITH  FILE = 1,  NOUNLOAD,  REPLACE,  STATS = 10
GO


PRINT N' ';  
PRINT N'#############################################################################';  
PRINT N'QRM_Source database restored successfully.'; 
PRINT N'#############################################################################';
PRINT N' ';  
Go


PRINT N'Setting Database QRM_Source to MULTI_USER Mode.';  
ALTER DATABASE [QRM_Source] SET MULTI_USER
PRINT N'Database QRM_Source set to MULTI_USER Mode successfully.';  
GO