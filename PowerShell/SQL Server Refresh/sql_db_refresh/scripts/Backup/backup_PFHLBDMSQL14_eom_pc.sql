USE master
BACKUP DATABASE [eom_pc] TO  DISK = N'\\pfs02\SQLTempBackup\PROD\eom_pc.bak' WITH NOFORMAT, NOINIT,  NAME = N'eom_pc-Full Database Backup', SKIP, NOREWIND, NOUNLOAD, COMPRESSION,  STATS = 10
GO
