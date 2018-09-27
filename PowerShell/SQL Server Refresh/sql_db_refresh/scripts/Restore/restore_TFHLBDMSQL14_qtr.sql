USE master


PRINT N'Setting Database qtr to SINGLE_USER Mode.';  
ALTER DATABASE [qtr] SET SINGLE_USER WITH ROLLBACK IMMEDIATE  
PRINT N'Database qtr set to SINGLE_USER Mode successfully.';
PRINT N' ';     
GO



RESTORE DATABASE [qtr] FROM  DISK = N'\\pfs02\SQLtempBackup\Prod\qtr.bak' WITH  FILE = 1,  NOUNLOAD,  REPLACE,  STATS = 10
GO



PRINT N' ';  
PRINT N'#############################################################################';  
PRINT N'QTR database restored successfully.'; 
PRINT N'#############################################################################';
PRINT N' ';  
Go


PRINT N'Setting Database qtr to MULTI_USER Mode.';  
ALTER DATABASE [qtr] SET MULTI_USER
PRINT N'Database qtr set to MULTI_USER Mode successfully.';  
GO