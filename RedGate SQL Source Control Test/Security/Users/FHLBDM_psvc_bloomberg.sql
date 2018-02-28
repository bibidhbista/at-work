IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'FHLBDM\psvc_bloomberg')
CREATE LOGIN [FHLBDM\psvc_bloomberg] FROM WINDOWS
GO
CREATE USER [FHLBDM\psvc_bloomberg] FOR LOGIN [FHLBDM\psvc_bloomberg]
GO
