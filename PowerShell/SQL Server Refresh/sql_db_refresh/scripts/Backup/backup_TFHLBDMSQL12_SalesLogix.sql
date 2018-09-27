USE master
BACKUP DATABASE [SalesLogix] TO  DISK = N'\\pfs02\SQLtempBackup\TEST\SalesLogix.bak' WITH NOFORMAT, NOINIT,  NAME = N'SalesLogix-Full Database Backup', SKIP, NOREWIND, NOUNLOAD, COMPRESSION,  STATS = 10
GO
