USE master
BACKUP DATABASE [eom] TO  DISK = N'\\pfs02\SQLtempBackup\PROD\EOM.bak' WITH NOFORMAT, NOINIT,  NAME = N'eom-Full Database Backup', SKIP, NOREWIND, NOUNLOAD, COMPRESSION,  STATS = 10
GO