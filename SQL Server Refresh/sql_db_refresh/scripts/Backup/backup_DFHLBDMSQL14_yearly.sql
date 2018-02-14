USE master
BACKUP DATABASE [yearly] TO  DISK = N'\\pfs02\SQLtempBackup\DEV\yearly.bak' WITH NOFORMAT, NOINIT,  NAME = N'yearly-Full Database Backup', SKIP, NOREWIND, NOUNLOAD, COMPRESSION,  STATS = 10
GO
