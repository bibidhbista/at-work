USE master
BACKUP DATABASE [Principia_Interface] TO  DISK = N'\\pfs02\SQLtempBackup\UAT\Principia_Interface.bak' WITH NOFORMAT, NOINIT,  NAME = N'Principia_Interface-Full Database Backup', SKIP, NOREWIND, NOUNLOAD, COMPRESSION,  STATS = 10
GO