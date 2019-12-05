--Get most recent DOCUMENTSTORE_FYxx_Hx backup and restore as new database
RESTORE FILELISTONLY FROM DISK = 'K:\BackupArchive\bkupDOCUMENTSTORE_FY16_20160701.bak'

RESTORE DATABASE DOCUMENTSTORE_FY19_H3 FROM DISK = 'I:\MSSQL10.MSSQLSERVER\MSSQL\Backup\bkupDOCUMENTSTORE_FY19_H2_20190714.bak' WITH 
MOVE 'DocumentStore_Data' TO 'E:\MSSQL\MSSQL\DATA\DOCUMENTSTORE_FY19_H3_DATA.mdf', 
MOVE 'DocumentStore_Log' TO 'L:\MSSQL\MSSQL\Data\DOCUMENTSTORE_FY19_H3_LOG.ldf', REPLACE


--truncate the newly restored database's documents_current table and drop and recreate it's check constraint
USE [DOCUMENTSTORE_FY19_H3]
GO

truncate table documents_current
go

--*******************************************************************
--** Backup the new database and add it to logshipping **************
--*******************************************************************
dbcc shrinkfile('DocumentStore_Log')
BACKUP DATABASE DOCUMENTSTORE_FY19_H3 TO DISK = 'I:\bkupDOCUMENTSTORE_FY19_H3_4_LogShip.bak' WITH INIT

RESTORE DATABASE DOCUMENTSTORE_FY19_H3 FROM DISK = 'I:\bkupDOCUMENTSTORE_FY19_H3_4_LogShip.bak' WITH NORECOVERY

--Query to check what the current maximum id is to choose the cutoff of the current check constraint and start the new one
select max(documentid) from DOCUMENTSTORE.dbo.Documents with (nolock)
3896246
3897000

select min(documentid),max(documentid) from DOCUMENTSTORE_FY19_H2.dbo.Documents_current with (nolock)
where EnteredDt >= '7/15/2019' and EnteredDt < '7/16/2019'

--At time of maintenance, drop and create the current database check constraint and the new database check constraint  
USE [DOCUMENTSTORE_FY19_H3]
GO
ALTER TABLE [dbo].[Documents_current] DROP CONSTRAINT [CK_Documents_current]
GO

ALTER TABLE [dbo].[Documents_current]  WITH CHECK ADD  CONSTRAINT [CK_Documents_current] CHECK  (([DocumentId]>=(3897000) ))
GO
ALTER TABLE [dbo].[Documents_current] CHECK CONSTRAINT [CK_Documents_current]
GO


USE [DOCUMENTSTORE_FY19_H2]
GO

ALTER TABLE [dbo].[Documents_current] DROP CONSTRAINT [CK_Documents_current]
GO

ALTER TABLE [dbo].[Documents_current]  WITH CHECK ADD  CONSTRAINT [CK_Documents_current] CHECK  (([DocumentId]>=(3279000) AND [DocumentId]<(3897000)))
GO
ALTER TABLE [dbo].[Documents_current] CHECK CONSTRAINT [CK_Documents_current]
GO


--Alter the view to add a reference the new database
USE [DOCUMENTSTORE]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [dbo].[Documents]
as

select DocumentId,	DocumentKey, ApplicationNm, FileType, FileBytes, FileHash, FileSize, EnteredDt
from DOCUMENTSTORE_BASE.dbo.Documents_current

union all

select DocumentId,	DocumentKey, ApplicationNm, FileType, FileBytes, FileHash, FileSize, EnteredDt
from DOCUMENTSTORE_BASE2.dbo.Documents_current

union all

select DocumentId,	DocumentKey, ApplicationNm, FileType, FileBytes, FileHash, FileSize, EnteredDt
from DOCUMENTSTORE_BASE3.dbo.Documents_current

union all

select DocumentId,	DocumentKey, ApplicationNm, FileType, FileBytes, FileHash, FileSize, EnteredDt
from DOCUMENTSTORE_FY16.dbo.Documents_current

union all

select DocumentId,	DocumentKey, ApplicationNm, FileType, FileBytes, FileHash, FileSize, EnteredDt
from DOCUMENTSTORE_FY16_H2.dbo.Documents_current

union all

select DocumentId,	DocumentKey, ApplicationNm, FileType, FileBytes, FileHash, FileSize, EnteredDt
from DOCUMENTSTORE_FY17_H1.dbo.Documents_current

union all

select DocumentId,	DocumentKey, ApplicationNm, FileType, FileBytes, FileHash, FileSize, EnteredDt
from DOCUMENTSTORE_FY17_H2.dbo.Documents_current

union all

select DocumentId,	DocumentKey, ApplicationNm, FileType, FileBytes, FileHash, FileSize, EnteredDt
from DOCUMENTSTORE_FY18_H1.dbo.Documents_current

union all

select DocumentId,	DocumentKey, ApplicationNm, FileType, FileBytes, FileHash, FileSize, EnteredDt
from DOCUMENTSTORE_FY18_H2.dbo.Documents_current

union all

select DocumentId,	DocumentKey, ApplicationNm, FileType, FileBytes, FileHash, FileSize, EnteredDt
from DOCUMENTSTORE_FY19_H1.dbo.Documents_current

union all

select DocumentId,	DocumentKey, ApplicationNm, FileType, FileBytes, FileHash, FileSize, EnteredDt
from DOCUMENTSTORE_FY19_H2.dbo.Documents_current

union all

select DocumentId,	DocumentKey, ApplicationNm, FileType, FileBytes, FileHash, FileSize, EnteredDt
from DOCUMENTSTORE_FY19_H3.dbo.Documents_current


GO

