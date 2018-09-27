USE master

PRINT N'Setting Database MPP_Level_Yield to SINGLE_USER Mode.';  
ALTER DATABASE [MPP_Level_Yield] SET SINGLE_USER WITH ROLLBACK IMMEDIATE  
PRINT N'Database MPP_Level_Yield set to SINGLE_USER Mode successfully.';
PRINT N' ';     
GO


RESTORE DATABASE [MPP_Level_Yield] FROM  DISK = N'\\pfs02\SQLtempBackup\Prod\MPP_Level_Yield.bak' WITH  FILE = 1,  MOVE N'MPP_Level_Yield' TO N'E:\MSSQL10_50.MSSQLSERVER\MSSQL\Data\MPP_Level_Yield.mdf',  MOVE N'MPP_Level_Yield_log' TO N'F:\MSSQL10_50.MSSQLSERVER\MSSQL\Logs\MPP_Level_Yield_1.ldf',  NOUNLOAD,  STATS = 10
GO



PRINT N' ';  
PRINT N'#############################################################################';  
PRINT N'MPP_Level_Yield database restored successfully.'; 
PRINT N'#############################################################################';
PRINT N' ';  
Go


PRINT N'Setting Database MPP_Level_Yield to MULTI_USER Mode.';  
ALTER DATABASE [MPP_Level_Yield] SET MULTI_USER
PRINT N'Database MPP_Level_Yield set to MULTI_USER Mode successfully.';  
GO