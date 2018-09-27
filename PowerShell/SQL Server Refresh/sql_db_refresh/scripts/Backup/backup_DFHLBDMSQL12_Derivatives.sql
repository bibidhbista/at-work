USE master
BACKUP DATABASE [Derivatives] TO  DISK = N'\\pfs02\SQLtempBackup\DEV\Derivatives.bak' WITH NOFORMAT, NOINIT,  NAME = N'Derivatives-Full Database Backup', SKIP, NOREWIND, NOUNLOAD, COMPRESSION,  STATS = 10
GO