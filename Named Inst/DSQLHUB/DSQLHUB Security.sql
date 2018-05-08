USE [master]
GO
CREATE LOGIN [FHLBDM\G-SQL-HUB Developers] FROM WINDOWS WITH DEFAULT_DATABASE=[master]
CREATE LOGIN [FHLBDM\G-SQL-HUB Testers] FROM WINDOWS WITH DEFAULT_DATABASE=[master]

CREATE LOGIN [fhlbdm\dsvc_vstsbuild] FROM WINDOWS WITH	DEFAULT_DATABASE=[master]
GO
use [master]
GO
GRANT CONNECT SQL TO [FHLBDM\G-SQL-HUB Developers]
GRANT CONNECT SQL TO [FHLBDM\G-SQL-HUB Testers] 

GO




grant connect sql to [FHLBDM\G-SQL-HUB Developers]
grant connect sql to [FHLBDM\G-SQL-HUB Testers]
grant connect sql to [FHLBDM\G-Treasury_Hub_Acc]
grant connect sql to [FHLBDM\G-SQL-HUB-Acctng]
grant connect sql to [FHLBDM\G-SQL-HUB-MR Investment Pricing]
grant connect sql to [FHLBDM\G-SQL-TsyHubStaging RO]



EXEC master..xp_regwrite 
@rootkey='HKEY_LOCAL_MACHINE', 
@key='SOFTWARE\Microsoft\Microsoft SQL Server\MSSQL13.MSSQLSERVER_DEV1\MSSQLServer', 
@value_name='BackupDirectory', 
@type='REG_SZ', 
@value='\\fhlbdm.com\sqlbackup\sqlbackup\DFHLBDMSQL07_Dev1' 
