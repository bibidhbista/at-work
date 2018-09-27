USE master
BACKUP DATABASE [MPF_Level_Yield] TO  DISK = N'\\pfs02\SQLtempBackup\TEST\MPF_Level_Yield.bak' WITH NOFORMAT, NOINIT,  NAME = N'MPF_Level_Yield-Full Database Backup', SKIP, NOREWIND, NOUNLOAD, COMPRESSION,  STATS = 10
GO
