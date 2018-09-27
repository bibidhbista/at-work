USE master

PRINT N'Setting Database MPF_LnCmt to SINGLE_USER Mode.';  
ALTER DATABASE [MPF_LnCmt] SET SINGLE_USER WITH ROLLBACK IMMEDIATE  
PRINT N'Database MPF_LnCmt set to SINGLE_USER Mode successfully.';
PRINT N' ';     
GO


RESTORE DATABASE [MPF_LnCmt] FROM  DISK = N'\\pfs02\SQLTempBackup\PROD\MPF_LnCmt.bak' WITH  FILE = 1,  NOUNLOAD,  REPLACE,  STATS = 10
GO


PRINT N' ';  
PRINT N'#############################################################################';  
PRINT N'MPF_LnCmt database restored successfully.'; 
PRINT N'#############################################################################';
PRINT N' ';  
Go


PRINT N'Setting Database MPF_LnCmt to MULTI_USER Mode.';  
ALTER DATABASE [MPF_LnCmt] SET MULTI_USER
PRINT N'Database MPF_LnCmt set to MULTI_USER Mode successfully.';  
GO