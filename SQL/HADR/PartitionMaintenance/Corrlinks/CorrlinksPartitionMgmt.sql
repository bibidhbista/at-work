

/*
sp_helptext messages_fortrulincs
sp_helptext messages
sp_helptext messagebodies

sp_spaceused 'Messages_Base2'
sp_spaceused 'MessageBodies_Base2'

select 'exec sp_rename ''' + name + ''',''' + name + '_OLD'',''OBJECT'''
from sys.tables where name like 'Messages[_]%' or name like 'MessageBodies[_]%'
order by name

select 'drop table ' + name
from sys.tables where name like 'Message%[_]OLD'
order by name

select getdate()
exec admin_partitionstats
2016-11-18 10:16:28.347		277918
2016-11-18 10:33:47.957		273177
select max(messageid) from messages_31 with (nolock)
select max(messageid) from messagebodies_31 with (nolock)

exec xp_fixeddrives
select * from aspstate.dbo.sysfiles
select * from aspstatemobile.dbo.sysfiles

USE [CorrLinks]
GO

ALTER TABLE Messages_Base2 SWITCH TO Messages_Base
GO
ALTER TABLE MessageBodies_Base2 SWITCH TO MessageBodies_Base
GO

INSERT INTO Messages_Base SELECT * FROM Messages_15 with (nolock)
INSERT INTO Messages_Base SELECT * FROM Messages_16 with (nolock)
INSERT INTO Messages_Base SELECT * FROM Messages_17 with (nolock)
INSERT INTO Messages_Base SELECT * FROM Messages_18 with (nolock)
INSERT INTO Messages_Base SELECT * FROM Messages_19 with (nolock)
INSERT INTO Messages_Base SELECT * FROM Messages_20 with (nolock)
INSERT INTO Messages_Base SELECT * FROM Messages_21 with (nolock)
INSERT INTO Messages_Base SELECT * FROM Messages_22 with (nolock)
INSERT INTO Messages_Base SELECT * FROM Messages_23 with (nolock)
INSERT INTO Messages_Base SELECT * FROM Messages_24 with (nolock)

INSERT INTO MessageBodies_Base SELECT * FROM MessageBodies_15 with (nolock)
INSERT INTO MessageBodies_Base SELECT * FROM MessageBodies_16 with (nolock)
INSERT INTO MessageBodies_Base SELECT * FROM MessageBodies_17 with (nolock)
INSERT INTO MessageBodies_Base SELECT * FROM MessageBodies_18 with (nolock)
INSERT INTO MessageBodies_Base SELECT * FROM MessageBodies_19 with (nolock)
INSERT INTO MessageBodies_Base SELECT * FROM MessageBodies_20 with (nolock)
INSERT INTO MessageBodies_Base SELECT * FROM MessageBodies_21 with (nolock)
INSERT INTO MessageBodies_Base SELECT * FROM MessageBodies_22 with (nolock)
INSERT INTO MessageBodies_Base SELECT * FROM MessageBodies_23 with (nolock)
INSERT INTO MessageBodies_Base SELECT * FROM MessageBodies_24 with (nolock)

USE [Corrlinks]
GO

ALTER TABLE [dbo].[Messages_32] DROP CONSTRAINT [CK_Messages_32]
GO

ALTER TABLE [dbo].[Messages_32]  WITH CHECK ADD  CONSTRAINT [CK_Messages_32] CHECK (([MessageId]>(2360000000) AND [MessageId]<=(2370000000)))
GO
ALTER TABLE [dbo].[Messages_32] CHECK CONSTRAINT [CK_Messages_32]
GO


ALTER TABLE [dbo].[MessageBodies_32] DROP CONSTRAINT [CK_MessageBodies_32]
GO

ALTER TABLE [dbo].[MessageBodies_32]  WITH CHECK ADD  CONSTRAINT [CK_MessageBodies_32] CHECK (([MessageId]>(2360000000) AND [MessageId]<=(2370000000)))
GO
ALTER TABLE [dbo].[MessageBodies_32] CHECK CONSTRAINT [CK_MessageBodies_32]
GO

select * from sys.check_constraints where is_not_trusted <> 0

truncate table IndexedMessageBodies

*/




SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Messages_20](
	[MessageId] [bigint] NOT NULL,
	[MessageGroupId] [int] NOT NULL,
	[AccountId] [bigint] NOT NULL,
	[InmateId] [bigint] NOT NULL,
	[MessageTypeId] [smallint] NOT NULL,
	[DeliveryId] [bigint] NOT NULL,
	[SentDate] [datetime] NOT NULL,
	[MessageStatusId] [int] NOT NULL,
	[Status] [smallint] NOT NULL,
	[UpdatedBy] [varchar](100) NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[AllowReply] [smallint] NULL,
	[ReplyCode] [varchar](25) NOT NULL,
	[AlertType] [varchar](20) NOT NULL,
	[OriginalMessageId] [bigint] NOT NULL,
	[LanguageCode] [char](2) NOT NULL,
	[LanguageConfidence] [decimal](7, 4) NOT NULL,
	[MessageRateId] [int] NULL,
	[InstitutionId] [int] NOT NULL,
	[ClientIp] [varchar](20) NOT NULL,
	[GroupId] [bigint] NULL,
	[OriginatingMessageId] [bigint] NULL,
	[MultipleRecipients] [bit] NULL,
 CONSTRAINT [PK_Messages_20] PRIMARY KEY CLUSTERED 
(
	[MessageId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Messages_20]  WITH NOCHECK ADD  CONSTRAINT [FK_Messages_20_AccountInmates] FOREIGN KEY([AccountId], [InmateId])
REFERENCES [dbo].[AccountInmates] ([AccountId], [InmateId])
GO

ALTER TABLE [dbo].[Messages_20] CHECK CONSTRAINT [FK_Messages_20_AccountInmates]
GO

ALTER TABLE [dbo].[Messages_20]  WITH CHECK ADD  CONSTRAINT [CK_Messages_20] CHECK  (([MessageId]>(2240000000) AND [MessageId]<=(2250000000)))
GO

ALTER TABLE [dbo].[Messages_20] CHECK CONSTRAINT [CK_Messages_20]
GO

ALTER TABLE [dbo].[Messages_20] ADD  CONSTRAINT [DF_Messages_20_OriginalMessageId]  DEFAULT ((-1)) FOR [OriginalMessageId]
GO

ALTER TABLE [dbo].[Messages_20] ADD  CONSTRAINT [DF_Messages_20_ClientIp]  DEFAULT ('') FOR [ClientIp]
GO

CREATE NONCLUSTERED INDEX [IX_Messages_20_AccountIdInmateId] ON [dbo].[Messages_20]
(
	[AccountId] ASC,
	[InmateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100)
GO

CREATE NONCLUSTERED INDEX [IX_Messages_20_AccountIdUpdatedDate] ON [dbo].[Messages_20] 
(
	[AccountId] ASC,
	[UpdatedDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 100) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_Messages_20_InmateId] ON [dbo].[Messages_20] 
(
	[InmateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 100) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_Messages_20_MessageGroupId] ON [dbo].[Messages_20] 
(
	[MessageGroupId] ASC,
	[Status] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 100) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_Messages_20_MessageStatusId] ON [dbo].[Messages_20] 
(
	[MessageStatusId] ASC,
	[MessageTypeId] ASC,
	[DeliveryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 100) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_Messages_20_MsgForTrulincs] ON [dbo].[Messages_20] 
(
	[MessageTypeId] ASC,
	[DeliveryId] ASC,
	[MessageStatusId] ASC
)
INCLUDE ( [InmateId],
[AccountId]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 100) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_Messages_20_MultiCovering] ON [dbo].[Messages_20] 
(
	[AccountId] ASC,
	[MessageTypeId] ASC,
	[Status] ASC,
	[SentDate] DESC
)
INCLUDE ( [InmateId],
[DeliveryId],
[MessageGroupId],
[MessageStatusId]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 100) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_Messages_20_SentDateInmateIdAccountIdMessageGroupId] ON [dbo].[Messages_20] 
(
	[SentDate] ASC,
	[InmateId] ASC,
	[AccountId] ASC,
	[MessageGroupId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 100) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_Messages_20_SentDateInmateIdMessageGroupId] ON [dbo].[Messages_20] 
(
	[SentDate] ASC,
	[InmateId] ASC,
	[MessageGroupId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 100) ON [PRIMARY]
GO






SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING OFF
GO

CREATE TABLE [dbo].[MessageBodies_20](
	[MessageId] [bigint] NOT NULL,
	[Subject] [varchar](200) NOT NULL,
	[MessageBodyGUID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[BodyFileExt] [varchar](8) NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[MessageBodies_20] ADD [MessageBody] [varbinary](max) NULL
ALTER TABLE [dbo].[MessageBodies_20] ADD  CONSTRAINT [PK_MessageBodies_20] PRIMARY KEY CLUSTERED 
(
	[MessageId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 100) ON [PRIMARY]

GO

ALTER TABLE [dbo].[MessageBodies_20]  WITH CHECK ADD  CONSTRAINT [CK_MessageBodies_20] CHECK  (([MessageId]>(2240000000) AND [MessageId]<=(2250000000)))
GO

ALTER TABLE [dbo].[MessageBodies_20] CHECK CONSTRAINT [CK_MessageBodies_20]
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_MessageBodies_20_Subject] ON [dbo].[MessageBodies_20] 
(
	[MessageId] ASC
)
INCLUDE ( [Subject],
[BodyFileExt]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 100) ON [PRIMARY]
GO


GRANT SELECT ON Messages_20 TO CorrlinksUsers
GRANT SELECT ON MessageBodies_20 TO CorrlinksUsers
GO





