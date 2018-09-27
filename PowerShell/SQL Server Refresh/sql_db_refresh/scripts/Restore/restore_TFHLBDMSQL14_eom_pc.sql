USE master

PRINT N'Setting Database eom_pc to SINGLE_USER Mode.';  
ALTER DATABASE [eom_pc] SET SINGLE_USER WITH ROLLBACK IMMEDIATE  
PRINT N'Database eom_pc set to SINGLE_USER Mode successfully.';
PRINT N' ';     
GO

RESTORE DATABASE [eom_pc] FROM  DISK = N'\\pfs02\SQLTempBackup\Prod\eom_pc.bak' WITH  FILE = 1,  NOUNLOAD,  REPLACE,  STATS = 10

GO



PRINT N' ';  
PRINT N'#############################################################################';  
PRINT N'eom_pc database restored successfully.'; 
PRINT N'#############################################################################';
PRINT N' ';  
Go


PRINT N'Setting Database eom_pc to MULTI_USER Mode.';  
ALTER DATABASE [eom_pc] SET MULTI_USER
PRINT N'Database eom_pc set to MULTI_USER Mode successfully.';  
GO