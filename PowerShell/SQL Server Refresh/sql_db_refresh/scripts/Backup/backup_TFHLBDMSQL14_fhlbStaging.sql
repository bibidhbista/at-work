USE master
BACKUP DATABASE [fhlbStaging] TO  DISK = N'\\pfs02\SQLtempBackup\TEST\fhlbStaging.bak' WITH NOFORMAT, NOINIT,  NAME = N'fhlbStaging-Full Database Backup', SKIP, NOREWIND, NOUNLOAD, COMPRESSION,  STATS = 10
GO
