USE master
BACKUP DATABASE [MPP_Level_Yield] TO  DISK = N'\\pfs02\SQLtempBackup\DEV\MPP_Level_Yield.bak' WITH NOFORMAT, NOINIT,  NAME = N'MPP_Level_Yield-Full Database Backup', SKIP, NOREWIND, NOUNLOAD, COMPRESSION,  STATS = 10
GO