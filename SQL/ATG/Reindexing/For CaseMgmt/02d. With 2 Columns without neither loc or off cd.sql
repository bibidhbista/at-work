ALTER TABLE [IPI_PickTicket] DROP CONSTRAINT [PK_IPI_PickTicket];

ALTER TABLE [IPI_PickTicket] ADD CONSTRAINT [PK_IPI_PickTicket] PRIMARY KEY CLUSTERED (PickTicketID ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_IPI_PickTicket_LocationCd') BEGIN  Drop INDEX [IX_IPI_PickTicket_LocationCd] on [IPI_PickTicket]; END*/

CREATE NONCLUSTERED INDEX [IX_IPI_PickTicket_RegNo] ON [IPI_PickTicket] ([RegNo] ASC)

ALTER TABLE [IPI_PickTicketDetail]

DROP CONSTRAINT [PK_IPI_PickTicketDetail];

ALTER TABLE [IPI_PickTicketDetail] ADD CONSTRAINT [PK_IPI_PickTicketDetail] PRIMARY KEY CLUSTERED (PickTicketDetailID ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_IPI_PickTicketDetail_LocationCd') BEGIN  Drop INDEX [IX_IPI_PickTicketDetail_LocationCd] on [IPI_PickTicketDetail]; END*/

CREATE NONCLUSTERED INDEX [IX_IPI_PickTicketDetail_PickTicketID] ON [IPI_PickTicketDetail] ([PickTicketID] ASC)

ALTER TABLE [ParoleBoardReviewAttachments]

DROP CONSTRAINT [PK_ParoleBoardReviewAttachments];

ALTER TABLE [ParoleBoardReviewAttachments] ADD CONSTRAINT [PK_ParoleBoardReviewAttachments] PRIMARY KEY CLUSTERED (ParoleBoardReviewAttachmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_ParoleBoardReviewAttachments_LocationCd') BEGIN  Drop INDEX [IX_ParoleBoardReviewAttachments_LocationCd] on [ParoleBoardReviewAttachments]; END*/

CREATE NONCLUSTERED INDEX [IX_ParoleBoardReviewAttachments_ParoleBoardReviewId] ON [ParoleBoardReviewAttachments] ([ParoleBoardReviewId] ASC)

ALTER TABLE [PropertyMigration_ISP_Inventory_Books]

DROP CONSTRAINT [PK_PropertyMigration_ISP_Inventory_Books];

ALTER TABLE [PropertyMigration_ISP_Inventory_Books] ADD CONSTRAINT [PK_PropertyMigration_ISP_Inventory_Books] PRIMARY KEY CLUSTERED (InventoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_PropertyMigration_ISP_Inventory_Books_LocationCd') BEGIN  Drop INDEX [IX_PropertyMigration_ISP_Inventory_Books_LocationCd] on [PropertyMigration_ISP_Inventory_Books]; END*/

CREATE NONCLUSTERED INDEX [IX_PropertyMigration_ISP_Inventory_Books_number] ON [PropertyMigration_ISP_Inventory_Books] ([number] ASC)

ALTER TABLE [PropertyMigration_ISP_Inventory_Electronics]

DROP CONSTRAINT [PK_PropertyMigration_ISP_Inventory_Electronics];

ALTER TABLE [PropertyMigration_ISP_Inventory_Electronics] ADD CONSTRAINT [PK_PropertyMigration_ISP_Inventory_Electronics] PRIMARY KEY CLUSTERED (InventoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_PropertyMigration_ISP_Inventory_Electronics_LocationCd') BEGIN  Drop INDEX [IX_PropertyMigration_ISP_Inventory_Electronics_LocationCd] on [PropertyMigration_ISP_Inventory_Electronics]; END*/

CREATE NONCLUSTERED INDEX [IX_PropertyMigration_ISP_Inventory_Electronics_InmateNo] ON [PropertyMigration_ISP_Inventory_Electronics] ([Inmate #] ASC)

ALTER TABLE [SentencePenalties_ProdFix]

DROP CONSTRAINT [PK_SentencePenalties_2_ProdFix];

ALTER TABLE [SentencePenalties_ProdFix] ADD CONSTRAINT [PK_SentencePenalties_2_ProdFix] PRIMARY KEY CLUSTERED (SentencePenaltyId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_SentencePenalties_ProdFix_LocationCd') BEGIN  Drop INDEX [IX_SentencePenalties_ProdFix_LocationCd] on [SentencePenalties_ProdFix]; END*/

CREATE NONCLUSTERED INDEX [IX_SentencePenalties_ProdFix_SentenceId] ON [SentencePenalties_ProdFix] ([SentenceId] ASC)

ALTER TABLE [Sentences_ProdFix]

DROP CONSTRAINT [PK_Sentences_2_ProdFix];

ALTER TABLE [Sentences_ProdFix] ADD CONSTRAINT [PK_Sentences_2_ProdFix] PRIMARY KEY CLUSTERED (SentenceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_Sentences_ProdFix_LocationCd') BEGIN  Drop INDEX [IX_Sentences_ProdFix_LocationCd] on [Sentences_ProdFix]; END*/

CREATE NONCLUSTERED INDEX [IX_Sentences_ProdFix_ChargeId] ON [Sentences_ProdFix] ([ChargeId] ASC)

ALTER TABLE [TimeCompGroupAdjustments_ProdFix]

DROP CONSTRAINT [PK_TimeCompGroupAdjustments_2_ProdFix];

ALTER TABLE [TimeCompGroupAdjustments_ProdFix] ADD CONSTRAINT [PK_TimeCompGroupAdjustments_2_ProdFix] PRIMARY KEY CLUSTERED (TimeCompGroupAdjustmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_TimeCompGroupAdjustments_ProdFix_LocationCd') BEGIN  Drop INDEX [IX_TimeCompGroupAdjustments_ProdFix_LocationCd] on [TimeCompGroupAdjustments_ProdFix]; END*/

CREATE NONCLUSTERED INDEX [IX_TimeCompGroupAdjustments_ProdFix_TimeCompGroupId] ON [TimeCompGroupAdjustments_ProdFix] ([TimeCompGroupId] ASC)

ALTER TABLE [TimeCompGroupEvents_ProdFix]

DROP CONSTRAINT [PK_TimeCompGroupEvents_2_ProdFix];

ALTER TABLE [TimeCompGroupEvents_ProdFix] ADD CONSTRAINT [PK_TimeCompGroupEvents_2_ProdFix] PRIMARY KEY CLUSTERED (TimeCompGroupEventId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_TimeCompGroupEvents_ProdFix_LocationCd') BEGIN  Drop INDEX [IX_TimeCompGroupEvents_ProdFix_LocationCd] on [TimeCompGroupEvents_ProdFix]; END*/

CREATE NONCLUSTERED INDEX [IX_TimeCompGroupEvents_ProdFix_TimeCompGroupId] ON [TimeCompGroupEvents_ProdFix] ([TimeCompGroupId] ASC)

ALTER TABLE [TimeCompGroupPenalties_ProdFix]

DROP CONSTRAINT [PK_TimeCompGroupPenalties_2_ProdFix];

ALTER TABLE [TimeCompGroupPenalties_ProdFix] ADD CONSTRAINT [PK_TimeCompGroupPenalties_2_ProdFix] PRIMARY KEY CLUSTERED (TimeCompGroupPenaltyId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_TimeCompGroupPenalties_ProdFix_LocationCd') BEGIN  Drop INDEX [IX_TimeCompGroupPenalties_ProdFix_LocationCd] on [TimeCompGroupPenalties_ProdFix]; END*/

CREATE NONCLUSTERED INDEX [IX_TimeCompGroupPenalties_ProdFix_TimeCompGroupId] ON [TimeCompGroupPenalties_ProdFix] ([TimeCompGroupId] ASC)