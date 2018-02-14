USE master

PRINT N'Setting Database MPF_Level_Yield to SINGLE_USER Mode.';  
ALTER DATABASE [MPF_Level_Yield] SET SINGLE_USER WITH ROLLBACK IMMEDIATE  
PRINT N'Database MPF_Level_Yield set to SINGLE_USER Mode successfully.';
PRINT N' ';     
GO

RESTORE DATABASE [MPF_Level_Yield] FROM  DISK = N'\\pfs02\SQLtempBackup\Prod\MPF_Level_Yield.bak' WITH  FILE = 1,  NOUNLOAD,  REPLACE,  STATS = 10
GO


PRINT N' ';  
PRINT N'#############################################################################';  
PRINT N'MPF_Level_Yield database restored successfully.'; 
PRINT N'#############################################################################';
PRINT N' ';  
Go


PRINT N'Setting Database MPF_Level_Yield to MULTI_USER Mode.';  
ALTER DATABASE [MPF_Level_Yield] SET MULTI_USER
PRINT N'Database MPF_Level_Yield set to MULTI_USER Mode successfully.';  
GO