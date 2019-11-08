ALTER TABLE [admCounters_OLD]

DROP CONSTRAINT [PK_admCounters];

ALTER TABLE [admCounters_OLD] ADD CONSTRAINT [PK_admCounters] PRIMARY KEY CLUSTERED (CounterCd ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_admCounters_OLD_LocationCd') BEGIN  Drop INDEX [IX_admCounters_OLD_LocationCd] on [admCounters_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_admCounters_OLD_LocationCd] ON [admCounters_OLD] (LocationCd ASC)

ALTER TABLE [ApplicationConfiguration]

DROP CONSTRAINT [PK_ApplicationConfiguration];

ALTER TABLE [ApplicationConfiguration] ADD CONSTRAINT [PK_ApplicationConfiguration] PRIMARY KEY CLUSTERED (ApplicationConfigurationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_ApplicationConfiguration_LocationCd') BEGIN  Drop INDEX [IX_ApplicationConfiguration_LocationCd] on [ApplicationConfiguration]; END */

CREATE NONCLUSTERED INDEX [IX_ApplicationConfiguration_LocationCd] ON [ApplicationConfiguration] (LocationCd ASC)

ALTER TABLE [BarcodeInstanceFailures]

DROP CONSTRAINT [PK_BarcodeInstanceFailures];

ALTER TABLE [BarcodeInstanceFailures] ADD CONSTRAINT [PK_BarcodeInstanceFailures] PRIMARY KEY CLUSTERED (BarcodeInstanceFailureId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_BarcodeInstanceFailures_LocationCd') BEGIN  Drop INDEX [IX_BarcodeInstanceFailures_LocationCd] on [BarcodeInstanceFailures]; END */

CREATE NONCLUSTERED INDEX [IX_BarcodeInstanceFailures_LocationCd] ON [BarcodeInstanceFailures] (LocationCd ASC)

ALTER TABLE [BarcodeInstances]

DROP CONSTRAINT [PK_BarcodeInstances];

ALTER TABLE [BarcodeInstances] ADD CONSTRAINT [PK_BarcodeInstances] PRIMARY KEY CLUSTERED (BarcodeInstanceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_BarcodeInstances_LocationCd') BEGIN  Drop INDEX [IX_BarcodeInstances_LocationCd] on [BarcodeInstances]; END */

CREATE NONCLUSTERED INDEX [IX_BarcodeInstances_LocationCd] ON [BarcodeInstances] (LocationCd ASC)

ALTER TABLE [BopExecutiveClemency]

DROP CONSTRAINT [PK_ClemencyDetails];

ALTER TABLE [BopExecutiveClemency] ADD CONSTRAINT [PK_ClemencyDetails] PRIMARY KEY CLUSTERED (BopExecutiveClemencyId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_BopExecutiveClemency_LocationCd') BEGIN  Drop INDEX [IX_BopExecutiveClemency_LocationCd] on [BopExecutiveClemency]; END */

CREATE NONCLUSTERED INDEX [IX_BopExecutiveClemency_LocationCd] ON [BopExecutiveClemency] (LocationCd ASC)

ALTER TABLE [BopInterviews]

DROP CONSTRAINT [PK_BopInterviews];

ALTER TABLE [BopInterviews] ADD CONSTRAINT [PK_BopInterviews] PRIMARY KEY CLUSTERED (BopInterviewId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_BopInterviews_LocationCd') BEGIN  Drop INDEX [IX_BopInterviews_LocationCd] on [BopInterviews]; END */

CREATE NONCLUSTERED INDEX [IX_BopInterviews_LocationCd] ON [BopInterviews] (LocationCd ASC)

ALTER TABLE [BopOutOfStateOffenders]

DROP CONSTRAINT [PK_BopOutOfStateOffenders];

ALTER TABLE [BopOutOfStateOffenders] ADD CONSTRAINT [PK_BopOutOfStateOffenders] PRIMARY KEY CLUSTERED (BopOutOfStateOffenderId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_BopOutOfStateOffenders_LocationCd') BEGIN  Drop INDEX [IX_BopOutOfStateOffenders_LocationCd] on [BopOutOfStateOffenders]; END */

CREATE NONCLUSTERED INDEX [IX_BopOutOfStateOffenders_LocationCd] ON [BopOutOfStateOffenders] (LocationCd ASC)

ALTER TABLE [BopRevocationHearingEvents]

DROP CONSTRAINT [PK_BopRevocationHearingEvents];

ALTER TABLE [BopRevocationHearingEvents] ADD CONSTRAINT [PK_BopRevocationHearingEvents] PRIMARY KEY CLUSTERED (BopRevocationHearingEventId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_BopRevocationHearingEvents_LocationCd') BEGIN  Drop INDEX [IX_BopRevocationHearingEvents_LocationCd] on [BopRevocationHearingEvents]; END */

CREATE NONCLUSTERED INDEX [IX_BopRevocationHearingEvents_LocationCd] ON [BopRevocationHearingEvents] (LocationCd ASC)

ALTER TABLE [BopRiskAssessmentsFromIparole]

DROP CONSTRAINT [PK_BopRiskAssessmentsFromIparole];

ALTER TABLE [BopRiskAssessmentsFromIparole] ADD CONSTRAINT [PK_BopRiskAssessmentsFromIparole] PRIMARY KEY CLUSTERED (BopRiskAssessmentFromIparoleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_BopRiskAssessmentsFromIparole_LocationCd') BEGIN  Drop INDEX [IX_BopRiskAssessmentsFromIparole_LocationCd] on [BopRiskAssessmentsFromIparole]; END */

CREATE NONCLUSTERED INDEX [IX_BopRiskAssessmentsFromIparole_LocationCd] ON [BopRiskAssessmentsFromIparole] (LocationCd ASC)

ALTER TABLE [BopRiskOffensesFromIparole]

DROP CONSTRAINT [PK_BopRiskOffensesFromIparole];

ALTER TABLE [BopRiskOffensesFromIparole] ADD CONSTRAINT [PK_BopRiskOffensesFromIparole] PRIMARY KEY CLUSTERED (BopRiskOffenseFromIparoleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_BopRiskOffensesFromIparole_LocationCd') BEGIN  Drop INDEX [IX_BopRiskOffensesFromIparole_LocationCd] on [BopRiskOffensesFromIparole]; END */

CREATE NONCLUSTERED INDEX [IX_BopRiskOffensesFromIparole_LocationCd] ON [BopRiskOffensesFromIparole] (LocationCd ASC)

ALTER TABLE [BroadcastMessages]

DROP CONSTRAINT [PK_BroadcastMessages];

ALTER TABLE [BroadcastMessages] ADD CONSTRAINT [PK_BroadcastMessages] PRIMARY KEY CLUSTERED (BroadcastMessageId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_BroadcastMessages_LocationCd') BEGIN  Drop INDEX [IX_BroadcastMessages_LocationCd] on [BroadcastMessages]; END */

CREATE NONCLUSTERED INDEX [IX_BroadcastMessages_LocationCd] ON [BroadcastMessages] (LocationCd ASC)

--ALTER TABLE [DatabaseInfo]

--DROP CONSTRAINT [PK_DatabaseInfo];

--ALTER TABLE [DatabaseInfo] ADD CONSTRAINT [PK_DatabaseInfo] PRIMARY KEY CLUSTERED (RowId ASC)
--	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_DatabaseInfo_LocationCd') BEGIN  Drop INDEX [IX_DatabaseInfo_LocationCd] on [DatabaseInfo]; END */

--CREATE NONCLUSTERED INDEX [IX_DatabaseInfo_LocationCd] ON [DatabaseInfo] (LocationCd ASC)

ALTER TABLE [DeenaH_TrainingAddresses]

DROP CONSTRAINT [PK_DeenaH_TrainingAddresses];

ALTER TABLE [DeenaH_TrainingAddresses] ADD CONSTRAINT [PK_DeenaH_TrainingAddresses] PRIMARY KEY CLUSTERED (H_TrainingAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_DeenaH_TrainingAddresses_LocationCd') BEGIN  Drop INDEX [IX_DeenaH_TrainingAddresses_LocationCd] on [DeenaH_TrainingAddresses]; END */

CREATE NONCLUSTERED INDEX [IX_DeenaH_TrainingAddresses_LocationCd] ON [DeenaH_TrainingAddresses] (LocationCd ASC)

ALTER TABLE [DeenaH_TrainingAddressPhones]

DROP CONSTRAINT [PK_DeenaH_TrainingAddressPhones];

ALTER TABLE [DeenaH_TrainingAddressPhones] ADD CONSTRAINT [PK_DeenaH_TrainingAddressPhones] PRIMARY KEY CLUSTERED (H_TrainingAddressPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_DeenaH_TrainingAddressPhones_LocationCd') BEGIN  Drop INDEX [IX_DeenaH_TrainingAddressPhones_LocationCd] on [DeenaH_TrainingAddressPhones]; END */

CREATE NONCLUSTERED INDEX [IX_DeenaH_TrainingAddressPhones_LocationCd] ON [DeenaH_TrainingAddressPhones] (LocationCd ASC)

ALTER TABLE [DipeshH_TrainingAddresses]

DROP CONSTRAINT [PK_DipeshH_TrainingAddresses];

ALTER TABLE [DipeshH_TrainingAddresses] ADD CONSTRAINT [PK_DipeshH_TrainingAddresses] PRIMARY KEY CLUSTERED (H_TrainingAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_DipeshH_TrainingAddresses_LocationCd') BEGIN  Drop INDEX [IX_DipeshH_TrainingAddresses_LocationCd] on [DipeshH_TrainingAddresses]; END */

CREATE NONCLUSTERED INDEX [IX_DipeshH_TrainingAddresses_LocationCd] ON [DipeshH_TrainingAddresses] (LocationCd ASC)

ALTER TABLE [DipeshH_TrainingAddressPhones]

DROP CONSTRAINT [PK_DipeshH_TrainingAddressPhones];

ALTER TABLE [DipeshH_TrainingAddressPhones] ADD CONSTRAINT [PK_DipeshH_TrainingAddressPhones] PRIMARY KEY CLUSTERED (H_TrainingAddressPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_DipeshH_TrainingAddressPhones_LocationCd') BEGIN  Drop INDEX [IX_DipeshH_TrainingAddressPhones_LocationCd] on [DipeshH_TrainingAddressPhones]; END */

CREATE NONCLUSTERED INDEX [IX_DipeshH_TrainingAddressPhones_LocationCd] ON [DipeshH_TrainingAddressPhones] (LocationCd ASC)

ALTER TABLE [dmActivityFrequencies]

DROP CONSTRAINT [PK_dmActivityFrequencies];

ALTER TABLE [dmActivityFrequencies] ADD CONSTRAINT [PK_dmActivityFrequencies] PRIMARY KEY CLUSTERED (ActivityFrequencyId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmActivityFrequencies_LocationCd') BEGIN  Drop INDEX [IX_dmActivityFrequencies_LocationCd] on [dmActivityFrequencies]; END */

CREATE NONCLUSTERED INDEX [IX_dmActivityFrequencies_LocationCd] ON [dmActivityFrequencies] (LocationCd ASC)

ALTER TABLE [dmActivityPriorities]

DROP CONSTRAINT [PK_dmActivityPriorities];

ALTER TABLE [dmActivityPriorities] ADD CONSTRAINT [PK_dmActivityPriorities] PRIMARY KEY CLUSTERED (ActivityPriorityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmActivityPriorities_LocationCd') BEGIN  Drop INDEX [IX_dmActivityPriorities_LocationCd] on [dmActivityPriorities]; END */

CREATE NONCLUSTERED INDEX [IX_dmActivityPriorities_LocationCd] ON [dmActivityPriorities] (LocationCd ASC)

ALTER TABLE [dmActivityProviderRoles]

DROP CONSTRAINT [PK_dmActivityProviderRoles];

ALTER TABLE [dmActivityProviderRoles] ADD CONSTRAINT [PK_dmActivityProviderRoles] PRIMARY KEY CLUSTERED (ActivityProviderRoleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmActivityProviderRoles_LocationCd') BEGIN  Drop INDEX [IX_dmActivityProviderRoles_LocationCd] on [dmActivityProviderRoles]; END */

CREATE NONCLUSTERED INDEX [IX_dmActivityProviderRoles_LocationCd] ON [dmActivityProviderRoles] (LocationCd ASC)

ALTER TABLE [dmActivityTypes]

DROP CONSTRAINT [PK_dmActivityTypes];

ALTER TABLE [dmActivityTypes] ADD CONSTRAINT [PK_dmActivityTypes] PRIMARY KEY CLUSTERED (ActivityTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmActivityTypes_LocationCd') BEGIN  Drop INDEX [IX_dmActivityTypes_LocationCd] on [dmActivityTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmActivityTypes_LocationCd] ON [dmActivityTypes] (LocationCd ASC)

ALTER TABLE [dmAppealDecisions]

DROP CONSTRAINT [PK_dmAppealDecisions];

ALTER TABLE [dmAppealDecisions] ADD CONSTRAINT [PK_dmAppealDecisions] PRIMARY KEY CLUSTERED (AppealDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmAppealDecisions_LocationCd') BEGIN  Drop INDEX [IX_dmAppealDecisions_LocationCd] on [dmAppealDecisions]; END */

CREATE NONCLUSTERED INDEX [IX_dmAppealDecisions_LocationCd] ON [dmAppealDecisions] (LocationCd ASC)

ALTER TABLE [dmAppealLevels]

DROP CONSTRAINT [PK_dmAppealLevels];

ALTER TABLE [dmAppealLevels] ADD CONSTRAINT [PK_dmAppealLevels] PRIMARY KEY CLUSTERED (AppealLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmAppealLevels_LocationCd') BEGIN  Drop INDEX [IX_dmAppealLevels_LocationCd] on [dmAppealLevels]; END */

CREATE NONCLUSTERED INDEX [IX_dmAppealLevels_LocationCd] ON [dmAppealLevels] (LocationCd ASC)

ALTER TABLE [dmAppealModifications]

DROP CONSTRAINT [PK_dmAppealModifications];

ALTER TABLE [dmAppealModifications] ADD CONSTRAINT [PK_dmAppealModifications] PRIMARY KEY CLUSTERED (AppealModificationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmAppealModifications_LocationCd') BEGIN  Drop INDEX [IX_dmAppealModifications_LocationCd] on [dmAppealModifications]; END */

CREATE NONCLUSTERED INDEX [IX_dmAppealModifications_LocationCd] ON [dmAppealModifications] (LocationCd ASC)

ALTER TABLE [dmAppealReasons]

DROP CONSTRAINT [PK_dmAppealReasons];

ALTER TABLE [dmAppealReasons] ADD CONSTRAINT [PK_dmAppealReasons] PRIMARY KEY CLUSTERED (AppealReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmAppealReasons_LocationCd') BEGIN  Drop INDEX [IX_dmAppealReasons_LocationCd] on [dmAppealReasons]; END */

CREATE NONCLUSTERED INDEX [IX_dmAppealReasons_LocationCd] ON [dmAppealReasons] (LocationCd ASC)

ALTER TABLE [dmAsamCareLevels]

DROP CONSTRAINT [PK_dmASAMCareLevels];

ALTER TABLE [dmAsamCareLevels] ADD CONSTRAINT [PK_dmASAMCareLevels] PRIMARY KEY CLUSTERED (AsamCareLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmAsamCareLevels_LocationCd') BEGIN  Drop INDEX [IX_dmAsamCareLevels_LocationCd] on [dmAsamCareLevels]; END */

CREATE NONCLUSTERED INDEX [IX_dmAsamCareLevels_LocationCd] ON [dmAsamCareLevels] (LocationCd ASC)

ALTER TABLE [dmAsamSeverityIndex]

DROP CONSTRAINT [PK_dmASAMSeverityIndex];

ALTER TABLE [dmAsamSeverityIndex] ADD CONSTRAINT [PK_dmASAMSeverityIndex] PRIMARY KEY CLUSTERED (AsamSeverityIndexId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmAsamSeverityIndex_LocationCd') BEGIN  Drop INDEX [IX_dmAsamSeverityIndex_LocationCd] on [dmAsamSeverityIndex]; END */

CREATE NONCLUSTERED INDEX [IX_dmAsamSeverityIndex_LocationCd] ON [dmAsamSeverityIndex] (LocationCd ASC)

ALTER TABLE [dmAssessmentReasons]

DROP CONSTRAINT [PK_dmAssessmentReasons];

ALTER TABLE [dmAssessmentReasons] ADD CONSTRAINT [PK_dmAssessmentReasons] PRIMARY KEY CLUSTERED (AssessmentReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmAssessmentReasons_LocationCd') BEGIN  Drop INDEX [IX_dmAssessmentReasons_LocationCd] on [dmAssessmentReasons]; END */

CREATE NONCLUSTERED INDEX [IX_dmAssessmentReasons_LocationCd] ON [dmAssessmentReasons] (LocationCd ASC)

ALTER TABLE [dmAssessmentTools]

DROP CONSTRAINT [PK_dmAssessmentTools];

ALTER TABLE [dmAssessmentTools] ADD CONSTRAINT [PK_dmAssessmentTools] PRIMARY KEY CLUSTERED (AssessmentToolId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmAssessmentTools_LocationCd') BEGIN  Drop INDEX [IX_dmAssessmentTools_LocationCd] on [dmAssessmentTools]; END */

CREATE NONCLUSTERED INDEX [IX_dmAssessmentTools_LocationCd] ON [dmAssessmentTools] (LocationCd ASC)

ALTER TABLE [dmBankLocations]

DROP CONSTRAINT [PK_dmBankLocations];

ALTER TABLE [dmBankLocations] ADD CONSTRAINT [PK_dmBankLocations] PRIMARY KEY CLUSTERED (BankLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBankLocations_LocationCd') BEGIN  Drop INDEX [IX_dmBankLocations_LocationCd] on [dmBankLocations]; END */

CREATE NONCLUSTERED INDEX [IX_dmBankLocations_LocationCd] ON [dmBankLocations] (LocationCd ASC)

ALTER TABLE [dmBodyMarkingColors]

DROP CONSTRAINT [PK_dmBodyMarkingColors];

ALTER TABLE [dmBodyMarkingColors] ADD CONSTRAINT [PK_dmBodyMarkingColors] PRIMARY KEY CLUSTERED (BodyMarkingColorId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBodyMarkingColors_LocationCd') BEGIN  Drop INDEX [IX_dmBodyMarkingColors_LocationCd] on [dmBodyMarkingColors]; END */

CREATE NONCLUSTERED INDEX [IX_dmBodyMarkingColors_LocationCd] ON [dmBodyMarkingColors] (LocationCd ASC)

ALTER TABLE [dmBodyMarkingLocations]

DROP CONSTRAINT [PK_dmBodyMarkingLocations];

ALTER TABLE [dmBodyMarkingLocations] ADD CONSTRAINT [PK_dmBodyMarkingLocations] PRIMARY KEY CLUSTERED (BodyMarkingLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBodyMarkingLocations_LocationCd') BEGIN  Drop INDEX [IX_dmBodyMarkingLocations_LocationCd] on [dmBodyMarkingLocations]; END */

CREATE NONCLUSTERED INDEX [IX_dmBodyMarkingLocations_LocationCd] ON [dmBodyMarkingLocations] (LocationCd ASC)

ALTER TABLE [dmBodyMarkingQualities]

DROP CONSTRAINT [PK_dmBodyMarkingQualities];

ALTER TABLE [dmBodyMarkingQualities] ADD CONSTRAINT [PK_dmBodyMarkingQualities] PRIMARY KEY CLUSTERED (BodyMarkingQualityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBodyMarkingQualities_LocationCd') BEGIN  Drop INDEX [IX_dmBodyMarkingQualities_LocationCd] on [dmBodyMarkingQualities]; END */

CREATE NONCLUSTERED INDEX [IX_dmBodyMarkingQualities_LocationCd] ON [dmBodyMarkingQualities] (LocationCd ASC)

ALTER TABLE [dmBodyMarkingTypes]

DROP CONSTRAINT [PK_dmBodyMarkingTypes];

ALTER TABLE [dmBodyMarkingTypes] ADD CONSTRAINT [PK_dmBodyMarkingTypes] PRIMARY KEY CLUSTERED (BodyMarkingTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBodyMarkingTypes_LocationCd') BEGIN  Drop INDEX [IX_dmBodyMarkingTypes_LocationCd] on [dmBodyMarkingTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmBodyMarkingTypes_LocationCd] ON [dmBodyMarkingTypes] (LocationCd ASC)

ALTER TABLE [dmBopActionTypes]

DROP CONSTRAINT [PK_dmBopActionTypes];

ALTER TABLE [dmBopActionTypes] ADD CONSTRAINT [PK_dmBopActionTypes] PRIMARY KEY CLUSTERED (BopActionTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBopActionTypes_LocationCd') BEGIN  Drop INDEX [IX_dmBopActionTypes_LocationCd] on [dmBopActionTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmBopActionTypes_LocationCd] ON [dmBopActionTypes] (LocationCd ASC)

ALTER TABLE [dmBopCommutationAttachmentCategories]

DROP CONSTRAINT [PK_dmBopCommutationAttachmentCategories];

ALTER TABLE [dmBopCommutationAttachmentCategories] ADD CONSTRAINT [PK_dmBopCommutationAttachmentCategories] PRIMARY KEY CLUSTERED (BopCommutationAttachmentCategoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBopCommutationAttachmentCategories_LocationCd') BEGIN  Drop INDEX [IX_dmBopCommutationAttachmentCategories_LocationCd] on [dmBopCommutationAttachmentCategories]; END */

CREATE NONCLUSTERED INDEX [IX_dmBopCommutationAttachmentCategories_LocationCd] ON [dmBopCommutationAttachmentCategories] (LocationCd ASC)

ALTER TABLE [dmBopCommutationNotificationEmails]

DROP CONSTRAINT [PK_dmBopCommutationNotificationEmails];

ALTER TABLE [dmBopCommutationNotificationEmails] ADD CONSTRAINT [PK_dmBopCommutationNotificationEmails] PRIMARY KEY CLUSTERED (BopCommutationNotificationEmailId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBopCommutationNotificationEmails_LocationCd') BEGIN  Drop INDEX [IX_dmBopCommutationNotificationEmails_LocationCd] on [dmBopCommutationNotificationEmails]; END */

CREATE NONCLUSTERED INDEX [IX_dmBopCommutationNotificationEmails_LocationCd] ON [dmBopCommutationNotificationEmails] (LocationCd ASC)

ALTER TABLE [dmBopConditionPackages]

DROP CONSTRAINT [PK_dmBopConditionPackages];

ALTER TABLE [dmBopConditionPackages] ADD CONSTRAINT [PK_dmBopConditionPackages] PRIMARY KEY CLUSTERED (BopConditionPackageId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBopConditionPackages_LocationCd') BEGIN  Drop INDEX [IX_dmBopConditionPackages_LocationCd] on [dmBopConditionPackages]; END */

CREATE NONCLUSTERED INDEX [IX_dmBopConditionPackages_LocationCd] ON [dmBopConditionPackages] (LocationCd ASC)

ALTER TABLE [dmBopContentTypes]

DROP CONSTRAINT [PK_dmBopContentTypes];

ALTER TABLE [dmBopContentTypes] ADD CONSTRAINT [PK_dmBopContentTypes] PRIMARY KEY CLUSTERED (BopContentTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBopContentTypes_LocationCd') BEGIN  Drop INDEX [IX_dmBopContentTypes_LocationCd] on [dmBopContentTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmBopContentTypes_LocationCd] ON [dmBopContentTypes] (LocationCd ASC)

ALTER TABLE [dmBopDecisionCodes]

DROP CONSTRAINT [PK_dmBopDecisionCodes];

ALTER TABLE [dmBopDecisionCodes] ADD CONSTRAINT [PK_dmBopDecisionCodes] PRIMARY KEY CLUSTERED (BopDecisionCodeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBopDecisionCodes_LocationCd') BEGIN  Drop INDEX [IX_dmBopDecisionCodes_LocationCd] on [dmBopDecisionCodes]; END */

CREATE NONCLUSTERED INDEX [IX_dmBopDecisionCodes_LocationCd] ON [dmBopDecisionCodes] (LocationCd ASC)

ALTER TABLE [dmBOPDecisionCodesMap_OLD]

DROP CONSTRAINT [PK_dmBOPDecisionCodesMap];

ALTER TABLE [dmBOPDecisionCodesMap_OLD] ADD CONSTRAINT [PK_dmBOPDecisionCodesMap] PRIMARY KEY CLUSTERED (BOPDecisionCodeMapId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBOPDecisionCodesMap_OLD_LocationCd') BEGIN  Drop INDEX [IX_dmBOPDecisionCodesMap_OLD_LocationCd] on [dmBOPDecisionCodesMap_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_dmBOPDecisionCodesMap_OLD_LocationCd] ON [dmBOPDecisionCodesMap_OLD] (LocationCd ASC)

ALTER TABLE [dmBOPDecisionTypes_OLD]

DROP CONSTRAINT [PK_dmBOPDecisionTypes];

ALTER TABLE [dmBOPDecisionTypes_OLD] ADD CONSTRAINT [PK_dmBOPDecisionTypes] PRIMARY KEY CLUSTERED (BopDecisionTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBOPDecisionTypes_OLD_LocationCd') BEGIN  Drop INDEX [IX_dmBOPDecisionTypes_OLD_LocationCd] on [dmBOPDecisionTypes_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_dmBOPDecisionTypes_OLD_LocationCd] ON [dmBOPDecisionTypes_OLD] (LocationCd ASC)

ALTER TABLE [dmBOPDecisionTypesProcess_OLD]

DROP CONSTRAINT [PK_dmBOPDecisionTypesProcess];

ALTER TABLE [dmBOPDecisionTypesProcess_OLD] ADD CONSTRAINT [PK_dmBOPDecisionTypesProcess] PRIMARY KEY CLUSTERED (BopDecisionTypeProcessId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBOPDecisionTypesProcess_OLD_LocationCd') BEGIN  Drop INDEX [IX_dmBOPDecisionTypesProcess_OLD_LocationCd] on [dmBOPDecisionTypesProcess_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_dmBOPDecisionTypesProcess_OLD_LocationCd] ON [dmBOPDecisionTypesProcess_OLD] (LocationCd ASC)

ALTER TABLE [dmBopExecutiveClemencyAppTypes]

DROP CONSTRAINT [PK_dmClemencyTypes];

ALTER TABLE [dmBopExecutiveClemencyAppTypes] ADD CONSTRAINT [PK_dmClemencyTypes] PRIMARY KEY CLUSTERED (BopExecutiveClemencyAppTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBopExecutiveClemencyAppTypes_LocationCd') BEGIN  Drop INDEX [IX_dmBopExecutiveClemencyAppTypes_LocationCd] on [dmBopExecutiveClemencyAppTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmBopExecutiveClemencyAppTypes_LocationCd] ON [dmBopExecutiveClemencyAppTypes] (LocationCd ASC)

ALTER TABLE [dmBopExecutiveClemencyAttachmentCategories]

DROP CONSTRAINT [PK_dmBopExecutiveClemencyAttachmentCategories];

ALTER TABLE [dmBopExecutiveClemencyAttachmentCategories] ADD CONSTRAINT [PK_dmBopExecutiveClemencyAttachmentCategories] PRIMARY KEY CLUSTERED (BopExecutiveClemencyAttachmentCategoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBopExecutiveClemencyAttachmentCategories_LocationCd') BEGIN  Drop INDEX [IX_dmBopExecutiveClemencyAttachmentCategories_LocationCd] on [dmBopExecutiveClemencyAttachmentCategories]; END */

CREATE NONCLUSTERED INDEX [IX_dmBopExecutiveClemencyAttachmentCategories_LocationCd] ON [dmBopExecutiveClemencyAttachmentCategories] (LocationCd ASC)

ALTER TABLE [dmBopExecutiveClemencyNotificationEmails]

DROP CONSTRAINT [PK_dmBopExecutiveClemencyNotificationEmails];

ALTER TABLE [dmBopExecutiveClemencyNotificationEmails] ADD CONSTRAINT [PK_dmBopExecutiveClemencyNotificationEmails] PRIMARY KEY CLUSTERED (BopExecutiveClemencyNotificationEmailId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBopExecutiveClemencyNotificationEmails_LocationCd') BEGIN  Drop INDEX [IX_dmBopExecutiveClemencyNotificationEmails_LocationCd] on [dmBopExecutiveClemencyNotificationEmails]; END */

CREATE NONCLUSTERED INDEX [IX_dmBopExecutiveClemencyNotificationEmails_LocationCd] ON [dmBopExecutiveClemencyNotificationEmails] (LocationCd ASC)

ALTER TABLE [dmBopLocations]

DROP CONSTRAINT [PK_dmBopParoleInterviewLocations];

ALTER TABLE [dmBopLocations] ADD CONSTRAINT [PK_dmBopParoleInterviewLocations] PRIMARY KEY CLUSTERED (BopLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBopLocations_LocationCd') BEGIN  Drop INDEX [IX_dmBopLocations_LocationCd] on [dmBopLocations]; END */

CREATE NONCLUSTERED INDEX [IX_dmBopLocations_LocationCd] ON [dmBopLocations] (LocationCd ASC)

ALTER TABLE [dmBopProgressReportReasons]

DROP CONSTRAINT [PK_dmBOPProgressReportReasons];

ALTER TABLE [dmBopProgressReportReasons] ADD CONSTRAINT [PK_dmBOPProgressReportReasons] PRIMARY KEY CLUSTERED (BopProgressReportReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBopProgressReportReasons_LocationCd') BEGIN  Drop INDEX [IX_dmBopProgressReportReasons_LocationCd] on [dmBopProgressReportReasons]; END */

CREATE NONCLUSTERED INDEX [IX_dmBopProgressReportReasons_LocationCd] ON [dmBopProgressReportReasons] (LocationCd ASC)

ALTER TABLE [dmBopRecommendationReasons]

DROP CONSTRAINT [PK_dmBOPRecommendationReasons];

ALTER TABLE [dmBopRecommendationReasons] ADD CONSTRAINT [PK_dmBOPRecommendationReasons] PRIMARY KEY CLUSTERED (BopRecommendationReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBopRecommendationReasons_LocationCd') BEGIN  Drop INDEX [IX_dmBopRecommendationReasons_LocationCd] on [dmBopRecommendationReasons]; END */

CREATE NONCLUSTERED INDEX [IX_dmBopRecommendationReasons_LocationCd] ON [dmBopRecommendationReasons] (LocationCd ASC)

ALTER TABLE [dmBopReleasePlanRecommendations]

DROP CONSTRAINT [PK_dmBOPReleasePlanRecommendations];

ALTER TABLE [dmBopReleasePlanRecommendations] ADD CONSTRAINT [PK_dmBOPReleasePlanRecommendations] PRIMARY KEY CLUSTERED (BopReleasePlanRecommendationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBopReleasePlanRecommendations_LocationCd') BEGIN  Drop INDEX [IX_dmBopReleasePlanRecommendations_LocationCd] on [dmBopReleasePlanRecommendations]; END */

CREATE NONCLUSTERED INDEX [IX_dmBopReleasePlanRecommendations_LocationCd] ON [dmBopReleasePlanRecommendations] (LocationCd ASC)

ALTER TABLE [dmBopReleasePlanReviewReasons]

DROP CONSTRAINT [PK_dmBOPReleasePlanReviewReasons];

ALTER TABLE [dmBopReleasePlanReviewReasons] ADD CONSTRAINT [PK_dmBOPReleasePlanReviewReasons] PRIMARY KEY CLUSTERED (BopReleasePlanReviewReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBopReleasePlanReviewReasons_LocationCd') BEGIN  Drop INDEX [IX_dmBopReleasePlanReviewReasons_LocationCd] on [dmBopReleasePlanReviewReasons]; END */

CREATE NONCLUSTERED INDEX [IX_dmBopReleasePlanReviewReasons_LocationCd] ON [dmBopReleasePlanReviewReasons] (LocationCd ASC)

ALTER TABLE [dmBopRevocationCountyGroups]

DROP CONSTRAINT [PK_dmBopRevocationCountyGroups];

ALTER TABLE [dmBopRevocationCountyGroups] ADD CONSTRAINT [PK_dmBopRevocationCountyGroups] PRIMARY KEY CLUSTERED (BopRevocationCountyGroupId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBopRevocationCountyGroups_LocationCd') BEGIN  Drop INDEX [IX_dmBopRevocationCountyGroups_LocationCd] on [dmBopRevocationCountyGroups]; END */

CREATE NONCLUSTERED INDEX [IX_dmBopRevocationCountyGroups_LocationCd] ON [dmBopRevocationCountyGroups] (LocationCd ASC)

ALTER TABLE [dmBopRevocationHearingDecisions]

DROP CONSTRAINT [PK_dmBopRevocationHearingDecisions];

ALTER TABLE [dmBopRevocationHearingDecisions] ADD CONSTRAINT [PK_dmBopRevocationHearingDecisions] PRIMARY KEY CLUSTERED (BopRevocationHearingDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBopRevocationHearingDecisions_LocationCd') BEGIN  Drop INDEX [IX_dmBopRevocationHearingDecisions_LocationCd] on [dmBopRevocationHearingDecisions]; END */

CREATE NONCLUSTERED INDEX [IX_dmBopRevocationHearingDecisions_LocationCd] ON [dmBopRevocationHearingDecisions] (LocationCd ASC)

ALTER TABLE [dmBOPRevocationTypes_OLD]

DROP CONSTRAINT [PK_dmBOPRevocationTypes];

ALTER TABLE [dmBOPRevocationTypes_OLD] ADD CONSTRAINT [PK_dmBOPRevocationTypes] PRIMARY KEY CLUSTERED (BopRevocationTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBOPRevocationTypes_OLD_LocationCd') BEGIN  Drop INDEX [IX_dmBOPRevocationTypes_OLD_LocationCd] on [dmBOPRevocationTypes_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_dmBOPRevocationTypes_OLD_LocationCd] ON [dmBOPRevocationTypes_OLD] (LocationCd ASC)

ALTER TABLE [dmBopRiskAuditors]

DROP CONSTRAINT [PK_dmBopRiskAuditors];

ALTER TABLE [dmBopRiskAuditors] ADD CONSTRAINT [PK_dmBopRiskAuditors] PRIMARY KEY CLUSTERED (BopRiskAuditorId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBopRiskAuditors_LocationCd') BEGIN  Drop INDEX [IX_dmBopRiskAuditors_LocationCd] on [dmBopRiskAuditors]; END */

CREATE NONCLUSTERED INDEX [IX_dmBopRiskAuditors_LocationCd] ON [dmBopRiskAuditors] (LocationCd ASC)

ALTER TABLE [dmBopSenderTypes]

DROP CONSTRAINT [PK_dmBopSenderTypes];

ALTER TABLE [dmBopSenderTypes] ADD CONSTRAINT [PK_dmBopSenderTypes] PRIMARY KEY CLUSTERED (BopSenderTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBopSenderTypes_LocationCd') BEGIN  Drop INDEX [IX_dmBopSenderTypes_LocationCd] on [dmBopSenderTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmBopSenderTypes_LocationCd] ON [dmBopSenderTypes] (LocationCd ASC)

ALTER TABLE [dmBopStaffInformation]

DROP CONSTRAINT [PK_dmBopStaffInformation];

ALTER TABLE [dmBopStaffInformation] ADD CONSTRAINT [PK_dmBopStaffInformation] PRIMARY KEY CLUSTERED (BopStaffInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmBopStaffInformation_LocationCd') BEGIN  Drop INDEX [IX_dmBopStaffInformation_LocationCd] on [dmBopStaffInformation]; END */

CREATE NONCLUSTERED INDEX [IX_dmBopStaffInformation_LocationCd] ON [dmBopStaffInformation] (LocationCd ASC)

ALTER TABLE [dmCasasEmployabilityCompetencySystemForms]

DROP CONSTRAINT [PK_dmCASASEmployabilityCompetencySystemForms];

ALTER TABLE [dmCasasEmployabilityCompetencySystemForms] ADD CONSTRAINT [PK_dmCASASEmployabilityCompetencySystemForms] PRIMARY KEY CLUSTERED (CasasEmployabilityCompetencySystemFormId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmCasasEmployabilityCompetencySystemForms_LocationCd') BEGIN  Drop INDEX [IX_dmCasasEmployabilityCompetencySystemForms_LocationCd] on [dmCasasEmployabilityCompetencySystemForms]; END */

CREATE NONCLUSTERED INDEX [IX_dmCasasEmployabilityCompetencySystemForms_LocationCd] ON [dmCasasEmployabilityCompetencySystemForms] (LocationCd ASC)

ALTER TABLE [dmCasasEmployabilityCompetencySystemLevels]

DROP CONSTRAINT [PK_dmCASASEmployabilityCompetencySystemLevels];

ALTER TABLE [dmCasasEmployabilityCompetencySystemLevels] ADD CONSTRAINT [PK_dmCASASEmployabilityCompetencySystemLevels] PRIMARY KEY CLUSTERED (CasasEmployabilityCompetencySystemLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmCasasEmployabilityCompetencySystemLevels_LocationCd') BEGIN  Drop INDEX [IX_dmCasasEmployabilityCompetencySystemLevels_LocationCd] on [dmCasasEmployabilityCompetencySystemLevels]; END */

CREATE NONCLUSTERED INDEX [IX_dmCasasEmployabilityCompetencySystemLevels_LocationCd] ON [dmCasasEmployabilityCompetencySystemLevels] (LocationCd ASC)

ALTER TABLE [dmCasasFunctionalWritingAssessmentForms]

DROP CONSTRAINT [PK_dmCASASFunctionalWritingAssessmentForms];

ALTER TABLE [dmCasasFunctionalWritingAssessmentForms] ADD CONSTRAINT [PK_dmCASASFunctionalWritingAssessmentForms] PRIMARY KEY CLUSTERED (CasasFunctionalWritingAssessmentFormId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmCasasFunctionalWritingAssessmentForms_LocationCd') BEGIN  Drop INDEX [IX_dmCasasFunctionalWritingAssessmentForms_LocationCd] on [dmCasasFunctionalWritingAssessmentForms]; END */

CREATE NONCLUSTERED INDEX [IX_dmCasasFunctionalWritingAssessmentForms_LocationCd] ON [dmCasasFunctionalWritingAssessmentForms] (LocationCd ASC)

ALTER TABLE [dmCasasFunctionalWritingAssessmentLevels]

DROP CONSTRAINT [PK_dmCASASFunctionalWritingAssessmentLevels];

ALTER TABLE [dmCasasFunctionalWritingAssessmentLevels] ADD CONSTRAINT [PK_dmCASASFunctionalWritingAssessmentLevels] PRIMARY KEY CLUSTERED (CasasFunctionalWritingAssessmentLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmCasasFunctionalWritingAssessmentLevels_LocationCd') BEGIN  Drop INDEX [IX_dmCasasFunctionalWritingAssessmentLevels_LocationCd] on [dmCasasFunctionalWritingAssessmentLevels]; END */

CREATE NONCLUSTERED INDEX [IX_dmCasasFunctionalWritingAssessmentLevels_LocationCd] ON [dmCasasFunctionalWritingAssessmentLevels] (LocationCd ASC)

ALTER TABLE [dmCasasLifeSkillsForms]

DROP CONSTRAINT [PK_dmCASASLifeSkillsForms];

ALTER TABLE [dmCasasLifeSkillsForms] ADD CONSTRAINT [PK_dmCASASLifeSkillsForms] PRIMARY KEY CLUSTERED (CasasLifeSkillsFormId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmCasasLifeSkillsForms_LocationCd') BEGIN  Drop INDEX [IX_dmCasasLifeSkillsForms_LocationCd] on [dmCasasLifeSkillsForms]; END */

CREATE NONCLUSTERED INDEX [IX_dmCasasLifeSkillsForms_LocationCd] ON [dmCasasLifeSkillsForms] (LocationCd ASC)

ALTER TABLE [dmCasasLifeSkillsLevels]

DROP CONSTRAINT [PK_dmCASASLifeSkillsLevels];

ALTER TABLE [dmCasasLifeSkillsLevels] ADD CONSTRAINT [PK_dmCASASLifeSkillsLevels] PRIMARY KEY CLUSTERED (CasasLifeSkillsLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmCasasLifeSkillsLevels_LocationCd') BEGIN  Drop INDEX [IX_dmCasasLifeSkillsLevels_LocationCd] on [dmCasasLifeSkillsLevels]; END */

CREATE NONCLUSTERED INDEX [IX_dmCasasLifeSkillsLevels_LocationCd] ON [dmCasasLifeSkillsLevels] (LocationCd ASC)

ALTER TABLE [dmChargeEndReasons]

DROP CONSTRAINT [PK_dmChargeEndReasons];

ALTER TABLE [dmChargeEndReasons] ADD CONSTRAINT [PK_dmChargeEndReasons] PRIMARY KEY CLUSTERED (ChargeEndReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmChargeEndReasons_LocationCd') BEGIN  Drop INDEX [IX_dmChargeEndReasons_LocationCd] on [dmChargeEndReasons]; END */

CREATE NONCLUSTERED INDEX [IX_dmChargeEndReasons_LocationCd] ON [dmChargeEndReasons] (LocationCd ASC)

ALTER TABLE [dmChargeProcessChangeReasons]

DROP CONSTRAINT [PK_dmChargeProcessChangeReasons];

ALTER TABLE [dmChargeProcessChangeReasons] ADD CONSTRAINT [PK_dmChargeProcessChangeReasons] PRIMARY KEY CLUSTERED (ChargeProcessChangeReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmChargeProcessChangeReasons_LocationCd') BEGIN  Drop INDEX [IX_dmChargeProcessChangeReasons_LocationCd] on [dmChargeProcessChangeReasons]; END */

CREATE NONCLUSTERED INDEX [IX_dmChargeProcessChangeReasons_LocationCd] ON [dmChargeProcessChangeReasons] (LocationCd ASC)

ALTER TABLE [dmChargeStatuses]

DROP CONSTRAINT [PK_dmChargeStatuses];

ALTER TABLE [dmChargeStatuses] ADD CONSTRAINT [PK_dmChargeStatuses] PRIMARY KEY CLUSTERED (ChargeStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmChargeStatuses_LocationCd') BEGIN  Drop INDEX [IX_dmChargeStatuses_LocationCd] on [dmChargeStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_dmChargeStatuses_LocationCd] ON [dmChargeStatuses] (LocationCd ASC)

ALTER TABLE [dmCommunityServiceTypes]

DROP CONSTRAINT [PK_dmCommunityServiceTypes];

ALTER TABLE [dmCommunityServiceTypes] ADD CONSTRAINT [PK_dmCommunityServiceTypes] PRIMARY KEY CLUSTERED (CommunityServiceTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmCommunityServiceTypes_LocationCd') BEGIN  Drop INDEX [IX_dmCommunityServiceTypes_LocationCd] on [dmCommunityServiceTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmCommunityServiceTypes_LocationCd] ON [dmCommunityServiceTypes] (LocationCd ASC)

ALTER TABLE [dmConfidentialStatementConfidentialityReasons]

DROP CONSTRAINT [PK_dmConfidentialStatementConfidentialityReasons];

ALTER TABLE [dmConfidentialStatementConfidentialityReasons] ADD CONSTRAINT [PK_dmConfidentialStatementConfidentialityReasons] PRIMARY KEY CLUSTERED (ConfidentialStatementConfidentialityReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmConfidentialStatementConfidentialityReasons_LocationCd') BEGIN  Drop INDEX [IX_dmConfidentialStatementConfidentialityReasons_LocationCd] on [dmConfidentialStatementConfidentialityReasons]; END */

CREATE NONCLUSTERED INDEX [IX_dmConfidentialStatementConfidentialityReasons_LocationCd] ON [dmConfidentialStatementConfidentialityReasons] (LocationCd ASC)

ALTER TABLE [dmConfidentialStatementCorroboratingTypes]

DROP CONSTRAINT [PK_dmConfidentialStatementCorroboratingTypes];

ALTER TABLE [dmConfidentialStatementCorroboratingTypes] ADD CONSTRAINT [PK_dmConfidentialStatementCorroboratingTypes] PRIMARY KEY CLUSTERED (ConfidentialStatementCorroboratingTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmConfidentialStatementCorroboratingTypes_LocationCd') BEGIN  Drop INDEX [IX_dmConfidentialStatementCorroboratingTypes_LocationCd] on [dmConfidentialStatementCorroboratingTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmConfidentialStatementCorroboratingTypes_LocationCd] ON [dmConfidentialStatementCorroboratingTypes] (LocationCd ASC)

ALTER TABLE [dmConfidentialStatementReliableReasons]

DROP CONSTRAINT [PK_dmConfidentialStatementReliableReasons];

ALTER TABLE [dmConfidentialStatementReliableReasons] ADD CONSTRAINT [PK_dmConfidentialStatementReliableReasons] PRIMARY KEY CLUSTERED (ConfidentialStatementReliableReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmConfidentialStatementReliableReasons_LocationCd') BEGIN  Drop INDEX [IX_dmConfidentialStatementReliableReasons_LocationCd] on [dmConfidentialStatementReliableReasons]; END */

CREATE NONCLUSTERED INDEX [IX_dmConfidentialStatementReliableReasons_LocationCd] ON [dmConfidentialStatementReliableReasons] (LocationCd ASC)

ALTER TABLE [dmCounties]

DROP CONSTRAINT [PK_dmCounties];

ALTER TABLE [dmCounties] ADD CONSTRAINT [PK_dmCounties] PRIMARY KEY CLUSTERED (CountyId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmCounties_LocationCd') BEGIN  Drop INDEX [IX_dmCounties_LocationCd] on [dmCounties]; END */

CREATE NONCLUSTERED INDEX [IX_dmCounties_LocationCd] ON [dmCounties] (LocationCd ASC)

ALTER TABLE [dmCountries]

DROP CONSTRAINT [PK_dmCountries];

ALTER TABLE [dmCountries] ADD CONSTRAINT [PK_dmCountries] PRIMARY KEY CLUSTERED (CountryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmCountries_LocationCd') BEGIN  Drop INDEX [IX_dmCountries_LocationCd] on [dmCountries]; END */

CREATE NONCLUSTERED INDEX [IX_dmCountries_LocationCd] ON [dmCountries] (LocationCd ASC)

ALTER TABLE [dmCPCRSupervisionStatuses]

DROP CONSTRAINT [PK_dmCPCRSupervisionStatuses];

ALTER TABLE [dmCPCRSupervisionStatuses] ADD CONSTRAINT [PK_dmCPCRSupervisionStatuses] PRIMARY KEY CLUSTERED (CPCRSupervisionStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmCPCRSupervisionStatuses_LocationCd') BEGIN  Drop INDEX [IX_dmCPCRSupervisionStatuses_LocationCd] on [dmCPCRSupervisionStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_dmCPCRSupervisionStatuses_LocationCd] ON [dmCPCRSupervisionStatuses] (LocationCd ASC)

ALTER TABLE [dmCrimeCodeClasses]

DROP CONSTRAINT [PK_dmCrimeCodeClasses];

ALTER TABLE [dmCrimeCodeClasses] ADD CONSTRAINT [PK_dmCrimeCodeClasses] PRIMARY KEY CLUSTERED (CrimeCdClassId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmCrimeCodeClasses_LocationCd') BEGIN  Drop INDEX [IX_dmCrimeCodeClasses_LocationCd] on [dmCrimeCodeClasses]; END */

CREATE NONCLUSTERED INDEX [IX_dmCrimeCodeClasses_LocationCd] ON [dmCrimeCodeClasses] (LocationCd ASC)

ALTER TABLE [dmCrimeCodeOffenseTypes]

DROP CONSTRAINT [PK_dmCrimeCodeOffenseTypes];

ALTER TABLE [dmCrimeCodeOffenseTypes] ADD CONSTRAINT [PK_dmCrimeCodeOffenseTypes] PRIMARY KEY CLUSTERED (CrimeCdOffenseTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmCrimeCodeOffenseTypes_LocationCd') BEGIN  Drop INDEX [IX_dmCrimeCodeOffenseTypes_LocationCd] on [dmCrimeCodeOffenseTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmCrimeCodeOffenseTypes_LocationCd] ON [dmCrimeCodeOffenseTypes] (LocationCd ASC)

ALTER TABLE [dmCrimeCodes]

DROP CONSTRAINT [PK_dmCrimeCodes];

ALTER TABLE [dmCrimeCodes] ADD CONSTRAINT [PK_dmCrimeCodes] PRIMARY KEY CLUSTERED (CrimeCdId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmCrimeCodes_LocationCd') BEGIN  Drop INDEX [IX_dmCrimeCodes_LocationCd] on [dmCrimeCodes]; END */

CREATE NONCLUSTERED INDEX [IX_dmCrimeCodes_LocationCd] ON [dmCrimeCodes] (LocationCd ASC)

ALTER TABLE [dmCulturalSpiritualPracticeApproved]

DROP CONSTRAINT [PK_dmCulturalSpiritualPracticeApproved];

ALTER TABLE [dmCulturalSpiritualPracticeApproved] ADD CONSTRAINT [PK_dmCulturalSpiritualPracticeApproved] PRIMARY KEY CLUSTERED (CulturalSpiritualPracticeApprovedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmCulturalSpiritualPracticeApproved_LocationCd') BEGIN  Drop INDEX [IX_dmCulturalSpiritualPracticeApproved_LocationCd] on [dmCulturalSpiritualPracticeApproved]; END */

CREATE NONCLUSTERED INDEX [IX_dmCulturalSpiritualPracticeApproved_LocationCd] ON [dmCulturalSpiritualPracticeApproved] (LocationCd ASC)

ALTER TABLE [dmCustodyClassificationAuditors]

DROP CONSTRAINT [PK_dmCustodyClassificationAuditors];

ALTER TABLE [dmCustodyClassificationAuditors] ADD CONSTRAINT [PK_dmCustodyClassificationAuditors] PRIMARY KEY CLUSTERED (CustodyClassificationAuditorId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmCustodyClassificationAuditors_LocationCd') BEGIN  Drop INDEX [IX_dmCustodyClassificationAuditors_LocationCd] on [dmCustodyClassificationAuditors]; END */

CREATE NONCLUSTERED INDEX [IX_dmCustodyClassificationAuditors_LocationCd] ON [dmCustodyClassificationAuditors] (LocationCd ASC)

ALTER TABLE [dmCustodyClassificationOverrideReasons]

DROP CONSTRAINT [PK_dmCustodyClassificationOverrideReasons];

ALTER TABLE [dmCustodyClassificationOverrideReasons] ADD CONSTRAINT [PK_dmCustodyClassificationOverrideReasons] PRIMARY KEY CLUSTERED (CustodyClassificationOverrideReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmCustodyClassificationOverrideReasons_LocationCd') BEGIN  Drop INDEX [IX_dmCustodyClassificationOverrideReasons_LocationCd] on [dmCustodyClassificationOverrideReasons]; END */

CREATE NONCLUSTERED INDEX [IX_dmCustodyClassificationOverrideReasons_LocationCd] ON [dmCustodyClassificationOverrideReasons] (LocationCd ASC)

ALTER TABLE [dmCustodyLevels]

DROP CONSTRAINT [PK_dmCustodyLevels];

ALTER TABLE [dmCustodyLevels] ADD CONSTRAINT [PK_dmCustodyLevels] PRIMARY KEY CLUSTERED (CustodyLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmCustodyLevels_LocationCd') BEGIN  Drop INDEX [IX_dmCustodyLevels_LocationCd] on [dmCustodyLevels]; END */

CREATE NONCLUSTERED INDEX [IX_dmCustodyLevels_LocationCd] ON [dmCustodyLevels] (LocationCd ASC)

ALTER TABLE [dmCustodyWorkOutReasons]

DROP CONSTRAINT [PK_dmCustodyWorkOutReasons];

ALTER TABLE [dmCustodyWorkOutReasons] ADD CONSTRAINT [PK_dmCustodyWorkOutReasons] PRIMARY KEY CLUSTERED (CustodyWorkOutReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmCustodyWorkOutReasons_LocationCd') BEGIN  Drop INDEX [IX_dmCustodyWorkOutReasons_LocationCd] on [dmCustodyWorkOutReasons]; END */

CREATE NONCLUSTERED INDEX [IX_dmCustodyWorkOutReasons_LocationCd] ON [dmCustodyWorkOutReasons] (LocationCd ASC)

ALTER TABLE [dmEarningIntervals]

DROP CONSTRAINT [PK_dmEarningIntervals];

ALTER TABLE [dmEarningIntervals] ADD CONSTRAINT [PK_dmEarningIntervals] PRIMARY KEY CLUSTERED (EarningIntervalId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmEarningIntervals_LocationCd') BEGIN  Drop INDEX [IX_dmEarningIntervals_LocationCd] on [dmEarningIntervals]; END */

CREATE NONCLUSTERED INDEX [IX_dmEarningIntervals_LocationCd] ON [dmEarningIntervals] (LocationCd ASC)

ALTER TABLE [dmEdEducationalLevels]

DROP CONSTRAINT [PK_dmEDEducationalLevels];

ALTER TABLE [dmEdEducationalLevels] ADD CONSTRAINT [PK_dmEDEducationalLevels] PRIMARY KEY CLUSTERED (EdEducationalLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmEdEducationalLevels_LocationCd') BEGIN  Drop INDEX [IX_dmEdEducationalLevels_LocationCd] on [dmEdEducationalLevels]; END */

CREATE NONCLUSTERED INDEX [IX_dmEdEducationalLevels_LocationCd] ON [dmEdEducationalLevels] (LocationCd ASC)

ALTER TABLE [dmEmploymentLeavingReasons]

DROP CONSTRAINT [PK_dmEmploymentLeavingReasons];

ALTER TABLE [dmEmploymentLeavingReasons] ADD CONSTRAINT [PK_dmEmploymentLeavingReasons] PRIMARY KEY CLUSTERED (ReasonForLeavingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmEmploymentLeavingReasons_LocationCd') BEGIN  Drop INDEX [IX_dmEmploymentLeavingReasons_LocationCd] on [dmEmploymentLeavingReasons]; END */

CREATE NONCLUSTERED INDEX [IX_dmEmploymentLeavingReasons_LocationCd] ON [dmEmploymentLeavingReasons] (LocationCd ASC)

ALTER TABLE [dmEnemyCodes]

DROP CONSTRAINT [PK_dmEnemyCodes];

ALTER TABLE [dmEnemyCodes] ADD CONSTRAINT [PK_dmEnemyCodes] PRIMARY KEY CLUSTERED (EnemyCodeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmEnemyCodes_LocationCd') BEGIN  Drop INDEX [IX_dmEnemyCodes_LocationCd] on [dmEnemyCodes]; END */

CREATE NONCLUSTERED INDEX [IX_dmEnemyCodes_LocationCd] ON [dmEnemyCodes] (LocationCd ASC)

ALTER TABLE [dmEsHighestGradeCompleted]

DROP CONSTRAINT [PK_dmESHighestGradeCompleted];

ALTER TABLE [dmEsHighestGradeCompleted] ADD CONSTRAINT [PK_dmESHighestGradeCompleted] PRIMARY KEY CLUSTERED (EsHighestGradeCompletedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmEsHighestGradeCompleted_LocationCd') BEGIN  Drop INDEX [IX_dmEsHighestGradeCompleted_LocationCd] on [dmEsHighestGradeCompleted]; END */

CREATE NONCLUSTERED INDEX [IX_dmEsHighestGradeCompleted_LocationCd] ON [dmEsHighestGradeCompleted] (LocationCd ASC)

ALTER TABLE [dmEyeColor]

DROP CONSTRAINT [PK_dmEyeColor];

ALTER TABLE [dmEyeColor] ADD CONSTRAINT [PK_dmEyeColor] PRIMARY KEY CLUSTERED (EyeColorId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmEyeColor_LocationCd') BEGIN  Drop INDEX [IX_dmEyeColor_LocationCd] on [dmEyeColor]; END */

CREATE NONCLUSTERED INDEX [IX_dmEyeColor_LocationCd] ON [dmEyeColor] (LocationCd ASC)

ALTER TABLE [dmFieldResidentialViolationBehaviorCodes]

DROP CONSTRAINT [PK_dmFieldResidentialViolationBehaviorCodes];

ALTER TABLE [dmFieldResidentialViolationBehaviorCodes] ADD CONSTRAINT [PK_dmFieldResidentialViolationBehaviorCodes] PRIMARY KEY CLUSTERED (FieldResidentialViolationBehaviorCodeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmFieldResidentialViolationBehaviorCodes_LocationCd') BEGIN  Drop INDEX [IX_dmFieldResidentialViolationBehaviorCodes_LocationCd] on [dmFieldResidentialViolationBehaviorCodes]; END */

CREATE NONCLUSTERED INDEX [IX_dmFieldResidentialViolationBehaviorCodes_LocationCd] ON [dmFieldResidentialViolationBehaviorCodes] (LocationCd ASC)

ALTER TABLE [dmFileStatuses]

DROP CONSTRAINT [PK_dmFileStatuses];

ALTER TABLE [dmFileStatuses] ADD CONSTRAINT [PK_dmFileStatuses] PRIMARY KEY CLUSTERED (FileStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmFileStatuses_LocationCd') BEGIN  Drop INDEX [IX_dmFileStatuses_LocationCd] on [dmFileStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_dmFileStatuses_LocationCd] ON [dmFileStatuses] (LocationCd ASC)

ALTER TABLE [dmFlMaintenanceIssues]

DROP CONSTRAINT [PK_dmFlMaintenanceIssues];

ALTER TABLE [dmFlMaintenanceIssues] ADD CONSTRAINT [PK_dmFlMaintenanceIssues] PRIMARY KEY CLUSTERED (FlMaintenanceIssueId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmFlMaintenanceIssues_LocationCd') BEGIN  Drop INDEX [IX_dmFlMaintenanceIssues_LocationCd] on [dmFlMaintenanceIssues]; END */

CREATE NONCLUSTERED INDEX [IX_dmFlMaintenanceIssues_LocationCd] ON [dmFlMaintenanceIssues] (LocationCd ASC)

ALTER TABLE [dmGedAccommodations]

DROP CONSTRAINT [PK_dmGEDAccommodations];

ALTER TABLE [dmGedAccommodations] ADD CONSTRAINT [PK_dmGEDAccommodations] PRIMARY KEY CLUSTERED (GedAccommodationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmGedAccommodations_LocationCd') BEGIN  Drop INDEX [IX_dmGedAccommodations_LocationCd] on [dmGedAccommodations]; END */

CREATE NONCLUSTERED INDEX [IX_dmGedAccommodations_LocationCd] ON [dmGedAccommodations] (LocationCd ASC)

ALTER TABLE [dmGedSites]

DROP CONSTRAINT [PK_dmGEDSites];

ALTER TABLE [dmGedSites] ADD CONSTRAINT [PK_dmGEDSites] PRIMARY KEY CLUSTERED (GedSiteId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmGedSites_LocationCd') BEGIN  Drop INDEX [IX_dmGedSites_LocationCd] on [dmGedSites]; END */

CREATE NONCLUSTERED INDEX [IX_dmGedSites_LocationCd] ON [dmGedSites] (LocationCd ASC)

ALTER TABLE [dmGovernorsOfficeInformation]

DROP CONSTRAINT [PK_dmGovernorsOfficeInformation];

ALTER TABLE [dmGovernorsOfficeInformation] ADD CONSTRAINT [PK_dmGovernorsOfficeInformation] PRIMARY KEY CLUSTERED (GovernorsOfficeInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmGovernorsOfficeInformation_LocationCd') BEGIN  Drop INDEX [IX_dmGovernorsOfficeInformation_LocationCd] on [dmGovernorsOfficeInformation]; END */

CREATE NONCLUSTERED INDEX [IX_dmGovernorsOfficeInformation_LocationCd] ON [dmGovernorsOfficeInformation] (LocationCd ASC)

ALTER TABLE [dmGrievanceActions]

DROP CONSTRAINT [PK_dmGrievanceCentralOfficeActions];

ALTER TABLE [dmGrievanceActions] ADD CONSTRAINT [PK_dmGrievanceCentralOfficeActions] PRIMARY KEY CLUSTERED (GrievanceActionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmGrievanceActions_LocationCd') BEGIN  Drop INDEX [IX_dmGrievanceActions_LocationCd] on [dmGrievanceActions]; END */

CREATE NONCLUSTERED INDEX [IX_dmGrievanceActions_LocationCd] ON [dmGrievanceActions] (LocationCd ASC)

ALTER TABLE [dmGrievanceProcessTypes]

DROP CONSTRAINT [PK_dmGrievanceProcessTypes];

ALTER TABLE [dmGrievanceProcessTypes] ADD CONSTRAINT [PK_dmGrievanceProcessTypes] PRIMARY KEY CLUSTERED (GrievanceProcessTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmGrievanceProcessTypes_LocationCd') BEGIN  Drop INDEX [IX_dmGrievanceProcessTypes_LocationCd] on [dmGrievanceProcessTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmGrievanceProcessTypes_LocationCd] ON [dmGrievanceProcessTypes] (LocationCd ASC)

ALTER TABLE [dmGrievanceResolutionTypes]

DROP CONSTRAINT [PK_dmGrievanceResolutionTypes];

ALTER TABLE [dmGrievanceResolutionTypes] ADD CONSTRAINT [PK_dmGrievanceResolutionTypes] PRIMARY KEY CLUSTERED (GrievanceResolutionTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmGrievanceResolutionTypes_LocationCd') BEGIN  Drop INDEX [IX_dmGrievanceResolutionTypes_LocationCd] on [dmGrievanceResolutionTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmGrievanceResolutionTypes_LocationCd] ON [dmGrievanceResolutionTypes] (LocationCd ASC)

ALTER TABLE [dmGrievanceSubtypes]

DROP CONSTRAINT [PK_dmGrievanceSubtypes];

ALTER TABLE [dmGrievanceSubtypes] ADD CONSTRAINT [PK_dmGrievanceSubtypes] PRIMARY KEY CLUSTERED (GrievanceSubtypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmGrievanceSubtypes_LocationCd') BEGIN  Drop INDEX [IX_dmGrievanceSubtypes_LocationCd] on [dmGrievanceSubtypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmGrievanceSubtypes_LocationCd] ON [dmGrievanceSubtypes] (LocationCd ASC)

ALTER TABLE [dmGrievanceTypes]

DROP CONSTRAINT [PK_dmGrievanceTypes];

ALTER TABLE [dmGrievanceTypes] ADD CONSTRAINT [PK_dmGrievanceTypes] PRIMARY KEY CLUSTERED (GrievanceTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmGrievanceTypes_LocationCd') BEGIN  Drop INDEX [IX_dmGrievanceTypes_LocationCd] on [dmGrievanceTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmGrievanceTypes_LocationCd] ON [dmGrievanceTypes] (LocationCd ASC)

ALTER TABLE [dmHairColor]

DROP CONSTRAINT [PK_dmHairColor];

ALTER TABLE [dmHairColor] ADD CONSTRAINT [PK_dmHairColor] PRIMARY KEY CLUSTERED (HairColorId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmHairColor_LocationCd') BEGIN  Drop INDEX [IX_dmHairColor_LocationCd] on [dmHairColor]; END */

CREATE NONCLUSTERED INDEX [IX_dmHairColor_LocationCd] ON [dmHairColor] (LocationCd ASC)

ALTER TABLE [dmHairQuality]

DROP CONSTRAINT [PK_dmHairQuality];

ALTER TABLE [dmHairQuality] ADD CONSTRAINT [PK_dmHairQuality] PRIMARY KEY CLUSTERED (HairQualityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmHairQuality_LocationCd') BEGIN  Drop INDEX [IX_dmHairQuality_LocationCd] on [dmHairQuality]; END */

CREATE NONCLUSTERED INDEX [IX_dmHairQuality_LocationCd] ON [dmHairQuality] (LocationCd ASC)

ALTER TABLE [dmHealthIssueTypes]

DROP CONSTRAINT [PK_dmHealthIssueTypes];

ALTER TABLE [dmHealthIssueTypes] ADD CONSTRAINT [PK_dmHealthIssueTypes] PRIMARY KEY CLUSTERED (HealthIssueTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmHealthIssueTypes_LocationCd') BEGIN  Drop INDEX [IX_dmHealthIssueTypes_LocationCd] on [dmHealthIssueTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmHealthIssueTypes_LocationCd] ON [dmHealthIssueTypes] (LocationCd ASC)

ALTER TABLE [dmHearingDecisions]

DROP CONSTRAINT [PK_dmHearingDecisions];

ALTER TABLE [dmHearingDecisions] ADD CONSTRAINT [PK_dmHearingDecisions] PRIMARY KEY CLUSTERED (HearingDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmHearingDecisions_LocationCd') BEGIN  Drop INDEX [IX_dmHearingDecisions_LocationCd] on [dmHearingDecisions]; END */

CREATE NONCLUSTERED INDEX [IX_dmHearingDecisions_LocationCd] ON [dmHearingDecisions] (LocationCd ASC)

ALTER TABLE [dmHearingResponseStatuses]

DROP CONSTRAINT [PK_dmHearingResponseStatuses];

ALTER TABLE [dmHearingResponseStatuses] ADD CONSTRAINT [PK_dmHearingResponseStatuses] PRIMARY KEY CLUSTERED (HearingResponseStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmHearingResponseStatuses_LocationCd') BEGIN  Drop INDEX [IX_dmHearingResponseStatuses_LocationCd] on [dmHearingResponseStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_dmHearingResponseStatuses_LocationCd] ON [dmHearingResponseStatuses] (LocationCd ASC)

ALTER TABLE [dmHearingRoles]

DROP CONSTRAINT [PK_dmHearingRoles];

ALTER TABLE [dmHearingRoles] ADD CONSTRAINT [PK_dmHearingRoles] PRIMARY KEY CLUSTERED (HearingRoleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmHearingRoles_LocationCd') BEGIN  Drop INDEX [IX_dmHearingRoles_LocationCd] on [dmHearingRoles]; END */

CREATE NONCLUSTERED INDEX [IX_dmHearingRoles_LocationCd] ON [dmHearingRoles] (LocationCd ASC)

ALTER TABLE [dmHearingStatuses]

DROP CONSTRAINT [PK_dmHearingStatuses];

ALTER TABLE [dmHearingStatuses] ADD CONSTRAINT [PK_dmHearingStatuses] PRIMARY KEY CLUSTERED (HearingStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmHearingStatuses_LocationCd') BEGIN  Drop INDEX [IX_dmHearingStatuses_LocationCd] on [dmHearingStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_dmHearingStatuses_LocationCd] ON [dmHearingStatuses] (LocationCd ASC)

ALTER TABLE [dmHousingAssignmentRestrictions]

DROP CONSTRAINT [PK_dmRoomBedAssignmentRestrictions];

ALTER TABLE [dmHousingAssignmentRestrictions] ADD CONSTRAINT [PK_dmRoomBedAssignmentRestrictions] PRIMARY KEY CLUSTERED (HousingAssignmentRestrictionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmHousingAssignmentRestrictions_LocationCd') BEGIN  Drop INDEX [IX_dmHousingAssignmentRestrictions_LocationCd] on [dmHousingAssignmentRestrictions]; END */

CREATE NONCLUSTERED INDEX [IX_dmHousingAssignmentRestrictions_LocationCd] ON [dmHousingAssignmentRestrictions] (LocationCd ASC)

ALTER TABLE [dmHousingAssignmentRestrictions_OLD]

DROP CONSTRAINT [PK_dmHousingAssignmentRestrictions];

ALTER TABLE [dmHousingAssignmentRestrictions_OLD] ADD CONSTRAINT [PK_dmHousingAssignmentRestrictions] PRIMARY KEY CLUSTERED (HousingAssignmentRestrictionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmHousingAssignmentRestrictions_OLD_LocationCd') BEGIN  Drop INDEX [IX_dmHousingAssignmentRestrictions_OLD_LocationCd] on [dmHousingAssignmentRestrictions_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_dmHousingAssignmentRestrictions_OLD_LocationCd] ON [dmHousingAssignmentRestrictions_OLD] (LocationCd ASC)

ALTER TABLE [dmHousingPrivilegeLevelsInstFl]

DROP CONSTRAINT [PK_dmHousingPrivilegeLevelsInstFL];

ALTER TABLE [dmHousingPrivilegeLevelsInstFl] ADD CONSTRAINT [PK_dmHousingPrivilegeLevelsInstFL] PRIMARY KEY CLUSTERED (HousingPrivilegeLevelInstFlId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmHousingPrivilegeLevelsInstFl_LocationCd') BEGIN  Drop INDEX [IX_dmHousingPrivilegeLevelsInstFl_LocationCd] on [dmHousingPrivilegeLevelsInstFl]; END */

CREATE NONCLUSTERED INDEX [IX_dmHousingPrivilegeLevelsInstFl_LocationCd] ON [dmHousingPrivilegeLevelsInstFl] (LocationCd ASC)

ALTER TABLE [dmHousingPrivilegeLevelsInstSw]

DROP CONSTRAINT [PK_dmHousingPrivilegeLevelsInstSW];

ALTER TABLE [dmHousingPrivilegeLevelsInstSw] ADD CONSTRAINT [PK_dmHousingPrivilegeLevelsInstSW] PRIMARY KEY CLUSTERED (HousingPrivilegeLevelInstSwId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmHousingPrivilegeLevelsInstSw_LocationCd') BEGIN  Drop INDEX [IX_dmHousingPrivilegeLevelsInstSw_LocationCd] on [dmHousingPrivilegeLevelsInstSw]; END */

CREATE NONCLUSTERED INDEX [IX_dmHousingPrivilegeLevelsInstSw_LocationCd] ON [dmHousingPrivilegeLevelsInstSw] (LocationCd ASC)

ALTER TABLE [dmHousingPrivilegeLevelsResi]

DROP CONSTRAINT [PK_dmHousingPrivilegeLevelsResi];

ALTER TABLE [dmHousingPrivilegeLevelsResi] ADD CONSTRAINT [PK_dmHousingPrivilegeLevelsResi] PRIMARY KEY CLUSTERED (HousingPrivilegeLevelResiId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmHousingPrivilegeLevelsResi_LocationCd') BEGIN  Drop INDEX [IX_dmHousingPrivilegeLevelsResi_LocationCd] on [dmHousingPrivilegeLevelsResi]; END */

CREATE NONCLUSTERED INDEX [IX_dmHousingPrivilegeLevelsResi_LocationCd] ON [dmHousingPrivilegeLevelsResi] (LocationCd ASC)

ALTER TABLE [dmHousingRestrictionCategories]

DROP CONSTRAINT [PK_dmHousingRestrictionCategories];

ALTER TABLE [dmHousingRestrictionCategories] ADD CONSTRAINT [PK_dmHousingRestrictionCategories] PRIMARY KEY CLUSTERED (HousingRestrictionCategoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmHousingRestrictionCategories_LocationCd') BEGIN  Drop INDEX [IX_dmHousingRestrictionCategories_LocationCd] on [dmHousingRestrictionCategories]; END */

CREATE NONCLUSTERED INDEX [IX_dmHousingRestrictionCategories_LocationCd] ON [dmHousingRestrictionCategories] (LocationCd ASC)

ALTER TABLE [dmHousingRestrictions]

DROP CONSTRAINT [PK_dmAssignmentRestrictions];

ALTER TABLE [dmHousingRestrictions] ADD CONSTRAINT [PK_dmAssignmentRestrictions] PRIMARY KEY CLUSTERED (HousingRestrictionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmHousingRestrictions_LocationCd') BEGIN  Drop INDEX [IX_dmHousingRestrictions_LocationCd] on [dmHousingRestrictions]; END */

CREATE NONCLUSTERED INDEX [IX_dmHousingRestrictions_LocationCd] ON [dmHousingRestrictions] (LocationCd ASC)

ALTER TABLE [dmHousingSecurityTypes]

DROP CONSTRAINT [PK_dmHousingSecurityTypes];

ALTER TABLE [dmHousingSecurityTypes] ADD CONSTRAINT [PK_dmHousingSecurityTypes] PRIMARY KEY CLUSTERED (HousingSecurityTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmHousingSecurityTypes_LocationCd') BEGIN  Drop INDEX [IX_dmHousingSecurityTypes_LocationCd] on [dmHousingSecurityTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmHousingSecurityTypes_LocationCd] ON [dmHousingSecurityTypes] (LocationCd ASC)

ALTER TABLE [dmHousingUnitUses]

DROP CONSTRAINT [PK_dmHousingUnitUses];

ALTER TABLE [dmHousingUnitUses] ADD CONSTRAINT [PK_dmHousingUnitUses] PRIMARY KEY CLUSTERED (HousingUnitUseId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmHousingUnitUses_LocationCd') BEGIN  Drop INDEX [IX_dmHousingUnitUses_LocationCd] on [dmHousingUnitUses]; END */

CREATE NONCLUSTERED INDEX [IX_dmHousingUnitUses_LocationCd] ON [dmHousingUnitUses] (LocationCd ASC)

ALTER TABLE [dmHousingVisitingPrivilegeLevels]

DROP CONSTRAINT [PK_dmHousingVisitingPrivilegeLevels];

ALTER TABLE [dmHousingVisitingPrivilegeLevels] ADD CONSTRAINT [PK_dmHousingVisitingPrivilegeLevels] PRIMARY KEY CLUSTERED (HousingVisitingPrivilegeLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmHousingVisitingPrivilegeLevels_LocationCd') BEGIN  Drop INDEX [IX_dmHousingVisitingPrivilegeLevels_LocationCd] on [dmHousingVisitingPrivilegeLevels]; END */

CREATE NONCLUSTERED INDEX [IX_dmHousingVisitingPrivilegeLevels_LocationCd] ON [dmHousingVisitingPrivilegeLevels] (LocationCd ASC)

ALTER TABLE [dmIaRiskRevisedAuditors]

DROP CONSTRAINT [PK_dmIaRiskRevisedAuditors];

ALTER TABLE [dmIaRiskRevisedAuditors] ADD CONSTRAINT [PK_dmIaRiskRevisedAuditors] PRIMARY KEY CLUSTERED (IaRiskRevisedAuditorId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmIaRiskRevisedAuditors_LocationCd') BEGIN  Drop INDEX [IX_dmIaRiskRevisedAuditors_LocationCd] on [dmIaRiskRevisedAuditors]; END */

CREATE NONCLUSTERED INDEX [IX_dmIaRiskRevisedAuditors_LocationCd] ON [dmIaRiskRevisedAuditors] (LocationCd ASC)

ALTER TABLE [dmIASexOffenderRiskCategories]

DROP CONSTRAINT [PK_dmIASexOffenderRiskCategories];

ALTER TABLE [dmIASexOffenderRiskCategories] ADD CONSTRAINT [PK_dmIASexOffenderRiskCategories] PRIMARY KEY CLUSTERED (IASexOffenderRiskCategoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmIASexOffenderRiskCategories_LocationCd') BEGIN  Drop INDEX [IX_dmIASexOffenderRiskCategories_LocationCd] on [dmIASexOffenderRiskCategories]; END */

CREATE NONCLUSTERED INDEX [IX_dmIASexOffenderRiskCategories_LocationCd] ON [dmIASexOffenderRiskCategories] (LocationCd ASC)

ALTER TABLE [dmInOutTypes]

DROP CONSTRAINT [PK_dmInOutTypes];

ALTER TABLE [dmInOutTypes] ADD CONSTRAINT [PK_dmInOutTypes] PRIMARY KEY CLUSTERED (InOutTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmInOutTypes_LocationCd') BEGIN  Drop INDEX [IX_dmInOutTypes_LocationCd] on [dmInOutTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmInOutTypes_LocationCd] ON [dmInOutTypes] (LocationCd ASC)

ALTER TABLE [dmInstitutionDisciplinaryNumbers]

DROP CONSTRAINT [PK_dmInstitutionDisciplinaryNumbers];

ALTER TABLE [dmInstitutionDisciplinaryNumbers] ADD CONSTRAINT [PK_dmInstitutionDisciplinaryNumbers] PRIMARY KEY CLUSTERED (InstitutionDisciplinaryNumberId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmInstitutionDisciplinaryNumbers_LocationCd') BEGIN  Drop INDEX [IX_dmInstitutionDisciplinaryNumbers_LocationCd] on [dmInstitutionDisciplinaryNumbers]; END */

CREATE NONCLUSTERED INDEX [IX_dmInstitutionDisciplinaryNumbers_LocationCd] ON [dmInstitutionDisciplinaryNumbers] (LocationCd ASC)

ALTER TABLE [dmInstitutionRules]

DROP CONSTRAINT [PK_dmInstitutionRules];

ALTER TABLE [dmInstitutionRules] ADD CONSTRAINT [PK_dmInstitutionRules] PRIMARY KEY CLUSTERED (InstitutionRuleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmInstitutionRules_LocationCd') BEGIN  Drop INDEX [IX_dmInstitutionRules_LocationCd] on [dmInstitutionRules]; END */

CREATE NONCLUSTERED INDEX [IX_dmInstitutionRules_LocationCd] ON [dmInstitutionRules] (LocationCd ASC)

ALTER TABLE [dmInterventionCategories]

DROP CONSTRAINT [PK_dmInterventionCategories];

ALTER TABLE [dmInterventionCategories] ADD CONSTRAINT [PK_dmInterventionCategories] PRIMARY KEY CLUSTERED (InterventionCategoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmInterventionCategories_LocationCd') BEGIN  Drop INDEX [IX_dmInterventionCategories_LocationCd] on [dmInterventionCategories]; END */

CREATE NONCLUSTERED INDEX [IX_dmInterventionCategories_LocationCd] ON [dmInterventionCategories] (LocationCd ASC)

ALTER TABLE [dmInterventionClosureTypes]

DROP CONSTRAINT [PK_dmInterventionClosureTypes];

ALTER TABLE [dmInterventionClosureTypes] ADD CONSTRAINT [PK_dmInterventionClosureTypes] PRIMARY KEY CLUSTERED (InterventionClosureTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmInterventionClosureTypes_LocationCd') BEGIN  Drop INDEX [IX_dmInterventionClosureTypes_LocationCd] on [dmInterventionClosureTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmInterventionClosureTypes_LocationCd] ON [dmInterventionClosureTypes] (LocationCd ASC)

ALTER TABLE [dmInterventionLocations]

DROP CONSTRAINT [PK_dmInterventionLocations];

ALTER TABLE [dmInterventionLocations] ADD CONSTRAINT [PK_dmInterventionLocations] PRIMARY KEY CLUSTERED (InterventionLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmInterventionLocations_LocationCd') BEGIN  Drop INDEX [IX_dmInterventionLocations_LocationCd] on [dmInterventionLocations]; END */

CREATE NONCLUSTERED INDEX [IX_dmInterventionLocations_LocationCd] ON [dmInterventionLocations] (LocationCd ASC)

ALTER TABLE [dmInterventionNotCompletedReasons]

DROP CONSTRAINT [PK_dmInterventionNotCompletedReasons];

ALTER TABLE [dmInterventionNotCompletedReasons] ADD CONSTRAINT [PK_dmInterventionNotCompletedReasons] PRIMARY KEY CLUSTERED (InterventionNotCompletedReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmInterventionNotCompletedReasons_LocationCd') BEGIN  Drop INDEX [IX_dmInterventionNotCompletedReasons_LocationCd] on [dmInterventionNotCompletedReasons]; END */

CREATE NONCLUSTERED INDEX [IX_dmInterventionNotCompletedReasons_LocationCd] ON [dmInterventionNotCompletedReasons] (LocationCd ASC)

ALTER TABLE [dmInterventionPrograms]

DROP CONSTRAINT [PK_dmInterventionPrograms];

ALTER TABLE [dmInterventionPrograms] ADD CONSTRAINT [PK_dmInterventionPrograms] PRIMARY KEY CLUSTERED (InterventionProgramId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmInterventionPrograms_LocationCd') BEGIN  Drop INDEX [IX_dmInterventionPrograms_LocationCd] on [dmInterventionPrograms]; END */

CREATE NONCLUSTERED INDEX [IX_dmInterventionPrograms_LocationCd] ON [dmInterventionPrograms] (LocationCd ASC)

ALTER TABLE [dmInterventionProviders]

DROP CONSTRAINT [PK_dmInterventionProviders];

ALTER TABLE [dmInterventionProviders] ADD CONSTRAINT [PK_dmInterventionProviders] PRIMARY KEY CLUSTERED (InterventionProviderId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmInterventionProviders_LocationCd') BEGIN  Drop INDEX [IX_dmInterventionProviders_LocationCd] on [dmInterventionProviders]; END */

CREATE NONCLUSTERED INDEX [IX_dmInterventionProviders_LocationCd] ON [dmInterventionProviders] (LocationCd ASC)

ALTER TABLE [dmInterventions]

DROP CONSTRAINT [PK_dmInterventions];

ALTER TABLE [dmInterventions] ADD CONSTRAINT [PK_dmInterventions] PRIMARY KEY CLUSTERED (InterventionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmInterventions_LocationCd') BEGIN  Drop INDEX [IX_dmInterventions_LocationCd] on [dmInterventions]; END */

CREATE NONCLUSTERED INDEX [IX_dmInterventions_LocationCd] ON [dmInterventions] (LocationCd ASC)

ALTER TABLE [dmInterventionServiceTypes]

DROP CONSTRAINT [PK_dmInterventionServiceTypes];

ALTER TABLE [dmInterventionServiceTypes] ADD CONSTRAINT [PK_dmInterventionServiceTypes] PRIMARY KEY CLUSTERED (InterventionServiceTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmInterventionServiceTypes_LocationCd') BEGIN  Drop INDEX [IX_dmInterventionServiceTypes_LocationCd] on [dmInterventionServiceTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmInterventionServiceTypes_LocationCd] ON [dmInterventionServiceTypes] (LocationCd ASC)

ALTER TABLE [dmInterventionSessionSummaries]

DROP CONSTRAINT [PK_dmInterventionSessionSummaries];

ALTER TABLE [dmInterventionSessionSummaries] ADD CONSTRAINT [PK_dmInterventionSessionSummaries] PRIMARY KEY CLUSTERED (InterventionSessionSummaryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmInterventionSessionSummaries_LocationCd') BEGIN  Drop INDEX [IX_dmInterventionSessionSummaries_LocationCd] on [dmInterventionSessionSummaries]; END */

CREATE NONCLUSTERED INDEX [IX_dmInterventionSessionSummaries_LocationCd] ON [dmInterventionSessionSummaries] (LocationCd ASC)

ALTER TABLE [dmInterventionSettings]

DROP CONSTRAINT [PK_dmInterventionSettings];

ALTER TABLE [dmInterventionSettings] ADD CONSTRAINT [PK_dmInterventionSettings] PRIMARY KEY CLUSTERED (InterventionSettingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmInterventionSettings_LocationCd') BEGIN  Drop INDEX [IX_dmInterventionSettings_LocationCd] on [dmInterventionSettings]; END */

CREATE NONCLUSTERED INDEX [IX_dmInterventionSettings_LocationCd] ON [dmInterventionSettings] (LocationCd ASC)

ALTER TABLE [dmIsoraDepartureReasons]

DROP CONSTRAINT [PK_dmISORADepartureReasons];

ALTER TABLE [dmIsoraDepartureReasons] ADD CONSTRAINT [PK_dmISORADepartureReasons] PRIMARY KEY CLUSTERED (IsoraDepartureReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmIsoraDepartureReasons_LocationCd') BEGIN  Drop INDEX [IX_dmIsoraDepartureReasons_LocationCd] on [dmIsoraDepartureReasons]; END */

CREATE NONCLUSTERED INDEX [IX_dmIsoraDepartureReasons_LocationCd] ON [dmIsoraDepartureReasons] (LocationCd ASC)

ALTER TABLE [dmJobStatuses]

DROP CONSTRAINT [PK_dmJobStatuses];

ALTER TABLE [dmJobStatuses] ADD CONSTRAINT [PK_dmJobStatuses] PRIMARY KEY CLUSTERED (JobStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmJobStatuses_LocationCd') BEGIN  Drop INDEX [IX_dmJobStatuses_LocationCd] on [dmJobStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_dmJobStatuses_LocationCd] ON [dmJobStatuses] (LocationCd ASC)

ALTER TABLE [dmJurisdictionTypes]

DROP CONSTRAINT [PK_dmJurisdictionTypes];

ALTER TABLE [dmJurisdictionTypes] ADD CONSTRAINT [PK_dmJurisdictionTypes] PRIMARY KEY CLUSTERED (JurisdictionTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmJurisdictionTypes_LocationCd') BEGIN  Drop INDEX [IX_dmJurisdictionTypes_LocationCd] on [dmJurisdictionTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmJurisdictionTypes_LocationCd] ON [dmJurisdictionTypes] (LocationCd ASC)

ALTER TABLE [dmKioskFurloughPurposes]

DROP CONSTRAINT [PK_dmKioskFurloughPurposes];

ALTER TABLE [dmKioskFurloughPurposes] ADD CONSTRAINT [PK_dmKioskFurloughPurposes] PRIMARY KEY CLUSTERED (KioskFurloughPurposeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmKioskFurloughPurposes_LocationCd') BEGIN  Drop INDEX [IX_dmKioskFurloughPurposes_LocationCd] on [dmKioskFurloughPurposes]; END */

CREATE NONCLUSTERED INDEX [IX_dmKioskFurloughPurposes_LocationCd] ON [dmKioskFurloughPurposes] (LocationCd ASC)

ALTER TABLE [dmKioskMailboxes]

DROP CONSTRAINT [PK_dmKioskMailboxes];

ALTER TABLE [dmKioskMailboxes] ADD CONSTRAINT [PK_dmKioskMailboxes] PRIMARY KEY CLUSTERED (KioskMailboxId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmKioskMailboxes_LocationCd') BEGIN  Drop INDEX [IX_dmKioskMailboxes_LocationCd] on [dmKioskMailboxes]; END */

CREATE NONCLUSTERED INDEX [IX_dmKioskMailboxes_LocationCd] ON [dmKioskMailboxes] (LocationCd ASC)

ALTER TABLE [dmLegalPeopleInformation]

DROP CONSTRAINT [PK_dmLegalPeopleInformation];

ALTER TABLE [dmLegalPeopleInformation] ADD CONSTRAINT [PK_dmLegalPeopleInformation] PRIMARY KEY CLUSTERED (LegalPeopleInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmLegalPeopleInformation_LocationCd') BEGIN  Drop INDEX [IX_dmLegalPeopleInformation_LocationCd] on [dmLegalPeopleInformation]; END */

CREATE NONCLUSTERED INDEX [IX_dmLegalPeopleInformation_LocationCd] ON [dmLegalPeopleInformation] (LocationCd ASC)

ALTER TABLE [dmLevelOfSupervision]

DROP CONSTRAINT [PK_dmLevelOfSupervision];

ALTER TABLE [dmLevelOfSupervision] ADD CONSTRAINT [PK_dmLevelOfSupervision] PRIMARY KEY CLUSTERED (LevelOfSupervisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmLevelOfSupervision_LocationCd') BEGIN  Drop INDEX [IX_dmLevelOfSupervision_LocationCd] on [dmLevelOfSupervision]; END */

CREATE NONCLUSTERED INDEX [IX_dmLevelOfSupervision_LocationCd] ON [dmLevelOfSupervision] (LocationCd ASC)

ALTER TABLE [dmLevyModifiers]

DROP CONSTRAINT [PK_dmLevyModifiers];

ALTER TABLE [dmLevyModifiers] ADD CONSTRAINT [PK_dmLevyModifiers] PRIMARY KEY CLUSTERED (LevyModifierId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmLevyModifiers_LocationCd') BEGIN  Drop INDEX [IX_dmLevyModifiers_LocationCd] on [dmLevyModifiers]; END */

CREATE NONCLUSTERED INDEX [IX_dmLevyModifiers_LocationCd] ON [dmLevyModifiers] (LocationCd ASC)

ALTER TABLE [dmLevyTypes]

DROP CONSTRAINT [PK_dmLevyTypes];

ALTER TABLE [dmLevyTypes] ADD CONSTRAINT [PK_dmLevyTypes] PRIMARY KEY CLUSTERED (LevyTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmLevyTypes_LocationCd') BEGIN  Drop INDEX [IX_dmLevyTypes_LocationCd] on [dmLevyTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmLevyTypes_LocationCd] ON [dmLevyTypes] (LocationCd ASC)

ALTER TABLE [dmLivingWith]

DROP CONSTRAINT [PK_dmLivingWith];

ALTER TABLE [dmLivingWith] ADD CONSTRAINT [PK_dmLivingWith] PRIMARY KEY CLUSTERED (LivingWithId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmLivingWith_LocationCd') BEGIN  Drop INDEX [IX_dmLivingWith_LocationCd] on [dmLivingWith]; END */

CREATE NONCLUSTERED INDEX [IX_dmLivingWith_LocationCd] ON [dmLivingWith] (LocationCd ASC)

ALTER TABLE [dmLov]

DROP CONSTRAINT [PK_dmLOV];

ALTER TABLE [dmLov] ADD CONSTRAINT [PK_dmLOV] PRIMARY KEY CLUSTERED (LovId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmLov_LocationCd') BEGIN  Drop INDEX [IX_dmLov_LocationCd] on [dmLov]; END */

CREATE NONCLUSTERED INDEX [IX_dmLov_LocationCd] ON [dmLov] (LocationCd ASC)

ALTER TABLE [dmLsi_rAuditors]

DROP CONSTRAINT [PK_dmLSI_RAuditors];

ALTER TABLE [dmLsi_rAuditors] ADD CONSTRAINT [PK_dmLSI_RAuditors] PRIMARY KEY CLUSTERED (Lsi_rAuditorId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmLsi_rAuditors_LocationCd') BEGIN  Drop INDEX [IX_dmLsi_rAuditors_LocationCd] on [dmLsi_rAuditors]; END */

CREATE NONCLUSTERED INDEX [IX_dmLsi_rAuditors_LocationCd] ON [dmLsi_rAuditors] (LocationCd ASC)

ALTER TABLE [dmLsi_rDispositions]

DROP CONSTRAINT [PK_dmLSI_RDispositions];

ALTER TABLE [dmLsi_rDispositions] ADD CONSTRAINT [PK_dmLSI_RDispositions] PRIMARY KEY CLUSTERED (Lsi_rDispositionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmLsi_rDispositions_LocationCd') BEGIN  Drop INDEX [IX_dmLsi_rDispositions_LocationCd] on [dmLsi_rDispositions]; END */

CREATE NONCLUSTERED INDEX [IX_dmLsi_rDispositions_LocationCd] ON [dmLsi_rDispositions] (LocationCd ASC)

ALTER TABLE [dmMaritalStatuses]

DROP CONSTRAINT [PK_dmMaritalStatuses];

ALTER TABLE [dmMaritalStatuses] ADD CONSTRAINT [PK_dmMaritalStatuses] PRIMARY KEY CLUSTERED (MaritalStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmMaritalStatuses_LocationCd') BEGIN  Drop INDEX [IX_dmMaritalStatuses_LocationCd] on [dmMaritalStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_dmMaritalStatuses_LocationCd] ON [dmMaritalStatuses] (LocationCd ASC)

ALTER TABLE [dmMethods]

DROP CONSTRAINT [PK_dmMethods];

ALTER TABLE [dmMethods] ADD CONSTRAINT [PK_dmMethods] PRIMARY KEY CLUSTERED (MethodId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmMethods_LocationCd') BEGIN  Drop INDEX [IX_dmMethods_LocationCd] on [dmMethods]; END */

CREATE NONCLUSTERED INDEX [IX_dmMethods_LocationCd] ON [dmMethods] (LocationCd ASC)

ALTER TABLE [dmMilitaryBranches]

DROP CONSTRAINT [PK_dmMilitaryBranches];

ALTER TABLE [dmMilitaryBranches] ADD CONSTRAINT [PK_dmMilitaryBranches] PRIMARY KEY CLUSTERED (MilitaryBranchId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmMilitaryBranches_LocationCd') BEGIN  Drop INDEX [IX_dmMilitaryBranches_LocationCd] on [dmMilitaryBranches]; END */

CREATE NONCLUSTERED INDEX [IX_dmMilitaryBranches_LocationCd] ON [dmMilitaryBranches] (LocationCd ASC)

ALTER TABLE [dmMilitaryDischargeTypes]

DROP CONSTRAINT [PK_dmMilitaryDischargeTypes];

ALTER TABLE [dmMilitaryDischargeTypes] ADD CONSTRAINT [PK_dmMilitaryDischargeTypes] PRIMARY KEY CLUSTERED (MilitaryDischargeTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmMilitaryDischargeTypes_LocationCd') BEGIN  Drop INDEX [IX_dmMilitaryDischargeTypes_LocationCd] on [dmMilitaryDischargeTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmMilitaryDischargeTypes_LocationCd] ON [dmMilitaryDischargeTypes] (LocationCd ASC)

ALTER TABLE [dmModalities]

DROP CONSTRAINT [PK_dmModalities];

ALTER TABLE [dmModalities] ADD CONSTRAINT [PK_dmModalities] PRIMARY KEY CLUSTERED (ModalityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmModalities_LocationCd') BEGIN  Drop INDEX [IX_dmModalities_LocationCd] on [dmModalities]; END */

CREATE NONCLUSTERED INDEX [IX_dmModalities_LocationCd] ON [dmModalities] (LocationCd ASC)

ALTER TABLE [dmMonitoringTrackedItems]

DROP CONSTRAINT [PK_dmMonitoringTrackedItems];

ALTER TABLE [dmMonitoringTrackedItems] ADD CONSTRAINT [PK_dmMonitoringTrackedItems] PRIMARY KEY CLUSTERED (MonitoringTrackedItemId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmMonitoringTrackedItems_LocationCd') BEGIN  Drop INDEX [IX_dmMonitoringTrackedItems_LocationCd] on [dmMonitoringTrackedItems]; END */

CREATE NONCLUSTERED INDEX [IX_dmMonitoringTrackedItems_LocationCd] ON [dmMonitoringTrackedItems] (LocationCd ASC)

ALTER TABLE [dmMovementCodes]

DROP CONSTRAINT [PK_dmMovementCodes];

ALTER TABLE [dmMovementCodes] ADD CONSTRAINT [PK_dmMovementCodes] PRIMARY KEY CLUSTERED (MovementCodeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmMovementCodes_LocationCd') BEGIN  Drop INDEX [IX_dmMovementCodes_LocationCd] on [dmMovementCodes]; END */

CREATE NONCLUSTERED INDEX [IX_dmMovementCodes_LocationCd] ON [dmMovementCodes] (LocationCd ASC)

ALTER TABLE [dmNameTypes]

DROP CONSTRAINT [PK_dmNameTypes];

ALTER TABLE [dmNameTypes] ADD CONSTRAINT [PK_dmNameTypes] PRIMARY KEY CLUSTERED (NameTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmNameTypes_LocationCd') BEGIN  Drop INDEX [IX_dmNameTypes_LocationCd] on [dmNameTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmNameTypes_LocationCd] ON [dmNameTypes] (LocationCd ASC)

ALTER TABLE [dmNbmtgIdentifierTypes]

DROP CONSTRAINT [PK_dmNBMTGIdentifierTypes];

ALTER TABLE [dmNbmtgIdentifierTypes] ADD CONSTRAINT [PK_dmNBMTGIdentifierTypes] PRIMARY KEY CLUSTERED (NbmtgIdentifierTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmNbmtgIdentifierTypes_LocationCd') BEGIN  Drop INDEX [IX_dmNbmtgIdentifierTypes_LocationCd] on [dmNbmtgIdentifierTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmNbmtgIdentifierTypes_LocationCd] ON [dmNbmtgIdentifierTypes] (LocationCd ASC)

ALTER TABLE [dmNeedEndReasons]

DROP CONSTRAINT [PK_dmNeedEndReasons];

ALTER TABLE [dmNeedEndReasons] ADD CONSTRAINT [PK_dmNeedEndReasons] PRIMARY KEY CLUSTERED (NeedEndReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmNeedEndReasons_LocationCd') BEGIN  Drop INDEX [IX_dmNeedEndReasons_LocationCd] on [dmNeedEndReasons]; END */

CREATE NONCLUSTERED INDEX [IX_dmNeedEndReasons_LocationCd] ON [dmNeedEndReasons] (LocationCd ASC)

ALTER TABLE [dmNeedResponses]

DROP CONSTRAINT [PK_dmNeedResponses];

ALTER TABLE [dmNeedResponses] ADD CONSTRAINT [PK_dmNeedResponses] PRIMARY KEY CLUSTERED (NeedResponseId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmNeedResponses_LocationCd') BEGIN  Drop INDEX [IX_dmNeedResponses_LocationCd] on [dmNeedResponses]; END */

CREATE NONCLUSTERED INDEX [IX_dmNeedResponses_LocationCd] ON [dmNeedResponses] (LocationCd ASC)

ALTER TABLE [dmNeeds]

DROP CONSTRAINT [PK_dmNeeds];

ALTER TABLE [dmNeeds] ADD CONSTRAINT [PK_dmNeeds] PRIMARY KEY CLUSTERED (NeedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmNeeds_LocationCd') BEGIN  Drop INDEX [IX_dmNeeds_LocationCd] on [dmNeeds]; END */

CREATE NONCLUSTERED INDEX [IX_dmNeeds_LocationCd] ON [dmNeeds] (LocationCd ASC)

ALTER TABLE [dmNoteCategories]

DROP CONSTRAINT [PK_dmNoteCategories];

ALTER TABLE [dmNoteCategories] ADD CONSTRAINT [PK_dmNoteCategories] PRIMARY KEY CLUSTERED (NoteCategoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmNoteCategories_LocationCd') BEGIN  Drop INDEX [IX_dmNoteCategories_LocationCd] on [dmNoteCategories]; END */

CREATE NONCLUSTERED INDEX [IX_dmNoteCategories_LocationCd] ON [dmNoteCategories] (LocationCd ASC)

ALTER TABLE [dmNoticeDecisions]

DROP CONSTRAINT [PK_dmNoticeDecisions];

ALTER TABLE [dmNoticeDecisions] ADD CONSTRAINT [PK_dmNoticeDecisions] PRIMARY KEY CLUSTERED (NoticeDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmNoticeDecisions_LocationCd') BEGIN  Drop INDEX [IX_dmNoticeDecisions_LocationCd] on [dmNoticeDecisions]; END */

CREATE NONCLUSTERED INDEX [IX_dmNoticeDecisions_LocationCd] ON [dmNoticeDecisions] (LocationCd ASC)

ALTER TABLE [dmOffenderEventTypes]

DROP CONSTRAINT [PK_dmOffenderEventTypes];

ALTER TABLE [dmOffenderEventTypes] ADD CONSTRAINT [PK_dmOffenderEventTypes] PRIMARY KEY CLUSTERED (OffenderEventTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmOffenderEventTypes_LocationCd') BEGIN  Drop INDEX [IX_dmOffenderEventTypes_LocationCd] on [dmOffenderEventTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmOffenderEventTypes_LocationCd] ON [dmOffenderEventTypes] (LocationCd ASC)

ALTER TABLE [dmOffenderScheduledEventTypes]

DROP CONSTRAINT [PK_dmOffenderScheduledEventTypes];

ALTER TABLE [dmOffenderScheduledEventTypes] ADD CONSTRAINT [PK_dmOffenderScheduledEventTypes] PRIMARY KEY CLUSTERED (OffenderScheduledEventTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmOffenderScheduledEventTypes_LocationCd') BEGIN  Drop INDEX [IX_dmOffenderScheduledEventTypes_LocationCd] on [dmOffenderScheduledEventTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmOffenderScheduledEventTypes_LocationCd] ON [dmOffenderScheduledEventTypes] (LocationCd ASC)

ALTER TABLE [dmOffenderSpecialty]

DROP CONSTRAINT [PK_dmOffenderSpecialty];

ALTER TABLE [dmOffenderSpecialty] ADD CONSTRAINT [PK_dmOffenderSpecialty] PRIMARY KEY CLUSTERED (OffenderSpecialtyId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmOffenderSpecialty_LocationCd') BEGIN  Drop INDEX [IX_dmOffenderSpecialty_LocationCd] on [dmOffenderSpecialty]; END */

CREATE NONCLUSTERED INDEX [IX_dmOffenderSpecialty_LocationCd] ON [dmOffenderSpecialty] (LocationCd ASC)

ALTER TABLE [dmOffenderSpecialtyChangeReasons]

DROP CONSTRAINT [PK_dmOffenderSpecialtyChangeReasons];

ALTER TABLE [dmOffenderSpecialtyChangeReasons] ADD CONSTRAINT [PK_dmOffenderSpecialtyChangeReasons] PRIMARY KEY CLUSTERED (OffenderSpecialtyChangeReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmOffenderSpecialtyChangeReasons_LocationCd') BEGIN  Drop INDEX [IX_dmOffenderSpecialtyChangeReasons_LocationCd] on [dmOffenderSpecialtyChangeReasons]; END */

CREATE NONCLUSTERED INDEX [IX_dmOffenderSpecialtyChangeReasons_LocationCd] ON [dmOffenderSpecialtyChangeReasons] (LocationCd ASC)

ALTER TABLE [dmOffenseBehaviorCodes]

DROP CONSTRAINT [PK_dmOffenseBehaviorCodes];

ALTER TABLE [dmOffenseBehaviorCodes] ADD CONSTRAINT [PK_dmOffenseBehaviorCodes] PRIMARY KEY CLUSTERED (BehaviorCodeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmOffenseBehaviorCodes_LocationCd') BEGIN  Drop INDEX [IX_dmOffenseBehaviorCodes_LocationCd] on [dmOffenseBehaviorCodes]; END */

CREATE NONCLUSTERED INDEX [IX_dmOffenseBehaviorCodes_LocationCd] ON [dmOffenseBehaviorCodes] (LocationCd ASC)

ALTER TABLE [dmOffenseBehaviorVerifications]

DROP CONSTRAINT [PK_dmOffenseBehaviorVerifications];

ALTER TABLE [dmOffenseBehaviorVerifications] ADD CONSTRAINT [PK_dmOffenseBehaviorVerifications] PRIMARY KEY CLUSTERED (BehaviorVerificationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmOffenseBehaviorVerifications_LocationCd') BEGIN  Drop INDEX [IX_dmOffenseBehaviorVerifications_LocationCd] on [dmOffenseBehaviorVerifications]; END */

CREATE NONCLUSTERED INDEX [IX_dmOffenseBehaviorVerifications_LocationCd] ON [dmOffenseBehaviorVerifications] (LocationCd ASC)

ALTER TABLE [dmOffenseClasses]

DROP CONSTRAINT [PK_dmOffenseClasses];

ALTER TABLE [dmOffenseClasses] ADD CONSTRAINT [PK_dmOffenseClasses] PRIMARY KEY CLUSTERED (OffenseClassId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmOffenseClasses_LocationCd') BEGIN  Drop INDEX [IX_dmOffenseClasses_LocationCd] on [dmOffenseClasses]; END */

CREATE NONCLUSTERED INDEX [IX_dmOffenseClasses_LocationCd] ON [dmOffenseClasses] (LocationCd ASC)

ALTER TABLE [dmOffenseLevels]

DROP CONSTRAINT [PK_dmOffenseLevels];

ALTER TABLE [dmOffenseLevels] ADD CONSTRAINT [PK_dmOffenseLevels] PRIMARY KEY CLUSTERED (OffenseLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmOffenseLevels_LocationCd') BEGIN  Drop INDEX [IX_dmOffenseLevels_LocationCd] on [dmOffenseLevels]; END */

CREATE NONCLUSTERED INDEX [IX_dmOffenseLevels_LocationCd] ON [dmOffenseLevels] (LocationCd ASC)

ALTER TABLE [dmOffUnitLocations]

DROP CONSTRAINT [PK_dmOffUnitLocations];

ALTER TABLE [dmOffUnitLocations] ADD CONSTRAINT [PK_dmOffUnitLocations] PRIMARY KEY CLUSTERED (OffUnitLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmOffUnitLocations_LocationCd') BEGIN  Drop INDEX [IX_dmOffUnitLocations_LocationCd] on [dmOffUnitLocations]; END */

CREATE NONCLUSTERED INDEX [IX_dmOffUnitLocations_LocationCd] ON [dmOffUnitLocations] (LocationCd ASC)

ALTER TABLE [dmOptions]

DROP CONSTRAINT [PK_dmOptions];

ALTER TABLE [dmOptions] ADD CONSTRAINT [PK_dmOptions] PRIMARY KEY CLUSTERED (OptionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmOptions_LocationCd') BEGIN  Drop INDEX [IX_dmOptions_LocationCd] on [dmOptions]; END */

CREATE NONCLUSTERED INDEX [IX_dmOptions_LocationCd] ON [dmOptions] (LocationCd ASC)

ALTER TABLE [dmOSCRSupervisionStatuses]

DROP CONSTRAINT [PK_dmOSCRSupervisionStatuses];

ALTER TABLE [dmOSCRSupervisionStatuses] ADD CONSTRAINT [PK_dmOSCRSupervisionStatuses] PRIMARY KEY CLUSTERED (OSCRSupervisionStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmOSCRSupervisionStatuses_LocationCd') BEGIN  Drop INDEX [IX_dmOSCRSupervisionStatuses_LocationCd] on [dmOSCRSupervisionStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_dmOSCRSupervisionStatuses_LocationCd] ON [dmOSCRSupervisionStatuses] (LocationCd ASC)

ALTER TABLE [dmOverrideCategories]

DROP CONSTRAINT [PK_dmOverrideCategories];

ALTER TABLE [dmOverrideCategories] ADD CONSTRAINT [PK_dmOverrideCategories] PRIMARY KEY CLUSTERED (OverrideCategoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmOverrideCategories_LocationCd') BEGIN  Drop INDEX [IX_dmOverrideCategories_LocationCd] on [dmOverrideCategories]; END */

CREATE NONCLUSTERED INDEX [IX_dmOverrideCategories_LocationCd] ON [dmOverrideCategories] (LocationCd ASC)

ALTER TABLE [dmOwiContinuumResults]

DROP CONSTRAINT [PK_dmOWIContinuumResults];

ALTER TABLE [dmOwiContinuumResults] ADD CONSTRAINT [PK_dmOWIContinuumResults] PRIMARY KEY CLUSTERED (OwiContinuumResultId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmOwiContinuumResults_LocationCd') BEGIN  Drop INDEX [IX_dmOwiContinuumResults_LocationCd] on [dmOwiContinuumResults]; END */

CREATE NONCLUSTERED INDEX [IX_dmOwiContinuumResults_LocationCd] ON [dmOwiContinuumResults] (LocationCd ASC)

ALTER TABLE [dmParoleBoardDecisionTypes]

DROP CONSTRAINT [PK_dmParoleBoardDecisionTypes];

ALTER TABLE [dmParoleBoardDecisionTypes] ADD CONSTRAINT [PK_dmParoleBoardDecisionTypes] PRIMARY KEY CLUSTERED (ParoleBoardDecisionTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmParoleBoardDecisionTypes_LocationCd') BEGIN  Drop INDEX [IX_dmParoleBoardDecisionTypes_LocationCd] on [dmParoleBoardDecisionTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmParoleBoardDecisionTypes_LocationCd] ON [dmParoleBoardDecisionTypes] (LocationCd ASC)

ALTER TABLE [dmParoleBoardInterviewEventSpecialTypes]

DROP CONSTRAINT [PK_dmParoleBoardInterviewEventSpecialTypes];

ALTER TABLE [dmParoleBoardInterviewEventSpecialTypes] ADD CONSTRAINT [PK_dmParoleBoardInterviewEventSpecialTypes] PRIMARY KEY CLUSTERED (ParoleBoardInterviewEventSpecialTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmParoleBoardInterviewEventSpecialTypes_LocationCd') BEGIN  Drop INDEX [IX_dmParoleBoardInterviewEventSpecialTypes_LocationCd] on [dmParoleBoardInterviewEventSpecialTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmParoleBoardInterviewEventSpecialTypes_LocationCd] ON [dmParoleBoardInterviewEventSpecialTypes] (LocationCd ASC)

ALTER TABLE [dmParoleBoardLocations]

DROP CONSTRAINT [PK_dmParoleBoardLocations];

ALTER TABLE [dmParoleBoardLocations] ADD CONSTRAINT [PK_dmParoleBoardLocations] PRIMARY KEY CLUSTERED (ParoleBoardLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmParoleBoardLocations_LocationCd') BEGIN  Drop INDEX [IX_dmParoleBoardLocations_LocationCd] on [dmParoleBoardLocations]; END */

CREATE NONCLUSTERED INDEX [IX_dmParoleBoardLocations_LocationCd] ON [dmParoleBoardLocations] (LocationCd ASC)

ALTER TABLE [dmParoleConditionCategories]

DROP CONSTRAINT [PK_dmParoleConditionCategories];

ALTER TABLE [dmParoleConditionCategories] ADD CONSTRAINT [PK_dmParoleConditionCategories] PRIMARY KEY CLUSTERED (ParoleConditionCategoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmParoleConditionCategories_LocationCd') BEGIN  Drop INDEX [IX_dmParoleConditionCategories_LocationCd] on [dmParoleConditionCategories]; END */

CREATE NONCLUSTERED INDEX [IX_dmParoleConditionCategories_LocationCd] ON [dmParoleConditionCategories] (LocationCd ASC)

ALTER TABLE [dmParoleDispositionCategories]

DROP CONSTRAINT [PK_dmParoleDispositionCategories];

ALTER TABLE [dmParoleDispositionCategories] ADD CONSTRAINT [PK_dmParoleDispositionCategories] PRIMARY KEY CLUSTERED (ParoleDispositionCategoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmParoleDispositionCategories_LocationCd') BEGIN  Drop INDEX [IX_dmParoleDispositionCategories_LocationCd] on [dmParoleDispositionCategories]; END */

CREATE NONCLUSTERED INDEX [IX_dmParoleDispositionCategories_LocationCd] ON [dmParoleDispositionCategories] (LocationCd ASC)

ALTER TABLE [dmParoleViolationReviewRecommendations]

DROP CONSTRAINT [PK_dmParoleViolationReviewRecommendations];

ALTER TABLE [dmParoleViolationReviewRecommendations] ADD CONSTRAINT [PK_dmParoleViolationReviewRecommendations] PRIMARY KEY CLUSTERED (ParoleViolationReviewRecommendationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmParoleViolationReviewRecommendations_LocationCd') BEGIN  Drop INDEX [IX_dmParoleViolationReviewRecommendations_LocationCd] on [dmParoleViolationReviewRecommendations]; END */

CREATE NONCLUSTERED INDEX [IX_dmParoleViolationReviewRecommendations_LocationCd] ON [dmParoleViolationReviewRecommendations] (LocationCd ASC)

ALTER TABLE [dmParoleViolationReviewRequests]

DROP CONSTRAINT [PK_dmParoleViolationReviewRequests];

ALTER TABLE [dmParoleViolationReviewRequests] ADD CONSTRAINT [PK_dmParoleViolationReviewRequests] PRIMARY KEY CLUSTERED (ParoleViolationReviewRequestId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmParoleViolationReviewRequests_LocationCd') BEGIN  Drop INDEX [IX_dmParoleViolationReviewRequests_LocationCd] on [dmParoleViolationReviewRequests]; END */

CREATE NONCLUSTERED INDEX [IX_dmParoleViolationReviewRequests_LocationCd] ON [dmParoleViolationReviewRequests] (LocationCd ASC)

ALTER TABLE [dmPaymentIntervals]

DROP CONSTRAINT [PK_dmPaymentIntervals];

ALTER TABLE [dmPaymentIntervals] ADD CONSTRAINT [PK_dmPaymentIntervals] PRIMARY KEY CLUSTERED (PaymentIntervalId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPaymentIntervals_LocationCd') BEGIN  Drop INDEX [IX_dmPaymentIntervals_LocationCd] on [dmPaymentIntervals]; END */

CREATE NONCLUSTERED INDEX [IX_dmPaymentIntervals_LocationCd] ON [dmPaymentIntervals] (LocationCd ASC)

ALTER TABLE [dmPhoneTypes]

DROP CONSTRAINT [PK_dmPhoneTypes];

ALTER TABLE [dmPhoneTypes] ADD CONSTRAINT [PK_dmPhoneTypes] PRIMARY KEY CLUSTERED (PhoneTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPhoneTypes_LocationCd') BEGIN  Drop INDEX [IX_dmPhoneTypes_LocationCd] on [dmPhoneTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmPhoneTypes_LocationCd] ON [dmPhoneTypes] (LocationCd ASC)

ALTER TABLE [dmPleas]

DROP CONSTRAINT [PK_dmPleas];

ALTER TABLE [dmPleas] ADD CONSTRAINT [PK_dmPleas] PRIMARY KEY CLUSTERED (PleaId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPleas_LocationCd') BEGIN  Drop INDEX [IX_dmPleas_LocationCd] on [dmPleas]; END */

CREATE NONCLUSTERED INDEX [IX_dmPleas_LocationCd] ON [dmPleas] (LocationCd ASC)

ALTER TABLE [dmPreaAges]

DROP CONSTRAINT [PK_dmPreaAges];

ALTER TABLE [dmPreaAges] ADD CONSTRAINT [PK_dmPreaAges] PRIMARY KEY CLUSTERED (PreaAgeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPreaAges_LocationCd') BEGIN  Drop INDEX [IX_dmPreaAges_LocationCd] on [dmPreaAges]; END */

CREATE NONCLUSTERED INDEX [IX_dmPreaAges_LocationCd] ON [dmPreaAges] (LocationCd ASC)

ALTER TABLE [dmPreaConclusions]

DROP CONSTRAINT [PK_dmPreaConclusions];

ALTER TABLE [dmPreaConclusions] ADD CONSTRAINT [PK_dmPreaConclusions] PRIMARY KEY CLUSTERED (PreaConclusionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPreaConclusions_LocationCd') BEGIN  Drop INDEX [IX_dmPreaConclusions_LocationCd] on [dmPreaConclusions]; END */

CREATE NONCLUSTERED INDEX [IX_dmPreaConclusions_LocationCd] ON [dmPreaConclusions] (LocationCd ASC)

ALTER TABLE [dmPreaForceTypes]

DROP CONSTRAINT [PK_dmPreaForceTypes];

ALTER TABLE [dmPreaForceTypes] ADD CONSTRAINT [PK_dmPreaForceTypes] PRIMARY KEY CLUSTERED (PreaForceTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPreaForceTypes_LocationCd') BEGIN  Drop INDEX [IX_dmPreaForceTypes_LocationCd] on [dmPreaForceTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmPreaForceTypes_LocationCd] ON [dmPreaForceTypes] (LocationCd ASC)

ALTER TABLE [dmPreaIncidentNatures]

DROP CONSTRAINT [PK_dmPreaIncidentNatures];

ALTER TABLE [dmPreaIncidentNatures] ADD CONSTRAINT [PK_dmPreaIncidentNatures] PRIMARY KEY CLUSTERED (PreaIncidentNatureId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPreaIncidentNatures_LocationCd') BEGIN  Drop INDEX [IX_dmPreaIncidentNatures_LocationCd] on [dmPreaIncidentNatures]; END */

CREATE NONCLUSTERED INDEX [IX_dmPreaIncidentNatures_LocationCd] ON [dmPreaIncidentNatures] (LocationCd ASC)

ALTER TABLE [dmPreaInjuries]

DROP CONSTRAINT [PK_dmPreaInjuries];

ALTER TABLE [dmPreaInjuries] ADD CONSTRAINT [PK_dmPreaInjuries] PRIMARY KEY CLUSTERED (PreaInjuryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPreaInjuries_LocationCd') BEGIN  Drop INDEX [IX_dmPreaInjuries_LocationCd] on [dmPreaInjuries]; END */

CREATE NONCLUSTERED INDEX [IX_dmPreaInjuries_LocationCd] ON [dmPreaInjuries] (LocationCd ASC)

ALTER TABLE [dmPreaLocations]

DROP CONSTRAINT [PK_dmPreaLocations];

ALTER TABLE [dmPreaLocations] ADD CONSTRAINT [PK_dmPreaLocations] PRIMARY KEY CLUSTERED (PreaLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPreaLocations_LocationCd') BEGIN  Drop INDEX [IX_dmPreaLocations_LocationCd] on [dmPreaLocations]; END */

CREATE NONCLUSTERED INDEX [IX_dmPreaLocations_LocationCd] ON [dmPreaLocations] (LocationCd ASC)

ALTER TABLE [dmPreaPostReportHousingActions]

DROP CONSTRAINT [PK_dmPreaPostReportHousingActions];

ALTER TABLE [dmPreaPostReportHousingActions] ADD CONSTRAINT [PK_dmPreaPostReportHousingActions] PRIMARY KEY CLUSTERED (PreaPostReportHousingActionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPreaPostReportHousingActions_LocationCd') BEGIN  Drop INDEX [IX_dmPreaPostReportHousingActions_LocationCd] on [dmPreaPostReportHousingActions]; END */

CREATE NONCLUSTERED INDEX [IX_dmPreaPostReportHousingActions_LocationCd] ON [dmPreaPostReportHousingActions] (LocationCd ASC)

ALTER TABLE [dmPreaPostReportMedicalActions]

DROP CONSTRAINT [PK_dmPreaPostReportMedicalActions];

ALTER TABLE [dmPreaPostReportMedicalActions] ADD CONSTRAINT [PK_dmPreaPostReportMedicalActions] PRIMARY KEY CLUSTERED (PreaPostReportMedicalActionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPreaPostReportMedicalActions_LocationCd') BEGIN  Drop INDEX [IX_dmPreaPostReportMedicalActions_LocationCd] on [dmPreaPostReportMedicalActions]; END */

CREATE NONCLUSTERED INDEX [IX_dmPreaPostReportMedicalActions_LocationCd] ON [dmPreaPostReportMedicalActions] (LocationCd ASC)

ALTER TABLE [dmPreaRaces]

DROP CONSTRAINT [PK_dmPreaRaces];

ALTER TABLE [dmPreaRaces] ADD CONSTRAINT [PK_dmPreaRaces] PRIMARY KEY CLUSTERED (PreaRaceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPreaRaces_LocationCd') BEGIN  Drop INDEX [IX_dmPreaRaces_LocationCd] on [dmPreaRaces]; END */

CREATE NONCLUSTERED INDEX [IX_dmPreaRaces_LocationCd] ON [dmPreaRaces] (LocationCd ASC)

ALTER TABLE [dmPreaReporters]

DROP CONSTRAINT [PK_dmPreaReporters];

ALTER TABLE [dmPreaReporters] ADD CONSTRAINT [PK_dmPreaReporters] PRIMARY KEY CLUSTERED (PreaReporterId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPreaReporters_LocationCd') BEGIN  Drop INDEX [IX_dmPreaReporters_LocationCd] on [dmPreaReporters]; END */

CREATE NONCLUSTERED INDEX [IX_dmPreaReporters_LocationCd] ON [dmPreaReporters] (LocationCd ASC)

ALTER TABLE [dmPreaSanctions]

DROP CONSTRAINT [PK_dmPreaSanctions];

ALTER TABLE [dmPreaSanctions] ADD CONSTRAINT [PK_dmPreaSanctions] PRIMARY KEY CLUSTERED (PreaSanctionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPreaSanctions_LocationCd') BEGIN  Drop INDEX [IX_dmPreaSanctions_LocationCd] on [dmPreaSanctions]; END */

CREATE NONCLUSTERED INDEX [IX_dmPreaSanctions_LocationCd] ON [dmPreaSanctions] (LocationCd ASC)

ALTER TABLE [dmPreaSexualViolenceTypes]

DROP CONSTRAINT [PK_dmPreaSexualViolenceTypes];

ALTER TABLE [dmPreaSexualViolenceTypes] ADD CONSTRAINT [PK_dmPreaSexualViolenceTypes] PRIMARY KEY CLUSTERED (PreaSexualViolenceTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPreaSexualViolenceTypes_LocationCd') BEGIN  Drop INDEX [IX_dmPreaSexualViolenceTypes_LocationCd] on [dmPreaSexualViolenceTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmPreaSexualViolenceTypes_LocationCd] ON [dmPreaSexualViolenceTypes] (LocationCd ASC)

ALTER TABLE [dmPreaTimes]

DROP CONSTRAINT [PK_dmPreaTimes];

ALTER TABLE [dmPreaTimes] ADD CONSTRAINT [PK_dmPreaTimes] PRIMARY KEY CLUSTERED (PreaTimeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPreaTimes_LocationCd') BEGIN  Drop INDEX [IX_dmPreaTimes_LocationCd] on [dmPreaTimes]; END */

CREATE NONCLUSTERED INDEX [IX_dmPreaTimes_LocationCd] ON [dmPreaTimes] (LocationCd ASC)

ALTER TABLE [dmPreferences]

DROP CONSTRAINT [PK_dmPreferences];

ALTER TABLE [dmPreferences] ADD CONSTRAINT [PK_dmPreferences] PRIMARY KEY CLUSTERED (PreferenceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPreferences_LocationCd') BEGIN  Drop INDEX [IX_dmPreferences_LocationCd] on [dmPreferences]; END */

CREATE NONCLUSTERED INDEX [IX_dmPreferences_LocationCd] ON [dmPreferences] (LocationCd ASC)

ALTER TABLE [dmPretrialDecisions]

DROP CONSTRAINT [PK_dmPretrialDecisions];

ALTER TABLE [dmPretrialDecisions] ADD CONSTRAINT [PK_dmPretrialDecisions] PRIMARY KEY CLUSTERED (PretrialDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPretrialDecisions_LocationCd') BEGIN  Drop INDEX [IX_dmPretrialDecisions_LocationCd] on [dmPretrialDecisions]; END */

CREATE NONCLUSTERED INDEX [IX_dmPretrialDecisions_LocationCd] ON [dmPretrialDecisions] (LocationCd ASC)

ALTER TABLE [dmPretrialDecisionTypes]

DROP CONSTRAINT [PK_dmPreTrialDecisionTypes];

ALTER TABLE [dmPretrialDecisionTypes] ADD CONSTRAINT [PK_dmPreTrialDecisionTypes] PRIMARY KEY CLUSTERED (PretrialDecisionTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPretrialDecisionTypes_LocationCd') BEGIN  Drop INDEX [IX_dmPretrialDecisionTypes_LocationCd] on [dmPretrialDecisionTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmPretrialDecisionTypes_LocationCd] ON [dmPretrialDecisionTypes] (LocationCd ASC)

ALTER TABLE [dmPretrialTypes]

DROP CONSTRAINT [PK_dmPreTrialTypes];

ALTER TABLE [dmPretrialTypes] ADD CONSTRAINT [PK_dmPreTrialTypes] PRIMARY KEY CLUSTERED (PretrialTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPretrialTypes_LocationCd') BEGIN  Drop INDEX [IX_dmPretrialTypes_LocationCd] on [dmPretrialTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmPretrialTypes_LocationCd] ON [dmPretrialTypes] (LocationCd ASC)

ALTER TABLE [dmPrimaryLanguages]

DROP CONSTRAINT [PK_dmPrimaryLanguages];

ALTER TABLE [dmPrimaryLanguages] ADD CONSTRAINT [PK_dmPrimaryLanguages] PRIMARY KEY CLUSTERED (PrimaryLanguageId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPrimaryLanguages_LocationCd') BEGIN  Drop INDEX [IX_dmPrimaryLanguages_LocationCd] on [dmPrimaryLanguages]; END */

CREATE NONCLUSTERED INDEX [IX_dmPrimaryLanguages_LocationCd] ON [dmPrimaryLanguages] (LocationCd ASC)

ALTER TABLE [dmProcesses]

DROP CONSTRAINT [PK_dmProcesses];

ALTER TABLE [dmProcesses] ADD CONSTRAINT [PK_dmProcesses] PRIMARY KEY CLUSTERED (ProcessId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmProcesses_LocationCd') BEGIN  Drop INDEX [IX_dmProcesses_LocationCd] on [dmProcesses]; END */

CREATE NONCLUSTERED INDEX [IX_dmProcesses_LocationCd] ON [dmProcesses] (LocationCd ASC)

ALTER TABLE [dmProcessTaskStaffGroups]

DROP CONSTRAINT [PK_dmProcessTaskStaffGroups];

ALTER TABLE [dmProcessTaskStaffGroups] ADD CONSTRAINT [PK_dmProcessTaskStaffGroups] PRIMARY KEY CLUSTERED (ProcessTaskStaffGroupId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmProcessTaskStaffGroups_LocationCd') BEGIN  Drop INDEX [IX_dmProcessTaskStaffGroups_LocationCd] on [dmProcessTaskStaffGroups]; END */

CREATE NONCLUSTERED INDEX [IX_dmProcessTaskStaffGroups_LocationCd] ON [dmProcessTaskStaffGroups] (LocationCd ASC)

ALTER TABLE [dmPropertyGroupTypes]

DROP CONSTRAINT [PK_dmPropertyGroupTypes];

ALTER TABLE [dmPropertyGroupTypes] ADD CONSTRAINT [PK_dmPropertyGroupTypes] PRIMARY KEY CLUSTERED (PropertyGroupTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPropertyGroupTypes_LocationCd') BEGIN  Drop INDEX [IX_dmPropertyGroupTypes_LocationCd] on [dmPropertyGroupTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmPropertyGroupTypes_LocationCd] ON [dmPropertyGroupTypes] (LocationCd ASC)

ALTER TABLE [dmPropertyItemCategories]

DROP CONSTRAINT [PK_dmPropertyCategories];

ALTER TABLE [dmPropertyItemCategories] ADD CONSTRAINT [PK_dmPropertyCategories] PRIMARY KEY CLUSTERED (PropertyItemCategoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPropertyItemCategories_LocationCd') BEGIN  Drop INDEX [IX_dmPropertyItemCategories_LocationCd] on [dmPropertyItemCategories]; END */

CREATE NONCLUSTERED INDEX [IX_dmPropertyItemCategories_LocationCd] ON [dmPropertyItemCategories] (LocationCd ASC)

ALTER TABLE [dmPropertyItemFlDonationLocations]

DROP CONSTRAINT [PK_dmPropertyItemFlDonationLocations];

ALTER TABLE [dmPropertyItemFlDonationLocations] ADD CONSTRAINT [PK_dmPropertyItemFlDonationLocations] PRIMARY KEY CLUSTERED (PropertyItemFlDonationLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPropertyItemFlDonationLocations_LocationCd') BEGIN  Drop INDEX [IX_dmPropertyItemFlDonationLocations_LocationCd] on [dmPropertyItemFlDonationLocations]; END */

CREATE NONCLUSTERED INDEX [IX_dmPropertyItemFlDonationLocations_LocationCd] ON [dmPropertyItemFlDonationLocations] (LocationCd ASC)

ALTER TABLE [dmPropertyItems]

DROP CONSTRAINT [PK_dmPropertyItems];

ALTER TABLE [dmPropertyItems] ADD CONSTRAINT [PK_dmPropertyItems] PRIMARY KEY CLUSTERED (PropertyItemId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPropertyItems_LocationCd') BEGIN  Drop INDEX [IX_dmPropertyItems_LocationCd] on [dmPropertyItems]; END */

CREATE NONCLUSTERED INDEX [IX_dmPropertyItems_LocationCd] ON [dmPropertyItems] (LocationCd ASC)

ALTER TABLE [dmPropertyItemSeizedReasons]

DROP CONSTRAINT [PK_dmPropertyItemConfiscatedReasons];

ALTER TABLE [dmPropertyItemSeizedReasons] ADD CONSTRAINT [PK_dmPropertyItemConfiscatedReasons] PRIMARY KEY CLUSTERED (PropertyItemSeizedReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPropertyItemSeizedReasons_LocationCd') BEGIN  Drop INDEX [IX_dmPropertyItemSeizedReasons_LocationCd] on [dmPropertyItemSeizedReasons]; END */

CREATE NONCLUSTERED INDEX [IX_dmPropertyItemSeizedReasons_LocationCd] ON [dmPropertyItemSeizedReasons] (LocationCd ASC)

ALTER TABLE [dmPropertyItemStatuses]

DROP CONSTRAINT [PK_dmPropertyItemStatuses];

ALTER TABLE [dmPropertyItemStatuses] ADD CONSTRAINT [PK_dmPropertyItemStatuses] PRIMARY KEY CLUSTERED (PropertyItemStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPropertyItemStatuses_LocationCd') BEGIN  Drop INDEX [IX_dmPropertyItemStatuses_LocationCd] on [dmPropertyItemStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_dmPropertyItemStatuses_LocationCd] ON [dmPropertyItemStatuses] (LocationCd ASC)

ALTER TABLE [dmPropertyItemStorageReasons]

DROP CONSTRAINT [PK_dmPropertyItemStorageReasons];

ALTER TABLE [dmPropertyItemStorageReasons] ADD CONSTRAINT [PK_dmPropertyItemStorageReasons] PRIMARY KEY CLUSTERED (PropertyItemStorageReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPropertyItemStorageReasons_LocationCd') BEGIN  Drop INDEX [IX_dmPropertyItemStorageReasons_LocationCd] on [dmPropertyItemStorageReasons]; END */

CREATE NONCLUSTERED INDEX [IX_dmPropertyItemStorageReasons_LocationCd] ON [dmPropertyItemStorageReasons] (LocationCd ASC)

ALTER TABLE [dmPropertySets]

DROP CONSTRAINT [PK_dmPropertySets];

ALTER TABLE [dmPropertySets] ADD CONSTRAINT [PK_dmPropertySets] PRIMARY KEY CLUSTERED (PropertySetId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPropertySets_LocationCd') BEGIN  Drop INDEX [IX_dmPropertySets_LocationCd] on [dmPropertySets]; END */

CREATE NONCLUSTERED INDEX [IX_dmPropertySets_LocationCd] ON [dmPropertySets] (LocationCd ASC)

ALTER TABLE [dmPropertyTypes]

DROP CONSTRAINT [PK_dmPropertyTypes];

ALTER TABLE [dmPropertyTypes] ADD CONSTRAINT [PK_dmPropertyTypes] PRIMARY KEY CLUSTERED (PropertyTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPropertyTypes_LocationCd') BEGIN  Drop INDEX [IX_dmPropertyTypes_LocationCd] on [dmPropertyTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmPropertyTypes_LocationCd] ON [dmPropertyTypes] (LocationCd ASC)

ALTER TABLE [dmPropertyVendorInformation]

DROP CONSTRAINT [PK_dmPropertyVendorInformation];

ALTER TABLE [dmPropertyVendorInformation] ADD CONSTRAINT [PK_dmPropertyVendorInformation] PRIMARY KEY CLUSTERED (PropertyVendorInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPropertyVendorInformation_LocationCd') BEGIN  Drop INDEX [IX_dmPropertyVendorInformation_LocationCd] on [dmPropertyVendorInformation]; END */

CREATE NONCLUSTERED INDEX [IX_dmPropertyVendorInformation_LocationCd] ON [dmPropertyVendorInformation] (LocationCd ASC)

ALTER TABLE [dmPsychDiagnosticAxisTypes]

DROP CONSTRAINT [PK_dmPsychDiagnosticAxisTypes];

ALTER TABLE [dmPsychDiagnosticAxisTypes] ADD CONSTRAINT [PK_dmPsychDiagnosticAxisTypes] PRIMARY KEY CLUSTERED (PsychDiagnosticAxisTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmPsychDiagnosticAxisTypes_LocationCd') BEGIN  Drop INDEX [IX_dmPsychDiagnosticAxisTypes_LocationCd] on [dmPsychDiagnosticAxisTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmPsychDiagnosticAxisTypes_LocationCd] ON [dmPsychDiagnosticAxisTypes] (LocationCd ASC)

ALTER TABLE [dmRaces]

DROP CONSTRAINT [PK_dmRaces];

ALTER TABLE [dmRaces] ADD CONSTRAINT [PK_dmRaces] PRIMARY KEY CLUSTERED (RaceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmRaces_LocationCd') BEGIN  Drop INDEX [IX_dmRaces_LocationCd] on [dmRaces]; END */

CREATE NONCLUSTERED INDEX [IX_dmRaces_LocationCd] ON [dmRaces] (LocationCd ASC)

ALTER TABLE [dmReadingLevels]

DROP CONSTRAINT [PK_dmReadingLevels];

ALTER TABLE [dmReadingLevels] ADD CONSTRAINT [PK_dmReadingLevels] PRIMARY KEY CLUSTERED (ReadingLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmReadingLevels_LocationCd') BEGIN  Drop INDEX [IX_dmReadingLevels_LocationCd] on [dmReadingLevels]; END */

CREATE NONCLUSTERED INDEX [IX_dmReadingLevels_LocationCd] ON [dmReadingLevels] (LocationCd ASC)

ALTER TABLE [dmReentryCasePlanAuditors]

DROP CONSTRAINT [PK_dmReentryCasePlanAuditors];

ALTER TABLE [dmReentryCasePlanAuditors] ADD CONSTRAINT [PK_dmReentryCasePlanAuditors] PRIMARY KEY CLUSTERED (ReentryCasePlanAuditorId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmReentryCasePlanAuditors_LocationCd') BEGIN  Drop INDEX [IX_dmReentryCasePlanAuditors_LocationCd] on [dmReentryCasePlanAuditors]; END */

CREATE NONCLUSTERED INDEX [IX_dmReentryCasePlanAuditors_LocationCd] ON [dmReentryCasePlanAuditors] (LocationCd ASC)

ALTER TABLE [dmRegions]

DROP CONSTRAINT [PK_dmRegions];

ALTER TABLE [dmRegions] ADD CONSTRAINT [PK_dmRegions] PRIMARY KEY CLUSTERED (RegionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmRegions_LocationCd') BEGIN  Drop INDEX [IX_dmRegions_LocationCd] on [dmRegions]; END */

CREATE NONCLUSTERED INDEX [IX_dmRegions_LocationCd] ON [dmRegions] (LocationCd ASC)

ALTER TABLE [dmRelationships]

DROP CONSTRAINT [PK_dmRelationships];

ALTER TABLE [dmRelationships] ADD CONSTRAINT [PK_dmRelationships] PRIMARY KEY CLUSTERED (RelationshipId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmRelationships_LocationCd') BEGIN  Drop INDEX [IX_dmRelationships_LocationCd] on [dmRelationships]; END */

CREATE NONCLUSTERED INDEX [IX_dmRelationships_LocationCd] ON [dmRelationships] (LocationCd ASC)

ALTER TABLE [dmReleaseNotificationTypes]

DROP CONSTRAINT [PK_dmReleaseNotificationTypes];

ALTER TABLE [dmReleaseNotificationTypes] ADD CONSTRAINT [PK_dmReleaseNotificationTypes] PRIMARY KEY CLUSTERED (ReleaseNotificationTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmReleaseNotificationTypes_LocationCd') BEGIN  Drop INDEX [IX_dmReleaseNotificationTypes_LocationCd] on [dmReleaseNotificationTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmReleaseNotificationTypes_LocationCd] ON [dmReleaseNotificationTypes] (LocationCd ASC)

ALTER TABLE [dmReligiousIdentifiers]

DROP CONSTRAINT [PK_dmReligiousIdentifiers];

ALTER TABLE [dmReligiousIdentifiers] ADD CONSTRAINT [PK_dmReligiousIdentifiers] PRIMARY KEY CLUSTERED (ReligiousIdentifierId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmReligiousIdentifiers_LocationCd') BEGIN  Drop INDEX [IX_dmReligiousIdentifiers_LocationCd] on [dmReligiousIdentifiers]; END */

CREATE NONCLUSTERED INDEX [IX_dmReligiousIdentifiers_LocationCd] ON [dmReligiousIdentifiers] (LocationCd ASC)

ALTER TABLE [dmResidentialSanctions]

DROP CONSTRAINT [PK_dmResidentialSanctions];

ALTER TABLE [dmResidentialSanctions] ADD CONSTRAINT [PK_dmResidentialSanctions] PRIMARY KEY CLUSTERED (ResidentialSanctionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmResidentialSanctions_LocationCd') BEGIN  Drop INDEX [IX_dmResidentialSanctions_LocationCd] on [dmResidentialSanctions]; END */

CREATE NONCLUSTERED INDEX [IX_dmResidentialSanctions_LocationCd] ON [dmResidentialSanctions] (LocationCd ASC)

ALTER TABLE [dmRestitutionPaymentTypes]

DROP CONSTRAINT [PK_dmRestitutionPaymentTypes];

ALTER TABLE [dmRestitutionPaymentTypes] ADD CONSTRAINT [PK_dmRestitutionPaymentTypes] PRIMARY KEY CLUSTERED (RestitutionPaymentTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmRestitutionPaymentTypes_LocationCd') BEGIN  Drop INDEX [IX_dmRestitutionPaymentTypes_LocationCd] on [dmRestitutionPaymentTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmRestitutionPaymentTypes_LocationCd] ON [dmRestitutionPaymentTypes] (LocationCd ASC)

ALTER TABLE [dmRiskAssessmentOverrideReasons]

DROP CONSTRAINT [PK_dmRiskAssessmentOverrideReasons];

ALTER TABLE [dmRiskAssessmentOverrideReasons] ADD CONSTRAINT [PK_dmRiskAssessmentOverrideReasons] PRIMARY KEY CLUSTERED (RiskAssessmentOverrideReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmRiskAssessmentOverrideReasons_LocationCd') BEGIN  Drop INDEX [IX_dmRiskAssessmentOverrideReasons_LocationCd] on [dmRiskAssessmentOverrideReasons]; END */

CREATE NONCLUSTERED INDEX [IX_dmRiskAssessmentOverrideReasons_LocationCd] ON [dmRiskAssessmentOverrideReasons] (LocationCd ASC)

ALTER TABLE [dmRoundLocations]

DROP CONSTRAINT [PK_dmRoundLocations];

ALTER TABLE [dmRoundLocations] ADD CONSTRAINT [PK_dmRoundLocations] PRIMARY KEY CLUSTERED (RoundLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmRoundLocations_LocationCd') BEGIN  Drop INDEX [IX_dmRoundLocations_LocationCd] on [dmRoundLocations]; END */

CREATE NONCLUSTERED INDEX [IX_dmRoundLocations_LocationCd] ON [dmRoundLocations] (LocationCd ASC)

ALTER TABLE [dmRuleCategories]

DROP CONSTRAINT [PK_dmRuleCategories];

ALTER TABLE [dmRuleCategories] ADD CONSTRAINT [PK_dmRuleCategories] PRIMARY KEY CLUSTERED (RuleCategoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmRuleCategories_LocationCd') BEGIN  Drop INDEX [IX_dmRuleCategories_LocationCd] on [dmRuleCategories]; END */

CREATE NONCLUSTERED INDEX [IX_dmRuleCategories_LocationCd] ON [dmRuleCategories] (LocationCd ASC)

ALTER TABLE [dmRuleFilters]

DROP CONSTRAINT [PK_dmRuleFilters];

ALTER TABLE [dmRuleFilters] ADD CONSTRAINT [PK_dmRuleFilters] PRIMARY KEY CLUSTERED (RuleFilterId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmRuleFilters_LocationCd') BEGIN  Drop INDEX [IX_dmRuleFilters_LocationCd] on [dmRuleFilters]; END */

CREATE NONCLUSTERED INDEX [IX_dmRuleFilters_LocationCd] ON [dmRuleFilters] (LocationCd ASC)

ALTER TABLE [dmRulePackageOrigins]

DROP CONSTRAINT [PK_dmRulePackageOrigins];

ALTER TABLE [dmRulePackageOrigins] ADD CONSTRAINT [PK_dmRulePackageOrigins] PRIMARY KEY CLUSTERED (RulePackageOriginId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmRulePackageOrigins_LocationCd') BEGIN  Drop INDEX [IX_dmRulePackageOrigins_LocationCd] on [dmRulePackageOrigins]; END */

CREATE NONCLUSTERED INDEX [IX_dmRulePackageOrigins_LocationCd] ON [dmRulePackageOrigins] (LocationCd ASC)

ALTER TABLE [dmRulePackages]

DROP CONSTRAINT [PK_dmRulePackages];

ALTER TABLE [dmRulePackages] ADD CONSTRAINT [PK_dmRulePackages] PRIMARY KEY CLUSTERED (RulePackageId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmRulePackages_LocationCd') BEGIN  Drop INDEX [IX_dmRulePackages_LocationCd] on [dmRulePackages]; END */

CREATE NONCLUSTERED INDEX [IX_dmRulePackages_LocationCd] ON [dmRulePackages] (LocationCd ASC)

ALTER TABLE [dmRules]

DROP CONSTRAINT [PK_dmRules];

ALTER TABLE [dmRules] ADD CONSTRAINT [PK_dmRules] PRIMARY KEY CLUSTERED (RuleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmRules_LocationCd') BEGIN  Drop INDEX [IX_dmRules_LocationCd] on [dmRules]; END */

CREATE NONCLUSTERED INDEX [IX_dmRules_LocationCd] ON [dmRules] (LocationCd ASC)

ALTER TABLE [dmRuleViolationBehaviorCodeCategories]

DROP CONSTRAINT [PK_dmRuleViolationBehaviorCodeCategories];

ALTER TABLE [dmRuleViolationBehaviorCodeCategories] ADD CONSTRAINT [PK_dmRuleViolationBehaviorCodeCategories] PRIMARY KEY CLUSTERED (RuleViolationBehaviorCodeCategoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmRuleViolationBehaviorCodeCategories_LocationCd') BEGIN  Drop INDEX [IX_dmRuleViolationBehaviorCodeCategories_LocationCd] on [dmRuleViolationBehaviorCodeCategories]; END */

CREATE NONCLUSTERED INDEX [IX_dmRuleViolationBehaviorCodeCategories_LocationCd] ON [dmRuleViolationBehaviorCodeCategories] (LocationCd ASC)

ALTER TABLE [dmRuleViolationBehaviorCodes]

DROP CONSTRAINT [PK_dmRuleViolationBehaviorCodes];

ALTER TABLE [dmRuleViolationBehaviorCodes] ADD CONSTRAINT [PK_dmRuleViolationBehaviorCodes] PRIMARY KEY CLUSTERED (RuleViolationBehaviorCodeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmRuleViolationBehaviorCodes_LocationCd') BEGIN  Drop INDEX [IX_dmRuleViolationBehaviorCodes_LocationCd] on [dmRuleViolationBehaviorCodes]; END */

CREATE NONCLUSTERED INDEX [IX_dmRuleViolationBehaviorCodes_LocationCd] ON [dmRuleViolationBehaviorCodes] (LocationCd ASC)

ALTER TABLE [dmSanctions]

DROP CONSTRAINT [PK_dmSanctions];

ALTER TABLE [dmSanctions] ADD CONSTRAINT [PK_dmSanctions] PRIMARY KEY CLUSTERED (SanctionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmSanctions_LocationCd') BEGIN  Drop INDEX [IX_dmSanctions_LocationCd] on [dmSanctions]; END */

CREATE NONCLUSTERED INDEX [IX_dmSanctions_LocationCd] ON [dmSanctions] (LocationCd ASC)

ALTER TABLE [dmSassiRecommendations]

DROP CONSTRAINT [PK_dmSASSIRecommendations];

ALTER TABLE [dmSassiRecommendations] ADD CONSTRAINT [PK_dmSASSIRecommendations] PRIMARY KEY CLUSTERED (SassiRecommendationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmSassiRecommendations_LocationCd') BEGIN  Drop INDEX [IX_dmSassiRecommendations_LocationCd] on [dmSassiRecommendations]; END */

CREATE NONCLUSTERED INDEX [IX_dmSassiRecommendations_LocationCd] ON [dmSassiRecommendations] (LocationCd ASC)

ALTER TABLE [dmSecurityStandardNonToxinTypes]

DROP CONSTRAINT [PK_dmSecurityStandardNonToxinTypes];

ALTER TABLE [dmSecurityStandardNonToxinTypes] ADD CONSTRAINT [PK_dmSecurityStandardNonToxinTypes] PRIMARY KEY CLUSTERED (SecurityStandardNonToxinTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmSecurityStandardNonToxinTypes_LocationCd') BEGIN  Drop INDEX [IX_dmSecurityStandardNonToxinTypes_LocationCd] on [dmSecurityStandardNonToxinTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmSecurityStandardNonToxinTypes_LocationCd] ON [dmSecurityStandardNonToxinTypes] (LocationCd ASC)

ALTER TABLE [dmSecurityStandardReasons]

DROP CONSTRAINT [PK_dmSecurityStandardReasons];

ALTER TABLE [dmSecurityStandardReasons] ADD CONSTRAINT [PK_dmSecurityStandardReasons] PRIMARY KEY CLUSTERED (SecurityStandardReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmSecurityStandardReasons_LocationCd') BEGIN  Drop INDEX [IX_dmSecurityStandardReasons_LocationCd] on [dmSecurityStandardReasons]; END */

CREATE NONCLUSTERED INDEX [IX_dmSecurityStandardReasons_LocationCd] ON [dmSecurityStandardReasons] (LocationCd ASC)

ALTER TABLE [dmSecurityStandardSubstancePanels]

DROP CONSTRAINT [PK_dmSecurityStandardSubstancePanels];

ALTER TABLE [dmSecurityStandardSubstancePanels] ADD CONSTRAINT [PK_dmSecurityStandardSubstancePanels] PRIMARY KEY CLUSTERED (SecurityStandardSubstancePanelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmSecurityStandardSubstancePanels_LocationCd') BEGIN  Drop INDEX [IX_dmSecurityStandardSubstancePanels_LocationCd] on [dmSecurityStandardSubstancePanels]; END */

CREATE NONCLUSTERED INDEX [IX_dmSecurityStandardSubstancePanels_LocationCd] ON [dmSecurityStandardSubstancePanels] (LocationCd ASC)

ALTER TABLE [dmSecurityStandardSubstances]

DROP CONSTRAINT [PK_dmSecurityStandardSubstances];

ALTER TABLE [dmSecurityStandardSubstances] ADD CONSTRAINT [PK_dmSecurityStandardSubstances] PRIMARY KEY CLUSTERED (SecurityStandardSubstanceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmSecurityStandardSubstances_LocationCd') BEGIN  Drop INDEX [IX_dmSecurityStandardSubstances_LocationCd] on [dmSecurityStandardSubstances]; END */

CREATE NONCLUSTERED INDEX [IX_dmSecurityStandardSubstances_LocationCd] ON [dmSecurityStandardSubstances] (LocationCd ASC)

ALTER TABLE [dmSecurityStandardToxinTypes]

DROP CONSTRAINT [PK_dmSecurityStandardToxinTypes];

ALTER TABLE [dmSecurityStandardToxinTypes] ADD CONSTRAINT [PK_dmSecurityStandardToxinTypes] PRIMARY KEY CLUSTERED (SecurityStandardToxinTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmSecurityStandardToxinTypes_LocationCd') BEGIN  Drop INDEX [IX_dmSecurityStandardToxinTypes_LocationCd] on [dmSecurityStandardToxinTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmSecurityStandardToxinTypes_LocationCd] ON [dmSecurityStandardToxinTypes] (LocationCd ASC)

ALTER TABLE [dmSecurityStandardToxinUaSamples]

DROP CONSTRAINT [PK_dmSecurityStandardToxinUaSamples];

ALTER TABLE [dmSecurityStandardToxinUaSamples] ADD CONSTRAINT [PK_dmSecurityStandardToxinUaSamples] PRIMARY KEY CLUSTERED (SecurityStandardToxinUaSampleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmSecurityStandardToxinUaSamples_LocationCd') BEGIN  Drop INDEX [IX_dmSecurityStandardToxinUaSamples_LocationCd] on [dmSecurityStandardToxinUaSamples]; END */

CREATE NONCLUSTERED INDEX [IX_dmSecurityStandardToxinUaSamples_LocationCd] ON [dmSecurityStandardToxinUaSamples] (LocationCd ASC)

ALTER TABLE [dmSecurityStandardTypes_OLD]

DROP CONSTRAINT [PK_dmSecurityStandardTypes];

ALTER TABLE [dmSecurityStandardTypes_OLD] ADD CONSTRAINT [PK_dmSecurityStandardTypes] PRIMARY KEY CLUSTERED (SecurityStandardTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmSecurityStandardTypes_OLD_LocationCd') BEGIN  Drop INDEX [IX_dmSecurityStandardTypes_OLD_LocationCd] on [dmSecurityStandardTypes_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_dmSecurityStandardTypes_OLD_LocationCd] ON [dmSecurityStandardTypes_OLD] (LocationCd ASC)

ALTER TABLE [dmSecurityStandardUnsatisfactoryReasons]

DROP CONSTRAINT [PK_dmSecurityStandardContraband];

ALTER TABLE [dmSecurityStandardUnsatisfactoryReasons] ADD CONSTRAINT [PK_dmSecurityStandardContraband] PRIMARY KEY CLUSTERED (SecurityStandardUnsatisfactoryReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmSecurityStandardUnsatisfactoryReasons_LocationCd') BEGIN  Drop INDEX [IX_dmSecurityStandardUnsatisfactoryReasons_LocationCd] on [dmSecurityStandardUnsatisfactoryReasons]; END */

CREATE NONCLUSTERED INDEX [IX_dmSecurityStandardUnsatisfactoryReasons_LocationCd] ON [dmSecurityStandardUnsatisfactoryReasons] (LocationCd ASC)

ALTER TABLE [dmSentenceDispositionStatus]

DROP CONSTRAINT [PK_dmSentenceDispositionStatus];

ALTER TABLE [dmSentenceDispositionStatus] ADD CONSTRAINT [PK_dmSentenceDispositionStatus] PRIMARY KEY CLUSTERED (DispositionStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmSentenceDispositionStatus_LocationCd') BEGIN  Drop INDEX [IX_dmSentenceDispositionStatus_LocationCd] on [dmSentenceDispositionStatus]; END */

CREATE NONCLUSTERED INDEX [IX_dmSentenceDispositionStatus_LocationCd] ON [dmSentenceDispositionStatus] (LocationCd ASC)

ALTER TABLE [dmSentencePenaltyModifiers]

DROP CONSTRAINT [PK_dmSentencePenaltyModifiers];

ALTER TABLE [dmSentencePenaltyModifiers] ADD CONSTRAINT [PK_dmSentencePenaltyModifiers] PRIMARY KEY CLUSTERED (PenaltyModifierId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmSentencePenaltyModifiers_LocationCd') BEGIN  Drop INDEX [IX_dmSentencePenaltyModifiers_LocationCd] on [dmSentencePenaltyModifiers]; END */

CREATE NONCLUSTERED INDEX [IX_dmSentencePenaltyModifiers_LocationCd] ON [dmSentencePenaltyModifiers] (LocationCd ASC)

ALTER TABLE [dmSentencePenaltyStatuses]

DROP CONSTRAINT [PK_dmSentencePenaltyStatuses];

ALTER TABLE [dmSentencePenaltyStatuses] ADD CONSTRAINT [PK_dmSentencePenaltyStatuses] PRIMARY KEY CLUSTERED (SentencePenaltyStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmSentencePenaltyStatuses_LocationCd') BEGIN  Drop INDEX [IX_dmSentencePenaltyStatuses_LocationCd] on [dmSentencePenaltyStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_dmSentencePenaltyStatuses_LocationCd] ON [dmSentencePenaltyStatuses] (LocationCd ASC)

ALTER TABLE [dmSentencePenaltyTypes]

DROP CONSTRAINT [PK_dmSentencePenaltyTypes];

ALTER TABLE [dmSentencePenaltyTypes] ADD CONSTRAINT [PK_dmSentencePenaltyTypes] PRIMARY KEY CLUSTERED (PenaltyTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmSentencePenaltyTypes_LocationCd') BEGIN  Drop INDEX [IX_dmSentencePenaltyTypes_LocationCd] on [dmSentencePenaltyTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmSentencePenaltyTypes_LocationCd] ON [dmSentencePenaltyTypes] (LocationCd ASC)

ALTER TABLE [dmStaffInformation]

DROP CONSTRAINT [PK_dmStaffInformation];

ALTER TABLE [dmStaffInformation] ADD CONSTRAINT [PK_dmStaffInformation] PRIMARY KEY CLUSTERED (StaffInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmStaffInformation_LocationCd') BEGIN  Drop INDEX [IX_dmStaffInformation_LocationCd] on [dmStaffInformation]; END */

CREATE NONCLUSTERED INDEX [IX_dmStaffInformation_LocationCd] ON [dmStaffInformation] (LocationCd ASC)

ALTER TABLE [dmStateJobTitles]

DROP CONSTRAINT [PK_dmStateJobTitles];

ALTER TABLE [dmStateJobTitles] ADD CONSTRAINT [PK_dmStateJobTitles] PRIMARY KEY CLUSTERED (StateJobTitleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmStateJobTitles_LocationCd') BEGIN  Drop INDEX [IX_dmStateJobTitles_LocationCd] on [dmStateJobTitles]; END */

CREATE NONCLUSTERED INDEX [IX_dmStateJobTitles_LocationCd] ON [dmStateJobTitles] (LocationCd ASC)

ALTER TABLE [dmStates]

DROP CONSTRAINT [PK_dmStates];

ALTER TABLE [dmStates] ADD CONSTRAINT [PK_dmStates] PRIMARY KEY CLUSTERED (StateId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmStates_LocationCd') BEGIN  Drop INDEX [IX_dmStates_LocationCd] on [dmStates]; END */

CREATE NONCLUSTERED INDEX [IX_dmStates_LocationCd] ON [dmStates] (LocationCd ASC)

ALTER TABLE [dmSupervisionLevels]

DROP CONSTRAINT [PK_dmTierLevelsCbc];

ALTER TABLE [dmSupervisionLevels] ADD CONSTRAINT [PK_dmTierLevelsCbc] PRIMARY KEY CLUSTERED (SupervisionLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmSupervisionLevels_LocationCd') BEGIN  Drop INDEX [IX_dmSupervisionLevels_LocationCd] on [dmSupervisionLevels]; END */

CREATE NONCLUSTERED INDEX [IX_dmSupervisionLevels_LocationCd] ON [dmSupervisionLevels] (LocationCd ASC)

ALTER TABLE [dmSupervisionModifiers]

DROP CONSTRAINT [PK_dmSupervisionModifiers];

ALTER TABLE [dmSupervisionModifiers] ADD CONSTRAINT [PK_dmSupervisionModifiers] PRIMARY KEY CLUSTERED (SupervisionModifierId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmSupervisionModifiers_LocationCd') BEGIN  Drop INDEX [IX_dmSupervisionModifiers_LocationCd] on [dmSupervisionModifiers]; END */

CREATE NONCLUSTERED INDEX [IX_dmSupervisionModifiers_LocationCd] ON [dmSupervisionModifiers] (LocationCd ASC)

ALTER TABLE [dmSupervisionStatuses]

DROP CONSTRAINT [PK_dmSupervisionStatuses];

ALTER TABLE [dmSupervisionStatuses] ADD CONSTRAINT [PK_dmSupervisionStatuses] PRIMARY KEY CLUSTERED (SupervisionStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmSupervisionStatuses_LocationCd') BEGIN  Drop INDEX [IX_dmSupervisionStatuses_LocationCd] on [dmSupervisionStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_dmSupervisionStatuses_LocationCd] ON [dmSupervisionStatuses] (LocationCd ASC)

ALTER TABLE [dmSupportMeans]

DROP CONSTRAINT [PK_dmSupportMeans];

ALTER TABLE [dmSupportMeans] ADD CONSTRAINT [PK_dmSupportMeans] PRIMARY KEY CLUSTERED (SupportMeanId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmSupportMeans_LocationCd') BEGIN  Drop INDEX [IX_dmSupportMeans_LocationCd] on [dmSupportMeans]; END */

CREATE NONCLUSTERED INDEX [IX_dmSupportMeans_LocationCd] ON [dmSupportMeans] (LocationCd ASC)

ALTER TABLE [dmTestingWaivedReasons]

DROP CONSTRAINT [PK_dmTestingWaivedReasons];

ALTER TABLE [dmTestingWaivedReasons] ADD CONSTRAINT [PK_dmTestingWaivedReasons] PRIMARY KEY CLUSTERED (TestingWaivedReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmTestingWaivedReasons_LocationCd') BEGIN  Drop INDEX [IX_dmTestingWaivedReasons_LocationCd] on [dmTestingWaivedReasons]; END */

CREATE NONCLUSTERED INDEX [IX_dmTestingWaivedReasons_LocationCd] ON [dmTestingWaivedReasons] (LocationCd ASC)

ALTER TABLE [dmTGLevelsOfInvolvement]

DROP CONSTRAINT [PK_dmTGLevelsOfInvolvement];

ALTER TABLE [dmTGLevelsOfInvolvement] ADD CONSTRAINT [PK_dmTGLevelsOfInvolvement] PRIMARY KEY CLUSTERED (TGLevelOfInvolvementId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmTGLevelsOfInvolvement_LocationCd') BEGIN  Drop INDEX [IX_dmTGLevelsOfInvolvement_LocationCd] on [dmTGLevelsOfInvolvement]; END */

CREATE NONCLUSTERED INDEX [IX_dmTGLevelsOfInvolvement_LocationCd] ON [dmTGLevelsOfInvolvement] (LocationCd ASC)

ALTER TABLE [dmThreatGroupFactions]

DROP CONSTRAINT [PK_dmThreatGroupFactions];

ALTER TABLE [dmThreatGroupFactions] ADD CONSTRAINT [PK_dmThreatGroupFactions] PRIMARY KEY CLUSTERED (ThreatGroupFactionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmThreatGroupFactions_LocationCd') BEGIN  Drop INDEX [IX_dmThreatGroupFactions_LocationCd] on [dmThreatGroupFactions]; END */

CREATE NONCLUSTERED INDEX [IX_dmThreatGroupFactions_LocationCd] ON [dmThreatGroupFactions] (LocationCd ASC)

ALTER TABLE [dmTimeCompAdjustments]

DROP CONSTRAINT [PK_dmTimeCompAdjustments];

ALTER TABLE [dmTimeCompAdjustments] ADD CONSTRAINT [PK_dmTimeCompAdjustments] PRIMARY KEY CLUSTERED (TimeCompAdjustmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmTimeCompAdjustments_LocationCd') BEGIN  Drop INDEX [IX_dmTimeCompAdjustments_LocationCd] on [dmTimeCompAdjustments]; END */

CREATE NONCLUSTERED INDEX [IX_dmTimeCompAdjustments_LocationCd] ON [dmTimeCompAdjustments] (LocationCd ASC)

ALTER TABLE [dmTimeCompEvents]

DROP CONSTRAINT [PK_dmTimeCompEvents_ProdFix];

ALTER TABLE [dmTimeCompEvents] ADD CONSTRAINT [PK_dmTimeCompEvents_ProdFix] PRIMARY KEY CLUSTERED (TimeCompEventId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmTimeCompEvents_LocationCd') BEGIN  Drop INDEX [IX_dmTimeCompEvents_LocationCd] on [dmTimeCompEvents]; END */

CREATE NONCLUSTERED INDEX [IX_dmTimeCompEvents_LocationCd] ON [dmTimeCompEvents] (LocationCd ASC)

ALTER TABLE [dmTimeCompMethods]

DROP CONSTRAINT [PK_dmTimeCompMethods];

ALTER TABLE [dmTimeCompMethods] ADD CONSTRAINT [PK_dmTimeCompMethods] PRIMARY KEY CLUSTERED (TimeCompMethodId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmTimeCompMethods_LocationCd') BEGIN  Drop INDEX [IX_dmTimeCompMethods_LocationCd] on [dmTimeCompMethods]; END */

CREATE NONCLUSTERED INDEX [IX_dmTimeCompMethods_LocationCd] ON [dmTimeCompMethods] (LocationCd ASC)

ALTER TABLE [dmTransferHoldTypes]

DROP CONSTRAINT [PK_dmTransferHoldTypes];

ALTER TABLE [dmTransferHoldTypes] ADD CONSTRAINT [PK_dmTransferHoldTypes] PRIMARY KEY CLUSTERED (TransferHoldTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmTransferHoldTypes_LocationCd') BEGIN  Drop INDEX [IX_dmTransferHoldTypes_LocationCd] on [dmTransferHoldTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmTransferHoldTypes_LocationCd] ON [dmTransferHoldTypes] (LocationCd ASC)

ALTER TABLE [dmTransferInitiators]

DROP CONSTRAINT [PK_dmTransferInitiators];

ALTER TABLE [dmTransferInitiators] ADD CONSTRAINT [PK_dmTransferInitiators] PRIMARY KEY CLUSTERED (TransferInitiatorId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmTransferInitiators_LocationCd') BEGIN  Drop INDEX [IX_dmTransferInitiators_LocationCd] on [dmTransferInitiators]; END */

CREATE NONCLUSTERED INDEX [IX_dmTransferInitiators_LocationCd] ON [dmTransferInitiators] (LocationCd ASC)

ALTER TABLE [dmTransferLocationReasons]

DROP CONSTRAINT [PK_dmTransferLocationReasons];

ALTER TABLE [dmTransferLocationReasons] ADD CONSTRAINT [PK_dmTransferLocationReasons] PRIMARY KEY CLUSTERED (TransferLocationReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmTransferLocationReasons_LocationCd') BEGIN  Drop INDEX [IX_dmTransferLocationReasons_LocationCd] on [dmTransferLocationReasons]; END */

CREATE NONCLUSTERED INDEX [IX_dmTransferLocationReasons_LocationCd] ON [dmTransferLocationReasons] (LocationCd ASC)

ALTER TABLE [dmTransferReasons]

DROP CONSTRAINT [PK_dmTransferReasons];

ALTER TABLE [dmTransferReasons] ADD CONSTRAINT [PK_dmTransferReasons] PRIMARY KEY CLUSTERED (TransferReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmTransferReasons_LocationCd') BEGIN  Drop INDEX [IX_dmTransferReasons_LocationCd] on [dmTransferReasons]; END */

CREATE NONCLUSTERED INDEX [IX_dmTransferReasons_LocationCd] ON [dmTransferReasons] (LocationCd ASC)

ALTER TABLE [dmTransferStatuses]

DROP CONSTRAINT [PK_dmTransferStatuses];

ALTER TABLE [dmTransferStatuses] ADD CONSTRAINT [PK_dmTransferStatuses] PRIMARY KEY CLUSTERED (TransferStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmTransferStatuses_LocationCd') BEGIN  Drop INDEX [IX_dmTransferStatuses_LocationCd] on [dmTransferStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_dmTransferStatuses_LocationCd] ON [dmTransferStatuses] (LocationCd ASC)

ALTER TABLE [dmTransportationTypes]

DROP CONSTRAINT [PK_dmTransportationTypes];

ALTER TABLE [dmTransportationTypes] ADD CONSTRAINT [PK_dmTransportationTypes] PRIMARY KEY CLUSTERED (TransportationTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmTransportationTypes_LocationCd') BEGIN  Drop INDEX [IX_dmTransportationTypes_LocationCd] on [dmTransportationTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmTransportationTypes_LocationCd] ON [dmTransportationTypes] (LocationCd ASC)

ALTER TABLE [dmTransportHolds]

DROP CONSTRAINT [PK_dmTransportHolds];

ALTER TABLE [dmTransportHolds] ADD CONSTRAINT [PK_dmTransportHolds] PRIMARY KEY CLUSTERED (TransportHoldId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmTransportHolds_LocationCd') BEGIN  Drop INDEX [IX_dmTransportHolds_LocationCd] on [dmTransportHolds]; END */

CREATE NONCLUSTERED INDEX [IX_dmTransportHolds_LocationCd] ON [dmTransportHolds] (LocationCd ASC)

ALTER TABLE [dmTravelPermitTypes]

DROP CONSTRAINT [PK_dmTravelPermitTypes];

ALTER TABLE [dmTravelPermitTypes] ADD CONSTRAINT [PK_dmTravelPermitTypes] PRIMARY KEY CLUSTERED (TravelPermitTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmTravelPermitTypes_LocationCd') BEGIN  Drop INDEX [IX_dmTravelPermitTypes_LocationCd] on [dmTravelPermitTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmTravelPermitTypes_LocationCd] ON [dmTravelPermitTypes] (LocationCd ASC)

ALTER TABLE [dmTravelReasons]

DROP CONSTRAINT [PK_dmTravelReasons];

ALTER TABLE [dmTravelReasons] ADD CONSTRAINT [PK_dmTravelReasons] PRIMARY KEY CLUSTERED (TravelReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmTravelReasons_LocationCd') BEGIN  Drop INDEX [IX_dmTravelReasons_LocationCd] on [dmTravelReasons]; END */

CREATE NONCLUSTERED INDEX [IX_dmTravelReasons_LocationCd] ON [dmTravelReasons] (LocationCd ASC)

ALTER TABLE [dmTribes]

DROP CONSTRAINT [PK_dmTribes];

ALTER TABLE [dmTribes] ADD CONSTRAINT [PK_dmTribes] PRIMARY KEY CLUSTERED (TribeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmTribes_LocationCd') BEGIN  Drop INDEX [IX_dmTribes_LocationCd] on [dmTribes]; END */

CREATE NONCLUSTERED INDEX [IX_dmTribes_LocationCd] ON [dmTribes] (LocationCd ASC)

ALTER TABLE [dmTypesOfWork]

DROP CONSTRAINT [PK_dmTypesOfWork];

ALTER TABLE [dmTypesOfWork] ADD CONSTRAINT [PK_dmTypesOfWork] PRIMARY KEY CLUSTERED (TypeOfWorkId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmTypesOfWork_LocationCd') BEGIN  Drop INDEX [IX_dmTypesOfWork_LocationCd] on [dmTypesOfWork]; END */

CREATE NONCLUSTERED INDEX [IX_dmTypesOfWork_LocationCd] ON [dmTypesOfWork] (LocationCd ASC)

ALTER TABLE [dmUricaStages]

DROP CONSTRAINT [PK_dmURICAStages];

ALTER TABLE [dmUricaStages] ADD CONSTRAINT [PK_dmURICAStages] PRIMARY KEY CLUSTERED (UricaStageId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmUricaStages_LocationCd') BEGIN  Drop INDEX [IX_dmUricaStages_LocationCd] on [dmUricaStages]; END */

CREATE NONCLUSTERED INDEX [IX_dmUricaStages_LocationCd] ON [dmUricaStages] (LocationCd ASC)

ALTER TABLE [dmUsCitizenshipStatuses]

DROP CONSTRAINT [PK_dmUSCitizenshipStatuses];

ALTER TABLE [dmUsCitizenshipStatuses] ADD CONSTRAINT [PK_dmUSCitizenshipStatuses] PRIMARY KEY CLUSTERED (UsCitizenshipStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmUsCitizenshipStatuses_LocationCd') BEGIN  Drop INDEX [IX_dmUsCitizenshipStatuses_LocationCd] on [dmUsCitizenshipStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_dmUsCitizenshipStatuses_LocationCd] ON [dmUsCitizenshipStatuses] (LocationCd ASC)

ALTER TABLE [dmUserOffenderLocks_OLD]

DROP CONSTRAINT [PK_dmUserOffenderLocks];

ALTER TABLE [dmUserOffenderLocks_OLD] ADD CONSTRAINT [PK_dmUserOffenderLocks] PRIMARY KEY CLUSTERED (UserOffenderLockId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmUserOffenderLocks_OLD_LocationCd') BEGIN  Drop INDEX [IX_dmUserOffenderLocks_OLD_LocationCd] on [dmUserOffenderLocks_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_dmUserOffenderLocks_OLD_LocationCd] ON [dmUserOffenderLocks_OLD] (LocationCd ASC)

ALTER TABLE [dmUserOffenderRestrictions]

DROP CONSTRAINT [PK_dmUserOffenderRestrictions];

ALTER TABLE [dmUserOffenderRestrictions] ADD CONSTRAINT [PK_dmUserOffenderRestrictions] PRIMARY KEY CLUSTERED (UserOffenderRestrictionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmUserOffenderRestrictions_LocationCd') BEGIN  Drop INDEX [IX_dmUserOffenderRestrictions_LocationCd] on [dmUserOffenderRestrictions]; END */

CREATE NONCLUSTERED INDEX [IX_dmUserOffenderRestrictions_LocationCd] ON [dmUserOffenderRestrictions] (LocationCd ASC)

ALTER TABLE [dmVehicleMakes]

DROP CONSTRAINT [PK_dmVehicleMakes];

ALTER TABLE [dmVehicleMakes] ADD CONSTRAINT [PK_dmVehicleMakes] PRIMARY KEY CLUSTERED (VehicleMakeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmVehicleMakes_LocationCd') BEGIN  Drop INDEX [IX_dmVehicleMakes_LocationCd] on [dmVehicleMakes]; END */

CREATE NONCLUSTERED INDEX [IX_dmVehicleMakes_LocationCd] ON [dmVehicleMakes] (LocationCd ASC)

ALTER TABLE [dmViolatorProgramCancelledReason]

DROP CONSTRAINT [PK_dmViolatorProgramCancelledReason];

ALTER TABLE [dmViolatorProgramCancelledReason] ADD CONSTRAINT [PK_dmViolatorProgramCancelledReason] PRIMARY KEY CLUSTERED (ViolatorProgramCancelledReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmViolatorProgramCancelledReason_LocationCd') BEGIN  Drop INDEX [IX_dmViolatorProgramCancelledReason_LocationCd] on [dmViolatorProgramCancelledReason]; END */

CREATE NONCLUSTERED INDEX [IX_dmViolatorProgramCancelledReason_LocationCd] ON [dmViolatorProgramCancelledReason] (LocationCd ASC)

ALTER TABLE [dmViolatorProgramDeniedReason]

DROP CONSTRAINT [PK_dmViolatorProgramDeniedReason];

ALTER TABLE [dmViolatorProgramDeniedReason] ADD CONSTRAINT [PK_dmViolatorProgramDeniedReason] PRIMARY KEY CLUSTERED (ViolatorProgramDeniedReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmViolatorProgramDeniedReason_LocationCd') BEGIN  Drop INDEX [IX_dmViolatorProgramDeniedReason_LocationCd] on [dmViolatorProgramDeniedReason]; END */

CREATE NONCLUSTERED INDEX [IX_dmViolatorProgramDeniedReason_LocationCd] ON [dmViolatorProgramDeniedReason] (LocationCd ASC)

ALTER TABLE [dmViolatorProgramPlacementLocations]

DROP CONSTRAINT [PK_dmViolatorProgramPlacementLocations];

ALTER TABLE [dmViolatorProgramPlacementLocations] ADD CONSTRAINT [PK_dmViolatorProgramPlacementLocations] PRIMARY KEY CLUSTERED (ViolatorProgramPlacementLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmViolatorProgramPlacementLocations_LocationCd') BEGIN  Drop INDEX [IX_dmViolatorProgramPlacementLocations_LocationCd] on [dmViolatorProgramPlacementLocations]; END */

CREATE NONCLUSTERED INDEX [IX_dmViolatorProgramPlacementLocations_LocationCd] ON [dmViolatorProgramPlacementLocations] (LocationCd ASC)

ALTER TABLE [dmViolatorProgramReferralStatuses]

DROP CONSTRAINT [PK_dmViolatorProgramReferralStatuses];

ALTER TABLE [dmViolatorProgramReferralStatuses] ADD CONSTRAINT [PK_dmViolatorProgramReferralStatuses] PRIMARY KEY CLUSTERED (ViolatorProgramReferralStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmViolatorProgramReferralStatuses_LocationCd') BEGIN  Drop INDEX [IX_dmViolatorProgramReferralStatuses_LocationCd] on [dmViolatorProgramReferralStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_dmViolatorProgramReferralStatuses_LocationCd] ON [dmViolatorProgramReferralStatuses] (LocationCd ASC)

ALTER TABLE [dmVisitingRelationships]

DROP CONSTRAINT [PK_dmVisitingRelationships];

ALTER TABLE [dmVisitingRelationships] ADD CONSTRAINT [PK_dmVisitingRelationships] PRIMARY KEY CLUSTERED (VisitingRelationshipId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmVisitingRelationships_LocationCd') BEGIN  Drop INDEX [IX_dmVisitingRelationships_LocationCd] on [dmVisitingRelationships]; END */

CREATE NONCLUSTERED INDEX [IX_dmVisitingRelationships_LocationCd] ON [dmVisitingRelationships] (LocationCd ASC)

ALTER TABLE [dmVisitingStatuses]

DROP CONSTRAINT [PK_dmVisitingStatuses];

ALTER TABLE [dmVisitingStatuses] ADD CONSTRAINT [PK_dmVisitingStatuses] PRIMARY KEY CLUSTERED (VisitingStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmVisitingStatuses_LocationCd') BEGIN  Drop INDEX [IX_dmVisitingStatuses_LocationCd] on [dmVisitingStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_dmVisitingStatuses_LocationCd] ON [dmVisitingStatuses] (LocationCd ASC)

ALTER TABLE [dmVisitingStatusReasons]

DROP CONSTRAINT [PK_dmVisitingStatusReasons];

ALTER TABLE [dmVisitingStatusReasons] ADD CONSTRAINT [PK_dmVisitingStatusReasons] PRIMARY KEY CLUSTERED (VisitingStatusReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmVisitingStatusReasons_LocationCd') BEGIN  Drop INDEX [IX_dmVisitingStatusReasons_LocationCd] on [dmVisitingStatusReasons]; END */

CREATE NONCLUSTERED INDEX [IX_dmVisitingStatusReasons_LocationCd] ON [dmVisitingStatusReasons] (LocationCd ASC)

ALTER TABLE [dmWatchActivities]

DROP CONSTRAINT [PK_dmWatchActivities];

ALTER TABLE [dmWatchActivities] ADD CONSTRAINT [PK_dmWatchActivities] PRIMARY KEY CLUSTERED (WatchActivityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmWatchActivities_LocationCd') BEGIN  Drop INDEX [IX_dmWatchActivities_LocationCd] on [dmWatchActivities]; END */

CREATE NONCLUSTERED INDEX [IX_dmWatchActivities_LocationCd] ON [dmWatchActivities] (LocationCd ASC)

ALTER TABLE [dmWorkAssignmentLeavingReasons]

DROP CONSTRAINT [PK_dmWorkAssignmentLeavingReasons];

ALTER TABLE [dmWorkAssignmentLeavingReasons] ADD CONSTRAINT [PK_dmWorkAssignmentLeavingReasons] PRIMARY KEY CLUSTERED (ReasonForLeavingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmWorkAssignmentLeavingReasons_LocationCd') BEGIN  Drop INDEX [IX_dmWorkAssignmentLeavingReasons_LocationCd] on [dmWorkAssignmentLeavingReasons]; END */

CREATE NONCLUSTERED INDEX [IX_dmWorkAssignmentLeavingReasons_LocationCd] ON [dmWorkAssignmentLeavingReasons] (LocationCd ASC)

ALTER TABLE [dmWorkAssignmentsSw]

DROP CONSTRAINT [PK_dmWorkAssignmentsSW];

ALTER TABLE [dmWorkAssignmentsSw] ADD CONSTRAINT [PK_dmWorkAssignmentsSW] PRIMARY KEY CLUSTERED (WorkAssignmentSwId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmWorkAssignmentsSw_LocationCd') BEGIN  Drop INDEX [IX_dmWorkAssignmentsSw_LocationCd] on [dmWorkAssignmentsSw]; END */

CREATE NONCLUSTERED INDEX [IX_dmWorkAssignmentsSw_LocationCd] ON [dmWorkAssignmentsSw] (LocationCd ASC)

alter table dbo.Workflows DROP constraint FK_Workflows_dmWorkflowTypes
ALTER TABLE [dmWorkflowTypes] DROP CONSTRAINT [PK_dmWorkflowTypes];

ALTER TABLE [dmWorkflowTypes] ADD CONSTRAINT [PK_dmWorkflowTypes] PRIMARY KEY CLUSTERED (WorkflowTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmWorkflowTypes_LocationCd') BEGIN  Drop INDEX [IX_dmWorkflowTypes_LocationCd] on [dmWorkflowTypes]; END */

ALTER TABLE [dbo].[Workflows]  WITH CHECK ADD  CONSTRAINT [FK_Workflows_dmWorkflowTypes] FOREIGN KEY([WorkflowTypeId])
REFERENCES [dbo].[dmWorkflowTypes] ([WorkflowTypeId])
GO
ALTER TABLE [dbo].[Workflows] CHECK CONSTRAINT [FK_Workflows_dmWorkflowTypes]


CREATE NONCLUSTERED INDEX [IX_dmWorkflowTypes_LocationCd] ON [dmWorkflowTypes] (LocationCd ASC)

ALTER TABLE [dmWorkUnitServiceTypes]

DROP CONSTRAINT [PK_dmWorkUnitServiceTypes];

ALTER TABLE [dmWorkUnitServiceTypes] ADD CONSTRAINT [PK_dmWorkUnitServiceTypes] PRIMARY KEY CLUSTERED (WorkUnitServiceTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_dmWorkUnitServiceTypes_LocationCd') BEGIN  Drop INDEX [IX_dmWorkUnitServiceTypes_LocationCd] on [dmWorkUnitServiceTypes]; END */

CREATE NONCLUSTERED INDEX [IX_dmWorkUnitServiceTypes_LocationCd] ON [dmWorkUnitServiceTypes] (LocationCd ASC)

ALTER TABLE [EnhancedModuleSecurity]

DROP CONSTRAINT [PK_EnhancedModuleSecurity];

ALTER TABLE [EnhancedModuleSecurity] ADD CONSTRAINT [PK_EnhancedModuleSecurity] PRIMARY KEY CLUSTERED (EnhancedModuleSecurityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_EnhancedModuleSecurity_LocationCd') BEGIN  Drop INDEX [IX_EnhancedModuleSecurity_LocationCd] on [EnhancedModuleSecurity]; END */

CREATE NONCLUSTERED INDEX [IX_EnhancedModuleSecurity_LocationCd] ON [EnhancedModuleSecurity] (LocationCd ASC)

ALTER TABLE [FacilityMaintenanceIssues]

DROP CONSTRAINT [PK_FacilityMaintenanceIssues];

ALTER TABLE [FacilityMaintenanceIssues] ADD CONSTRAINT [PK_FacilityMaintenanceIssues] PRIMARY KEY CLUSTERED (FacilityMaintenanceIssueId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_FacilityMaintenanceIssues_LocationCd') BEGIN  Drop INDEX [IX_FacilityMaintenanceIssues_LocationCd] on [FacilityMaintenanceIssues]; END */

CREATE NONCLUSTERED INDEX [IX_FacilityMaintenanceIssues_LocationCd] ON [FacilityMaintenanceIssues] (LocationCd ASC)

ALTER TABLE [Groups]

DROP CONSTRAINT [PK_Groups];

ALTER TABLE [Groups] ADD CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED (GroupId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_Groups_LocationCd') BEGIN  Drop INDEX [IX_Groups_LocationCd] on [Groups]; END */

CREATE NONCLUSTERED INDEX [IX_Groups_LocationCd] ON [Groups] (LocationCd ASC)

ALTER TABLE [GroupUsers]

DROP CONSTRAINT [PK_GroupUsers];

ALTER TABLE [GroupUsers] ADD CONSTRAINT [PK_GroupUsers] PRIMARY KEY CLUSTERED (GroupUserId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_GroupUsers_LocationCd') BEGIN  Drop INDEX [IX_GroupUsers_LocationCd] on [GroupUsers]; END */

CREATE NONCLUSTERED INDEX [IX_GroupUsers_LocationCd] ON [GroupUsers] (LocationCd ASC)

ALTER TABLE [H_a_TabeMostRecent_OLD]

DROP CONSTRAINT [PK_H_a_TabeMostRecent];

ALTER TABLE [H_a_TabeMostRecent_OLD] ADD CONSTRAINT [PK_H_a_TabeMostRecent] PRIMARY KEY CLUSTERED (H_TabeMostRecentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_a_TabeMostRecent_OLD_LocationCd') BEGIN  Drop INDEX [IX_H_a_TabeMostRecent_OLD_LocationCd] on [H_a_TabeMostRecent_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_H_a_TabeMostRecent_OLD_LocationCd] ON [H_a_TabeMostRecent_OLD] (LocationCd ASC)

ALTER TABLE [H_aAcute2007]

DROP CONSTRAINT [PK_H_aAcute2007];

ALTER TABLE [H_aAcute2007] ADD CONSTRAINT [PK_H_aAcute2007] PRIMARY KEY CLUSTERED (H_Acute2007Id ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aAcute2007_LocationCd') BEGIN  Drop INDEX [IX_H_aAcute2007_LocationCd] on [H_aAcute2007]; END */

CREATE NONCLUSTERED INDEX [IX_H_aAcute2007_LocationCd] ON [H_aAcute2007] (LocationCd ASC)

ALTER TABLE [H_aAsam]

DROP CONSTRAINT [PK_H_aASAM];

ALTER TABLE [H_aAsam] ADD CONSTRAINT [PK_H_aASAM] PRIMARY KEY CLUSTERED (H_AsamId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aAsam_LocationCd') BEGIN  Drop INDEX [IX_H_aAsam_LocationCd] on [H_aAsam]; END */

CREATE NONCLUSTERED INDEX [IX_H_aAsam_LocationCd] ON [H_aAsam] (LocationCd ASC)

ALTER TABLE [H_aAsamPpc2r]

DROP CONSTRAINT [PK_H_aASAMPPC2R];

ALTER TABLE [H_aAsamPpc2r] ADD CONSTRAINT [PK_H_aASAMPPC2R] PRIMARY KEY CLUSTERED (H_AsamPpc2rId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aAsamPpc2r_LocationCd') BEGIN  Drop INDEX [IX_H_aAsamPpc2r_LocationCd] on [H_aAsamPpc2r]; END */

CREATE NONCLUSTERED INDEX [IX_H_aAsamPpc2r_LocationCd] ON [H_aAsamPpc2r] (LocationCd ASC)

ALTER TABLE [H_aAsi]

DROP CONSTRAINT [PK_H_aASI];

ALTER TABLE [H_aAsi] ADD CONSTRAINT [PK_H_aASI] PRIMARY KEY CLUSTERED (H_AsiId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aAsi_LocationCd') BEGIN  Drop INDEX [IX_H_aAsi_LocationCd] on [H_aAsi]; END */

CREATE NONCLUSTERED INDEX [IX_H_aAsi_LocationCd] ON [H_aAsi] (LocationCd ASC)

ALTER TABLE [H_aBetaIIIq]

DROP CONSTRAINT [PK_H_aBetaIIIQ];

ALTER TABLE [H_aBetaIIIq] ADD CONSTRAINT [PK_H_aBetaIIIQ] PRIMARY KEY CLUSTERED (H_BetaIIIqId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aBetaIIIq_LocationCd') BEGIN  Drop INDEX [IX_H_aBetaIIIq_LocationCd] on [H_aBetaIIIq]; END */

CREATE NONCLUSTERED INDEX [IX_H_aBetaIIIq_LocationCd] ON [H_aBetaIIIq] (LocationCd ASC)

ALTER TABLE [H_aBopRiskAssessments]

DROP CONSTRAINT [PK_H_aBopRiskAssessments];

ALTER TABLE [H_aBopRiskAssessments] ADD CONSTRAINT [PK_H_aBopRiskAssessments] PRIMARY KEY CLUSTERED (H_BopRiskAssessmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aBopRiskAssessments_LocationCd') BEGIN  Drop INDEX [IX_H_aBopRiskAssessments_LocationCd] on [H_aBopRiskAssessments]; END */

CREATE NONCLUSTERED INDEX [IX_H_aBopRiskAssessments_LocationCd] ON [H_aBopRiskAssessments] (LocationCd ASC)

ALTER TABLE [H_aBrownAdhdScreen]

DROP CONSTRAINT [PK_H_aBrownADHDScreen];

ALTER TABLE [H_aBrownAdhdScreen] ADD CONSTRAINT [PK_H_aBrownADHDScreen] PRIMARY KEY CLUSTERED (H_BrownAdhdScreenId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aBrownAdhdScreen_LocationCd') BEGIN  Drop INDEX [IX_H_aBrownAdhdScreen_LocationCd] on [H_aBrownAdhdScreen]; END */

CREATE NONCLUSTERED INDEX [IX_H_aBrownAdhdScreen_LocationCd] ON [H_aBrownAdhdScreen] (LocationCd ASC)

ALTER TABLE [H_aCasasEmployabilityCompetencySystem]

DROP CONSTRAINT [PK_H_aCASASEmployabilityCompetencySystem];

ALTER TABLE [H_aCasasEmployabilityCompetencySystem] ADD CONSTRAINT [PK_H_aCASASEmployabilityCompetencySystem] PRIMARY KEY CLUSTERED (H_CasasEmployabilityCompetencySystemId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aCasasEmployabilityCompetencySystem_LocationCd') BEGIN  Drop INDEX [IX_H_aCasasEmployabilityCompetencySystem_LocationCd] on [H_aCasasEmployabilityCompetencySystem]; END */

CREATE NONCLUSTERED INDEX [IX_H_aCasasEmployabilityCompetencySystem_LocationCd] ON [H_aCasasEmployabilityCompetencySystem] (LocationCd ASC)

ALTER TABLE [H_aCasasFunctionalWritingAssessment]

DROP CONSTRAINT [PK_H_aCASASFunctionalWritingAssessment];

ALTER TABLE [H_aCasasFunctionalWritingAssessment] ADD CONSTRAINT [PK_H_aCASASFunctionalWritingAssessment] PRIMARY KEY CLUSTERED (H_CasasFunctionalWritingAssessmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aCasasFunctionalWritingAssessment_LocationCd') BEGIN  Drop INDEX [IX_H_aCasasFunctionalWritingAssessment_LocationCd] on [H_aCasasFunctionalWritingAssessment]; END */

CREATE NONCLUSTERED INDEX [IX_H_aCasasFunctionalWritingAssessment_LocationCd] ON [H_aCasasFunctionalWritingAssessment] (LocationCd ASC)

ALTER TABLE [H_aCasasLifeSkills]

DROP CONSTRAINT [PK_H_aCASASLifeSkills];

ALTER TABLE [H_aCasasLifeSkills] ADD CONSTRAINT [PK_H_aCASASLifeSkills] PRIMARY KEY CLUSTERED (H_CasasLifeSkillId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aCasasLifeSkills_LocationCd') BEGIN  Drop INDEX [IX_H_aCasasLifeSkills_LocationCd] on [H_aCasasLifeSkills]; END */

CREATE NONCLUSTERED INDEX [IX_H_aCasasLifeSkills_LocationCd] ON [H_aCasasLifeSkills] (LocationCd ASC)

ALTER TABLE [H_aCmc]

DROP CONSTRAINT [PK_H_aCMC];

ALTER TABLE [H_aCmc] ADD CONSTRAINT [PK_H_aCMC] PRIMARY KEY CLUSTERED (H_CmcId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aCmc_LocationCd') BEGIN  Drop INDEX [IX_H_aCmc_LocationCd] on [H_aCmc]; END */

CREATE NONCLUSTERED INDEX [IX_H_aCmc_LocationCd] ON [H_aCmc] (LocationCd ASC)

ALTER TABLE [H_aCriminalSentimentsScale]

DROP CONSTRAINT [PK_H_aCriminalSentimentsScale];

ALTER TABLE [H_aCriminalSentimentsScale] ADD CONSTRAINT [PK_H_aCriminalSentimentsScale] PRIMARY KEY CLUSTERED (H_CriminalSentimentsScaleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aCriminalSentimentsScale_LocationCd') BEGIN  Drop INDEX [IX_H_aCriminalSentimentsScale_LocationCd] on [H_aCriminalSentimentsScale]; END */

CREATE NONCLUSTERED INDEX [IX_H_aCriminalSentimentsScale_LocationCd] ON [H_aCriminalSentimentsScale] (LocationCd ASC)

ALTER TABLE [H_aCustodyClassification]

DROP CONSTRAINT [PK_H_aCustodyClassification];

ALTER TABLE [H_aCustodyClassification] ADD CONSTRAINT [PK_H_aCustodyClassification] PRIMARY KEY CLUSTERED (H_CustodyClassificationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aCustodyClassification_LocationCd') BEGIN  Drop INDEX [IX_H_aCustodyClassification_LocationCd] on [H_aCustodyClassification]; END */

CREATE NONCLUSTERED INDEX [IX_H_aCustodyClassification_LocationCd] ON [H_aCustodyClassification] (LocationCd ASC)

ALTER TABLE [H_AddressInformation]

DROP CONSTRAINT [PK_H_AddressInformation];

ALTER TABLE [H_AddressInformation] ADD CONSTRAINT [PK_H_AddressInformation] PRIMARY KEY CLUSTERED (H_AddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_AddressInformation_LocationCd') BEGIN  Drop INDEX [IX_H_AddressInformation_LocationCd] on [H_AddressInformation]; END */

CREATE NONCLUSTERED INDEX [IX_H_AddressInformation_LocationCd] ON [H_AddressInformation] (LocationCd ASC)

ALTER TABLE [H_AddressPhones]

DROP CONSTRAINT [PK_H_AddressPhones];

ALTER TABLE [H_AddressPhones] ADD CONSTRAINT [PK_H_AddressPhones] PRIMARY KEY CLUSTERED (H_AddressPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_AddressPhones_LocationCd') BEGIN  Drop INDEX [IX_H_AddressPhones_LocationCd] on [H_AddressPhones]; END */

CREATE NONCLUSTERED INDEX [IX_H_AddressPhones_LocationCd] ON [H_AddressPhones] (LocationCd ASC)

ALTER TABLE [H_AdministrativeSegregationNotices]

DROP CONSTRAINT [PK_H_AdministrativeSegregationNotices];

ALTER TABLE [H_AdministrativeSegregationNotices] ADD CONSTRAINT [PK_H_AdministrativeSegregationNotices] PRIMARY KEY CLUSTERED (H_AdministrativeSegregationNoticeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_AdministrativeSegregationNotices_LocationCd') BEGIN  Drop INDEX [IX_H_AdministrativeSegregationNotices_LocationCd] on [H_AdministrativeSegregationNotices]; END */

CREATE NONCLUSTERED INDEX [IX_H_AdministrativeSegregationNotices_LocationCd] ON [H_AdministrativeSegregationNotices] (LocationCd ASC)

ALTER TABLE [H_AdministrativeSegregationReviews]

DROP CONSTRAINT [PK_H_AdministrativeSegregationReviews];

ALTER TABLE [H_AdministrativeSegregationReviews] ADD CONSTRAINT [PK_H_AdministrativeSegregationReviews] PRIMARY KEY CLUSTERED (H_AdministrativeSegregationReviewId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_AdministrativeSegregationReviews_LocationCd') BEGIN  Drop INDEX [IX_H_AdministrativeSegregationReviews_LocationCd] on [H_AdministrativeSegregationReviews]; END */

CREATE NONCLUSTERED INDEX [IX_H_AdministrativeSegregationReviews_LocationCd] ON [H_AdministrativeSegregationReviews] (LocationCd ASC)

ALTER TABLE [H_aDraor]

DROP CONSTRAINT [PK_H_aDraor];

ALTER TABLE [H_aDraor] ADD CONSTRAINT [PK_H_aDraor] PRIMARY KEY CLUSTERED (H_DraorId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aDraor_LocationCd') BEGIN  Drop INDEX [IX_H_aDraor_LocationCd] on [H_aDraor]; END */

CREATE NONCLUSTERED INDEX [IX_H_aDraor_LocationCd] ON [H_aDraor] (LocationCd ASC)

ALTER TABLE [H_aDraorCbcRevised]

DROP CONSTRAINT [PK_H_aDraorCbcRevised];

ALTER TABLE [H_aDraorCbcRevised] ADD CONSTRAINT [PK_H_aDraorCbcRevised] PRIMARY KEY CLUSTERED (H_DraorCbcRevisedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aDraorCbcRevised_LocationCd') BEGIN  Drop INDEX [IX_H_aDraorCbcRevised_LocationCd] on [H_aDraorCbcRevised]; END */

CREATE NONCLUSTERED INDEX [IX_H_aDraorCbcRevised_LocationCd] ON [H_aDraorCbcRevised] (LocationCd ASC)

ALTER TABLE [H_aDraorInstitution]

DROP CONSTRAINT [PK_H_aDraorInstitution];

ALTER TABLE [H_aDraorInstitution] ADD CONSTRAINT [PK_H_aDraorInstitution] PRIMARY KEY CLUSTERED (H_DraorInstitutionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aDraorInstitution_LocationCd') BEGIN  Drop INDEX [IX_H_aDraorInstitution_LocationCd] on [H_aDraorInstitution]; END */

CREATE NONCLUSTERED INDEX [IX_H_aDraorInstitution_LocationCd] ON [H_aDraorInstitution] (LocationCd ASC)

ALTER TABLE [H_aDraorInstitutionRevised]

DROP CONSTRAINT [PK_H_aDraorInstitutionRevised];

ALTER TABLE [H_aDraorInstitutionRevised] ADD CONSTRAINT [PK_H_aDraorInstitutionRevised] PRIMARY KEY CLUSTERED (H_DraorInstitutionRevisedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aDraorInstitutionRevised_LocationCd') BEGIN  Drop INDEX [IX_H_aDraorInstitutionRevised_LocationCd] on [H_aDraorInstitutionRevised]; END */

CREATE NONCLUSTERED INDEX [IX_H_aDraorInstitutionRevised_LocationCd] ON [H_aDraorInstitutionRevised] (LocationCd ASC)

ALTER TABLE [H_aFemaleCustodyClassification]

DROP CONSTRAINT [PK_H_aFemaleCustodyClassification];

ALTER TABLE [H_aFemaleCustodyClassification] ADD CONSTRAINT [PK_H_aFemaleCustodyClassification] PRIMARY KEY CLUSTERED (H_FemaleCustodyClassificationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aFemaleCustodyClassification_LocationCd') BEGIN  Drop INDEX [IX_H_aFemaleCustodyClassification_LocationCd] on [H_aFemaleCustodyClassification]; END */

CREATE NONCLUSTERED INDEX [IX_H_aFemaleCustodyClassification_LocationCd] ON [H_aFemaleCustodyClassification] (LocationCd ASC)

ALTER TABLE [H_aFemaleCustodyReclassification]

DROP CONSTRAINT [PK_H_aFemaleCustodyReclassification];

ALTER TABLE [H_aFemaleCustodyReclassification] ADD CONSTRAINT [PK_H_aFemaleCustodyReclassification] PRIMARY KEY CLUSTERED (H_FemaleCustodyReclassificationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aFemaleCustodyReclassification_LocationCd') BEGIN  Drop INDEX [IX_H_aFemaleCustodyReclassification_LocationCd] on [H_aFemaleCustodyReclassification]; END */

CREATE NONCLUSTERED INDEX [IX_H_aFemaleCustodyReclassification_LocationCd] ON [H_aFemaleCustodyReclassification] (LocationCd ASC)

ALTER TABLE [H_aHarePsychChecklist]

DROP CONSTRAINT [PK_H_aHarePsychChecklist];

ALTER TABLE [H_aHarePsychChecklist] ADD CONSTRAINT [PK_H_aHarePsychChecklist] PRIMARY KEY CLUSTERED (H_HarePsychChecklistId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aHarePsychChecklist_LocationCd') BEGIN  Drop INDEX [IX_H_aHarePsychChecklist_LocationCd] on [H_aHarePsychChecklist]; END */

CREATE NONCLUSTERED INDEX [IX_H_aHarePsychChecklist_LocationCd] ON [H_aHarePsychChecklist] (LocationCd ASC)

ALTER TABLE [H_aIaHeadInjuryLoseConsciousnessOrInComa]

DROP CONSTRAINT [PK_H_aIaHeadInjuryLoseConsciousnessOrInComa];

ALTER TABLE [H_aIaHeadInjuryLoseConsciousnessOrInComa] ADD CONSTRAINT [PK_H_aIaHeadInjuryLoseConsciousnessOrInComa] PRIMARY KEY CLUSTERED (H_IaHeadInjuryLoseConsciousnessOrInComaId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aIaHeadInjuryLoseConsciousnessOrInComa_LocationCd') BEGIN  Drop INDEX [IX_H_aIaHeadInjuryLoseConsciousnessOrInComa_LocationCd] on [H_aIaHeadInjuryLoseConsciousnessOrInComa]; END */

CREATE NONCLUSTERED INDEX [IX_H_aIaHeadInjuryLoseConsciousnessOrInComa_LocationCd] ON [H_aIaHeadInjuryLoseConsciousnessOrInComa] (LocationCd ASC)

ALTER TABLE [H_aIaHeadInjuryScreeningInstrument]

DROP CONSTRAINT [PK_H_aIaHeadInjuryScreeningInstrument];

ALTER TABLE [H_aIaHeadInjuryScreeningInstrument] ADD CONSTRAINT [PK_H_aIaHeadInjuryScreeningInstrument] PRIMARY KEY CLUSTERED (H_IaHeadInjuryScreeningInstrumentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aIaHeadInjuryScreeningInstrument_LocationCd') BEGIN  Drop INDEX [IX_H_aIaHeadInjuryScreeningInstrument_LocationCd] on [H_aIaHeadInjuryScreeningInstrument]; END */

CREATE NONCLUSTERED INDEX [IX_H_aIaHeadInjuryScreeningInstrument_LocationCd] ON [H_aIaHeadInjuryScreeningInstrument] (LocationCd ASC)

ALTER TABLE [H_aIaRiskAssessmentCharges]

DROP CONSTRAINT [PK_H_aIARiskAssessmentCharges];

ALTER TABLE [H_aIaRiskAssessmentCharges] ADD CONSTRAINT [PK_H_aIARiskAssessmentCharges] PRIMARY KEY CLUSTERED (H_IaRiskAssessmentChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aIaRiskAssessmentCharges_LocationCd') BEGIN  Drop INDEX [IX_H_aIaRiskAssessmentCharges_LocationCd] on [H_aIaRiskAssessmentCharges]; END */

CREATE NONCLUSTERED INDEX [IX_H_aIaRiskAssessmentCharges_LocationCd] ON [H_aIaRiskAssessmentCharges] (LocationCd ASC)

ALTER TABLE [H_aIaRiskAssessmentRevised]

DROP CONSTRAINT [PK_H_aIaRiskAssessmentRevised];

ALTER TABLE [H_aIaRiskAssessmentRevised] ADD CONSTRAINT [PK_H_aIaRiskAssessmentRevised] PRIMARY KEY CLUSTERED (H_IaRiskAssessmentRevisedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aIaRiskAssessmentRevised_LocationCd') BEGIN  Drop INDEX [IX_H_aIaRiskAssessmentRevised_LocationCd] on [H_aIaRiskAssessmentRevised]; END */

CREATE NONCLUSTERED INDEX [IX_H_aIaRiskAssessmentRevised_LocationCd] ON [H_aIaRiskAssessmentRevised] (LocationCd ASC)

ALTER TABLE [H_aIaRiskAssessments]

DROP CONSTRAINT [PK_H_aIARiskAssessments];

ALTER TABLE [H_aIaRiskAssessments] ADD CONSTRAINT [PK_H_aIARiskAssessments] PRIMARY KEY CLUSTERED (H_IaRiskAssessmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aIaRiskAssessments_LocationCd') BEGIN  Drop INDEX [IX_H_aIaRiskAssessments_LocationCd] on [H_aIaRiskAssessments]; END */

CREATE NONCLUSTERED INDEX [IX_H_aIaRiskAssessments_LocationCd] ON [H_aIaRiskAssessments] (LocationCd ASC)

ALTER TABLE [H_aIaRiskReassessmentCharges]

DROP CONSTRAINT [PK_H_aIARiskReassessmentCharges];

ALTER TABLE [H_aIaRiskReassessmentCharges] ADD CONSTRAINT [PK_H_aIARiskReassessmentCharges] PRIMARY KEY CLUSTERED (H_IaRiskReassessmentChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aIaRiskReassessmentCharges_LocationCd') BEGIN  Drop INDEX [IX_H_aIaRiskReassessmentCharges_LocationCd] on [H_aIaRiskReassessmentCharges]; END */

CREATE NONCLUSTERED INDEX [IX_H_aIaRiskReassessmentCharges_LocationCd] ON [H_aIaRiskReassessmentCharges] (LocationCd ASC)

ALTER TABLE [H_aIaRiskReassessments]

DROP CONSTRAINT [PK_H_aIARiskReassessments];

ALTER TABLE [H_aIaRiskReassessments] ADD CONSTRAINT [PK_H_aIARiskReassessments] PRIMARY KEY CLUSTERED (H_IaRiskReassessmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aIaRiskReassessments_LocationCd') BEGIN  Drop INDEX [IX_H_aIaRiskReassessments_LocationCd] on [H_aIaRiskReassessments]; END */

CREATE NONCLUSTERED INDEX [IX_H_aIaRiskReassessments_LocationCd] ON [H_aIaRiskReassessments] (LocationCd ASC)

ALTER TABLE [H_aIASexOffenderRegistry]

DROP CONSTRAINT [PK_H_aIASexOffenderRegistry];

ALTER TABLE [H_aIASexOffenderRegistry] ADD CONSTRAINT [PK_H_aIASexOffenderRegistry] PRIMARY KEY CLUSTERED (H_IASexOffenderRegistryID ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aIASexOffenderRegistry_LocationCd') BEGIN  Drop INDEX [IX_H_aIASexOffenderRegistry_LocationCd] on [H_aIASexOffenderRegistry]; END */

CREATE NONCLUSTERED INDEX [IX_H_aIASexOffenderRegistry_LocationCd] ON [H_aIASexOffenderRegistry] (LocationCd ASC)

ALTER TABLE [H_aIsora]

DROP CONSTRAINT [PK_H_aIsora];

ALTER TABLE [H_aIsora] ADD CONSTRAINT [PK_H_aIsora] PRIMARY KEY CLUSTERED (H_IsoraId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aIsora_LocationCd') BEGIN  Drop INDEX [IX_H_aIsora_LocationCd] on [H_aIsora]; END */

CREATE NONCLUSTERED INDEX [IX_H_aIsora_LocationCd] ON [H_aIsora] (LocationCd ASC)

ALTER TABLE [H_aIsora8]

DROP CONSTRAINT [PK_H_aISORA8];

ALTER TABLE [H_aIsora8] ADD CONSTRAINT [PK_H_aISORA8] PRIMARY KEY CLUSTERED (H_Isora8Id ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aIsora8_LocationCd') BEGIN  Drop INDEX [IX_H_aIsora8_LocationCd] on [H_aIsora8]; END */

CREATE NONCLUSTERED INDEX [IX_H_aIsora8_LocationCd] ON [H_aIsora8] (LocationCd ASC)

ALTER TABLE [H_aIsoraStatic99RCombined]

DROP CONSTRAINT [PK_H_aIsoraStatic99RCombined];

ALTER TABLE [H_aIsoraStatic99RCombined] ADD CONSTRAINT [PK_H_aIsoraStatic99RCombined] PRIMARY KEY CLUSTERED (H_IsoraStatic99RCombinedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aIsoraStatic99RCombined_LocationCd') BEGIN  Drop INDEX [IX_H_aIsoraStatic99RCombined_LocationCd] on [H_aIsoraStatic99RCombined]; END */

CREATE NONCLUSTERED INDEX [IX_H_aIsoraStatic99RCombined_LocationCd] ON [H_aIsoraStatic99RCombined] (LocationCd ASC)

ALTER TABLE [H_aJesness]

DROP CONSTRAINT [PK_H_aJesness];

ALTER TABLE [H_aJesness] ADD CONSTRAINT [PK_H_aJesness] PRIMARY KEY CLUSTERED (H_JesnessId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aJesness_LocationCd') BEGIN  Drop INDEX [IX_H_aJesness_LocationCd] on [H_aJesness]; END */

CREATE NONCLUSTERED INDEX [IX_H_aJesness_LocationCd] ON [H_aJesness] (LocationCd ASC)

ALTER TABLE [H_aLsi_r]

DROP CONSTRAINT [PK_H_aLSI_R];

ALTER TABLE [H_aLsi_r] ADD CONSTRAINT [PK_H_aLSI_R] PRIMARY KEY CLUSTERED (H_Lsi_rId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aLsi_r_LocationCd') BEGIN  Drop INDEX [IX_H_aLsi_r_LocationCd] on [H_aLsi_r]; END */

CREATE NONCLUSTERED INDEX [IX_H_aLsi_r_LocationCd] ON [H_aLsi_r] (LocationCd ASC)

ALTER TABLE [H_aLsi_rCharges]

DROP CONSTRAINT [PK_H_aLSI_RCharges];

ALTER TABLE [H_aLsi_rCharges] ADD CONSTRAINT [PK_H_aLSI_RCharges] PRIMARY KEY CLUSTERED (H_Lsi_rChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aLsi_rCharges_LocationCd') BEGIN  Drop INDEX [IX_H_aLsi_rCharges_LocationCd] on [H_aLsi_rCharges]; END */

CREATE NONCLUSTERED INDEX [IX_H_aLsi_rCharges_LocationCd] ON [H_aLsi_rCharges] (LocationCd ASC)

ALTER TABLE [H_aLsi_rTrailerInstitution]

DROP CONSTRAINT [PK_H_aLsi_rTrailerInstitutional];

ALTER TABLE [H_aLsi_rTrailerInstitution] ADD CONSTRAINT [PK_H_aLsi_rTrailerInstitutional] PRIMARY KEY CLUSTERED (H_Lsi_rTrailerInstitutionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aLsi_rTrailerInstitution_LocationCd') BEGIN  Drop INDEX [IX_H_aLsi_rTrailerInstitution_LocationCd] on [H_aLsi_rTrailerInstitution]; END */

CREATE NONCLUSTERED INDEX [IX_H_aLsi_rTrailerInstitution_LocationCd] ON [H_aLsi_rTrailerInstitution] (LocationCd ASC)

ALTER TABLE [H_aLsi_rTrailerPreRelease]

DROP CONSTRAINT [PK_H_aLsi_rTrailerPreRelease];

ALTER TABLE [H_aLsi_rTrailerPreRelease] ADD CONSTRAINT [PK_H_aLsi_rTrailerPreRelease] PRIMARY KEY CLUSTERED (H_Lsi_rTrailerPreReleaseId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aLsi_rTrailerPreRelease_LocationCd') BEGIN  Drop INDEX [IX_H_aLsi_rTrailerPreRelease_LocationCd] on [H_aLsi_rTrailerPreRelease]; END */

CREATE NONCLUSTERED INDEX [IX_H_aLsi_rTrailerPreRelease_LocationCd] ON [H_aLsi_rTrailerPreRelease] (LocationCd ASC)

ALTER TABLE [H_aLsi_rTrailerProbationParole]

DROP CONSTRAINT [PK_H_aLsi_rTrailerProbationParole];

ALTER TABLE [H_aLsi_rTrailerProbationParole] ADD CONSTRAINT [PK_H_aLsi_rTrailerProbationParole] PRIMARY KEY CLUSTERED (H_Lsi_rTrailerProbationParoleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aLsi_rTrailerProbationParole_LocationCd') BEGIN  Drop INDEX [IX_H_aLsi_rTrailerProbationParole_LocationCd] on [H_aLsi_rTrailerProbationParole]; END */

CREATE NONCLUSTERED INDEX [IX_H_aLsi_rTrailerProbationParole_LocationCd] ON [H_aLsi_rTrailerProbationParole] (LocationCd ASC)

ALTER TABLE [H_aMaleCustodyClassification]

DROP CONSTRAINT [PK_H_aMaleCustodyClassification];

ALTER TABLE [H_aMaleCustodyClassification] ADD CONSTRAINT [PK_H_aMaleCustodyClassification] PRIMARY KEY CLUSTERED (H_MaleCustodyClassificationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aMaleCustodyClassification_LocationCd') BEGIN  Drop INDEX [IX_H_aMaleCustodyClassification_LocationCd] on [H_aMaleCustodyClassification]; END */

CREATE NONCLUSTERED INDEX [IX_H_aMaleCustodyClassification_LocationCd] ON [H_aMaleCustodyClassification] (LocationCd ASC)

ALTER TABLE [H_aMaleCustodyReclassification]

DROP CONSTRAINT [PK_H_aMaleCustodyReclassification];

ALTER TABLE [H_aMaleCustodyReclassification] ADD CONSTRAINT [PK_H_aMaleCustodyReclassification] PRIMARY KEY CLUSTERED (H_MaleCustodyReclassificationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aMaleCustodyReclassification_LocationCd') BEGIN  Drop INDEX [IX_H_aMaleCustodyReclassification_LocationCd] on [H_aMaleCustodyReclassification]; END */

CREATE NONCLUSTERED INDEX [IX_H_aMaleCustodyReclassification_LocationCd] ON [H_aMaleCustodyReclassification] (LocationCd ASC)

ALTER TABLE [H_aMast]

DROP CONSTRAINT [PK_H_aMAST];

ALTER TABLE [H_aMast] ADD CONSTRAINT [PK_H_aMAST] PRIMARY KEY CLUSTERED (H_MastId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aMast_LocationCd') BEGIN  Drop INDEX [IX_H_aMast_LocationCd] on [H_aMast]; END */

CREATE NONCLUSTERED INDEX [IX_H_aMast_LocationCd] ON [H_aMast] (LocationCd ASC)

ALTER TABLE [H_aMifvpp]

DROP CONSTRAINT [PK_H_aMIFVPP];

ALTER TABLE [H_aMifvpp] ADD CONSTRAINT [PK_H_aMIFVPP] PRIMARY KEY CLUSTERED (H_MifvppId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aMifvpp_LocationCd') BEGIN  Drop INDEX [IX_H_aMifvpp_LocationCd] on [H_aMifvpp]; END */

CREATE NONCLUSTERED INDEX [IX_H_aMifvpp_LocationCd] ON [H_aMifvpp] (LocationCd ASC)

ALTER TABLE [H_aMmpi]

DROP CONSTRAINT [PK_H_aMMPI];

ALTER TABLE [H_aMmpi] ADD CONSTRAINT [PK_H_aMMPI] PRIMARY KEY CLUSTERED (H_MmpiId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aMmpi_LocationCd') BEGIN  Drop INDEX [IX_H_aMmpi_LocationCd] on [H_aMmpi]; END */

CREATE NONCLUSTERED INDEX [IX_H_aMmpi_LocationCd] ON [H_aMmpi] (LocationCd ASC)

ALTER TABLE [H_aMultiDimAngerInventory]

DROP CONSTRAINT [PK_H_aMultiDimAngerInventory];

ALTER TABLE [H_aMultiDimAngerInventory] ADD CONSTRAINT [PK_H_aMultiDimAngerInventory] PRIMARY KEY CLUSTERED (H_MultiDimAngerInventoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aMultiDimAngerInventory_LocationCd') BEGIN  Drop INDEX [IX_H_aMultiDimAngerInventory_LocationCd] on [H_aMultiDimAngerInventory]; END */

CREATE NONCLUSTERED INDEX [IX_H_aMultiDimAngerInventory_LocationCd] ON [H_aMultiDimAngerInventory] (LocationCd ASC)

ALTER TABLE [H_aMultiphasicSexInventory]

DROP CONSTRAINT [PK_H_aMultiphasicSexInventory];

ALTER TABLE [H_aMultiphasicSexInventory] ADD CONSTRAINT [PK_H_aMultiphasicSexInventory] PRIMARY KEY CLUSTERED (H_MultiphasicSexInventoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aMultiphasicSexInventory_LocationCd') BEGIN  Drop INDEX [IX_H_aMultiphasicSexInventory_LocationCd] on [H_aMultiphasicSexInventory]; END */

CREATE NONCLUSTERED INDEX [IX_H_aMultiphasicSexInventory_LocationCd] ON [H_aMultiphasicSexInventory] (LocationCd ASC)

ALTER TABLE [H_aOwiContinuumWorksheet]

DROP CONSTRAINT [PK_H_aOWIContinuumWorksheet];

ALTER TABLE [H_aOwiContinuumWorksheet] ADD CONSTRAINT [PK_H_aOWIContinuumWorksheet] PRIMARY KEY CLUSTERED (H_OwiContinuumWorksheetId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aOwiContinuumWorksheet_LocationCd') BEGIN  Drop INDEX [IX_H_aOwiContinuumWorksheet_LocationCd] on [H_aOwiContinuumWorksheet]; END */

CREATE NONCLUSTERED INDEX [IX_H_aOwiContinuumWorksheet_LocationCd] ON [H_aOwiContinuumWorksheet] (LocationCd ASC)

ALTER TABLE [H_aOwiContinuumWorksheetII]

DROP CONSTRAINT [PK_H_aOWIContinuumWorksheetII];

ALTER TABLE [H_aOwiContinuumWorksheetII] ADD CONSTRAINT [PK_H_aOWIContinuumWorksheetII] PRIMARY KEY CLUSTERED (H_OwiContinuumWorksheetIIId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aOwiContinuumWorksheetII_LocationCd') BEGIN  Drop INDEX [IX_H_aOwiContinuumWorksheetII_LocationCd] on [H_aOwiContinuumWorksheetII]; END */

CREATE NONCLUSTERED INDEX [IX_H_aOwiContinuumWorksheetII_LocationCd] ON [H_aOwiContinuumWorksheetII] (LocationCd ASC)

ALTER TABLE [H_aParoleBoardRiskAssessment]

DROP CONSTRAINT [PK_H_aParoleBoardRiskAssessment];

ALTER TABLE [H_aParoleBoardRiskAssessment] ADD CONSTRAINT [PK_H_aParoleBoardRiskAssessment] PRIMARY KEY CLUSTERED (H_ParoleBoardRiskAssessmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aParoleBoardRiskAssessment_LocationCd') BEGIN  Drop INDEX [IX_H_aParoleBoardRiskAssessment_LocationCd] on [H_aParoleBoardRiskAssessment]; END */

CREATE NONCLUSTERED INDEX [IX_H_aParoleBoardRiskAssessment_LocationCd] ON [H_aParoleBoardRiskAssessment] (LocationCd ASC)

ALTER TABLE [H_aPsaBondReviewHearings]

DROP CONSTRAINT [PK_H_aPsaBondReviewHearings];

ALTER TABLE [H_aPsaBondReviewHearings] ADD CONSTRAINT [PK_H_aPsaBondReviewHearings] PRIMARY KEY CLUSTERED (H_PsaBondReviewHearingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aPsaBondReviewHearings_LocationCd') BEGIN  Drop INDEX [IX_H_aPsaBondReviewHearings_LocationCd] on [H_aPsaBondReviewHearings]; END */

CREATE NONCLUSTERED INDEX [IX_H_aPsaBondReviewHearings_LocationCd] ON [H_aPsaBondReviewHearings] (LocationCd ASC)

ALTER TABLE [H_aPsaBrhPretrialDecisions]

DROP CONSTRAINT [PK_H_aPsaBrhPretrialDecisions];

ALTER TABLE [H_aPsaBrhPretrialDecisions] ADD CONSTRAINT [PK_H_aPsaBrhPretrialDecisions] PRIMARY KEY CLUSTERED (H_PsaBrhPretrialDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aPsaBrhPretrialDecisions_LocationCd') BEGIN  Drop INDEX [IX_H_aPsaBrhPretrialDecisions_LocationCd] on [H_aPsaBrhPretrialDecisions]; END */

CREATE NONCLUSTERED INDEX [IX_H_aPsaBrhPretrialDecisions_LocationCd] ON [H_aPsaBrhPretrialDecisions] (LocationCd ASC)

ALTER TABLE [H_aPsaCharges]

DROP CONSTRAINT [PK_H_aPsaCharges];

ALTER TABLE [H_aPsaCharges] ADD CONSTRAINT [PK_H_aPsaCharges] PRIMARY KEY CLUSTERED (H_PsaChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aPsaCharges_LocationCd') BEGIN  Drop INDEX [IX_H_aPsaCharges_LocationCd] on [H_aPsaCharges]; END */

CREATE NONCLUSTERED INDEX [IX_H_aPsaCharges_LocationCd] ON [H_aPsaCharges] (LocationCd ASC)

ALTER TABLE [H_aPsaPdPretrialDecisions]

DROP CONSTRAINT [PK_H_aPsaPdPretrialDecisions];

ALTER TABLE [H_aPsaPdPretrialDecisions] ADD CONSTRAINT [PK_H_aPsaPdPretrialDecisions] PRIMARY KEY CLUSTERED (H_PsaPdPretrialDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aPsaPdPretrialDecisions_LocationCd') BEGIN  Drop INDEX [IX_H_aPsaPdPretrialDecisions_LocationCd] on [H_aPsaPdPretrialDecisions]; END */

CREATE NONCLUSTERED INDEX [IX_H_aPsaPdPretrialDecisions_LocationCd] ON [H_aPsaPdPretrialDecisions] (LocationCd ASC)

ALTER TABLE [H_aPsaPretrialDecisions]

DROP CONSTRAINT [PK_H_aPsaPretrialDecisions];

ALTER TABLE [H_aPsaPretrialDecisions] ADD CONSTRAINT [PK_H_aPsaPretrialDecisions] PRIMARY KEY CLUSTERED (H_PsaPretrialDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aPsaPretrialDecisions_LocationCd') BEGIN  Drop INDEX [IX_H_aPsaPretrialDecisions_LocationCd] on [H_aPsaPretrialDecisions]; END */

CREATE NONCLUSTERED INDEX [IX_H_aPsaPretrialDecisions_LocationCd] ON [H_aPsaPretrialDecisions] (LocationCd ASC)

ALTER TABLE [H_aPsychDiagnosticAxis1]

DROP CONSTRAINT [PK_H_aPsychDiagnosticAxis1];

ALTER TABLE [H_aPsychDiagnosticAxis1] ADD CONSTRAINT [PK_H_aPsychDiagnosticAxis1] PRIMARY KEY CLUSTERED (H_PsychDiagnosticAxis1Id ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aPsychDiagnosticAxis1_LocationCd') BEGIN  Drop INDEX [IX_H_aPsychDiagnosticAxis1_LocationCd] on [H_aPsychDiagnosticAxis1]; END */

CREATE NONCLUSTERED INDEX [IX_H_aPsychDiagnosticAxis1_LocationCd] ON [H_aPsychDiagnosticAxis1] (LocationCd ASC)

ALTER TABLE [H_aPsychDiagnosticAxis2]

DROP CONSTRAINT [PK_H_aPsychDiagnosticAxis2];

ALTER TABLE [H_aPsychDiagnosticAxis2] ADD CONSTRAINT [PK_H_aPsychDiagnosticAxis2] PRIMARY KEY CLUSTERED (H_PsychDiagnosticAxis2Id ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aPsychDiagnosticAxis2_LocationCd') BEGIN  Drop INDEX [IX_H_aPsychDiagnosticAxis2_LocationCd] on [H_aPsychDiagnosticAxis2]; END */

CREATE NONCLUSTERED INDEX [IX_H_aPsychDiagnosticAxis2_LocationCd] ON [H_aPsychDiagnosticAxis2] (LocationCd ASC)

ALTER TABLE [H_aPsychDiagnosticImpressions]

DROP CONSTRAINT [PK_H_aPsychDiagnosticImpressions];

ALTER TABLE [H_aPsychDiagnosticImpressions] ADD CONSTRAINT [PK_H_aPsychDiagnosticImpressions] PRIMARY KEY CLUSTERED (H_PsychDiagnosticImpressionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aPsychDiagnosticImpressions_LocationCd') BEGIN  Drop INDEX [IX_H_aPsychDiagnosticImpressions_LocationCd] on [H_aPsychDiagnosticImpressions]; END */

CREATE NONCLUSTERED INDEX [IX_H_aPsychDiagnosticImpressions_LocationCd] ON [H_aPsychDiagnosticImpressions] (LocationCd ASC)

ALTER TABLE [H_aPsychosexualAssessment]

DROP CONSTRAINT [PK_H_aPsychosexualAssessment];

ALTER TABLE [H_aPsychosexualAssessment] ADD CONSTRAINT [PK_H_aPsychosexualAssessment] PRIMARY KEY CLUSTERED (H_PsychosexualAssessmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aPsychosexualAssessment_LocationCd') BEGIN  Drop INDEX [IX_H_aPsychosexualAssessment_LocationCd] on [H_aPsychosexualAssessment]; END */

CREATE NONCLUSTERED INDEX [IX_H_aPsychosexualAssessment_LocationCd] ON [H_aPsychosexualAssessment] (LocationCd ASC)

ALTER TABLE [H_aPublicSafetyAssessment]

DROP CONSTRAINT [PK_H_aPublicSafetyAssessment];

ALTER TABLE [H_aPublicSafetyAssessment] ADD CONSTRAINT [PK_H_aPublicSafetyAssessment] PRIMARY KEY CLUSTERED (H_PublicSafetyAssessmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aPublicSafetyAssessment_LocationCd') BEGIN  Drop INDEX [IX_H_aPublicSafetyAssessment_LocationCd] on [H_aPublicSafetyAssessment]; END */

CREATE NONCLUSTERED INDEX [IX_H_aPublicSafetyAssessment_LocationCd] ON [H_aPublicSafetyAssessment] (LocationCd ASC)

ALTER TABLE [H_aSassi]

DROP CONSTRAINT [PK_H_aSASSI];

ALTER TABLE [H_aSassi] ADD CONSTRAINT [PK_H_aSASSI] PRIMARY KEY CLUSTERED (H_SassiId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aSassi_LocationCd') BEGIN  Drop INDEX [IX_H_aSassi_LocationCd] on [H_aSassi]; END */

CREATE NONCLUSTERED INDEX [IX_H_aSassi_LocationCd] ON [H_aSassi] (LocationCd ASC)

ALTER TABLE [H_aSassiResultingRecommendations]

DROP CONSTRAINT [PK_H_aSASSIResultingRecommendations];

ALTER TABLE [H_aSassiResultingRecommendations] ADD CONSTRAINT [PK_H_aSASSIResultingRecommendations] PRIMARY KEY CLUSTERED (H_SassiResultingRecommendationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aSassiResultingRecommendations_LocationCd') BEGIN  Drop INDEX [IX_H_aSassiResultingRecommendations_LocationCd] on [H_aSassiResultingRecommendations]; END */

CREATE NONCLUSTERED INDEX [IX_H_aSassiResultingRecommendations_LocationCd] ON [H_aSassiResultingRecommendations] (LocationCd ASC)

ALTER TABLE [H_aSchlossenIq]

DROP CONSTRAINT [PK_H_aSchlossenIQ];

ALTER TABLE [H_aSchlossenIq] ADD CONSTRAINT [PK_H_aSchlossenIQ] PRIMARY KEY CLUSTERED (H_SchlossenIqId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aSchlossenIq_LocationCd') BEGIN  Drop INDEX [IX_H_aSchlossenIq_LocationCd] on [H_aSchlossenIq]; END */

CREATE NONCLUSTERED INDEX [IX_H_aSchlossenIq_LocationCd] ON [H_aSchlossenIq] (LocationCd ASC)

ALTER TABLE [H_aSexualViolencePropensityFemale]

DROP CONSTRAINT [PK_H_aSexualViolencePropensityFemale];

ALTER TABLE [H_aSexualViolencePropensityFemale] ADD CONSTRAINT [PK_H_aSexualViolencePropensityFemale] PRIMARY KEY CLUSTERED (H_SexualViolencePropensityFemaleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aSexualViolencePropensityFemale_LocationCd') BEGIN  Drop INDEX [IX_H_aSexualViolencePropensityFemale_LocationCd] on [H_aSexualViolencePropensityFemale]; END */

CREATE NONCLUSTERED INDEX [IX_H_aSexualViolencePropensityFemale_LocationCd] ON [H_aSexualViolencePropensityFemale] (LocationCd ASC)

ALTER TABLE [H_aSexualViolencePropensityMale]

DROP CONSTRAINT [PK_H_aSexualViolencePropensityMale];

ALTER TABLE [H_aSexualViolencePropensityMale] ADD CONSTRAINT [PK_H_aSexualViolencePropensityMale] PRIMARY KEY CLUSTERED (H_SexualViolencePropensityMaleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aSexualViolencePropensityMale_LocationCd') BEGIN  Drop INDEX [IX_H_aSexualViolencePropensityMale_LocationCd] on [H_aSexualViolencePropensityMale]; END */

CREATE NONCLUSTERED INDEX [IX_H_aSexualViolencePropensityMale_LocationCd] ON [H_aSexualViolencePropensityMale] (LocationCd ASC)

ALTER TABLE [H_aSexualViolencePropensityRevisedMale]

DROP CONSTRAINT [PK_H_aSexualViolencePropensityRevisedMale];

ALTER TABLE [H_aSexualViolencePropensityRevisedMale] ADD CONSTRAINT [PK_H_aSexualViolencePropensityRevisedMale] PRIMARY KEY CLUSTERED (H_SexualViolencePropensityRevisedMaleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aSexualViolencePropensityRevisedMale_LocationCd') BEGIN  Drop INDEX [IX_H_aSexualViolencePropensityRevisedMale_LocationCd] on [H_aSexualViolencePropensityRevisedMale]; END */

CREATE NONCLUSTERED INDEX [IX_H_aSexualViolencePropensityRevisedMale_LocationCd] ON [H_aSexualViolencePropensityRevisedMale] (LocationCd ASC)

ALTER TABLE [H_aShipleyIq]

DROP CONSTRAINT [PK_H_aShipleyIQ];

ALTER TABLE [H_aShipleyIq] ADD CONSTRAINT [PK_H_aShipleyIQ] PRIMARY KEY CLUSTERED (H_ShipleyIqId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aShipleyIq_LocationCd') BEGIN  Drop INDEX [IX_H_aShipleyIq_LocationCd] on [H_aShipleyIq]; END */

CREATE NONCLUSTERED INDEX [IX_H_aShipleyIq_LocationCd] ON [H_aShipleyIq] (LocationCd ASC)

ALTER TABLE [H_aSirAssessment]

DROP CONSTRAINT [PK_H_aSIRAssessment];

ALTER TABLE [H_aSirAssessment] ADD CONSTRAINT [PK_H_aSIRAssessment] PRIMARY KEY CLUSTERED (H_SirAssessmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aSirAssessment_LocationCd') BEGIN  Drop INDEX [IX_H_aSirAssessment_LocationCd] on [H_aSirAssessment]; END */

CREATE NONCLUSTERED INDEX [IX_H_aSirAssessment_LocationCd] ON [H_aSirAssessment] (LocationCd ASC)

ALTER TABLE [H_aSotips]

DROP CONSTRAINT [PK_H_aSotips];

ALTER TABLE [H_aSotips] ADD CONSTRAINT [PK_H_aSotips] PRIMARY KEY CLUSTERED (H_SotipsId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aSotips_LocationCd') BEGIN  Drop INDEX [IX_H_aSotips_LocationCd] on [H_aSotips]; END */

CREATE NONCLUSTERED INDEX [IX_H_aSotips_LocationCd] ON [H_aSotips] (LocationCd ASC)

ALTER TABLE [H_AssetInformation]

DROP CONSTRAINT [PK_H_AssetInformation];

ALTER TABLE [H_AssetInformation] ADD CONSTRAINT [PK_H_AssetInformation] PRIMARY KEY CLUSTERED (H_AssetInfoId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_AssetInformation_LocationCd') BEGIN  Drop INDEX [IX_H_AssetInformation_LocationCd] on [H_AssetInformation]; END */

CREATE NONCLUSTERED INDEX [IX_H_AssetInformation_LocationCd] ON [H_AssetInformation] (LocationCd ASC)

ALTER TABLE [H_aStable2007]

DROP CONSTRAINT [PK_H_aStable2007];

ALTER TABLE [H_aStable2007] ADD CONSTRAINT [PK_H_aStable2007] PRIMARY KEY CLUSTERED (H_Stable2007Id ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aStable2007_LocationCd') BEGIN  Drop INDEX [IX_H_aStable2007_LocationCd] on [H_aStable2007]; END */

CREATE NONCLUSTERED INDEX [IX_H_aStable2007_LocationCd] ON [H_aStable2007] (LocationCd ASC)

ALTER TABLE [H_aStatic99]

DROP CONSTRAINT [PK_H_aStatic99];

ALTER TABLE [H_aStatic99] ADD CONSTRAINT [PK_H_aStatic99] PRIMARY KEY CLUSTERED (H_Static99Id ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aStatic99_LocationCd') BEGIN  Drop INDEX [IX_H_aStatic99_LocationCd] on [H_aStatic99]; END */

CREATE NONCLUSTERED INDEX [IX_H_aStatic99_LocationCd] ON [H_aStatic99] (LocationCd ASC)

ALTER TABLE [H_aStatic99R]

DROP CONSTRAINT [PK_H_aStatic99R];

ALTER TABLE [H_aStatic99R] ADD CONSTRAINT [PK_H_aStatic99R] PRIMARY KEY CLUSTERED (H_Static99RId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aStatic99R_LocationCd') BEGIN  Drop INDEX [IX_H_aStatic99R_LocationCd] on [H_aStatic99R]; END */

CREATE NONCLUSTERED INDEX [IX_H_aStatic99R_LocationCd] ON [H_aStatic99R] (LocationCd ASC)

ALTER TABLE [H_aTabe]

DROP CONSTRAINT [PK_H_aTABE];

ALTER TABLE [H_aTabe] ADD CONSTRAINT [PK_H_aTABE] PRIMARY KEY CLUSTERED (H_TabeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aTabe_LocationCd') BEGIN  Drop INDEX [IX_H_aTabe_LocationCd] on [H_aTabe]; END */

CREATE NONCLUSTERED INDEX [IX_H_aTabe_LocationCd] ON [H_aTabe] (LocationCd ASC)

ALTER TABLE [H_aTabe1112]

DROP CONSTRAINT [PK_H_aTabe1112];

ALTER TABLE [H_aTabe1112] ADD CONSTRAINT [PK_H_aTabe1112] PRIMARY KEY CLUSTERED (H_Tabe1112Id ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aTabe1112_LocationCd') BEGIN  Drop INDEX [IX_H_aTabe1112_LocationCd] on [H_aTabe1112]; END */

CREATE NONCLUSTERED INDEX [IX_H_aTabe1112_LocationCd] ON [H_aTabe1112] (LocationCd ASC)

ALTER TABLE [H_aTabeMostRecent]

DROP CONSTRAINT [PK_H_aTabeMostRecent];

ALTER TABLE [H_aTabeMostRecent] ADD CONSTRAINT [PK_H_aTabeMostRecent] PRIMARY KEY CLUSTERED (H_TabeMostRecentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aTabeMostRecent_LocationCd') BEGIN  Drop INDEX [IX_H_aTabeMostRecent_LocationCd] on [H_aTabeMostRecent]; END */

CREATE NONCLUSTERED INDEX [IX_H_aTabeMostRecent_LocationCd] ON [H_aTabeMostRecent] (LocationCd ASC)

ALTER TABLE [H_aTcuDrug]

DROP CONSTRAINT [PK_H_aTCUDrug];

ALTER TABLE [H_aTcuDrug] ADD CONSTRAINT [PK_H_aTCUDrug] PRIMARY KEY CLUSTERED (H_TcuDrugId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aTcuDrug_LocationCd') BEGIN  Drop INDEX [IX_H_aTcuDrug_LocationCd] on [H_aTcuDrug]; END */

CREATE NONCLUSTERED INDEX [IX_H_aTcuDrug_LocationCd] ON [H_aTcuDrug] (LocationCd ASC)

ALTER TABLE [H_aUrica]

DROP CONSTRAINT [PK_H_aURICA];

ALTER TABLE [H_aUrica] ADD CONSTRAINT [PK_H_aURICA] PRIMARY KEY CLUSTERED (H_UricaId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aUrica_LocationCd') BEGIN  Drop INDEX [IX_H_aUrica_LocationCd] on [H_aUrica]; END */

CREATE NONCLUSTERED INDEX [IX_H_aUrica_LocationCd] ON [H_aUrica] (LocationCd ASC)

ALTER TABLE [H_aWais_rIq]

DROP CONSTRAINT [PK_H_aWais_RIQ];

ALTER TABLE [H_aWais_rIq] ADD CONSTRAINT [PK_H_aWais_RIQ] PRIMARY KEY CLUSTERED (H_Wais_rIqId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aWais_rIq_LocationCd') BEGIN  Drop INDEX [IX_H_aWais_rIq_LocationCd] on [H_aWais_rIq]; END */

CREATE NONCLUSTERED INDEX [IX_H_aWais_rIq_LocationCd] ON [H_aWais_rIq] (LocationCd ASC)

ALTER TABLE [H_aWasiII]

DROP CONSTRAINT [PK_H_aWasiII];

ALTER TABLE [H_aWasiII] ADD CONSTRAINT [PK_H_aWasiII] PRIMARY KEY CLUSTERED (H_WasiIIId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_aWasiII_LocationCd') BEGIN  Drop INDEX [IX_H_aWasiII_LocationCd] on [H_aWasiII]; END */

CREATE NONCLUSTERED INDEX [IX_H_aWasiII_LocationCd] ON [H_aWasiII] (LocationCd ASC)

ALTER TABLE [H_BarcodeInstances]

DROP CONSTRAINT [PK_H_BarcodeInstances];

ALTER TABLE [H_BarcodeInstances] ADD CONSTRAINT [PK_H_BarcodeInstances] PRIMARY KEY CLUSTERED (H_BarcodeInstanceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BarcodeInstances_LocationCd') BEGIN  Drop INDEX [IX_H_BarcodeInstances_LocationCd] on [H_BarcodeInstances]; END */

CREATE NONCLUSTERED INDEX [IX_H_BarcodeInstances_LocationCd] ON [H_BarcodeInstances] (LocationCd ASC)

ALTER TABLE [H_BirthInformation]

DROP CONSTRAINT [PK_H_BirthInformation];

ALTER TABLE [H_BirthInformation] ADD CONSTRAINT [PK_H_BirthInformation] PRIMARY KEY CLUSTERED (H_BirthInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BirthInformation_LocationCd') BEGIN  Drop INDEX [IX_H_BirthInformation_LocationCd] on [H_BirthInformation]; END */

CREATE NONCLUSTERED INDEX [IX_H_BirthInformation_LocationCd] ON [H_BirthInformation] (LocationCd ASC)

ALTER TABLE [H_BodyMarkings]

DROP CONSTRAINT [PK_H_BodyMarkings];

ALTER TABLE [H_BodyMarkings] ADD CONSTRAINT [PK_H_BodyMarkings] PRIMARY KEY CLUSTERED (H_BodyMarkingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BodyMarkings_LocationCd') BEGIN  Drop INDEX [IX_H_BodyMarkings_LocationCd] on [H_BodyMarkings]; END */

CREATE NONCLUSTERED INDEX [IX_H_BodyMarkings_LocationCd] ON [H_BodyMarkings] (LocationCd ASC)

ALTER TABLE [H_BodyMarkingThreatGroupValidation]

DROP CONSTRAINT [PK_H_BodyMarkingThreatGroupValidation];

ALTER TABLE [H_BodyMarkingThreatGroupValidation] ADD CONSTRAINT [PK_H_BodyMarkingThreatGroupValidation] PRIMARY KEY CLUSTERED (H_BodyMarkingTgValidationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BodyMarkingThreatGroupValidation_LocationCd') BEGIN  Drop INDEX [IX_H_BodyMarkingThreatGroupValidation_LocationCd] on [H_BodyMarkingThreatGroupValidation]; END */

CREATE NONCLUSTERED INDEX [IX_H_BodyMarkingThreatGroupValidation_LocationCd] ON [H_BodyMarkingThreatGroupValidation] (LocationCd ASC)

ALTER TABLE [H_BondReviewHearingCharges]

DROP CONSTRAINT [PK_H_BondReviewHearingCharges];

ALTER TABLE [H_BondReviewHearingCharges] ADD CONSTRAINT [PK_H_BondReviewHearingCharges] PRIMARY KEY CLUSTERED (H_BondReviewHearingChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BondReviewHearingCharges_LocationCd') BEGIN  Drop INDEX [IX_H_BondReviewHearingCharges_LocationCd] on [H_BondReviewHearingCharges]; END */

CREATE NONCLUSTERED INDEX [IX_H_BondReviewHearingCharges_LocationCd] ON [H_BondReviewHearingCharges] (LocationCd ASC)

ALTER TABLE [H_BondReviewHearings]

DROP CONSTRAINT [PK_H_BondReviewHearings];

ALTER TABLE [H_BondReviewHearings] ADD CONSTRAINT [PK_H_BondReviewHearings] PRIMARY KEY CLUSTERED (H_BondReviewHearingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BondReviewHearings_LocationCd') BEGIN  Drop INDEX [IX_H_BondReviewHearings_LocationCd] on [H_BondReviewHearings]; END */

CREATE NONCLUSTERED INDEX [IX_H_BondReviewHearings_LocationCd] ON [H_BondReviewHearings] (LocationCd ASC)

ALTER TABLE [H_BopBoardMemberConditions]

DROP CONSTRAINT [PK_H_BopBoardMemberConditions];

ALTER TABLE [H_BopBoardMemberConditions] ADD CONSTRAINT [PK_H_BopBoardMemberConditions] PRIMARY KEY CLUSTERED (H_BopBoardMemberConditionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopBoardMemberConditions_LocationCd') BEGIN  Drop INDEX [IX_H_BopBoardMemberConditions_LocationCd] on [H_BopBoardMemberConditions]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopBoardMemberConditions_LocationCd] ON [H_BopBoardMemberConditions] (LocationCd ASC)

ALTER TABLE [H_BopBoardMemberDecisions]

DROP CONSTRAINT [PK_H_BopBoardMemberDecisions];

ALTER TABLE [H_BopBoardMemberDecisions] ADD CONSTRAINT [PK_H_BopBoardMemberDecisions] PRIMARY KEY CLUSTERED (H_BopBoardMemberDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopBoardMemberDecisions_LocationCd') BEGIN  Drop INDEX [IX_H_BopBoardMemberDecisions_LocationCd] on [H_BopBoardMemberDecisions]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopBoardMemberDecisions_LocationCd] ON [H_BopBoardMemberDecisions] (LocationCd ASC)

ALTER TABLE [H_BopBoardMemberReasons_OLD]

DROP CONSTRAINT [PK_H_BopBoardMemberReasons];

ALTER TABLE [H_BopBoardMemberReasons_OLD] ADD CONSTRAINT [PK_H_BopBoardMemberReasons] PRIMARY KEY CLUSTERED (H_BopBoardMemberReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopBoardMemberReasons_OLD_LocationCd') BEGIN  Drop INDEX [IX_H_BopBoardMemberReasons_OLD_LocationCd] on [H_BopBoardMemberReasons_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopBoardMemberReasons_OLD_LocationCd] ON [H_BopBoardMemberReasons_OLD] (LocationCd ASC)

ALTER TABLE [H_BopCommBoardMemberRecs]

DROP CONSTRAINT [PK_H_BopBoardMemberCommRecs];

ALTER TABLE [H_BopCommBoardMemberRecs] ADD CONSTRAINT [PK_H_BopBoardMemberCommRecs] PRIMARY KEY CLUSTERED (H_BopCommBoardMemberRecId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopCommBoardMemberRecs_LocationCd') BEGIN  Drop INDEX [IX_H_BopCommBoardMemberRecs_LocationCd] on [H_BopCommBoardMemberRecs]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopCommBoardMemberRecs_LocationCd] ON [H_BopCommBoardMemberRecs] (LocationCd ASC)

ALTER TABLE [H_BopCommGovernorDecisions]

DROP CONSTRAINT [PK_H_BopCommGovernorDecisions];

ALTER TABLE [H_BopCommGovernorDecisions] ADD CONSTRAINT [PK_H_BopCommGovernorDecisions] PRIMARY KEY CLUSTERED (H_BopCommGovernorDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopCommGovernorDecisions_LocationCd') BEGIN  Drop INDEX [IX_H_BopCommGovernorDecisions_LocationCd] on [H_BopCommGovernorDecisions]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopCommGovernorDecisions_LocationCd] ON [H_BopCommGovernorDecisions] (LocationCd ASC)

ALTER TABLE [H_BopCommutations]

DROP CONSTRAINT [PK_H_BopCommutations];

ALTER TABLE [H_BopCommutations] ADD CONSTRAINT [PK_H_BopCommutations] PRIMARY KEY CLUSTERED (H_BopCommutationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopCommutations_LocationCd') BEGIN  Drop INDEX [IX_H_BopCommutations_LocationCd] on [H_BopCommutations]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopCommutations_LocationCd] ON [H_BopCommutations] (LocationCd ASC)

ALTER TABLE [H_BopCorrespondence]

DROP CONSTRAINT [PK_H_BopCorrespondence];

ALTER TABLE [H_BopCorrespondence] ADD CONSTRAINT [PK_H_BopCorrespondence] PRIMARY KEY CLUSTERED (H_BopCorrespondenceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopCorrespondence_LocationCd') BEGIN  Drop INDEX [IX_H_BopCorrespondence_LocationCd] on [H_BopCorrespondence]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopCorrespondence_LocationCd] ON [H_BopCorrespondence] (LocationCd ASC)

ALTER TABLE [H_BopDecisionCaseManagerConditions]

DROP CONSTRAINT [PK_H_BopDecisionCaseManagerConditions];

ALTER TABLE [H_BopDecisionCaseManagerConditions] ADD CONSTRAINT [PK_H_BopDecisionCaseManagerConditions] PRIMARY KEY CLUSTERED (H_BopDecisionCaseManagerConditionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopDecisionCaseManagerConditions_LocationCd') BEGIN  Drop INDEX [IX_H_BopDecisionCaseManagerConditions_LocationCd] on [H_BopDecisionCaseManagerConditions]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopDecisionCaseManagerConditions_LocationCd] ON [H_BopDecisionCaseManagerConditions] (LocationCd ASC)

ALTER TABLE [H_BopDecisionCaseManagerDecisions]

DROP CONSTRAINT [PK_H_BopDecisionCaseManagerDecisions];

ALTER TABLE [H_BopDecisionCaseManagerDecisions] ADD CONSTRAINT [PK_H_BopDecisionCaseManagerDecisions] PRIMARY KEY CLUSTERED (H_BopDecisionCaseManagerDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopDecisionCaseManagerDecisions_LocationCd') BEGIN  Drop INDEX [IX_H_BopDecisionCaseManagerDecisions_LocationCd] on [H_BopDecisionCaseManagerDecisions]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopDecisionCaseManagerDecisions_LocationCd] ON [H_BopDecisionCaseManagerDecisions] (LocationCd ASC)

ALTER TABLE [H_BopDecisionConditions]

DROP CONSTRAINT [PK_H_BopDecisionConditions];

ALTER TABLE [H_BopDecisionConditions] ADD CONSTRAINT [PK_H_BopDecisionConditions] PRIMARY KEY CLUSTERED (H_BopDecisionConditionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopDecisionConditions_LocationCd') BEGIN  Drop INDEX [IX_H_BopDecisionConditions_LocationCd] on [H_BopDecisionConditions]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopDecisionConditions_LocationCd] ON [H_BopDecisionConditions] (LocationCd ASC)

ALTER TABLE [H_BopDecisionReasons_OLD]

DROP CONSTRAINT [PK_H_BopDecisionReasons];

ALTER TABLE [H_BopDecisionReasons_OLD] ADD CONSTRAINT [PK_H_BopDecisionReasons] PRIMARY KEY CLUSTERED (H_BopDecisionReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopDecisionReasons_OLD_LocationCd') BEGIN  Drop INDEX [IX_H_BopDecisionReasons_OLD_LocationCd] on [H_BopDecisionReasons_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopDecisionReasons_OLD_LocationCd] ON [H_BopDecisionReasons_OLD] (LocationCd ASC)

ALTER TABLE [H_BopDecisions]

DROP CONSTRAINT [PK_H_BopDecisions];

ALTER TABLE [H_BopDecisions] ADD CONSTRAINT [PK_H_BopDecisions] PRIMARY KEY CLUSTERED (H_BopDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopDecisions_LocationCd') BEGIN  Drop INDEX [IX_H_BopDecisions_LocationCd] on [H_BopDecisions]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopDecisions_LocationCd] ON [H_BopDecisions] (LocationCd ASC)

ALTER TABLE [H_BopEmployabilityCertificates]

DROP CONSTRAINT [PK_H_BopEmployabilityCertificates];

ALTER TABLE [H_BopEmployabilityCertificates] ADD CONSTRAINT [PK_H_BopEmployabilityCertificates] PRIMARY KEY CLUSTERED (H_BopEmployabilityCertificateId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopEmployabilityCertificates_LocationCd') BEGIN  Drop INDEX [IX_H_BopEmployabilityCertificates_LocationCd] on [H_BopEmployabilityCertificates]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopEmployabilityCertificates_LocationCd] ON [H_BopEmployabilityCertificates] (LocationCd ASC)

ALTER TABLE [H_BopExecutiveClemency]

DROP CONSTRAINT [PK_H_ClemencyDetails];

ALTER TABLE [H_BopExecutiveClemency] ADD CONSTRAINT [PK_H_ClemencyDetails] PRIMARY KEY CLUSTERED (H_BopExecutiveClemencyId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopExecutiveClemency_LocationCd') BEGIN  Drop INDEX [IX_H_BopExecutiveClemency_LocationCd] on [H_BopExecutiveClemency]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopExecutiveClemency_LocationCd] ON [H_BopExecutiveClemency] (LocationCd ASC)

ALTER TABLE [H_BopExecutiveClemencyAttachments]

DROP CONSTRAINT [PK_H_BopExecutiveClemencyAttachments];

ALTER TABLE [H_BopExecutiveClemencyAttachments] ADD CONSTRAINT [PK_H_BopExecutiveClemencyAttachments] PRIMARY KEY CLUSTERED (H_BopExecutiveClemencyAttachmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopExecutiveClemencyAttachments_LocationCd') BEGIN  Drop INDEX [IX_H_BopExecutiveClemencyAttachments_LocationCd] on [H_BopExecutiveClemencyAttachments]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopExecutiveClemencyAttachments_LocationCd] ON [H_BopExecutiveClemencyAttachments] (LocationCd ASC)

ALTER TABLE [H_BopExecutiveClemencyBoardMemberRecs]

DROP CONSTRAINT [PK_H_ClemencyBoardMemberRecommendations];

ALTER TABLE [H_BopExecutiveClemencyBoardMemberRecs] ADD CONSTRAINT [PK_H_ClemencyBoardMemberRecommendations] PRIMARY KEY CLUSTERED (H_BopExecutiveClemencyBoardMemberRecId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopExecutiveClemencyBoardMemberRecs_LocationCd') BEGIN  Drop INDEX [IX_H_BopExecutiveClemencyBoardMemberRecs_LocationCd] on [H_BopExecutiveClemencyBoardMemberRecs]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopExecutiveClemencyBoardMemberRecs_LocationCd] ON [H_BopExecutiveClemencyBoardMemberRecs] (LocationCd ASC)

ALTER TABLE [H_BopExecutiveClemencyGovernorDecisions]

DROP CONSTRAINT [PK_H_BopExecutiveClemencyGovernorDecisions];

ALTER TABLE [H_BopExecutiveClemencyGovernorDecisions] ADD CONSTRAINT [PK_H_BopExecutiveClemencyGovernorDecisions] PRIMARY KEY CLUSTERED (H_BopExecutiveClemencyGovernorDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopExecutiveClemencyGovernorDecisions_LocationCd') BEGIN  Drop INDEX [IX_H_BopExecutiveClemencyGovernorDecisions_LocationCd] on [H_BopExecutiveClemencyGovernorDecisions]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopExecutiveClemencyGovernorDecisions_LocationCd] ON [H_BopExecutiveClemencyGovernorDecisions] (LocationCd ASC)

ALTER TABLE [H_BopExecutiveClemencyPhones]

DROP CONSTRAINT [PK_H_BopExecutiveClemencyPhones];

ALTER TABLE [H_BopExecutiveClemencyPhones] ADD CONSTRAINT [PK_H_BopExecutiveClemencyPhones] PRIMARY KEY CLUSTERED (H_BopExecutiveClemencyPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopExecutiveClemencyPhones_LocationCd') BEGIN  Drop INDEX [IX_H_BopExecutiveClemencyPhones_LocationCd] on [H_BopExecutiveClemencyPhones]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopExecutiveClemencyPhones_LocationCd] ON [H_BopExecutiveClemencyPhones] (LocationCd ASC)

ALTER TABLE [H_BopInterviews]

DROP CONSTRAINT [PK_H_BopInterviews];

ALTER TABLE [H_BopInterviews] ADD CONSTRAINT [PK_H_BopInterviews] PRIMARY KEY CLUSTERED (H_BopInterviewId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopInterviews_LocationCd') BEGIN  Drop INDEX [IX_H_BopInterviews_LocationCd] on [H_BopInterviews]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopInterviews_LocationCd] ON [H_BopInterviews] (LocationCd ASC)

ALTER TABLE [H_BopOutOfStateOffenders]

DROP CONSTRAINT [PK_H_BopOutOfStateOffenders];

ALTER TABLE [H_BopOutOfStateOffenders] ADD CONSTRAINT [PK_H_BopOutOfStateOffenders] PRIMARY KEY CLUSTERED (H_BopOutOfStateOffenderId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopOutOfStateOffenders_LocationCd') BEGIN  Drop INDEX [IX_H_BopOutOfStateOffenders_LocationCd] on [H_BopOutOfStateOffenders]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopOutOfStateOffenders_LocationCd] ON [H_BopOutOfStateOffenders] (LocationCd ASC)

ALTER TABLE [H_BopProgressReports]

DROP CONSTRAINT [PK_H_BOPProgressReports];

ALTER TABLE [H_BopProgressReports] ADD CONSTRAINT [PK_H_BOPProgressReports] PRIMARY KEY CLUSTERED (H_BopProgressReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopProgressReports_LocationCd') BEGIN  Drop INDEX [IX_H_BopProgressReports_LocationCd] on [H_BopProgressReports]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopProgressReports_LocationCd] ON [H_BopProgressReports] (LocationCd ASC)

ALTER TABLE [H_BopRecallDates]

DROP CONSTRAINT [PK_H_BopRecallDates];

ALTER TABLE [H_BopRecallDates] ADD CONSTRAINT [PK_H_BopRecallDates] PRIMARY KEY CLUSTERED (H_BopRecallDateId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopRecallDates_LocationCd') BEGIN  Drop INDEX [IX_H_BopRecallDates_LocationCd] on [H_BopRecallDates]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopRecallDates_LocationCd] ON [H_BopRecallDates] (LocationCd ASC)

ALTER TABLE [H_BopReleasePlans]

DROP CONSTRAINT [PK_H_BOPReleasePlans];

ALTER TABLE [H_BopReleasePlans] ADD CONSTRAINT [PK_H_BOPReleasePlans] PRIMARY KEY CLUSTERED (H_BopReleasePlanId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopReleasePlans_LocationCd') BEGIN  Drop INDEX [IX_H_BopReleasePlans_LocationCd] on [H_BopReleasePlans]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopReleasePlans_LocationCd] ON [H_BopReleasePlans] (LocationCd ASC)

ALTER TABLE [H_BOPReleasePlans_PROD_OLD]

DROP CONSTRAINT [PK_H_BOPReleasePlans_PROD];

ALTER TABLE [H_BOPReleasePlans_PROD_OLD] ADD CONSTRAINT [PK_H_BOPReleasePlans_PROD] PRIMARY KEY CLUSTERED (H_BOPReleasePlanId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BOPReleasePlans_PROD_OLD_LocationCd') BEGIN  Drop INDEX [IX_H_BOPReleasePlans_PROD_OLD_LocationCd] on [H_BOPReleasePlans_PROD_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_H_BOPReleasePlans_PROD_OLD_LocationCd] ON [H_BOPReleasePlans_PROD_OLD] (LocationCd ASC)

ALTER TABLE [H_BopRevocationAppeals]

DROP CONSTRAINT [PK_H_BopRevocationAppeals];

ALTER TABLE [H_BopRevocationAppeals] ADD CONSTRAINT [PK_H_BopRevocationAppeals] PRIMARY KEY CLUSTERED (H_BopRevocationAppealId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopRevocationAppeals_LocationCd') BEGIN  Drop INDEX [IX_H_BopRevocationAppeals_LocationCd] on [H_BopRevocationAppeals]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopRevocationAppeals_LocationCd] ON [H_BopRevocationAppeals] (LocationCd ASC)

ALTER TABLE [H_BopRevocationHearingEvents]

DROP CONSTRAINT [PK_H_BopRevocationHearingEvents];

ALTER TABLE [H_BopRevocationHearingEvents] ADD CONSTRAINT [PK_H_BopRevocationHearingEvents] PRIMARY KEY CLUSTERED (H_BopRevocationHearingEventId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopRevocationHearingEvents_LocationCd') BEGIN  Drop INDEX [IX_H_BopRevocationHearingEvents_LocationCd] on [H_BopRevocationHearingEvents]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopRevocationHearingEvents_LocationCd] ON [H_BopRevocationHearingEvents] (LocationCd ASC)

ALTER TABLE [H_BopRevocationHearingImposedConditions]

DROP CONSTRAINT [PK_H_BopRevocationHearingImposedConditions];

ALTER TABLE [H_BopRevocationHearingImposedConditions] ADD CONSTRAINT [PK_H_BopRevocationHearingImposedConditions] PRIMARY KEY CLUSTERED (H_BopRevocationHearingImposedConditionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopRevocationHearingImposedConditions_LocationCd') BEGIN  Drop INDEX [IX_H_BopRevocationHearingImposedConditions_LocationCd] on [H_BopRevocationHearingImposedConditions]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopRevocationHearingImposedConditions_LocationCd] ON [H_BopRevocationHearingImposedConditions] (LocationCd ASC)

ALTER TABLE [H_BopRevocationHearingNotices]

DROP CONSTRAINT [PK_H_BopRevocationHearingNotices];

ALTER TABLE [H_BopRevocationHearingNotices] ADD CONSTRAINT [PK_H_BopRevocationHearingNotices] PRIMARY KEY CLUSTERED (H_BopRevocationHearingNoticeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopRevocationHearingNotices_LocationCd') BEGIN  Drop INDEX [IX_H_BopRevocationHearingNotices_LocationCd] on [H_BopRevocationHearingNotices]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopRevocationHearingNotices_LocationCd] ON [H_BopRevocationHearingNotices] (LocationCd ASC)

ALTER TABLE [H_BopRevocationHearings]

DROP CONSTRAINT [PK_H_BopRevocationHearings];

ALTER TABLE [H_BopRevocationHearings] ADD CONSTRAINT [PK_H_BopRevocationHearings] PRIMARY KEY CLUSTERED (H_BopRevocationHearingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopRevocationHearings_LocationCd') BEGIN  Drop INDEX [IX_H_BopRevocationHearings_LocationCd] on [H_BopRevocationHearings]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopRevocationHearings_LocationCd] ON [H_BopRevocationHearings] (LocationCd ASC)

ALTER TABLE [H_BopRevocationHearingViolatedConditions]

DROP CONSTRAINT [PK_H_BopRevocationHearingViolatedConditions];

ALTER TABLE [H_BopRevocationHearingViolatedConditions] ADD CONSTRAINT [PK_H_BopRevocationHearingViolatedConditions] PRIMARY KEY CLUSTERED (H_BopRevocationHearingViolatedConditionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopRevocationHearingViolatedConditions_LocationCd') BEGIN  Drop INDEX [IX_H_BopRevocationHearingViolatedConditions_LocationCd] on [H_BopRevocationHearingViolatedConditions]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopRevocationHearingViolatedConditions_LocationCd] ON [H_BopRevocationHearingViolatedConditions] (LocationCd ASC)

ALTER TABLE [H_BopRevocationHearingWitnessSubpoenas]

DROP CONSTRAINT [PK_H_BopRevocationHearingWitnessSubpoenas];

ALTER TABLE [H_BopRevocationHearingWitnessSubpoenas] ADD CONSTRAINT [PK_H_BopRevocationHearingWitnessSubpoenas] PRIMARY KEY CLUSTERED (H_BopRevocationHearingWitnessSubpoenaId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BopRevocationHearingWitnessSubpoenas_LocationCd') BEGIN  Drop INDEX [IX_H_BopRevocationHearingWitnessSubpoenas_LocationCd] on [H_BopRevocationHearingWitnessSubpoenas]; END */

CREATE NONCLUSTERED INDEX [IX_H_BopRevocationHearingWitnessSubpoenas_LocationCd] ON [H_BopRevocationHearingWitnessSubpoenas] (LocationCd ASC)

ALTER TABLE [H_BroadcastMessages]

DROP CONSTRAINT [PK_H_BroadcastMessages];

ALTER TABLE [H_BroadcastMessages] ADD CONSTRAINT [PK_H_BroadcastMessages] PRIMARY KEY CLUSTERED (H_BroadcastMessageId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_BroadcastMessages_LocationCd') BEGIN  Drop INDEX [IX_H_BroadcastMessages_LocationCd] on [H_BroadcastMessages]; END */

CREATE NONCLUSTERED INDEX [IX_H_BroadcastMessages_LocationCd] ON [H_BroadcastMessages] (LocationCd ASC)

ALTER TABLE [H_Charges]

DROP CONSTRAINT [PK_H_Charges];

ALTER TABLE [H_Charges] ADD CONSTRAINT [PK_H_Charges] PRIMARY KEY CLUSTERED (H_ChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_Charges_LocationCd') BEGIN  Drop INDEX [IX_H_Charges_LocationCd] on [H_Charges]; END */

CREATE NONCLUSTERED INDEX [IX_H_Charges_LocationCd] ON [H_Charges] (LocationCd ASC)

ALTER TABLE [H_CitizenshipInformation]

DROP CONSTRAINT [PK_H_CitizenshipInformation];

ALTER TABLE [H_CitizenshipInformation] ADD CONSTRAINT [PK_H_CitizenshipInformation] PRIMARY KEY CLUSTERED (H_CitizenshipInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_CitizenshipInformation_LocationCd') BEGIN  Drop INDEX [IX_H_CitizenshipInformation_LocationCd] on [H_CitizenshipInformation]; END */

CREATE NONCLUSTERED INDEX [IX_H_CitizenshipInformation_LocationCd] ON [H_CitizenshipInformation] (LocationCd ASC)

ALTER TABLE [H_CjisSoeDciToIconMessages]

DROP CONSTRAINT [PK_H_CjisSoeDciToIconMessages];

ALTER TABLE [H_CjisSoeDciToIconMessages] ADD CONSTRAINT [PK_H_CjisSoeDciToIconMessages] PRIMARY KEY CLUSTERED (H_CjisSoeDciToIconMessageId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_CjisSoeDciToIconMessages_LocationCd') BEGIN  Drop INDEX [IX_H_CjisSoeDciToIconMessages_LocationCd] on [H_CjisSoeDciToIconMessages]; END */

CREATE NONCLUSTERED INDEX [IX_H_CjisSoeDciToIconMessages_LocationCd] ON [H_CjisSoeDciToIconMessages] (LocationCd ASC)

ALTER TABLE [H_CjisSoeEmployers]

DROP CONSTRAINT [PK_H_CjisSoeEmployers];

ALTER TABLE [H_CjisSoeEmployers] ADD CONSTRAINT [PK_H_CjisSoeEmployers] PRIMARY KEY CLUSTERED (H_CjisSoeEmployerId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_CjisSoeEmployers_LocationCd') BEGIN  Drop INDEX [IX_H_CjisSoeEmployers_LocationCd] on [H_CjisSoeEmployers]; END */

CREATE NONCLUSTERED INDEX [IX_H_CjisSoeEmployers_LocationCd] ON [H_CjisSoeEmployers] (LocationCd ASC)

ALTER TABLE [H_CjisSoeIconToDciMessages]

DROP CONSTRAINT [PK_H_CjisSoeIconToDciMessages];

ALTER TABLE [H_CjisSoeIconToDciMessages] ADD CONSTRAINT [PK_H_CjisSoeIconToDciMessages] PRIMARY KEY CLUSTERED (H_CjisSoeIconToDciMessageId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_CjisSoeIconToDciMessages_LocationCd') BEGIN  Drop INDEX [IX_H_CjisSoeIconToDciMessages_LocationCd] on [H_CjisSoeIconToDciMessages]; END */

CREATE NONCLUSTERED INDEX [IX_H_CjisSoeIconToDciMessages_LocationCd] ON [H_CjisSoeIconToDciMessages] (LocationCd ASC)

ALTER TABLE [H_CjisSoeOffenderAddresses]

DROP CONSTRAINT [PK_H_CjisSoeOffenderAddresses];

ALTER TABLE [H_CjisSoeOffenderAddresses] ADD CONSTRAINT [PK_H_CjisSoeOffenderAddresses] PRIMARY KEY CLUSTERED (H_CjisSoeOffenderAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_CjisSoeOffenderAddresses_LocationCd') BEGIN  Drop INDEX [IX_H_CjisSoeOffenderAddresses_LocationCd] on [H_CjisSoeOffenderAddresses]; END */

CREATE NONCLUSTERED INDEX [IX_H_CjisSoeOffenderAddresses_LocationCd] ON [H_CjisSoeOffenderAddresses] (LocationCd ASC)

ALTER TABLE [H_CjisSoeOffenders]

DROP CONSTRAINT [PK_H_CjisSoeOffenders];

ALTER TABLE [H_CjisSoeOffenders] ADD CONSTRAINT [PK_H_CjisSoeOffenders] PRIMARY KEY CLUSTERED (H_CjisSoeOffenderId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_CjisSoeOffenders_LocationCd') BEGIN  Drop INDEX [IX_H_CjisSoeOffenders_LocationCd] on [H_CjisSoeOffenders]; END */

CREATE NONCLUSTERED INDEX [IX_H_CjisSoeOffenders_LocationCd] ON [H_CjisSoeOffenders] (LocationCd ASC)

ALTER TABLE [H_CjisSoeOffenses]

DROP CONSTRAINT [PK_H_CjisSoeOffenses];

ALTER TABLE [H_CjisSoeOffenses] ADD CONSTRAINT [PK_H_CjisSoeOffenses] PRIMARY KEY CLUSTERED (H_CjisSoeOffenseId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_CjisSoeOffenses_LocationCd') BEGIN  Drop INDEX [IX_H_CjisSoeOffenses_LocationCd] on [H_CjisSoeOffenses]; END */

CREATE NONCLUSTERED INDEX [IX_H_CjisSoeOffenses_LocationCd] ON [H_CjisSoeOffenses] (LocationCd ASC)

ALTER TABLE [H_CjisSoeParentAddresses]

DROP CONSTRAINT [PK_H_CjisSoeParentAddresses];

ALTER TABLE [H_CjisSoeParentAddresses] ADD CONSTRAINT [PK_H_CjisSoeParentAddresses] PRIMARY KEY CLUSTERED (H_CjisSoeParentAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_CjisSoeParentAddresses_LocationCd') BEGIN  Drop INDEX [IX_H_CjisSoeParentAddresses_LocationCd] on [H_CjisSoeParentAddresses]; END */

CREATE NONCLUSTERED INDEX [IX_H_CjisSoeParentAddresses_LocationCd] ON [H_CjisSoeParentAddresses] (LocationCd ASC)

ALTER TABLE [H_CjisSoeSchools]

DROP CONSTRAINT [PK_H_CjisSoeSchools];

ALTER TABLE [H_CjisSoeSchools] ADD CONSTRAINT [PK_H_CjisSoeSchools] PRIMARY KEY CLUSTERED (H_CjisSoeSchoolId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_CjisSoeSchools_LocationCd') BEGIN  Drop INDEX [IX_H_CjisSoeSchools_LocationCd] on [H_CjisSoeSchools]; END */

CREATE NONCLUSTERED INDEX [IX_H_CjisSoeSchools_LocationCd] ON [H_CjisSoeSchools] (LocationCd ASC)

ALTER TABLE [H_CjisSoeVictims]

DROP CONSTRAINT [PK_H_CjisSoeVictims];

ALTER TABLE [H_CjisSoeVictims] ADD CONSTRAINT [PK_H_CjisSoeVictims] PRIMARY KEY CLUSTERED (H_CjisSoeVictimId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_CjisSoeVictims_LocationCd') BEGIN  Drop INDEX [IX_H_CjisSoeVictims_LocationCd] on [H_CjisSoeVictims]; END */

CREATE NONCLUSTERED INDEX [IX_H_CjisSoeVictims_LocationCd] ON [H_CjisSoeVictims] (LocationCd ASC)

ALTER TABLE [H_ClOffenseBehaviorCodes]

DROP CONSTRAINT [PK_H_CLOffenseBehaviorCodes];

ALTER TABLE [H_ClOffenseBehaviorCodes] ADD CONSTRAINT [PK_H_CLOffenseBehaviorCodes] PRIMARY KEY CLUSTERED (H_ClOffenseBehaviorCodeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ClOffenseBehaviorCodes_LocationCd') BEGIN  Drop INDEX [IX_H_ClOffenseBehaviorCodes_LocationCd] on [H_ClOffenseBehaviorCodes]; END */

CREATE NONCLUSTERED INDEX [IX_H_ClOffenseBehaviorCodes_LocationCd] ON [H_ClOffenseBehaviorCodes] (LocationCd ASC)

ALTER TABLE [H_CommunityServiceReporting]

DROP CONSTRAINT [PK_H_CommunityServiceReporting];

ALTER TABLE [H_CommunityServiceReporting] ADD CONSTRAINT [PK_H_CommunityServiceReporting] PRIMARY KEY CLUSTERED (H_CommunityServiceReportingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_CommunityServiceReporting_LocationCd') BEGIN  Drop INDEX [IX_H_CommunityServiceReporting_LocationCd] on [H_CommunityServiceReporting]; END */

CREATE NONCLUSTERED INDEX [IX_H_CommunityServiceReporting_LocationCd] ON [H_CommunityServiceReporting] (LocationCd ASC)

ALTER TABLE [H_CommunityServiceReportingObligations]

DROP CONSTRAINT [PK_H_CommunityServiceReportingObligations];

ALTER TABLE [H_CommunityServiceReportingObligations] ADD CONSTRAINT [PK_H_CommunityServiceReportingObligations] PRIMARY KEY CLUSTERED (H_CommunityServiceReportingObligationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_CommunityServiceReportingObligations_LocationCd') BEGIN  Drop INDEX [IX_H_CommunityServiceReportingObligations_LocationCd] on [H_CommunityServiceReportingObligations]; END */

CREATE NONCLUSTERED INDEX [IX_H_CommunityServiceReportingObligations_LocationCd] ON [H_CommunityServiceReportingObligations] (LocationCd ASC)

ALTER TABLE [H_ContactInformation]

DROP CONSTRAINT [PK_H_ContactInformation];

ALTER TABLE [H_ContactInformation] ADD CONSTRAINT [PK_H_ContactInformation] PRIMARY KEY CLUSTERED (H_ContactInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ContactInformation_LocationCd') BEGIN  Drop INDEX [IX_H_ContactInformation_LocationCd] on [H_ContactInformation]; END */

CREATE NONCLUSTERED INDEX [IX_H_ContactInformation_LocationCd] ON [H_ContactInformation] (LocationCd ASC)

ALTER TABLE [H_ContactPhones]

DROP CONSTRAINT [PK_H_ContactPhones];

ALTER TABLE [H_ContactPhones] ADD CONSTRAINT [PK_H_ContactPhones] PRIMARY KEY CLUSTERED (H_ContactPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ContactPhones_LocationCd') BEGIN  Drop INDEX [IX_H_ContactPhones_LocationCd] on [H_ContactPhones]; END */

CREATE NONCLUSTERED INDEX [IX_H_ContactPhones_LocationCd] ON [H_ContactPhones] (LocationCd ASC)

ALTER TABLE [H_CorrectionIdentifiers]

DROP CONSTRAINT [PK_H_CorrectionIdentifiers];

ALTER TABLE [H_CorrectionIdentifiers] ADD CONSTRAINT [PK_H_CorrectionIdentifiers] PRIMARY KEY CLUSTERED (H_CorrectionIdentifierId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_CorrectionIdentifiers_LocationCd') BEGIN  Drop INDEX [IX_H_CorrectionIdentifiers_LocationCd] on [H_CorrectionIdentifiers]; END */

CREATE NONCLUSTERED INDEX [IX_H_CorrectionIdentifiers_LocationCd] ON [H_CorrectionIdentifiers] (LocationCd ASC)

ALTER TABLE [H_CourtProgressReports]

DROP CONSTRAINT [PK_H_CourtProgressReports];

ALTER TABLE [H_CourtProgressReports] ADD CONSTRAINT [PK_H_CourtProgressReports] PRIMARY KEY CLUSTERED (H_CourtProgressReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_CourtProgressReports_LocationCd') BEGIN  Drop INDEX [IX_H_CourtProgressReports_LocationCd] on [H_CourtProgressReports]; END */

CREATE NONCLUSTERED INDEX [IX_H_CourtProgressReports_LocationCd] ON [H_CourtProgressReports] (LocationCd ASC)

ALTER TABLE [H_CulturalSpiritualPractices]

DROP CONSTRAINT [PK_H_CulturalSpiritualPractices];

ALTER TABLE [H_CulturalSpiritualPractices] ADD CONSTRAINT [PK_H_CulturalSpiritualPractices] PRIMARY KEY CLUSTERED (H_CulturalSpiritualPracticeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_CulturalSpiritualPractices_LocationCd') BEGIN  Drop INDEX [IX_H_CulturalSpiritualPractices_LocationCd] on [H_CulturalSpiritualPractices]; END */

CREATE NONCLUSTERED INDEX [IX_H_CulturalSpiritualPractices_LocationCd] ON [H_CulturalSpiritualPractices] (LocationCd ASC)

ALTER TABLE [H_DebtInformation]

DROP CONSTRAINT [PK_H_DebtInformation];

ALTER TABLE [H_DebtInformation] ADD CONSTRAINT [PK_H_DebtInformation] PRIMARY KEY CLUSTERED (H_DebtInfoId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_DebtInformation_LocationCd') BEGIN  Drop INDEX [IX_H_DebtInformation_LocationCd] on [H_DebtInformation]; END */

CREATE NONCLUSTERED INDEX [IX_H_DebtInformation_LocationCd] ON [H_DebtInformation] (LocationCd ASC)

ALTER TABLE [H_DetainerNotificationRequests]

DROP CONSTRAINT [PK_H_DetainerNotificationRequests];

ALTER TABLE [H_DetainerNotificationRequests] ADD CONSTRAINT [PK_H_DetainerNotificationRequests] PRIMARY KEY CLUSTERED (H_DetainerNotificationRequestId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_DetainerNotificationRequests_LocationCd') BEGIN  Drop INDEX [IX_H_DetainerNotificationRequests_LocationCd] on [H_DetainerNotificationRequests]; END */

CREATE NONCLUSTERED INDEX [IX_H_DetainerNotificationRequests_LocationCd] ON [H_DetainerNotificationRequests] (LocationCd ASC)

ALTER TABLE [H_DischargeReportCharges]

DROP CONSTRAINT [PK_H_DischargeReportCharges];

ALTER TABLE [H_DischargeReportCharges] ADD CONSTRAINT [PK_H_DischargeReportCharges] PRIMARY KEY CLUSTERED (H_DischargeReportChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_DischargeReportCharges_LocationCd') BEGIN  Drop INDEX [IX_H_DischargeReportCharges_LocationCd] on [H_DischargeReportCharges]; END */

CREATE NONCLUSTERED INDEX [IX_H_DischargeReportCharges_LocationCd] ON [H_DischargeReportCharges] (LocationCd ASC)

ALTER TABLE [H_DischargeReports]

DROP CONSTRAINT [PK_H_DischargeReports];

ALTER TABLE [H_DischargeReports] ADD CONSTRAINT [PK_H_DischargeReports] PRIMARY KEY CLUSTERED (H_DischargeReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_DischargeReports_LocationCd') BEGIN  Drop INDEX [IX_H_DischargeReports_LocationCd] on [H_DischargeReports]; END */

CREATE NONCLUSTERED INDEX [IX_H_DischargeReports_LocationCd] ON [H_DischargeReports] (LocationCd ASC)

ALTER TABLE [H_DischargeReportsInst]

DROP CONSTRAINT [PK_H_DischargeReportsInst];

ALTER TABLE [H_DischargeReportsInst] ADD CONSTRAINT [PK_H_DischargeReportsInst] PRIMARY KEY CLUSTERED (H_DischargeReportInstId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_DischargeReportsInst_LocationCd') BEGIN  Drop INDEX [IX_H_DischargeReportsInst_LocationCd] on [H_DischargeReportsInst]; END */

CREATE NONCLUSTERED INDEX [IX_H_DischargeReportsInst_LocationCd] ON [H_DischargeReportsInst] (LocationCd ASC)

ALTER TABLE [H_dmActivities]

DROP CONSTRAINT [PK_H_dmActivities];

ALTER TABLE [H_dmActivities] ADD CONSTRAINT [PK_H_dmActivities] PRIMARY KEY CLUSTERED (H_ActivityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmActivities_LocationCd') BEGIN  Drop INDEX [IX_H_dmActivities_LocationCd] on [H_dmActivities]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmActivities_LocationCd] ON [H_dmActivities] (LocationCd ASC)

ALTER TABLE [H_dmActivityFrequencies]

DROP CONSTRAINT [PK_H_dmActivityFrequencies];

ALTER TABLE [H_dmActivityFrequencies] ADD CONSTRAINT [PK_H_dmActivityFrequencies] PRIMARY KEY CLUSTERED (H_ActivityFrequencyId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmActivityFrequencies_LocationCd') BEGIN  Drop INDEX [IX_H_dmActivityFrequencies_LocationCd] on [H_dmActivityFrequencies]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmActivityFrequencies_LocationCd] ON [H_dmActivityFrequencies] (LocationCd ASC)

ALTER TABLE [H_dmActivityPriorities]

DROP CONSTRAINT [PK_H_dmActivityPriorities];

ALTER TABLE [H_dmActivityPriorities] ADD CONSTRAINT [PK_H_dmActivityPriorities] PRIMARY KEY CLUSTERED (H_ActivityPriorityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmActivityPriorities_LocationCd') BEGIN  Drop INDEX [IX_H_dmActivityPriorities_LocationCd] on [H_dmActivityPriorities]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmActivityPriorities_LocationCd] ON [H_dmActivityPriorities] (LocationCd ASC)

ALTER TABLE [H_dmActivityProviderRoles]

DROP CONSTRAINT [PK_H_dmActivityProviderRoles];

ALTER TABLE [H_dmActivityProviderRoles] ADD CONSTRAINT [PK_H_dmActivityProviderRoles] PRIMARY KEY CLUSTERED (H_ActivityProviderRoleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmActivityProviderRoles_LocationCd') BEGIN  Drop INDEX [IX_H_dmActivityProviderRoles_LocationCd] on [H_dmActivityProviderRoles]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmActivityProviderRoles_LocationCd] ON [H_dmActivityProviderRoles] (LocationCd ASC)

ALTER TABLE [H_dmActivityTypes]

DROP CONSTRAINT [PK_H_dmActivityTypes];

ALTER TABLE [H_dmActivityTypes] ADD CONSTRAINT [PK_H_dmActivityTypes] PRIMARY KEY CLUSTERED (H_ActivityTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmActivityTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmActivityTypes_LocationCd] on [H_dmActivityTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmActivityTypes_LocationCd] ON [H_dmActivityTypes] (LocationCd ASC)

ALTER TABLE [H_dmAppealDecisions]

DROP CONSTRAINT [PK_H_dmAppealDecisions];

ALTER TABLE [H_dmAppealDecisions] ADD CONSTRAINT [PK_H_dmAppealDecisions] PRIMARY KEY CLUSTERED (H_AppealDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmAppealDecisions_LocationCd') BEGIN  Drop INDEX [IX_H_dmAppealDecisions_LocationCd] on [H_dmAppealDecisions]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmAppealDecisions_LocationCd] ON [H_dmAppealDecisions] (LocationCd ASC)

ALTER TABLE [H_dmAppealLevels]

DROP CONSTRAINT [PK_H_dmAppealLevels];

ALTER TABLE [H_dmAppealLevels] ADD CONSTRAINT [PK_H_dmAppealLevels] PRIMARY KEY CLUSTERED (H_AppealLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmAppealLevels_LocationCd') BEGIN  Drop INDEX [IX_H_dmAppealLevels_LocationCd] on [H_dmAppealLevels]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmAppealLevels_LocationCd] ON [H_dmAppealLevels] (LocationCd ASC)

ALTER TABLE [H_dmAppealModifications]

DROP CONSTRAINT [PK_H_dmAppealModifications];

ALTER TABLE [H_dmAppealModifications] ADD CONSTRAINT [PK_H_dmAppealModifications] PRIMARY KEY CLUSTERED (H_AppealModificationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmAppealModifications_LocationCd') BEGIN  Drop INDEX [IX_H_dmAppealModifications_LocationCd] on [H_dmAppealModifications]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmAppealModifications_LocationCd] ON [H_dmAppealModifications] (LocationCd ASC)

ALTER TABLE [H_dmAppealReasons]

DROP CONSTRAINT [PK_H_dmAppealReasons];

ALTER TABLE [H_dmAppealReasons] ADD CONSTRAINT [PK_H_dmAppealReasons] PRIMARY KEY CLUSTERED (H_AppealReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmAppealReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmAppealReasons_LocationCd] on [H_dmAppealReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmAppealReasons_LocationCd] ON [H_dmAppealReasons] (LocationCd ASC)

ALTER TABLE [H_dmAsamCareLevels]

DROP CONSTRAINT [PK_H_dmASAMCareLevels];

ALTER TABLE [H_dmAsamCareLevels] ADD CONSTRAINT [PK_H_dmASAMCareLevels] PRIMARY KEY CLUSTERED (H_AsamCareLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmAsamCareLevels_LocationCd') BEGIN  Drop INDEX [IX_H_dmAsamCareLevels_LocationCd] on [H_dmAsamCareLevels]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmAsamCareLevels_LocationCd] ON [H_dmAsamCareLevels] (LocationCd ASC)

ALTER TABLE [H_dmAsamSeverityIndex]

DROP CONSTRAINT [PK_H_dmASAMSeverityIndex];

ALTER TABLE [H_dmAsamSeverityIndex] ADD CONSTRAINT [PK_H_dmASAMSeverityIndex] PRIMARY KEY CLUSTERED (H_AsamSeverityIndexId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmAsamSeverityIndex_LocationCd') BEGIN  Drop INDEX [IX_H_dmAsamSeverityIndex_LocationCd] on [H_dmAsamSeverityIndex]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmAsamSeverityIndex_LocationCd] ON [H_dmAsamSeverityIndex] (LocationCd ASC)

ALTER TABLE [H_dmAssessmentReasons]

DROP CONSTRAINT [PK_H_dmAssessmentReasons];

ALTER TABLE [H_dmAssessmentReasons] ADD CONSTRAINT [PK_H_dmAssessmentReasons] PRIMARY KEY CLUSTERED (H_AssessmentReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmAssessmentReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmAssessmentReasons_LocationCd] on [H_dmAssessmentReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmAssessmentReasons_LocationCd] ON [H_dmAssessmentReasons] (LocationCd ASC)

ALTER TABLE [H_dmAssessmentTools]

DROP CONSTRAINT [PK_H_dmAssessmentTools];

ALTER TABLE [H_dmAssessmentTools] ADD CONSTRAINT [PK_H_dmAssessmentTools] PRIMARY KEY CLUSTERED (H_AssessmentToolId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmAssessmentTools_LocationCd') BEGIN  Drop INDEX [IX_H_dmAssessmentTools_LocationCd] on [H_dmAssessmentTools]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmAssessmentTools_LocationCd] ON [H_dmAssessmentTools] (LocationCd ASC)

ALTER TABLE [H_dmBankLocations]

DROP CONSTRAINT [PK_h_dmBankLocations];

ALTER TABLE [H_dmBankLocations] ADD CONSTRAINT [PK_h_dmBankLocations] PRIMARY KEY CLUSTERED (H_BankLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBankLocations_LocationCd') BEGIN  Drop INDEX [IX_H_dmBankLocations_LocationCd] on [H_dmBankLocations]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBankLocations_LocationCd] ON [H_dmBankLocations] (LocationCd ASC)

ALTER TABLE [H_dmBeds]

DROP CONSTRAINT [PK_H_dmBeds];

ALTER TABLE [H_dmBeds] ADD CONSTRAINT [PK_H_dmBeds] PRIMARY KEY CLUSTERED (H_BedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBeds_LocationCd') BEGIN  Drop INDEX [IX_H_dmBeds_LocationCd] on [H_dmBeds]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBeds_LocationCd] ON [H_dmBeds] (LocationCd ASC)

ALTER TABLE [H_dmBodyMarkingColors]

DROP CONSTRAINT [PK_H_dmBodyMarkingColors];

ALTER TABLE [H_dmBodyMarkingColors] ADD CONSTRAINT [PK_H_dmBodyMarkingColors] PRIMARY KEY CLUSTERED (H_BodyMarkingColorId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBodyMarkingColors_LocationCd') BEGIN  Drop INDEX [IX_H_dmBodyMarkingColors_LocationCd] on [H_dmBodyMarkingColors]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBodyMarkingColors_LocationCd] ON [H_dmBodyMarkingColors] (LocationCd ASC)

ALTER TABLE [H_dmBodyMarkingLocations]

DROP CONSTRAINT [PK_H_dmBodyMarkingLocations];

ALTER TABLE [H_dmBodyMarkingLocations] ADD CONSTRAINT [PK_H_dmBodyMarkingLocations] PRIMARY KEY CLUSTERED (H_BodyMarkingLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBodyMarkingLocations_LocationCd') BEGIN  Drop INDEX [IX_H_dmBodyMarkingLocations_LocationCd] on [H_dmBodyMarkingLocations]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBodyMarkingLocations_LocationCd] ON [H_dmBodyMarkingLocations] (LocationCd ASC)

ALTER TABLE [H_dmBodyMarkingQualities]

DROP CONSTRAINT [PK_H_dmBodyMarkingQualities];

ALTER TABLE [H_dmBodyMarkingQualities] ADD CONSTRAINT [PK_H_dmBodyMarkingQualities] PRIMARY KEY CLUSTERED (H_BodyMarkingQualityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBodyMarkingQualities_LocationCd') BEGIN  Drop INDEX [IX_H_dmBodyMarkingQualities_LocationCd] on [H_dmBodyMarkingQualities]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBodyMarkingQualities_LocationCd] ON [H_dmBodyMarkingQualities] (LocationCd ASC)

ALTER TABLE [H_dmBodyMarkingTypes]

DROP CONSTRAINT [PK_H_dmBodyMarkingTypes];

ALTER TABLE [H_dmBodyMarkingTypes] ADD CONSTRAINT [PK_H_dmBodyMarkingTypes] PRIMARY KEY CLUSTERED (H_BodyMarkingTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBodyMarkingTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmBodyMarkingTypes_LocationCd] on [H_dmBodyMarkingTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBodyMarkingTypes_LocationCd] ON [H_dmBodyMarkingTypes] (LocationCd ASC)

ALTER TABLE [H_dmBopActionTypes]

DROP CONSTRAINT [PK_H_dmBopActionTypes];

ALTER TABLE [H_dmBopActionTypes] ADD CONSTRAINT [PK_H_dmBopActionTypes] PRIMARY KEY CLUSTERED (H_BopActionTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBopActionTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmBopActionTypes_LocationCd] on [H_dmBopActionTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBopActionTypes_LocationCd] ON [H_dmBopActionTypes] (LocationCd ASC)

ALTER TABLE [H_dmBopCommutationAttachmentCategories]

DROP CONSTRAINT [PK_H_dmBopCommutationAttachmentCategories];

ALTER TABLE [H_dmBopCommutationAttachmentCategories] ADD CONSTRAINT [PK_H_dmBopCommutationAttachmentCategories] PRIMARY KEY CLUSTERED (H_BopCommutationAttachmentCategoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBopCommutationAttachmentCategories_LocationCd') BEGIN  Drop INDEX [IX_H_dmBopCommutationAttachmentCategories_LocationCd] on [H_dmBopCommutationAttachmentCategories]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBopCommutationAttachmentCategories_LocationCd] ON [H_dmBopCommutationAttachmentCategories] (LocationCd ASC)

ALTER TABLE [H_dmBopCommutationNotificationEmails]

DROP CONSTRAINT [PK_H_dmBopCommutationNotificationEmails];

ALTER TABLE [H_dmBopCommutationNotificationEmails] ADD CONSTRAINT [PK_H_dmBopCommutationNotificationEmails] PRIMARY KEY CLUSTERED (H_BopCommutationNotificationEmailId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBopCommutationNotificationEmails_LocationCd') BEGIN  Drop INDEX [IX_H_dmBopCommutationNotificationEmails_LocationCd] on [H_dmBopCommutationNotificationEmails]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBopCommutationNotificationEmails_LocationCd] ON [H_dmBopCommutationNotificationEmails] (LocationCd ASC)

ALTER TABLE [H_dmBopConditionPackageConditions]

DROP CONSTRAINT [PK_H_dmBopConditionPackageConditions];

ALTER TABLE [H_dmBopConditionPackageConditions] ADD CONSTRAINT [PK_H_dmBopConditionPackageConditions] PRIMARY KEY CLUSTERED (H_BopConditionPackageConditionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBopConditionPackageConditions_LocationCd') BEGIN  Drop INDEX [IX_H_dmBopConditionPackageConditions_LocationCd] on [H_dmBopConditionPackageConditions]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBopConditionPackageConditions_LocationCd] ON [H_dmBopConditionPackageConditions] (LocationCd ASC)

ALTER TABLE [H_dmBopConditionPackages]

DROP CONSTRAINT [PK_H_dmBopConditionPackages];

ALTER TABLE [H_dmBopConditionPackages] ADD CONSTRAINT [PK_H_dmBopConditionPackages] PRIMARY KEY CLUSTERED (H_BopConditionPackageId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBopConditionPackages_LocationCd') BEGIN  Drop INDEX [IX_H_dmBopConditionPackages_LocationCd] on [H_dmBopConditionPackages]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBopConditionPackages_LocationCd] ON [H_dmBopConditionPackages] (LocationCd ASC)

ALTER TABLE [H_dmBopContentTypes]

DROP CONSTRAINT [PK_H_dmBopContentTypes];

ALTER TABLE [H_dmBopContentTypes] ADD CONSTRAINT [PK_H_dmBopContentTypes] PRIMARY KEY CLUSTERED (H_BopContentTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBopContentTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmBopContentTypes_LocationCd] on [H_dmBopContentTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBopContentTypes_LocationCd] ON [H_dmBopContentTypes] (LocationCd ASC)

ALTER TABLE [H_dmBopDecisionCodes]

DROP CONSTRAINT [PK_H_dmBopDecisionCodes];

ALTER TABLE [H_dmBopDecisionCodes] ADD CONSTRAINT [PK_H_dmBopDecisionCodes] PRIMARY KEY CLUSTERED (H_BopDecisionCodeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBopDecisionCodes_LocationCd') BEGIN  Drop INDEX [IX_H_dmBopDecisionCodes_LocationCd] on [H_dmBopDecisionCodes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBopDecisionCodes_LocationCd] ON [H_dmBopDecisionCodes] (LocationCd ASC)

ALTER TABLE [H_dmBOPDecisionTypes_OLD]

DROP CONSTRAINT [PK_H_dmBOPDecisionTypes];

ALTER TABLE [H_dmBOPDecisionTypes_OLD] ADD CONSTRAINT [PK_H_dmBOPDecisionTypes] PRIMARY KEY CLUSTERED (H_BopDecisionTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBOPDecisionTypes_OLD_LocationCd') BEGIN  Drop INDEX [IX_H_dmBOPDecisionTypes_OLD_LocationCd] on [H_dmBOPDecisionTypes_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBOPDecisionTypes_OLD_LocationCd] ON [H_dmBOPDecisionTypes_OLD] (LocationCd ASC)

ALTER TABLE [H_dmBOPDecisionTypesProcess_OLD]

DROP CONSTRAINT [PK_H_dmBOPDecisionTypesProcess];

ALTER TABLE [H_dmBOPDecisionTypesProcess_OLD] ADD CONSTRAINT [PK_H_dmBOPDecisionTypesProcess] PRIMARY KEY CLUSTERED (H_BopPDecisionTypeProcessId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBOPDecisionTypesProcess_OLD_LocationCd') BEGIN  Drop INDEX [IX_H_dmBOPDecisionTypesProcess_OLD_LocationCd] on [H_dmBOPDecisionTypesProcess_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBOPDecisionTypesProcess_OLD_LocationCd] ON [H_dmBOPDecisionTypesProcess_OLD] (LocationCd ASC)

ALTER TABLE [H_dmBopExecutiveClemencyAttachmentCategories]

DROP CONSTRAINT [PK_H_dmBopExecutiveClemencyAttachmentCategories];

ALTER TABLE [H_dmBopExecutiveClemencyAttachmentCategories] ADD CONSTRAINT [PK_H_dmBopExecutiveClemencyAttachmentCategories] PRIMARY KEY CLUSTERED (H_BopExecutiveClemencyAttachmentCategoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBopExecutiveClemencyAttachmentCategories_LocationCd') BEGIN  Drop INDEX [IX_H_dmBopExecutiveClemencyAttachmentCategories_LocationCd] on [H_dmBopExecutiveClemencyAttachmentCategories]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBopExecutiveClemencyAttachmentCategories_LocationCd] ON [H_dmBopExecutiveClemencyAttachmentCategories] (LocationCd ASC)

ALTER TABLE [H_dmBopExecutiveClemencyNotificationEmails]

DROP CONSTRAINT [PK_H_dmBopExecutiveClemencyNotificationEmails];

ALTER TABLE [H_dmBopExecutiveClemencyNotificationEmails] ADD CONSTRAINT [PK_H_dmBopExecutiveClemencyNotificationEmails] PRIMARY KEY CLUSTERED (H_BopExecutiveClemencyNotificationEmailId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBopExecutiveClemencyNotificationEmails_LocationCd') BEGIN  Drop INDEX [IX_H_dmBopExecutiveClemencyNotificationEmails_LocationCd] on [H_dmBopExecutiveClemencyNotificationEmails]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBopExecutiveClemencyNotificationEmails_LocationCd] ON [H_dmBopExecutiveClemencyNotificationEmails] (LocationCd ASC)

ALTER TABLE [H_dmBopLocationFacilities]

DROP CONSTRAINT [PK_H_dmBopParoleInterviewLocationFacilities];

ALTER TABLE [H_dmBopLocationFacilities] ADD CONSTRAINT [PK_H_dmBopParoleInterviewLocationFacilities] PRIMARY KEY CLUSTERED (H_BopLocationFacilityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBopLocationFacilities_LocationCd') BEGIN  Drop INDEX [IX_H_dmBopLocationFacilities_LocationCd] on [H_dmBopLocationFacilities]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBopLocationFacilities_LocationCd] ON [H_dmBopLocationFacilities] (LocationCd ASC)

ALTER TABLE [H_dmBopLocations]

DROP CONSTRAINT [PK_H_dmBopParoleInterviewLocations];

ALTER TABLE [H_dmBopLocations] ADD CONSTRAINT [PK_H_dmBopParoleInterviewLocations] PRIMARY KEY CLUSTERED (H_BopLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBopLocations_LocationCd') BEGIN  Drop INDEX [IX_H_dmBopLocations_LocationCd] on [H_dmBopLocations]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBopLocations_LocationCd] ON [H_dmBopLocations] (LocationCd ASC)

ALTER TABLE [H_dmBopProgressReportReasons]

DROP CONSTRAINT [PK_H_dmBOPProgressReportReasons];

ALTER TABLE [H_dmBopProgressReportReasons] ADD CONSTRAINT [PK_H_dmBOPProgressReportReasons] PRIMARY KEY CLUSTERED (H_BopProgressReportReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBopProgressReportReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmBopProgressReportReasons_LocationCd] on [H_dmBopProgressReportReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBopProgressReportReasons_LocationCd] ON [H_dmBopProgressReportReasons] (LocationCd ASC)

ALTER TABLE [H_dmBopRecommendationReasons]

DROP CONSTRAINT [PK_H_dmBOPRecommendationReasons];

ALTER TABLE [H_dmBopRecommendationReasons] ADD CONSTRAINT [PK_H_dmBOPRecommendationReasons] PRIMARY KEY CLUSTERED (H_BopRecommendationReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBopRecommendationReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmBopRecommendationReasons_LocationCd] on [H_dmBopRecommendationReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBopRecommendationReasons_LocationCd] ON [H_dmBopRecommendationReasons] (LocationCd ASC)

ALTER TABLE [H_dmBopReleasePlanRecommendations]

DROP CONSTRAINT [PK_H_dmBOPReleasePlanRecommendations];

ALTER TABLE [H_dmBopReleasePlanRecommendations] ADD CONSTRAINT [PK_H_dmBOPReleasePlanRecommendations] PRIMARY KEY CLUSTERED (H_BopReleasePlanRecommendationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBopReleasePlanRecommendations_LocationCd') BEGIN  Drop INDEX [IX_H_dmBopReleasePlanRecommendations_LocationCd] on [H_dmBopReleasePlanRecommendations]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBopReleasePlanRecommendations_LocationCd] ON [H_dmBopReleasePlanRecommendations] (LocationCd ASC)

ALTER TABLE [H_dmBopReleasePlanReviewReasonRecommendations]

DROP CONSTRAINT [PK_H_dmBOPReleasePlanReviewReasonRecommendations];

ALTER TABLE [H_dmBopReleasePlanReviewReasonRecommendations] ADD CONSTRAINT [PK_H_dmBOPReleasePlanReviewReasonRecommendations] PRIMARY KEY CLUSTERED (H_BopReleasePlanReviewReasonRecommendationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBopReleasePlanReviewReasonRecommendations_LocationCd') BEGIN  Drop INDEX [IX_H_dmBopReleasePlanReviewReasonRecommendations_LocationCd] on [H_dmBopReleasePlanReviewReasonRecommendations]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBopReleasePlanReviewReasonRecommendations_LocationCd] ON [H_dmBopReleasePlanReviewReasonRecommendations] (LocationCd ASC)

ALTER TABLE [H_dmBopReleasePlanReviewReasons]

DROP CONSTRAINT [PK_H_dmBOPReleasePlanReviewReasons];

ALTER TABLE [H_dmBopReleasePlanReviewReasons] ADD CONSTRAINT [PK_H_dmBOPReleasePlanReviewReasons] PRIMARY KEY CLUSTERED (H_BopReleasePlanReviewReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBopReleasePlanReviewReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmBopReleasePlanReviewReasons_LocationCd] on [H_dmBopReleasePlanReviewReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBopReleasePlanReviewReasons_LocationCd] ON [H_dmBopReleasePlanReviewReasons] (LocationCd ASC)

ALTER TABLE [H_dmBopRevocationCountyGroupCounties]

DROP CONSTRAINT [PK_H_dmBopRevocationCountyGroupCounties];

ALTER TABLE [H_dmBopRevocationCountyGroupCounties] ADD CONSTRAINT [PK_H_dmBopRevocationCountyGroupCounties] PRIMARY KEY CLUSTERED (H_BopRevocationCountyGroupCountyId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBopRevocationCountyGroupCounties_LocationCd') BEGIN  Drop INDEX [IX_H_dmBopRevocationCountyGroupCounties_LocationCd] on [H_dmBopRevocationCountyGroupCounties]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBopRevocationCountyGroupCounties_LocationCd] ON [H_dmBopRevocationCountyGroupCounties] (LocationCd ASC)

ALTER TABLE [H_dmBopRevocationCountyGroups]

DROP CONSTRAINT [PK_H_dmBopRevocationCountyGroups];

ALTER TABLE [H_dmBopRevocationCountyGroups] ADD CONSTRAINT [PK_H_dmBopRevocationCountyGroups] PRIMARY KEY CLUSTERED (H_BopRevocationCountyGroupId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBopRevocationCountyGroups_LocationCd') BEGIN  Drop INDEX [IX_H_dmBopRevocationCountyGroups_LocationCd] on [H_dmBopRevocationCountyGroups]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBopRevocationCountyGroups_LocationCd] ON [H_dmBopRevocationCountyGroups] (LocationCd ASC)

ALTER TABLE [H_dmBopRevocationHearingDecisions]

DROP CONSTRAINT [PK_H_dmBopRevocationHearingDecisions];

ALTER TABLE [H_dmBopRevocationHearingDecisions] ADD CONSTRAINT [PK_H_dmBopRevocationHearingDecisions] PRIMARY KEY CLUSTERED (H_BopRevocationHearingDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBopRevocationHearingDecisions_LocationCd') BEGIN  Drop INDEX [IX_H_dmBopRevocationHearingDecisions_LocationCd] on [H_dmBopRevocationHearingDecisions]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBopRevocationHearingDecisions_LocationCd] ON [H_dmBopRevocationHearingDecisions] (LocationCd ASC)

ALTER TABLE [H_dmBOPRevocationTypes_OLD]

DROP CONSTRAINT [PK_H_dmBOPRevocationTypes];

ALTER TABLE [H_dmBOPRevocationTypes_OLD] ADD CONSTRAINT [PK_H_dmBOPRevocationTypes] PRIMARY KEY CLUSTERED (H_BopRevocationTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBOPRevocationTypes_OLD_LocationCd') BEGIN  Drop INDEX [IX_H_dmBOPRevocationTypes_OLD_LocationCd] on [H_dmBOPRevocationTypes_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBOPRevocationTypes_OLD_LocationCd] ON [H_dmBOPRevocationTypes_OLD] (LocationCd ASC)

ALTER TABLE [H_dmBopRiskAuditors]

DROP CONSTRAINT [PK_H_dmBopRiskAuditors];

ALTER TABLE [H_dmBopRiskAuditors] ADD CONSTRAINT [PK_H_dmBopRiskAuditors] PRIMARY KEY CLUSTERED (H_BopRiskAuditorId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBopRiskAuditors_LocationCd') BEGIN  Drop INDEX [IX_H_dmBopRiskAuditors_LocationCd] on [H_dmBopRiskAuditors]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBopRiskAuditors_LocationCd] ON [H_dmBopRiskAuditors] (LocationCd ASC)

ALTER TABLE [H_dmBopSenderTypes]

DROP CONSTRAINT [PK_H_dmBopSenderTypes];

ALTER TABLE [H_dmBopSenderTypes] ADD CONSTRAINT [PK_H_dmBopSenderTypes] PRIMARY KEY CLUSTERED (H_BopSenderTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBopSenderTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmBopSenderTypes_LocationCd] on [H_dmBopSenderTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBopSenderTypes_LocationCd] ON [H_dmBopSenderTypes] (LocationCd ASC)

ALTER TABLE [H_dmBopStaffInformation]

DROP CONSTRAINT [PK_H_dmBopStaffInformation];

ALTER TABLE [H_dmBopStaffInformation] ADD CONSTRAINT [PK_H_dmBopStaffInformation] PRIMARY KEY CLUSTERED (H_BopStaffInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmBopStaffInformation_LocationCd') BEGIN  Drop INDEX [IX_H_dmBopStaffInformation_LocationCd] on [H_dmBopStaffInformation]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmBopStaffInformation_LocationCd] ON [H_dmBopStaffInformation] (LocationCd ASC)

ALTER TABLE [H_dmCasasEmployabilityCompetencySystemForms]

DROP CONSTRAINT [PK_H_dmCASASEmployabilityCompetencySystemForms];

ALTER TABLE [H_dmCasasEmployabilityCompetencySystemForms] ADD CONSTRAINT [PK_H_dmCASASEmployabilityCompetencySystemForms] PRIMARY KEY CLUSTERED (H_CasasEmployabilityCompetencySystemFormId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmCasasEmployabilityCompetencySystemForms_LocationCd') BEGIN  Drop INDEX [IX_H_dmCasasEmployabilityCompetencySystemForms_LocationCd] on [H_dmCasasEmployabilityCompetencySystemForms]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmCasasEmployabilityCompetencySystemForms_LocationCd] ON [H_dmCasasEmployabilityCompetencySystemForms] (LocationCd ASC)

ALTER TABLE [H_dmCasasEmployabilityCompetencySystemLevels]

DROP CONSTRAINT [PK_H_dmCASASEmployabilityCompetencySystemLevels];

ALTER TABLE [H_dmCasasEmployabilityCompetencySystemLevels] ADD CONSTRAINT [PK_H_dmCASASEmployabilityCompetencySystemLevels] PRIMARY KEY CLUSTERED (H_CasasEmployabilityCompetencySystemLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmCasasEmployabilityCompetencySystemLevels_LocationCd') BEGIN  Drop INDEX [IX_H_dmCasasEmployabilityCompetencySystemLevels_LocationCd] on [H_dmCasasEmployabilityCompetencySystemLevels]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmCasasEmployabilityCompetencySystemLevels_LocationCd] ON [H_dmCasasEmployabilityCompetencySystemLevels] (LocationCd ASC)

ALTER TABLE [H_dmCasasFunctionalWritingAssessmentForms]

DROP CONSTRAINT [PK_H_dmCASASFunctionalWritingAssessmentForms];

ALTER TABLE [H_dmCasasFunctionalWritingAssessmentForms] ADD CONSTRAINT [PK_H_dmCASASFunctionalWritingAssessmentForms] PRIMARY KEY CLUSTERED (H_CasasFunctionalWritingAssessmentFormId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmCasasFunctionalWritingAssessmentForms_LocationCd') BEGIN  Drop INDEX [IX_H_dmCasasFunctionalWritingAssessmentForms_LocationCd] on [H_dmCasasFunctionalWritingAssessmentForms]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmCasasFunctionalWritingAssessmentForms_LocationCd] ON [H_dmCasasFunctionalWritingAssessmentForms] (LocationCd ASC)

ALTER TABLE [H_dmCasasFunctionalWritingAssessmentLevels]

DROP CONSTRAINT [PK_H_dmCASASFunctionalWritingAssessmentLevels];

ALTER TABLE [H_dmCasasFunctionalWritingAssessmentLevels] ADD CONSTRAINT [PK_H_dmCASASFunctionalWritingAssessmentLevels] PRIMARY KEY CLUSTERED (H_CasasFunctionalWritingAssessmentLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmCasasFunctionalWritingAssessmentLevels_LocationCd') BEGIN  Drop INDEX [IX_H_dmCasasFunctionalWritingAssessmentLevels_LocationCd] on [H_dmCasasFunctionalWritingAssessmentLevels]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmCasasFunctionalWritingAssessmentLevels_LocationCd] ON [H_dmCasasFunctionalWritingAssessmentLevels] (LocationCd ASC)

ALTER TABLE [H_dmCasasLifeSkillsForms]

DROP CONSTRAINT [PK_H_dmCASASLifeSkillsForms];

ALTER TABLE [H_dmCasasLifeSkillsForms] ADD CONSTRAINT [PK_H_dmCASASLifeSkillsForms] PRIMARY KEY CLUSTERED (H_CasasLifeSkillsFormId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmCasasLifeSkillsForms_LocationCd') BEGIN  Drop INDEX [IX_H_dmCasasLifeSkillsForms_LocationCd] on [H_dmCasasLifeSkillsForms]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmCasasLifeSkillsForms_LocationCd] ON [H_dmCasasLifeSkillsForms] (LocationCd ASC)

ALTER TABLE [H_dmCasasLifeSkillsLevels]

DROP CONSTRAINT [PK_H_dmCASASLifeSkillsLevels];

ALTER TABLE [H_dmCasasLifeSkillsLevels] ADD CONSTRAINT [PK_H_dmCASASLifeSkillsLevels] PRIMARY KEY CLUSTERED (H_CasasLifeSkillsLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmCasasLifeSkillsLevels_LocationCd') BEGIN  Drop INDEX [IX_H_dmCasasLifeSkillsLevels_LocationCd] on [H_dmCasasLifeSkillsLevels]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmCasasLifeSkillsLevels_LocationCd] ON [H_dmCasasLifeSkillsLevels] (LocationCd ASC)

ALTER TABLE [H_dmChargeEndReasons]

DROP CONSTRAINT [PK_H_dmChargeEndReasons];

ALTER TABLE [H_dmChargeEndReasons] ADD CONSTRAINT [PK_H_dmChargeEndReasons] PRIMARY KEY CLUSTERED (H_ChargeEndReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmChargeEndReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmChargeEndReasons_LocationCd] on [H_dmChargeEndReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmChargeEndReasons_LocationCd] ON [H_dmChargeEndReasons] (LocationCd ASC)

ALTER TABLE [H_dmChargeProcessChangeReasons]

DROP CONSTRAINT [PK_H_dmChargeProcessChangeReasons];

ALTER TABLE [H_dmChargeProcessChangeReasons] ADD CONSTRAINT [PK_H_dmChargeProcessChangeReasons] PRIMARY KEY CLUSTERED (H_ChargeProcessChangeReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmChargeProcessChangeReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmChargeProcessChangeReasons_LocationCd] on [H_dmChargeProcessChangeReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmChargeProcessChangeReasons_LocationCd] ON [H_dmChargeProcessChangeReasons] (LocationCd ASC)

ALTER TABLE [H_dmChargeStatuses]

DROP CONSTRAINT [PK_H_dmChargeStatuses];

ALTER TABLE [H_dmChargeStatuses] ADD CONSTRAINT [PK_H_dmChargeStatuses] PRIMARY KEY CLUSTERED (H_ChargeStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmChargeStatuses_LocationCd') BEGIN  Drop INDEX [IX_H_dmChargeStatuses_LocationCd] on [H_dmChargeStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmChargeStatuses_LocationCd] ON [H_dmChargeStatuses] (LocationCd ASC)

ALTER TABLE [H_dmCommunityServiceTypes]

DROP CONSTRAINT [PK_H_dmCommunityServiceTypes];

ALTER TABLE [H_dmCommunityServiceTypes] ADD CONSTRAINT [PK_H_dmCommunityServiceTypes] PRIMARY KEY CLUSTERED (H_CommunityServiceTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmCommunityServiceTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmCommunityServiceTypes_LocationCd] on [H_dmCommunityServiceTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmCommunityServiceTypes_LocationCd] ON [H_dmCommunityServiceTypes] (LocationCd ASC)

ALTER TABLE [H_dmConfidentialStatementConfidentialityReasons]

DROP CONSTRAINT [PK_H_dmConfidentialStatementConfidentialityReasons];

ALTER TABLE [H_dmConfidentialStatementConfidentialityReasons] ADD CONSTRAINT [PK_H_dmConfidentialStatementConfidentialityReasons] PRIMARY KEY CLUSTERED (H_ConfidentialStatementConfidentialityReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmConfidentialStatementConfidentialityReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmConfidentialStatementConfidentialityReasons_LocationCd] on [H_dmConfidentialStatementConfidentialityReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmConfidentialStatementConfidentialityReasons_LocationCd] ON [H_dmConfidentialStatementConfidentialityReasons] (LocationCd ASC)

ALTER TABLE [H_dmConfidentialStatementCorroboratingTypes]

DROP CONSTRAINT [PK_H_dmConfidentialStatementCorroboratingTypes];

ALTER TABLE [H_dmConfidentialStatementCorroboratingTypes] ADD CONSTRAINT [PK_H_dmConfidentialStatementCorroboratingTypes] PRIMARY KEY CLUSTERED (H_ConfidentialStatementCorroboratingTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmConfidentialStatementCorroboratingTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmConfidentialStatementCorroboratingTypes_LocationCd] on [H_dmConfidentialStatementCorroboratingTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmConfidentialStatementCorroboratingTypes_LocationCd] ON [H_dmConfidentialStatementCorroboratingTypes] (LocationCd ASC)

ALTER TABLE [H_dmConfidentialStatementReliableReasons]

DROP CONSTRAINT [PK_H_dmConfidentialStatementReliableReasons];

ALTER TABLE [H_dmConfidentialStatementReliableReasons] ADD CONSTRAINT [PK_H_dmConfidentialStatementReliableReasons] PRIMARY KEY CLUSTERED (H_ConfidentialStatementReliableReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmConfidentialStatementReliableReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmConfidentialStatementReliableReasons_LocationCd] on [H_dmConfidentialStatementReliableReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmConfidentialStatementReliableReasons_LocationCd] ON [H_dmConfidentialStatementReliableReasons] (LocationCd ASC)

ALTER TABLE [H_dmCounties]

DROP CONSTRAINT [PK_H_dmCounties];

ALTER TABLE [H_dmCounties] ADD CONSTRAINT [PK_H_dmCounties] PRIMARY KEY CLUSTERED (H_CountyId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmCounties_LocationCd') BEGIN  Drop INDEX [IX_H_dmCounties_LocationCd] on [H_dmCounties]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmCounties_LocationCd] ON [H_dmCounties] (LocationCd ASC)

ALTER TABLE [H_dmCountries]

DROP CONSTRAINT [PK_H_dmCountries];

ALTER TABLE [H_dmCountries] ADD CONSTRAINT [PK_H_dmCountries] PRIMARY KEY CLUSTERED (H_CountryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmCountries_LocationCd') BEGIN  Drop INDEX [IX_H_dmCountries_LocationCd] on [H_dmCountries]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmCountries_LocationCd] ON [H_dmCountries] (LocationCd ASC)

ALTER TABLE [H_dmCPCRSupervisionStatuses]

DROP CONSTRAINT [PK_H_dmCPCRSupervisionStatuses];

ALTER TABLE [H_dmCPCRSupervisionStatuses] ADD CONSTRAINT [PK_H_dmCPCRSupervisionStatuses] PRIMARY KEY CLUSTERED (H_CPCRSupervisionStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmCPCRSupervisionStatuses_LocationCd') BEGIN  Drop INDEX [IX_H_dmCPCRSupervisionStatuses_LocationCd] on [H_dmCPCRSupervisionStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmCPCRSupervisionStatuses_LocationCd] ON [H_dmCPCRSupervisionStatuses] (LocationCd ASC)

ALTER TABLE [H_dmCrimeCodeClasses]

DROP CONSTRAINT [PK_H_dmCrimeCodeClasses];

ALTER TABLE [H_dmCrimeCodeClasses] ADD CONSTRAINT [PK_H_dmCrimeCodeClasses] PRIMARY KEY CLUSTERED (H_CrimeCdClassId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmCrimeCodeClasses_LocationCd') BEGIN  Drop INDEX [IX_H_dmCrimeCodeClasses_LocationCd] on [H_dmCrimeCodeClasses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmCrimeCodeClasses_LocationCd] ON [H_dmCrimeCodeClasses] (LocationCd ASC)

ALTER TABLE [H_dmCrimeCodeOffenseSubTypes]

DROP CONSTRAINT [PK_H_dmCrimeCodeOffenseSubTypes];

ALTER TABLE [H_dmCrimeCodeOffenseSubTypes] ADD CONSTRAINT [PK_H_dmCrimeCodeOffenseSubTypes] PRIMARY KEY CLUSTERED (H_CrimeCdOffenseSubTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmCrimeCodeOffenseSubTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmCrimeCodeOffenseSubTypes_LocationCd] on [H_dmCrimeCodeOffenseSubTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmCrimeCodeOffenseSubTypes_LocationCd] ON [H_dmCrimeCodeOffenseSubTypes] (LocationCd ASC)

ALTER TABLE [H_dmCrimeCodeOffenseTypes]

DROP CONSTRAINT [PK_H_dmCrimeCodeOffenseTypes];

ALTER TABLE [H_dmCrimeCodeOffenseTypes] ADD CONSTRAINT [PK_H_dmCrimeCodeOffenseTypes] PRIMARY KEY CLUSTERED (H_CrimeCdOffenseTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmCrimeCodeOffenseTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmCrimeCodeOffenseTypes_LocationCd] on [H_dmCrimeCodeOffenseTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmCrimeCodeOffenseTypes_LocationCd] ON [H_dmCrimeCodeOffenseTypes] (LocationCd ASC)

ALTER TABLE [H_dmCrimeCodes]

DROP CONSTRAINT [PK_H_dmCrimeCodes];

ALTER TABLE [H_dmCrimeCodes] ADD CONSTRAINT [PK_H_dmCrimeCodes] PRIMARY KEY CLUSTERED (H_CrimeCdId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmCrimeCodes_LocationCd') BEGIN  Drop INDEX [IX_H_dmCrimeCodes_LocationCd] on [H_dmCrimeCodes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmCrimeCodes_LocationCd] ON [H_dmCrimeCodes] (LocationCd ASC)

ALTER TABLE [H_dmCulturalSpiritualPracticeApproved]

DROP CONSTRAINT [PK_H_dmCulturalSpiritualPracticeApproved];

ALTER TABLE [H_dmCulturalSpiritualPracticeApproved] ADD CONSTRAINT [PK_H_dmCulturalSpiritualPracticeApproved] PRIMARY KEY CLUSTERED (H_CulturalSpiritualPracticeApprovedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmCulturalSpiritualPracticeApproved_LocationCd') BEGIN  Drop INDEX [IX_H_dmCulturalSpiritualPracticeApproved_LocationCd] on [H_dmCulturalSpiritualPracticeApproved]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmCulturalSpiritualPracticeApproved_LocationCd] ON [H_dmCulturalSpiritualPracticeApproved] (LocationCd ASC)

ALTER TABLE [H_dmCustodyClassificationAuditors]

DROP CONSTRAINT [PK_H_dmCustodyClassificationAuditors];

ALTER TABLE [H_dmCustodyClassificationAuditors] ADD CONSTRAINT [PK_H_dmCustodyClassificationAuditors] PRIMARY KEY CLUSTERED (H_CustodyClassificationAuditorId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmCustodyClassificationAuditors_LocationCd') BEGIN  Drop INDEX [IX_H_dmCustodyClassificationAuditors_LocationCd] on [H_dmCustodyClassificationAuditors]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmCustodyClassificationAuditors_LocationCd] ON [H_dmCustodyClassificationAuditors] (LocationCd ASC)

ALTER TABLE [H_dmCustodyClassificationHousingOverrideReasons]

DROP CONSTRAINT [PK_H_dmCustodyClassificationHousingOverrideReasons];

ALTER TABLE [H_dmCustodyClassificationHousingOverrideReasons] ADD CONSTRAINT [PK_H_dmCustodyClassificationHousingOverrideReasons] PRIMARY KEY CLUSTERED (H_CustodyClassificationHousingOverrideReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmCustodyClassificationHousingOverrideReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmCustodyClassificationHousingOverrideReasons_LocationCd] on [H_dmCustodyClassificationHousingOverrideReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmCustodyClassificationHousingOverrideReasons_LocationCd] ON [H_dmCustodyClassificationHousingOverrideReasons] (LocationCd ASC)

ALTER TABLE [H_dmCustodyClassificationOverrideReasons]

DROP CONSTRAINT [PK_H_dmCustodyClassificationOverrideReasons];

ALTER TABLE [H_dmCustodyClassificationOverrideReasons] ADD CONSTRAINT [PK_H_dmCustodyClassificationOverrideReasons] PRIMARY KEY CLUSTERED (H_CustodyClassificationOverrideReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmCustodyClassificationOverrideReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmCustodyClassificationOverrideReasons_LocationCd] on [H_dmCustodyClassificationOverrideReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmCustodyClassificationOverrideReasons_LocationCd] ON [H_dmCustodyClassificationOverrideReasons] (LocationCd ASC)

ALTER TABLE [H_dmCustodyClassificationRiskOverrideReasons]

DROP CONSTRAINT [PK_H_dmCustodyClassificationRiskOverrideReasons];

ALTER TABLE [H_dmCustodyClassificationRiskOverrideReasons] ADD CONSTRAINT [PK_H_dmCustodyClassificationRiskOverrideReasons] PRIMARY KEY CLUSTERED (H_CustodyClassificationRiskOverrideReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmCustodyClassificationRiskOverrideReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmCustodyClassificationRiskOverrideReasons_LocationCd] on [H_dmCustodyClassificationRiskOverrideReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmCustodyClassificationRiskOverrideReasons_LocationCd] ON [H_dmCustodyClassificationRiskOverrideReasons] (LocationCd ASC)

ALTER TABLE [H_dmCustodyLevels]

DROP CONSTRAINT [PK_H_dmCustodyLevels];

ALTER TABLE [H_dmCustodyLevels] ADD CONSTRAINT [PK_H_dmCustodyLevels] PRIMARY KEY CLUSTERED (H_CustodyLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmCustodyLevels_LocationCd') BEGIN  Drop INDEX [IX_H_dmCustodyLevels_LocationCd] on [H_dmCustodyLevels]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmCustodyLevels_LocationCd] ON [H_dmCustodyLevels] (LocationCd ASC)

ALTER TABLE [H_dmCustodyWorkOutReasons]

DROP CONSTRAINT [PK_H_dmCustodyWorkOutReasons];

ALTER TABLE [H_dmCustodyWorkOutReasons] ADD CONSTRAINT [PK_H_dmCustodyWorkOutReasons] PRIMARY KEY CLUSTERED (H_CustodyWorkOutReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmCustodyWorkOutReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmCustodyWorkOutReasons_LocationCd] on [H_dmCustodyWorkOutReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmCustodyWorkOutReasons_LocationCd] ON [H_dmCustodyWorkOutReasons] (LocationCd ASC)

ALTER TABLE [H_dmEarningIntervals]

DROP CONSTRAINT [PK_H_dmEarningIntervals];

ALTER TABLE [H_dmEarningIntervals] ADD CONSTRAINT [PK_H_dmEarningIntervals] PRIMARY KEY CLUSTERED (H_EarningIntervalId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmEarningIntervals_LocationCd') BEGIN  Drop INDEX [IX_H_dmEarningIntervals_LocationCd] on [H_dmEarningIntervals]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmEarningIntervals_LocationCd] ON [H_dmEarningIntervals] (LocationCd ASC)

ALTER TABLE [H_dmEdEducationalLevels]

DROP CONSTRAINT [PK_H_dmEDEducationalLevels];

ALTER TABLE [H_dmEdEducationalLevels] ADD CONSTRAINT [PK_H_dmEDEducationalLevels] PRIMARY KEY CLUSTERED (H_EdEducationalLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmEdEducationalLevels_LocationCd') BEGIN  Drop INDEX [IX_H_dmEdEducationalLevels_LocationCd] on [H_dmEdEducationalLevels]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmEdEducationalLevels_LocationCd] ON [H_dmEdEducationalLevels] (LocationCd ASC)

ALTER TABLE [H_dmEmploymentLeavingReasons]

DROP CONSTRAINT [PK_H_dmEmploymentLeavingReasons];

ALTER TABLE [H_dmEmploymentLeavingReasons] ADD CONSTRAINT [PK_H_dmEmploymentLeavingReasons] PRIMARY KEY CLUSTERED (H_ReasonForLeavingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmEmploymentLeavingReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmEmploymentLeavingReasons_LocationCd] on [H_dmEmploymentLeavingReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmEmploymentLeavingReasons_LocationCd] ON [H_dmEmploymentLeavingReasons] (LocationCd ASC)

ALTER TABLE [H_dmEnemyCodes]

DROP CONSTRAINT [PK_H_dmEnemyCodes];

ALTER TABLE [H_dmEnemyCodes] ADD CONSTRAINT [PK_H_dmEnemyCodes] PRIMARY KEY CLUSTERED (H_EnemyCodeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmEnemyCodes_LocationCd') BEGIN  Drop INDEX [IX_H_dmEnemyCodes_LocationCd] on [H_dmEnemyCodes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmEnemyCodes_LocationCd] ON [H_dmEnemyCodes] (LocationCd ASC)

ALTER TABLE [H_dmEsHighestGradeCompleted]

DROP CONSTRAINT [PK_H_dmESHighestGradeCompleted];

ALTER TABLE [H_dmEsHighestGradeCompleted] ADD CONSTRAINT [PK_H_dmESHighestGradeCompleted] PRIMARY KEY CLUSTERED (H_EsHighestGradeCompletedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmEsHighestGradeCompleted_LocationCd') BEGIN  Drop INDEX [IX_H_dmEsHighestGradeCompleted_LocationCd] on [H_dmEsHighestGradeCompleted]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmEsHighestGradeCompleted_LocationCd] ON [H_dmEsHighestGradeCompleted] (LocationCd ASC)

ALTER TABLE [H_dmEthnicOrigins]

DROP CONSTRAINT [PK_H_dmEthnicOrigins];

ALTER TABLE [H_dmEthnicOrigins] ADD CONSTRAINT [PK_H_dmEthnicOrigins] PRIMARY KEY CLUSTERED (H_EthnicOriginId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmEthnicOrigins_LocationCd') BEGIN  Drop INDEX [IX_H_dmEthnicOrigins_LocationCd] on [H_dmEthnicOrigins]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmEthnicOrigins_LocationCd] ON [H_dmEthnicOrigins] (LocationCd ASC)

ALTER TABLE [H_dmEyeColor]

DROP CONSTRAINT [PK_H_dmEyeColor];

ALTER TABLE [H_dmEyeColor] ADD CONSTRAINT [PK_H_dmEyeColor] PRIMARY KEY CLUSTERED (H_EyeColorId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmEyeColor_LocationCd') BEGIN  Drop INDEX [IX_H_dmEyeColor_LocationCd] on [H_dmEyeColor]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmEyeColor_LocationCd] ON [H_dmEyeColor] (LocationCd ASC)

ALTER TABLE [H_dmFacilities]

DROP CONSTRAINT [PK_H_dmFacilities];

ALTER TABLE [H_dmFacilities] ADD CONSTRAINT [PK_H_dmFacilities] PRIMARY KEY CLUSTERED (H_FacilityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmFacilities_LocationCd') BEGIN  Drop INDEX [IX_H_dmFacilities_LocationCd] on [H_dmFacilities]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmFacilities_LocationCd] ON [H_dmFacilities] (LocationCd ASC)

ALTER TABLE [H_dmFieldResidentialViolationBehaviorCodes]

DROP CONSTRAINT [PK_H_dmFieldResidentialViolationBehaviorCodes];

ALTER TABLE [H_dmFieldResidentialViolationBehaviorCodes] ADD CONSTRAINT [PK_H_dmFieldResidentialViolationBehaviorCodes] PRIMARY KEY CLUSTERED (H_FieldResidentialViolationBehaviorCodeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmFieldResidentialViolationBehaviorCodes_LocationCd') BEGIN  Drop INDEX [IX_H_dmFieldResidentialViolationBehaviorCodes_LocationCd] on [H_dmFieldResidentialViolationBehaviorCodes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmFieldResidentialViolationBehaviorCodes_LocationCd] ON [H_dmFieldResidentialViolationBehaviorCodes] (LocationCd ASC)

ALTER TABLE [H_dmFileStatuses]

DROP CONSTRAINT [PK_H_dmFileStatuses];

ALTER TABLE [H_dmFileStatuses] ADD CONSTRAINT [PK_H_dmFileStatuses] PRIMARY KEY CLUSTERED (H_FileStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmFileStatuses_LocationCd') BEGIN  Drop INDEX [IX_H_dmFileStatuses_LocationCd] on [H_dmFileStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmFileStatuses_LocationCd] ON [H_dmFileStatuses] (LocationCd ASC)

ALTER TABLE [H_dmFlMaintenanceIssueItemProblems]

DROP CONSTRAINT [PK_H_dmFlMaintenanceIssueItemProblems];

ALTER TABLE [H_dmFlMaintenanceIssueItemProblems] ADD CONSTRAINT [PK_H_dmFlMaintenanceIssueItemProblems] PRIMARY KEY CLUSTERED (H_FlMaintenanceIssueItemProblemId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmFlMaintenanceIssueItemProblems_LocationCd') BEGIN  Drop INDEX [IX_H_dmFlMaintenanceIssueItemProblems_LocationCd] on [H_dmFlMaintenanceIssueItemProblems]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmFlMaintenanceIssueItemProblems_LocationCd] ON [H_dmFlMaintenanceIssueItemProblems] (LocationCd ASC)

ALTER TABLE [H_dmFlMaintenanceIssueItems]

DROP CONSTRAINT [PK_H_dmFlMaintenanceIssueItems];

ALTER TABLE [H_dmFlMaintenanceIssueItems] ADD CONSTRAINT [PK_H_dmFlMaintenanceIssueItems] PRIMARY KEY CLUSTERED (H_FlMaintenanceIssueItemId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmFlMaintenanceIssueItems_LocationCd') BEGIN  Drop INDEX [IX_H_dmFlMaintenanceIssueItems_LocationCd] on [H_dmFlMaintenanceIssueItems]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmFlMaintenanceIssueItems_LocationCd] ON [H_dmFlMaintenanceIssueItems] (LocationCd ASC)

ALTER TABLE [H_dmFlMaintenanceIssues]

DROP CONSTRAINT [PK_H_dmFlMaintenanceIssues];

ALTER TABLE [H_dmFlMaintenanceIssues] ADD CONSTRAINT [PK_H_dmFlMaintenanceIssues] PRIMARY KEY CLUSTERED (H_FlMaintenanceIssueId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmFlMaintenanceIssues_LocationCd') BEGIN  Drop INDEX [IX_H_dmFlMaintenanceIssues_LocationCd] on [H_dmFlMaintenanceIssues]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmFlMaintenanceIssues_LocationCd] ON [H_dmFlMaintenanceIssues] (LocationCd ASC)

ALTER TABLE [H_dmGedAccommodations]

DROP CONSTRAINT [PK_H_dmGEDAccommodations];

ALTER TABLE [H_dmGedAccommodations] ADD CONSTRAINT [PK_H_dmGEDAccommodations] PRIMARY KEY CLUSTERED (H_GedAccommodationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmGedAccommodations_LocationCd') BEGIN  Drop INDEX [IX_H_dmGedAccommodations_LocationCd] on [H_dmGedAccommodations]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmGedAccommodations_LocationCd] ON [H_dmGedAccommodations] (LocationCd ASC)

ALTER TABLE [H_dmGedSites]

DROP CONSTRAINT [PK_H_dmGEDSites];

ALTER TABLE [H_dmGedSites] ADD CONSTRAINT [PK_H_dmGEDSites] PRIMARY KEY CLUSTERED (H_GedSiteId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmGedSites_LocationCd') BEGIN  Drop INDEX [IX_H_dmGedSites_LocationCd] on [H_dmGedSites]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmGedSites_LocationCd] ON [H_dmGedSites] (LocationCd ASC)

ALTER TABLE [H_dmGovernorsOfficeInformation]

DROP CONSTRAINT [PK_H_dmGovernorsOfficeInformation];

ALTER TABLE [H_dmGovernorsOfficeInformation] ADD CONSTRAINT [PK_H_dmGovernorsOfficeInformation] PRIMARY KEY CLUSTERED (H_GovernorsOfficeInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmGovernorsOfficeInformation_LocationCd') BEGIN  Drop INDEX [IX_H_dmGovernorsOfficeInformation_LocationCd] on [H_dmGovernorsOfficeInformation]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmGovernorsOfficeInformation_LocationCd] ON [H_dmGovernorsOfficeInformation] (LocationCd ASC)

ALTER TABLE [H_dmGrievanceActions]

DROP CONSTRAINT [PK_H_dmGrievanceCentralOfficeActions];

ALTER TABLE [H_dmGrievanceActions] ADD CONSTRAINT [PK_H_dmGrievanceCentralOfficeActions] PRIMARY KEY CLUSTERED (H_GrievanceActionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmGrievanceActions_LocationCd') BEGIN  Drop INDEX [IX_H_dmGrievanceActions_LocationCd] on [H_dmGrievanceActions]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmGrievanceActions_LocationCd] ON [H_dmGrievanceActions] (LocationCd ASC)

ALTER TABLE [H_dmGrievanceProcessTypeReasons]

DROP CONSTRAINT [PK_H_dmGrievanceProcessTypeReasons];

ALTER TABLE [H_dmGrievanceProcessTypeReasons] ADD CONSTRAINT [PK_H_dmGrievanceProcessTypeReasons] PRIMARY KEY CLUSTERED (H_GrievanceProcessTypeReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmGrievanceProcessTypeReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmGrievanceProcessTypeReasons_LocationCd] on [H_dmGrievanceProcessTypeReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmGrievanceProcessTypeReasons_LocationCd] ON [H_dmGrievanceProcessTypeReasons] (LocationCd ASC)

ALTER TABLE [H_dmGrievanceProcessTypes]

DROP CONSTRAINT [PK_H_dmGrievanceProcessTypes];

ALTER TABLE [H_dmGrievanceProcessTypes] ADD CONSTRAINT [PK_H_dmGrievanceProcessTypes] PRIMARY KEY CLUSTERED (H_GrievanceProcessTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmGrievanceProcessTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmGrievanceProcessTypes_LocationCd] on [H_dmGrievanceProcessTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmGrievanceProcessTypes_LocationCd] ON [H_dmGrievanceProcessTypes] (LocationCd ASC)

ALTER TABLE [H_dmGrievanceResolutionTypes]

DROP CONSTRAINT [PK_H_dmGrievanceResolutionTypes];

ALTER TABLE [H_dmGrievanceResolutionTypes] ADD CONSTRAINT [PK_H_dmGrievanceResolutionTypes] PRIMARY KEY CLUSTERED (H_GrievanceResolutionTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmGrievanceResolutionTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmGrievanceResolutionTypes_LocationCd] on [H_dmGrievanceResolutionTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmGrievanceResolutionTypes_LocationCd] ON [H_dmGrievanceResolutionTypes] (LocationCd ASC)

ALTER TABLE [H_dmGrievanceSubtypes]

DROP CONSTRAINT [PK_H_dmGrievanceSubtypes];

ALTER TABLE [H_dmGrievanceSubtypes] ADD CONSTRAINT [PK_H_dmGrievanceSubtypes] PRIMARY KEY CLUSTERED (H_GrievanceSubtypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmGrievanceSubtypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmGrievanceSubtypes_LocationCd] on [H_dmGrievanceSubtypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmGrievanceSubtypes_LocationCd] ON [H_dmGrievanceSubtypes] (LocationCd ASC)

ALTER TABLE [H_dmGrievanceTypes]

DROP CONSTRAINT [PK_H_dmGrievanceTypes];

ALTER TABLE [H_dmGrievanceTypes] ADD CONSTRAINT [PK_H_dmGrievanceTypes] PRIMARY KEY CLUSTERED (H_GrievanceTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmGrievanceTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmGrievanceTypes_LocationCd] on [H_dmGrievanceTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmGrievanceTypes_LocationCd] ON [H_dmGrievanceTypes] (LocationCd ASC)

ALTER TABLE [H_dmHairColor]

DROP CONSTRAINT [PK_H_dmHairColor];

ALTER TABLE [H_dmHairColor] ADD CONSTRAINT [PK_H_dmHairColor] PRIMARY KEY CLUSTERED (H_HairColorId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmHairColor_LocationCd') BEGIN  Drop INDEX [IX_H_dmHairColor_LocationCd] on [H_dmHairColor]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmHairColor_LocationCd] ON [H_dmHairColor] (LocationCd ASC)

ALTER TABLE [H_dmHairQuality]

DROP CONSTRAINT [PK_H_dmHairQuality];

ALTER TABLE [H_dmHairQuality] ADD CONSTRAINT [PK_H_dmHairQuality] PRIMARY KEY CLUSTERED (H_HairQualityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmHairQuality_LocationCd') BEGIN  Drop INDEX [IX_H_dmHairQuality_LocationCd] on [H_dmHairQuality]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmHairQuality_LocationCd] ON [H_dmHairQuality] (LocationCd ASC)

ALTER TABLE [H_dmHealthIssueTypes]

DROP CONSTRAINT [PK_H_dmHealthIssueTypes];

ALTER TABLE [H_dmHealthIssueTypes] ADD CONSTRAINT [PK_H_dmHealthIssueTypes] PRIMARY KEY CLUSTERED (H_HealthIssueTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmHealthIssueTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmHealthIssueTypes_LocationCd] on [H_dmHealthIssueTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmHealthIssueTypes_LocationCd] ON [H_dmHealthIssueTypes] (LocationCd ASC)

ALTER TABLE [H_dmHearingDecisions]

DROP CONSTRAINT [PK_H_dmHearingDecisions];

ALTER TABLE [H_dmHearingDecisions] ADD CONSTRAINT [PK_H_dmHearingDecisions] PRIMARY KEY CLUSTERED (H_HearingDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmHearingDecisions_LocationCd') BEGIN  Drop INDEX [IX_H_dmHearingDecisions_LocationCd] on [H_dmHearingDecisions]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmHearingDecisions_LocationCd] ON [H_dmHearingDecisions] (LocationCd ASC)

ALTER TABLE [H_dmHearingResponseStatuses]

DROP CONSTRAINT [PK_H_dmHearingResponseStatuses];

ALTER TABLE [H_dmHearingResponseStatuses] ADD CONSTRAINT [PK_H_dmHearingResponseStatuses] PRIMARY KEY CLUSTERED (H_HearingResponseStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmHearingResponseStatuses_LocationCd') BEGIN  Drop INDEX [IX_H_dmHearingResponseStatuses_LocationCd] on [H_dmHearingResponseStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmHearingResponseStatuses_LocationCd] ON [H_dmHearingResponseStatuses] (LocationCd ASC)

ALTER TABLE [H_dmHearingRoles]

DROP CONSTRAINT [PK_H_dmHearingRoles];

ALTER TABLE [H_dmHearingRoles] ADD CONSTRAINT [PK_H_dmHearingRoles] PRIMARY KEY CLUSTERED (H_HearingRoleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmHearingRoles_LocationCd') BEGIN  Drop INDEX [IX_H_dmHearingRoles_LocationCd] on [H_dmHearingRoles]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmHearingRoles_LocationCd] ON [H_dmHearingRoles] (LocationCd ASC)

ALTER TABLE [H_dmHearingStatuses]

DROP CONSTRAINT [PK_H_dmHearingStatuses];

ALTER TABLE [H_dmHearingStatuses] ADD CONSTRAINT [PK_H_dmHearingStatuses] PRIMARY KEY CLUSTERED (H_HearingStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmHearingStatuses_LocationCd') BEGIN  Drop INDEX [IX_H_dmHearingStatuses_LocationCd] on [H_dmHearingStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmHearingStatuses_LocationCd] ON [H_dmHearingStatuses] (LocationCd ASC)

ALTER TABLE [H_dmHousingAssignmentRestrictions]

DROP CONSTRAINT [PK_H_dmRoomBedAssignmentRestrictions];

ALTER TABLE [H_dmHousingAssignmentRestrictions] ADD CONSTRAINT [PK_H_dmRoomBedAssignmentRestrictions] PRIMARY KEY CLUSTERED (H_HousingAssignmentRestrictionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmHousingAssignmentRestrictions_LocationCd') BEGIN  Drop INDEX [IX_H_dmHousingAssignmentRestrictions_LocationCd] on [H_dmHousingAssignmentRestrictions]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmHousingAssignmentRestrictions_LocationCd] ON [H_dmHousingAssignmentRestrictions] (LocationCd ASC)

ALTER TABLE [H_dmHousingAssignmentRestrictions_OLD]

DROP CONSTRAINT [PK_H_dmHousingAssignmentRestrictions];

ALTER TABLE [H_dmHousingAssignmentRestrictions_OLD] ADD CONSTRAINT [PK_H_dmHousingAssignmentRestrictions] PRIMARY KEY CLUSTERED (H_HousingAssignmentRestrictionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmHousingAssignmentRestrictions_OLD_LocationCd') BEGIN  Drop INDEX [IX_H_dmHousingAssignmentRestrictions_OLD_LocationCd] on [H_dmHousingAssignmentRestrictions_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmHousingAssignmentRestrictions_OLD_LocationCd] ON [H_dmHousingAssignmentRestrictions_OLD] (LocationCd ASC)

ALTER TABLE [H_dmHousingPrivilegeLevelsInstFl]

DROP CONSTRAINT [PK_H_dmHousingPrivilegeLevelsInstFL];

ALTER TABLE [H_dmHousingPrivilegeLevelsInstFl] ADD CONSTRAINT [PK_H_dmHousingPrivilegeLevelsInstFL] PRIMARY KEY CLUSTERED (H_HousingPrivilegeLevelInstFlId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmHousingPrivilegeLevelsInstFl_LocationCd') BEGIN  Drop INDEX [IX_H_dmHousingPrivilegeLevelsInstFl_LocationCd] on [H_dmHousingPrivilegeLevelsInstFl]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmHousingPrivilegeLevelsInstFl_LocationCd] ON [H_dmHousingPrivilegeLevelsInstFl] (LocationCd ASC)

ALTER TABLE [H_dmHousingPrivilegeLevelsInstSw]

DROP CONSTRAINT [PK_H_dmHousingPrivilegeLevelsInstSW];

ALTER TABLE [H_dmHousingPrivilegeLevelsInstSw] ADD CONSTRAINT [PK_H_dmHousingPrivilegeLevelsInstSW] PRIMARY KEY CLUSTERED (H_HousingPrivilegeLevelInstSwId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmHousingPrivilegeLevelsInstSw_LocationCd') BEGIN  Drop INDEX [IX_H_dmHousingPrivilegeLevelsInstSw_LocationCd] on [H_dmHousingPrivilegeLevelsInstSw]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmHousingPrivilegeLevelsInstSw_LocationCd] ON [H_dmHousingPrivilegeLevelsInstSw] (LocationCd ASC)

ALTER TABLE [H_dmHousingPrivilegeLevelsResi]

DROP CONSTRAINT [PK_H_dmHousingPrivilegeLevelsResi];

ALTER TABLE [H_dmHousingPrivilegeLevelsResi] ADD CONSTRAINT [PK_H_dmHousingPrivilegeLevelsResi] PRIMARY KEY CLUSTERED (H_HousingPrivilegeLevelResiId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmHousingPrivilegeLevelsResi_LocationCd') BEGIN  Drop INDEX [IX_H_dmHousingPrivilegeLevelsResi_LocationCd] on [H_dmHousingPrivilegeLevelsResi]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmHousingPrivilegeLevelsResi_LocationCd] ON [H_dmHousingPrivilegeLevelsResi] (LocationCd ASC)

ALTER TABLE [H_dmHousingRestrictionCategories]

DROP CONSTRAINT [PK_H_dmHousingRestrictionCategories];

ALTER TABLE [H_dmHousingRestrictionCategories] ADD CONSTRAINT [PK_H_dmHousingRestrictionCategories] PRIMARY KEY CLUSTERED (H_HousingRestrictionCategoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmHousingRestrictionCategories_LocationCd') BEGIN  Drop INDEX [IX_H_dmHousingRestrictionCategories_LocationCd] on [H_dmHousingRestrictionCategories]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmHousingRestrictionCategories_LocationCd] ON [H_dmHousingRestrictionCategories] (LocationCd ASC)

ALTER TABLE [H_dmHousingRestrictions]

DROP CONSTRAINT [PK_H_dmAssignmentRestrictions];

ALTER TABLE [H_dmHousingRestrictions] ADD CONSTRAINT [PK_H_dmAssignmentRestrictions] PRIMARY KEY CLUSTERED (H_HousingRestrictionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmHousingRestrictions_LocationCd') BEGIN  Drop INDEX [IX_H_dmHousingRestrictions_LocationCd] on [H_dmHousingRestrictions]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmHousingRestrictions_LocationCd] ON [H_dmHousingRestrictions] (LocationCd ASC)

ALTER TABLE [H_dmHousingSecurityTypes]

DROP CONSTRAINT [PK_H_dmHousingSecurityTypes];

ALTER TABLE [H_dmHousingSecurityTypes] ADD CONSTRAINT [PK_H_dmHousingSecurityTypes] PRIMARY KEY CLUSTERED (H_HousingSecurityTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmHousingSecurityTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmHousingSecurityTypes_LocationCd] on [H_dmHousingSecurityTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmHousingSecurityTypes_LocationCd] ON [H_dmHousingSecurityTypes] (LocationCd ASC)

ALTER TABLE [H_dmHousingUnits]

DROP CONSTRAINT [PK_H_dmHousingUnits];

ALTER TABLE [H_dmHousingUnits] ADD CONSTRAINT [PK_H_dmHousingUnits] PRIMARY KEY CLUSTERED (H_HousingUnitId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmHousingUnits_LocationCd') BEGIN  Drop INDEX [IX_H_dmHousingUnits_LocationCd] on [H_dmHousingUnits]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmHousingUnits_LocationCd] ON [H_dmHousingUnits] (LocationCd ASC)

ALTER TABLE [H_dmHousingUnitUses]

DROP CONSTRAINT [PK_H_dmHousingUnitUses];

ALTER TABLE [H_dmHousingUnitUses] ADD CONSTRAINT [PK_H_dmHousingUnitUses] PRIMARY KEY CLUSTERED (H_HousingUnitUseId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmHousingUnitUses_LocationCd') BEGIN  Drop INDEX [IX_H_dmHousingUnitUses_LocationCd] on [H_dmHousingUnitUses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmHousingUnitUses_LocationCd] ON [H_dmHousingUnitUses] (LocationCd ASC)

ALTER TABLE [H_dmHousingVisitingPrivilegeLevels]

DROP CONSTRAINT [PK_H_dmHousingVisitingPrivilegeLevels];

ALTER TABLE [H_dmHousingVisitingPrivilegeLevels] ADD CONSTRAINT [PK_H_dmHousingVisitingPrivilegeLevels] PRIMARY KEY CLUSTERED (H_HousingVisitingPrivilegeLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmHousingVisitingPrivilegeLevels_LocationCd') BEGIN  Drop INDEX [IX_H_dmHousingVisitingPrivilegeLevels_LocationCd] on [H_dmHousingVisitingPrivilegeLevels]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmHousingVisitingPrivilegeLevels_LocationCd] ON [H_dmHousingVisitingPrivilegeLevels] (LocationCd ASC)

ALTER TABLE [H_dmIaRiskRevisedAuditors]

DROP CONSTRAINT [PK_H_dmIaRiskRevisedAuditors];

ALTER TABLE [H_dmIaRiskRevisedAuditors] ADD CONSTRAINT [PK_H_dmIaRiskRevisedAuditors] PRIMARY KEY CLUSTERED (H_IaRiskRevisedAuditorId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmIaRiskRevisedAuditors_LocationCd') BEGIN  Drop INDEX [IX_H_dmIaRiskRevisedAuditors_LocationCd] on [H_dmIaRiskRevisedAuditors]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmIaRiskRevisedAuditors_LocationCd] ON [H_dmIaRiskRevisedAuditors] (LocationCd ASC)

ALTER TABLE [H_dmIASexOffenderRiskCategories]

DROP CONSTRAINT [PK_H_dmIASexOffenderRiskCategories];

ALTER TABLE [H_dmIASexOffenderRiskCategories] ADD CONSTRAINT [PK_H_dmIASexOffenderRiskCategories] PRIMARY KEY CLUSTERED (H_IASexOffenderRiskCategoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmIASexOffenderRiskCategories_LocationCd') BEGIN  Drop INDEX [IX_H_dmIASexOffenderRiskCategories_LocationCd] on [H_dmIASexOffenderRiskCategories]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmIASexOffenderRiskCategories_LocationCd] ON [H_dmIASexOffenderRiskCategories] (LocationCd ASC)

ALTER TABLE [H_dmInOutTypes]

DROP CONSTRAINT [PK_H_dmInOutTypes];

ALTER TABLE [H_dmInOutTypes] ADD CONSTRAINT [PK_H_dmInOutTypes] PRIMARY KEY CLUSTERED (H_InOutTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmInOutTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmInOutTypes_LocationCd] on [H_dmInOutTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmInOutTypes_LocationCd] ON [H_dmInOutTypes] (LocationCd ASC)

ALTER TABLE [H_dmInstitutionDestinations]

DROP CONSTRAINT [PK_H_dmInstitutionDestinations];

ALTER TABLE [H_dmInstitutionDestinations] ADD CONSTRAINT [PK_H_dmInstitutionDestinations] PRIMARY KEY CLUSTERED (H_InstitutionDestinationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmInstitutionDestinations_LocationCd') BEGIN  Drop INDEX [IX_H_dmInstitutionDestinations_LocationCd] on [H_dmInstitutionDestinations]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmInstitutionDestinations_LocationCd] ON [H_dmInstitutionDestinations] (LocationCd ASC)

ALTER TABLE [H_dmInstitutionRules]

DROP CONSTRAINT [PK_H_dmInstitutionRules];

ALTER TABLE [H_dmInstitutionRules] ADD CONSTRAINT [PK_H_dmInstitutionRules] PRIMARY KEY CLUSTERED (H_InstitutionRuleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmInstitutionRules_LocationCd') BEGIN  Drop INDEX [IX_H_dmInstitutionRules_LocationCd] on [H_dmInstitutionRules]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmInstitutionRules_LocationCd] ON [H_dmInstitutionRules] (LocationCd ASC)

ALTER TABLE [H_dmInstitutionTransportationTypes]

DROP CONSTRAINT [PK_H_dmInstitutionTransportationTypes];

ALTER TABLE [H_dmInstitutionTransportationTypes] ADD CONSTRAINT [PK_H_dmInstitutionTransportationTypes] PRIMARY KEY CLUSTERED (H_InstitutionTransportationTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmInstitutionTransportationTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmInstitutionTransportationTypes_LocationCd] on [H_dmInstitutionTransportationTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmInstitutionTransportationTypes_LocationCd] ON [H_dmInstitutionTransportationTypes] (LocationCd ASC)

ALTER TABLE [H_dmInterventionCategories]

DROP CONSTRAINT [PK_H_dmInterventionCategories];

ALTER TABLE [H_dmInterventionCategories] ADD CONSTRAINT [PK_H_dmInterventionCategories] PRIMARY KEY CLUSTERED (H_InterventionCategoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmInterventionCategories_LocationCd') BEGIN  Drop INDEX [IX_H_dmInterventionCategories_LocationCd] on [H_dmInterventionCategories]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmInterventionCategories_LocationCd] ON [H_dmInterventionCategories] (LocationCd ASC)

ALTER TABLE [H_dmInterventionClasses]

DROP CONSTRAINT [PK_H_dmInterventionClasses];

ALTER TABLE [H_dmInterventionClasses] ADD CONSTRAINT [PK_H_dmInterventionClasses] PRIMARY KEY CLUSTERED (H_InterventionClassId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmInterventionClasses_LocationCd') BEGIN  Drop INDEX [IX_H_dmInterventionClasses_LocationCd] on [H_dmInterventionClasses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmInterventionClasses_LocationCd] ON [H_dmInterventionClasses] (LocationCd ASC)

ALTER TABLE [H_dmInterventionClassFacilitators]

DROP CONSTRAINT [PK_H_dmInterventionClassFacilitators];

ALTER TABLE [H_dmInterventionClassFacilitators] ADD CONSTRAINT [PK_H_dmInterventionClassFacilitators] PRIMARY KEY CLUSTERED (H_InterventionClassFacilitatorId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmInterventionClassFacilitators_LocationCd') BEGIN  Drop INDEX [IX_H_dmInterventionClassFacilitators_LocationCd] on [H_dmInterventionClassFacilitators]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmInterventionClassFacilitators_LocationCd] ON [H_dmInterventionClassFacilitators] (LocationCd ASC)

ALTER TABLE [H_dmInterventionClosureTypes]

DROP CONSTRAINT [PK_H_dmInterventionClosureTypes];

ALTER TABLE [H_dmInterventionClosureTypes] ADD CONSTRAINT [PK_H_dmInterventionClosureTypes] PRIMARY KEY CLUSTERED (H_InterventionClosureTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmInterventionClosureTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmInterventionClosureTypes_LocationCd] on [H_dmInterventionClosureTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmInterventionClosureTypes_LocationCd] ON [H_dmInterventionClosureTypes] (LocationCd ASC)

ALTER TABLE [H_dmInterventionContactPhones]

DROP CONSTRAINT [PK_H_dmInterventionContactPhones];

ALTER TABLE [H_dmInterventionContactPhones] ADD CONSTRAINT [PK_H_dmInterventionContactPhones] PRIMARY KEY CLUSTERED (H_InterventionContactPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmInterventionContactPhones_LocationCd') BEGIN  Drop INDEX [IX_H_dmInterventionContactPhones_LocationCd] on [H_dmInterventionContactPhones]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmInterventionContactPhones_LocationCd] ON [H_dmInterventionContactPhones] (LocationCd ASC)

ALTER TABLE [H_dmInterventionContacts]

DROP CONSTRAINT [PK_H_dmInterventionContacts];

ALTER TABLE [H_dmInterventionContacts] ADD CONSTRAINT [PK_H_dmInterventionContacts] PRIMARY KEY CLUSTERED (H_InterventionContactId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmInterventionContacts_LocationCd') BEGIN  Drop INDEX [IX_H_dmInterventionContacts_LocationCd] on [H_dmInterventionContacts]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmInterventionContacts_LocationCd] ON [H_dmInterventionContacts] (LocationCd ASC)

ALTER TABLE [H_dmInterventionEbpStatuses]

DROP CONSTRAINT [PK_H_dmInterventionEBPStatuses];

ALTER TABLE [H_dmInterventionEbpStatuses] ADD CONSTRAINT [PK_H_dmInterventionEBPStatuses] PRIMARY KEY CLUSTERED (H_InterventionEbpStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmInterventionEbpStatuses_LocationCd') BEGIN  Drop INDEX [IX_H_dmInterventionEbpStatuses_LocationCd] on [H_dmInterventionEbpStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmInterventionEbpStatuses_LocationCd] ON [H_dmInterventionEbpStatuses] (LocationCd ASC)

ALTER TABLE [H_dmInterventionLocations]

DROP CONSTRAINT [PK_H_dmInterventionLocations];

ALTER TABLE [H_dmInterventionLocations] ADD CONSTRAINT [PK_H_dmInterventionLocations] PRIMARY KEY CLUSTERED (H_InterventionLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmInterventionLocations_LocationCd') BEGIN  Drop INDEX [IX_H_dmInterventionLocations_LocationCd] on [H_dmInterventionLocations]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmInterventionLocations_LocationCd] ON [H_dmInterventionLocations] (LocationCd ASC)

ALTER TABLE [H_dmInterventionMethods]

DROP CONSTRAINT [PK_h_dmInterventionMethods];

ALTER TABLE [H_dmInterventionMethods] ADD CONSTRAINT [PK_h_dmInterventionMethods] PRIMARY KEY CLUSTERED (H_InterventionMethodId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmInterventionMethods_LocationCd') BEGIN  Drop INDEX [IX_H_dmInterventionMethods_LocationCd] on [H_dmInterventionMethods]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmInterventionMethods_LocationCd] ON [H_dmInterventionMethods] (LocationCd ASC)

ALTER TABLE [H_dmInterventionModalities]

DROP CONSTRAINT [PK_H_dmInterventionModalities];

ALTER TABLE [H_dmInterventionModalities] ADD CONSTRAINT [PK_H_dmInterventionModalities] PRIMARY KEY CLUSTERED (H_InterventionModalityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmInterventionModalities_LocationCd') BEGIN  Drop INDEX [IX_H_dmInterventionModalities_LocationCd] on [H_dmInterventionModalities]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmInterventionModalities_LocationCd] ON [H_dmInterventionModalities] (LocationCd ASC)

ALTER TABLE [H_dmInterventionNotCompletedReasons]

DROP CONSTRAINT [PK_H_dmInterventionNotCompletedReasons];

ALTER TABLE [H_dmInterventionNotCompletedReasons] ADD CONSTRAINT [PK_H_dmInterventionNotCompletedReasons] PRIMARY KEY CLUSTERED (H_InterventionNotCompletedReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmInterventionNotCompletedReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmInterventionNotCompletedReasons_LocationCd] on [H_dmInterventionNotCompletedReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmInterventionNotCompletedReasons_LocationCd] ON [H_dmInterventionNotCompletedReasons] (LocationCd ASC)

ALTER TABLE [H_dmInterventionProgramLocationEbpStatuses]

DROP CONSTRAINT [PK_H_dmInterventionProgramLocationEBPStatuses];

ALTER TABLE [H_dmInterventionProgramLocationEbpStatuses] ADD CONSTRAINT [PK_H_dmInterventionProgramLocationEBPStatuses] PRIMARY KEY CLUSTERED (H_InterventionProgramLocationEbpStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmInterventionProgramLocationEbpStatuses_LocationCd') BEGIN  Drop INDEX [IX_H_dmInterventionProgramLocationEbpStatuses_LocationCd] on [H_dmInterventionProgramLocationEbpStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmInterventionProgramLocationEbpStatuses_LocationCd] ON [H_dmInterventionProgramLocationEbpStatuses] (LocationCd ASC)

ALTER TABLE [H_dmInterventionProgramLocationInterventions]

DROP CONSTRAINT [PK_H_dmInterventionProgramLocationInterventions];

ALTER TABLE [H_dmInterventionProgramLocationInterventions] ADD CONSTRAINT [PK_H_dmInterventionProgramLocationInterventions] PRIMARY KEY CLUSTERED (H_InterventionProgramLocationInterventionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmInterventionProgramLocationInterventions_LocationCd') BEGIN  Drop INDEX [IX_H_dmInterventionProgramLocationInterventions_LocationCd] on [H_dmInterventionProgramLocationInterventions]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmInterventionProgramLocationInterventions_LocationCd] ON [H_dmInterventionProgramLocationInterventions] (LocationCd ASC)

ALTER TABLE [H_dmInterventionProgramLocations]

DROP CONSTRAINT [PK_H_dmInterventionProgramLocations];

ALTER TABLE [H_dmInterventionProgramLocations] ADD CONSTRAINT [PK_H_dmInterventionProgramLocations] PRIMARY KEY CLUSTERED (H_InterventionProgramLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmInterventionProgramLocations_LocationCd') BEGIN  Drop INDEX [IX_H_dmInterventionProgramLocations_LocationCd] on [H_dmInterventionProgramLocations]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmInterventionProgramLocations_LocationCd] ON [H_dmInterventionProgramLocations] (LocationCd ASC)

ALTER TABLE [H_dmInterventionPrograms]

DROP CONSTRAINT [PK_H_dmInterventionPrograms];

ALTER TABLE [H_dmInterventionPrograms] ADD CONSTRAINT [PK_H_dmInterventionPrograms] PRIMARY KEY CLUSTERED (H_InterventionProgramId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmInterventionPrograms_LocationCd') BEGIN  Drop INDEX [IX_H_dmInterventionPrograms_LocationCd] on [H_dmInterventionPrograms]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmInterventionPrograms_LocationCd] ON [H_dmInterventionPrograms] (LocationCd ASC)

ALTER TABLE [H_dmInterventionProviderPhones]

DROP CONSTRAINT [PK_H_dmInterventionProviderPhones];

ALTER TABLE [H_dmInterventionProviderPhones] ADD CONSTRAINT [PK_H_dmInterventionProviderPhones] PRIMARY KEY CLUSTERED (H_InterventionProviderPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmInterventionProviderPhones_LocationCd') BEGIN  Drop INDEX [IX_H_dmInterventionProviderPhones_LocationCd] on [H_dmInterventionProviderPhones]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmInterventionProviderPhones_LocationCd] ON [H_dmInterventionProviderPhones] (LocationCd ASC)

ALTER TABLE [H_dmInterventionProviders]

DROP CONSTRAINT [PK_H_dmInterventionProviders];

ALTER TABLE [H_dmInterventionProviders] ADD CONSTRAINT [PK_H_dmInterventionProviders] PRIMARY KEY CLUSTERED (H_InterventionProviderId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmInterventionProviders_LocationCd') BEGIN  Drop INDEX [IX_H_dmInterventionProviders_LocationCd] on [H_dmInterventionProviders]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmInterventionProviders_LocationCd] ON [H_dmInterventionProviders] (LocationCd ASC)

ALTER TABLE [H_dmInterventionProvidersAssn]

DROP CONSTRAINT [PK_H_dmInterventionProvidersAssn];

ALTER TABLE [H_dmInterventionProvidersAssn] ADD CONSTRAINT [PK_H_dmInterventionProvidersAssn] PRIMARY KEY CLUSTERED (H_InterventionProviderAssnId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmInterventionProvidersAssn_LocationCd') BEGIN  Drop INDEX [IX_H_dmInterventionProvidersAssn_LocationCd] on [H_dmInterventionProvidersAssn]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmInterventionProvidersAssn_LocationCd] ON [H_dmInterventionProvidersAssn] (LocationCd ASC)

ALTER TABLE [H_dmInterventions]

DROP CONSTRAINT [PK_H_dmInterventions];

ALTER TABLE [H_dmInterventions] ADD CONSTRAINT [PK_H_dmInterventions] PRIMARY KEY CLUSTERED (H_InterventionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmInterventions_LocationCd') BEGIN  Drop INDEX [IX_H_dmInterventions_LocationCd] on [H_dmInterventions]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmInterventions_LocationCd] ON [H_dmInterventions] (LocationCd ASC)

ALTER TABLE [H_dmInterventionServiceTypes]

DROP CONSTRAINT [PK_H_dmInterventionServiceTypes];

ALTER TABLE [H_dmInterventionServiceTypes] ADD CONSTRAINT [PK_H_dmInterventionServiceTypes] PRIMARY KEY CLUSTERED (H_InterventionServiceTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmInterventionServiceTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmInterventionServiceTypes_LocationCd] on [H_dmInterventionServiceTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmInterventionServiceTypes_LocationCd] ON [H_dmInterventionServiceTypes] (LocationCd ASC)

ALTER TABLE [H_dmInterventionSessionSummaries]

DROP CONSTRAINT [PK_H_dmInterventionSessionSummaries];

ALTER TABLE [H_dmInterventionSessionSummaries] ADD CONSTRAINT [PK_H_dmInterventionSessionSummaries] PRIMARY KEY CLUSTERED (H_InterventionSessionSummaryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmInterventionSessionSummaries_LocationCd') BEGIN  Drop INDEX [IX_H_dmInterventionSessionSummaries_LocationCd] on [H_dmInterventionSessionSummaries]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmInterventionSessionSummaries_LocationCd] ON [H_dmInterventionSessionSummaries] (LocationCd ASC)

ALTER TABLE [H_dmInterventionSessionTopics]

DROP CONSTRAINT [PK_H_dmInterventionSessionTopics];

ALTER TABLE [H_dmInterventionSessionTopics] ADD CONSTRAINT [PK_H_dmInterventionSessionTopics] PRIMARY KEY CLUSTERED (H_InterventionSessionTopicId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmInterventionSessionTopics_LocationCd') BEGIN  Drop INDEX [IX_H_dmInterventionSessionTopics_LocationCd] on [H_dmInterventionSessionTopics]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmInterventionSessionTopics_LocationCd] ON [H_dmInterventionSessionTopics] (LocationCd ASC)

ALTER TABLE [H_dmInterventionSettings]

DROP CONSTRAINT [PK_H_dmInterventionSettings];

ALTER TABLE [H_dmInterventionSettings] ADD CONSTRAINT [PK_H_dmInterventionSettings] PRIMARY KEY CLUSTERED (H_InterventionSettingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmInterventionSettings_LocationCd') BEGIN  Drop INDEX [IX_H_dmInterventionSettings_LocationCd] on [H_dmInterventionSettings]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmInterventionSettings_LocationCd] ON [H_dmInterventionSettings] (LocationCd ASC)

ALTER TABLE [H_dmIsoraDepartureReasons]

DROP CONSTRAINT [PK_H_dmISORADepartureReasons];

ALTER TABLE [H_dmIsoraDepartureReasons] ADD CONSTRAINT [PK_H_dmISORADepartureReasons] PRIMARY KEY CLUSTERED (H_IsoraDepartureReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmIsoraDepartureReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmIsoraDepartureReasons_LocationCd] on [H_dmIsoraDepartureReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmIsoraDepartureReasons_LocationCd] ON [H_dmIsoraDepartureReasons] (LocationCd ASC)

ALTER TABLE [H_dmJobStatuses]

DROP CONSTRAINT [PK_H_dmJobStatuses];

ALTER TABLE [H_dmJobStatuses] ADD CONSTRAINT [PK_H_dmJobStatuses] PRIMARY KEY CLUSTERED (H_JobStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmJobStatuses_LocationCd') BEGIN  Drop INDEX [IX_H_dmJobStatuses_LocationCd] on [H_dmJobStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmJobStatuses_LocationCd] ON [H_dmJobStatuses] (LocationCd ASC)

ALTER TABLE [H_dmJurisdictionTypes]

DROP CONSTRAINT [PK_H_dmJurisdictionTypes];

ALTER TABLE [H_dmJurisdictionTypes] ADD CONSTRAINT [PK_H_dmJurisdictionTypes] PRIMARY KEY CLUSTERED (H_JurisdictionTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmJurisdictionTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmJurisdictionTypes_LocationCd] on [H_dmJurisdictionTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmJurisdictionTypes_LocationCd] ON [H_dmJurisdictionTypes] (LocationCd ASC)

ALTER TABLE [H_dmKioskFurloughPurposes]

DROP CONSTRAINT [PK_H_dmKioskFurloughPurposes];

ALTER TABLE [H_dmKioskFurloughPurposes] ADD CONSTRAINT [PK_H_dmKioskFurloughPurposes] PRIMARY KEY CLUSTERED (H_KioskFurloughPurposeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmKioskFurloughPurposes_LocationCd') BEGIN  Drop INDEX [IX_H_dmKioskFurloughPurposes_LocationCd] on [H_dmKioskFurloughPurposes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmKioskFurloughPurposes_LocationCd] ON [H_dmKioskFurloughPurposes] (LocationCd ASC)

ALTER TABLE [H_dmKioskLocations]

DROP CONSTRAINT [PK_H_dmKioskLocations];

ALTER TABLE [H_dmKioskLocations] ADD CONSTRAINT [PK_H_dmKioskLocations] PRIMARY KEY CLUSTERED (H_KioskLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmKioskLocations_LocationCd') BEGIN  Drop INDEX [IX_H_dmKioskLocations_LocationCd] on [H_dmKioskLocations]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmKioskLocations_LocationCd] ON [H_dmKioskLocations] (LocationCd ASC)

ALTER TABLE [H_dmKioskMailboxes]

DROP CONSTRAINT [PK_H_dmKioskMailboxes];

ALTER TABLE [H_dmKioskMailboxes] ADD CONSTRAINT [PK_H_dmKioskMailboxes] PRIMARY KEY CLUSTERED (H_KioskMailboxId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmKioskMailboxes_LocationCd') BEGIN  Drop INDEX [IX_H_dmKioskMailboxes_LocationCd] on [H_dmKioskMailboxes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmKioskMailboxes_LocationCd] ON [H_dmKioskMailboxes] (LocationCd ASC)

ALTER TABLE [H_dmKioskMailboxStaff]

DROP CONSTRAINT [PK_H_dmKioskMailboxStaff];

ALTER TABLE [H_dmKioskMailboxStaff] ADD CONSTRAINT [PK_H_dmKioskMailboxStaff] PRIMARY KEY CLUSTERED (H_KioskMailboxStaffId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmKioskMailboxStaff_LocationCd') BEGIN  Drop INDEX [IX_H_dmKioskMailboxStaff_LocationCd] on [H_dmKioskMailboxStaff]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmKioskMailboxStaff_LocationCd] ON [H_dmKioskMailboxStaff] (LocationCd ASC)

ALTER TABLE [H_dmKioskWorkstations]

DROP CONSTRAINT [PK_H_dmKioskWorkstations];

ALTER TABLE [H_dmKioskWorkstations] ADD CONSTRAINT [PK_H_dmKioskWorkstations] PRIMARY KEY CLUSTERED (H_KioskWorkstationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmKioskWorkstations_LocationCd') BEGIN  Drop INDEX [IX_H_dmKioskWorkstations_LocationCd] on [H_dmKioskWorkstations]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmKioskWorkstations_LocationCd] ON [H_dmKioskWorkstations] (LocationCd ASC)

ALTER TABLE [H_dmLegalPeopleInformation]

DROP CONSTRAINT [PK_H_dmLegalPeopleInformation];

ALTER TABLE [H_dmLegalPeopleInformation] ADD CONSTRAINT [PK_H_dmLegalPeopleInformation] PRIMARY KEY CLUSTERED (H_LegalPeopleInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmLegalPeopleInformation_LocationCd') BEGIN  Drop INDEX [IX_H_dmLegalPeopleInformation_LocationCd] on [H_dmLegalPeopleInformation]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmLegalPeopleInformation_LocationCd] ON [H_dmLegalPeopleInformation] (LocationCd ASC)

ALTER TABLE [H_dmLegalPeoplePhones]

DROP CONSTRAINT [PK_H_dmLegalPeoplePhones];

ALTER TABLE [H_dmLegalPeoplePhones] ADD CONSTRAINT [PK_H_dmLegalPeoplePhones] PRIMARY KEY CLUSTERED (H_LegalPeoplePhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmLegalPeoplePhones_LocationCd') BEGIN  Drop INDEX [IX_H_dmLegalPeoplePhones_LocationCd] on [H_dmLegalPeoplePhones]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmLegalPeoplePhones_LocationCd] ON [H_dmLegalPeoplePhones] (LocationCd ASC)

ALTER TABLE [H_dmLevelOfSupervision]

DROP CONSTRAINT [PK_H_dmLevelOfSupervision];

ALTER TABLE [H_dmLevelOfSupervision] ADD CONSTRAINT [PK_H_dmLevelOfSupervision] PRIMARY KEY CLUSTERED (H_LevelOfSupervisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmLevelOfSupervision_LocationCd') BEGIN  Drop INDEX [IX_H_dmLevelOfSupervision_LocationCd] on [H_dmLevelOfSupervision]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmLevelOfSupervision_LocationCd] ON [H_dmLevelOfSupervision] (LocationCd ASC)

ALTER TABLE [H_dmLevyModifiers]

DROP CONSTRAINT [PK_H_dmLevyModifiers];

ALTER TABLE [H_dmLevyModifiers] ADD CONSTRAINT [PK_H_dmLevyModifiers] PRIMARY KEY CLUSTERED (H_LevyModifierId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmLevyModifiers_LocationCd') BEGIN  Drop INDEX [IX_H_dmLevyModifiers_LocationCd] on [H_dmLevyModifiers]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmLevyModifiers_LocationCd] ON [H_dmLevyModifiers] (LocationCd ASC)

ALTER TABLE [H_dmLevyTypes]

DROP CONSTRAINT [PK_H_dmLevyTypes];

ALTER TABLE [H_dmLevyTypes] ADD CONSTRAINT [PK_H_dmLevyTypes] PRIMARY KEY CLUSTERED (H_LevyTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmLevyTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmLevyTypes_LocationCd] on [H_dmLevyTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmLevyTypes_LocationCd] ON [H_dmLevyTypes] (LocationCd ASC)

ALTER TABLE [H_dmLivingWith]

DROP CONSTRAINT [PK_H_dmLivingWith];

ALTER TABLE [H_dmLivingWith] ADD CONSTRAINT [PK_H_dmLivingWith] PRIMARY KEY CLUSTERED (H_LivingWithId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmLivingWith_LocationCd') BEGIN  Drop INDEX [IX_H_dmLivingWith_LocationCd] on [H_dmLivingWith]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmLivingWith_LocationCd] ON [H_dmLivingWith] (LocationCd ASC)

ALTER TABLE [H_dmLov]

DROP CONSTRAINT [PK_H_dmLOV];

ALTER TABLE [H_dmLov] ADD CONSTRAINT [PK_H_dmLOV] PRIMARY KEY CLUSTERED (H_LovId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmLov_LocationCd') BEGIN  Drop INDEX [IX_H_dmLov_LocationCd] on [H_dmLov]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmLov_LocationCd] ON [H_dmLov] (LocationCd ASC)

ALTER TABLE [H_dmLsi_rAuditors]

DROP CONSTRAINT [PK_H_dmLSI_RAuditors];

ALTER TABLE [H_dmLsi_rAuditors] ADD CONSTRAINT [PK_H_dmLSI_RAuditors] PRIMARY KEY CLUSTERED (H_Lsi_rAuditorId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmLsi_rAuditors_LocationCd') BEGIN  Drop INDEX [IX_H_dmLsi_rAuditors_LocationCd] on [H_dmLsi_rAuditors]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmLsi_rAuditors_LocationCd] ON [H_dmLsi_rAuditors] (LocationCd ASC)

ALTER TABLE [H_dmLsi_RDispositions]

DROP CONSTRAINT [PK_H_dmLSI_RDispositions];

ALTER TABLE [H_dmLsi_RDispositions] ADD CONSTRAINT [PK_H_dmLSI_RDispositions] PRIMARY KEY CLUSTERED (H_Lsi_RDispositionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmLsi_RDispositions_LocationCd') BEGIN  Drop INDEX [IX_H_dmLsi_RDispositions_LocationCd] on [H_dmLsi_RDispositions]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmLsi_RDispositions_LocationCd] ON [H_dmLsi_RDispositions] (LocationCd ASC)

ALTER TABLE [H_dmMaritalStatuses]

DROP CONSTRAINT [PK_H_dmMaritalStatuses];

ALTER TABLE [H_dmMaritalStatuses] ADD CONSTRAINT [PK_H_dmMaritalStatuses] PRIMARY KEY CLUSTERED (H_MaritalStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmMaritalStatuses_LocationCd') BEGIN  Drop INDEX [IX_H_dmMaritalStatuses_LocationCd] on [H_dmMaritalStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmMaritalStatuses_LocationCd] ON [H_dmMaritalStatuses] (LocationCd ASC)

ALTER TABLE [H_dmMethods]

DROP CONSTRAINT [PK_H_dmMethods];

ALTER TABLE [H_dmMethods] ADD CONSTRAINT [PK_H_dmMethods] PRIMARY KEY CLUSTERED (H_MethodId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmMethods_LocationCd') BEGIN  Drop INDEX [IX_H_dmMethods_LocationCd] on [H_dmMethods]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmMethods_LocationCd] ON [H_dmMethods] (LocationCd ASC)

ALTER TABLE [H_dmMilitaryBranches]

DROP CONSTRAINT [PK_H_dmMilitaryBranches];

ALTER TABLE [H_dmMilitaryBranches] ADD CONSTRAINT [PK_H_dmMilitaryBranches] PRIMARY KEY CLUSTERED (H_MilitaryBranchId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmMilitaryBranches_LocationCd') BEGIN  Drop INDEX [IX_H_dmMilitaryBranches_LocationCd] on [H_dmMilitaryBranches]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmMilitaryBranches_LocationCd] ON [H_dmMilitaryBranches] (LocationCd ASC)

ALTER TABLE [H_dmMilitaryDischargeTypes]

DROP CONSTRAINT [PK_H_dmMilitaryDischargeTypes];

ALTER TABLE [H_dmMilitaryDischargeTypes] ADD CONSTRAINT [PK_H_dmMilitaryDischargeTypes] PRIMARY KEY CLUSTERED (H_MilitaryDischargeTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmMilitaryDischargeTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmMilitaryDischargeTypes_LocationCd] on [H_dmMilitaryDischargeTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmMilitaryDischargeTypes_LocationCd] ON [H_dmMilitaryDischargeTypes] (LocationCd ASC)

ALTER TABLE [H_dmModalities]

DROP CONSTRAINT [PK_H_dmModalities];

ALTER TABLE [H_dmModalities] ADD CONSTRAINT [PK_H_dmModalities] PRIMARY KEY CLUSTERED (H_ModalityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmModalities_LocationCd') BEGIN  Drop INDEX [IX_H_dmModalities_LocationCd] on [H_dmModalities]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmModalities_LocationCd] ON [H_dmModalities] (LocationCd ASC)

ALTER TABLE [H_dmMonitoringTrackedItems]

DROP CONSTRAINT [PK_H_dmMonitoringTrackedItems];

ALTER TABLE [H_dmMonitoringTrackedItems] ADD CONSTRAINT [PK_H_dmMonitoringTrackedItems] PRIMARY KEY CLUSTERED (H_MonitoringTrackedItemId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmMonitoringTrackedItems_LocationCd') BEGIN  Drop INDEX [IX_H_dmMonitoringTrackedItems_LocationCd] on [H_dmMonitoringTrackedItems]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmMonitoringTrackedItems_LocationCd] ON [H_dmMonitoringTrackedItems] (LocationCd ASC)

ALTER TABLE [H_dmMovementCodes]

DROP CONSTRAINT [PK_H_dmMovementCodes];

ALTER TABLE [H_dmMovementCodes] ADD CONSTRAINT [PK_H_dmMovementCodes] PRIMARY KEY CLUSTERED (H_MovementCodeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmMovementCodes_LocationCd') BEGIN  Drop INDEX [IX_H_dmMovementCodes_LocationCd] on [H_dmMovementCodes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmMovementCodes_LocationCd] ON [H_dmMovementCodes] (LocationCd ASC)

ALTER TABLE [H_dmNameTypes]

DROP CONSTRAINT [PK_H_dmNameTypes];

ALTER TABLE [H_dmNameTypes] ADD CONSTRAINT [PK_H_dmNameTypes] PRIMARY KEY CLUSTERED (H_NameTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmNameTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmNameTypes_LocationCd] on [H_dmNameTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmNameTypes_LocationCd] ON [H_dmNameTypes] (LocationCd ASC)

ALTER TABLE [H_dmNbmtgIdentifierTypes]

DROP CONSTRAINT [PK_H_dmNBMTGIdentifierTypes];

ALTER TABLE [H_dmNbmtgIdentifierTypes] ADD CONSTRAINT [PK_H_dmNBMTGIdentifierTypes] PRIMARY KEY CLUSTERED (H_NbmtgIdentifierTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmNbmtgIdentifierTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmNbmtgIdentifierTypes_LocationCd] on [H_dmNbmtgIdentifierTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmNbmtgIdentifierTypes_LocationCd] ON [H_dmNbmtgIdentifierTypes] (LocationCd ASC)

ALTER TABLE [H_dmNeedEndReasons]

DROP CONSTRAINT [PK_H_dmNeedEndReasons];

ALTER TABLE [H_dmNeedEndReasons] ADD CONSTRAINT [PK_H_dmNeedEndReasons] PRIMARY KEY CLUSTERED (H_NeedEndReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmNeedEndReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmNeedEndReasons_LocationCd] on [H_dmNeedEndReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmNeedEndReasons_LocationCd] ON [H_dmNeedEndReasons] (LocationCd ASC)

ALTER TABLE [H_dmNeedResponses]

DROP CONSTRAINT [PK_H_dmNeedResponses];

ALTER TABLE [H_dmNeedResponses] ADD CONSTRAINT [PK_H_dmNeedResponses] PRIMARY KEY CLUSTERED (H_NeedResponseId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmNeedResponses_LocationCd') BEGIN  Drop INDEX [IX_H_dmNeedResponses_LocationCd] on [H_dmNeedResponses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmNeedResponses_LocationCd] ON [H_dmNeedResponses] (LocationCd ASC)

ALTER TABLE [H_dmNeeds]

DROP CONSTRAINT [PK_H_dmNeeds];

ALTER TABLE [H_dmNeeds] ADD CONSTRAINT [PK_H_dmNeeds] PRIMARY KEY CLUSTERED (H_NeedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmNeeds_LocationCd') BEGIN  Drop INDEX [IX_H_dmNeeds_LocationCd] on [H_dmNeeds]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmNeeds_LocationCd] ON [H_dmNeeds] (LocationCd ASC)

ALTER TABLE [H_dmNoteCategories]

DROP CONSTRAINT [PK_H_dmNoteCategories];

ALTER TABLE [H_dmNoteCategories] ADD CONSTRAINT [PK_H_dmNoteCategories] PRIMARY KEY CLUSTERED (H_NoteCategoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmNoteCategories_LocationCd') BEGIN  Drop INDEX [IX_H_dmNoteCategories_LocationCd] on [H_dmNoteCategories]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmNoteCategories_LocationCd] ON [H_dmNoteCategories] (LocationCd ASC)

ALTER TABLE [H_dmNoticeDecisions]

DROP CONSTRAINT [PK_H_dmNoticeDecisions];

ALTER TABLE [H_dmNoticeDecisions] ADD CONSTRAINT [PK_H_dmNoticeDecisions] PRIMARY KEY CLUSTERED (H_NoticeDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmNoticeDecisions_LocationCd') BEGIN  Drop INDEX [IX_H_dmNoticeDecisions_LocationCd] on [H_dmNoticeDecisions]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmNoticeDecisions_LocationCd] ON [H_dmNoticeDecisions] (LocationCd ASC)

ALTER TABLE [H_dmOffenderScheduledEventTypes]

DROP CONSTRAINT [PK_H_dmOffenderScheduledEventTypes];

ALTER TABLE [H_dmOffenderScheduledEventTypes] ADD CONSTRAINT [PK_H_dmOffenderScheduledEventTypes] PRIMARY KEY CLUSTERED (H_OffenderScheduledEventTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmOffenderScheduledEventTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmOffenderScheduledEventTypes_LocationCd] on [H_dmOffenderScheduledEventTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmOffenderScheduledEventTypes_LocationCd] ON [H_dmOffenderScheduledEventTypes] (LocationCd ASC)

ALTER TABLE [H_dmOffenderSpecialty]

DROP CONSTRAINT [PK_H_dmOffenderSpecialty];

ALTER TABLE [H_dmOffenderSpecialty] ADD CONSTRAINT [PK_H_dmOffenderSpecialty] PRIMARY KEY CLUSTERED (H_OffenderSpecialtyId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmOffenderSpecialty_LocationCd') BEGIN  Drop INDEX [IX_H_dmOffenderSpecialty_LocationCd] on [H_dmOffenderSpecialty]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmOffenderSpecialty_LocationCd] ON [H_dmOffenderSpecialty] (LocationCd ASC)

ALTER TABLE [H_dmOffenderSpecialtyChangeReasons]

DROP CONSTRAINT [PK_H_dmOffenderSpecialtyChangeReasons];

ALTER TABLE [H_dmOffenderSpecialtyChangeReasons] ADD CONSTRAINT [PK_H_dmOffenderSpecialtyChangeReasons] PRIMARY KEY CLUSTERED (H_OffenderSpecialtyChangeReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmOffenderSpecialtyChangeReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmOffenderSpecialtyChangeReasons_LocationCd] on [H_dmOffenderSpecialtyChangeReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmOffenderSpecialtyChangeReasons_LocationCd] ON [H_dmOffenderSpecialtyChangeReasons] (LocationCd ASC)

ALTER TABLE [H_dmOffenseBehaviorCodes]

DROP CONSTRAINT [PK_H_dmOffenseBehaviorCodes];

ALTER TABLE [H_dmOffenseBehaviorCodes] ADD CONSTRAINT [PK_H_dmOffenseBehaviorCodes] PRIMARY KEY CLUSTERED (H_BehaviorCodeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmOffenseBehaviorCodes_LocationCd') BEGIN  Drop INDEX [IX_H_dmOffenseBehaviorCodes_LocationCd] on [H_dmOffenseBehaviorCodes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmOffenseBehaviorCodes_LocationCd] ON [H_dmOffenseBehaviorCodes] (LocationCd ASC)

ALTER TABLE [H_dmOffenseBehaviorVerifications]

DROP CONSTRAINT [PK_H_dmOffenseBehaviorVerifications];

ALTER TABLE [H_dmOffenseBehaviorVerifications] ADD CONSTRAINT [PK_H_dmOffenseBehaviorVerifications] PRIMARY KEY CLUSTERED (H_BehaviorVerificationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmOffenseBehaviorVerifications_LocationCd') BEGIN  Drop INDEX [IX_H_dmOffenseBehaviorVerifications_LocationCd] on [H_dmOffenseBehaviorVerifications]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmOffenseBehaviorVerifications_LocationCd] ON [H_dmOffenseBehaviorVerifications] (LocationCd ASC)

ALTER TABLE [H_dmoffenseclasses]

DROP CONSTRAINT [PK_H_dmoffenseclasses];

ALTER TABLE [H_dmoffenseclasses] ADD CONSTRAINT [PK_H_dmoffenseclasses] PRIMARY KEY CLUSTERED (H_OffenseClassId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmoffenseclasses_LocationCd') BEGIN  Drop INDEX [IX_H_dmoffenseclasses_LocationCd] on [H_dmoffenseclasses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmoffenseclasses_LocationCd] ON [H_dmoffenseclasses] (LocationCd ASC)

ALTER TABLE [H_dmOffenseLevels]

DROP CONSTRAINT [PK_H_dmOffenseLevels];

ALTER TABLE [H_dmOffenseLevels] ADD CONSTRAINT [PK_H_dmOffenseLevels] PRIMARY KEY CLUSTERED (H_OffenseLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmOffenseLevels_LocationCd') BEGIN  Drop INDEX [IX_H_dmOffenseLevels_LocationCd] on [H_dmOffenseLevels]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmOffenseLevels_LocationCd] ON [H_dmOffenseLevels] (LocationCd ASC)

ALTER TABLE [H_dmOffUnitLocations]

DROP CONSTRAINT [PK_H_dmOffUnitLocations];

ALTER TABLE [H_dmOffUnitLocations] ADD CONSTRAINT [PK_H_dmOffUnitLocations] PRIMARY KEY CLUSTERED (H_OffUnitLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmOffUnitLocations_LocationCd') BEGIN  Drop INDEX [IX_H_dmOffUnitLocations_LocationCd] on [H_dmOffUnitLocations]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmOffUnitLocations_LocationCd] ON [H_dmOffUnitLocations] (LocationCd ASC)

ALTER TABLE [H_dmOSCRSupervisionStatuses]

DROP CONSTRAINT [PK_H_dmOSCRSupervisionStatuses];

ALTER TABLE [H_dmOSCRSupervisionStatuses] ADD CONSTRAINT [PK_H_dmOSCRSupervisionStatuses] PRIMARY KEY CLUSTERED (H_OSCRSupervisionStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmOSCRSupervisionStatuses_LocationCd') BEGIN  Drop INDEX [IX_H_dmOSCRSupervisionStatuses_LocationCd] on [H_dmOSCRSupervisionStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmOSCRSupervisionStatuses_LocationCd] ON [H_dmOSCRSupervisionStatuses] (LocationCd ASC)

ALTER TABLE [H_dmOverrideCategories]

DROP CONSTRAINT [PK_H_dmOverrideCategories];

ALTER TABLE [H_dmOverrideCategories] ADD CONSTRAINT [PK_H_dmOverrideCategories] PRIMARY KEY CLUSTERED (H_OverrideCategoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmOverrideCategories_LocationCd') BEGIN  Drop INDEX [IX_H_dmOverrideCategories_LocationCd] on [H_dmOverrideCategories]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmOverrideCategories_LocationCd] ON [H_dmOverrideCategories] (LocationCd ASC)

ALTER TABLE [H_dmOverrideReasons]

DROP CONSTRAINT [PK_H_dmOverrideReasons];

ALTER TABLE [H_dmOverrideReasons] ADD CONSTRAINT [PK_H_dmOverrideReasons] PRIMARY KEY CLUSTERED (H_OverrideReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmOverrideReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmOverrideReasons_LocationCd] on [H_dmOverrideReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmOverrideReasons_LocationCd] ON [H_dmOverrideReasons] (LocationCd ASC)

ALTER TABLE [H_dmOwiContinuumResults]

DROP CONSTRAINT [PK_H_dmOWIContinuumResults];

ALTER TABLE [H_dmOwiContinuumResults] ADD CONSTRAINT [PK_H_dmOWIContinuumResults] PRIMARY KEY CLUSTERED (H_OwiContinuumResultId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmOwiContinuumResults_LocationCd') BEGIN  Drop INDEX [IX_H_dmOwiContinuumResults_LocationCd] on [H_dmOwiContinuumResults]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmOwiContinuumResults_LocationCd] ON [H_dmOwiContinuumResults] (LocationCd ASC)

ALTER TABLE [H_dmParoleBoardCaseTypes]

DROP CONSTRAINT [PK_H_dmParoleBoardCaseTypes];

ALTER TABLE [H_dmParoleBoardCaseTypes] ADD CONSTRAINT [PK_H_dmParoleBoardCaseTypes] PRIMARY KEY CLUSTERED (H_ParoleBoardCaseTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmParoleBoardCaseTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmParoleBoardCaseTypes_LocationCd] on [H_dmParoleBoardCaseTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmParoleBoardCaseTypes_LocationCd] ON [H_dmParoleBoardCaseTypes] (LocationCd ASC)

ALTER TABLE [H_dmParoleBoardContinuanceTerms]

DROP CONSTRAINT [PK_H_dmParoleBoardContinuanceTerms];

ALTER TABLE [H_dmParoleBoardContinuanceTerms] ADD CONSTRAINT [PK_H_dmParoleBoardContinuanceTerms] PRIMARY KEY CLUSTERED (H_ParoleBoardContinuanceTermId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmParoleBoardContinuanceTerms_LocationCd') BEGIN  Drop INDEX [IX_H_dmParoleBoardContinuanceTerms_LocationCd] on [H_dmParoleBoardContinuanceTerms]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmParoleBoardContinuanceTerms_LocationCd] ON [H_dmParoleBoardContinuanceTerms] (LocationCd ASC)

ALTER TABLE [H_dmParoleBoardContinuanceTypes]

DROP CONSTRAINT [PK_H_dmParoleBoardContinuanceTypes];

ALTER TABLE [H_dmParoleBoardContinuanceTypes] ADD CONSTRAINT [PK_H_dmParoleBoardContinuanceTypes] PRIMARY KEY CLUSTERED (H_ParoleBoardContinuanceTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmParoleBoardContinuanceTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmParoleBoardContinuanceTypes_LocationCd] on [H_dmParoleBoardContinuanceTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmParoleBoardContinuanceTypes_LocationCd] ON [H_dmParoleBoardContinuanceTypes] (LocationCd ASC)

ALTER TABLE [H_dmParoleBoardDecisionTypes]

DROP CONSTRAINT [PK_H_dmParoleBoardDecisionTypes];

ALTER TABLE [H_dmParoleBoardDecisionTypes] ADD CONSTRAINT [PK_H_dmParoleBoardDecisionTypes] PRIMARY KEY CLUSTERED (H_ParoleBoardDecisionTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmParoleBoardDecisionTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmParoleBoardDecisionTypes_LocationCd] on [H_dmParoleBoardDecisionTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmParoleBoardDecisionTypes_LocationCd] ON [H_dmParoleBoardDecisionTypes] (LocationCd ASC)

ALTER TABLE [H_dmParoleBoardDeferralResolutions]

DROP CONSTRAINT [PK_H_dmParoleBoardDeferralResolutions];

ALTER TABLE [H_dmParoleBoardDeferralResolutions] ADD CONSTRAINT [PK_H_dmParoleBoardDeferralResolutions] PRIMARY KEY CLUSTERED (H_ParoleBoardDeferralResolutionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmParoleBoardDeferralResolutions_LocationCd') BEGIN  Drop INDEX [IX_H_dmParoleBoardDeferralResolutions_LocationCd] on [H_dmParoleBoardDeferralResolutions]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmParoleBoardDeferralResolutions_LocationCd] ON [H_dmParoleBoardDeferralResolutions] (LocationCd ASC)

ALTER TABLE [H_dmParoleBoardDeferralStatuses]

DROP CONSTRAINT [PK_H_dmParoleBoardDeferralStatuses];

ALTER TABLE [H_dmParoleBoardDeferralStatuses] ADD CONSTRAINT [PK_H_dmParoleBoardDeferralStatuses] PRIMARY KEY CLUSTERED (H_ParoleBoardDeferralStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmParoleBoardDeferralStatuses_LocationCd') BEGIN  Drop INDEX [IX_H_dmParoleBoardDeferralStatuses_LocationCd] on [H_dmParoleBoardDeferralStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmParoleBoardDeferralStatuses_LocationCd] ON [H_dmParoleBoardDeferralStatuses] (LocationCd ASC)

ALTER TABLE [H_dmParoleBoardDeferralTypes]

DROP CONSTRAINT [PK_H_dmParoleBoardDeferralTypes];

ALTER TABLE [H_dmParoleBoardDeferralTypes] ADD CONSTRAINT [PK_H_dmParoleBoardDeferralTypes] PRIMARY KEY CLUSTERED (H_ParoleBoardDeferralTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmParoleBoardDeferralTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmParoleBoardDeferralTypes_LocationCd] on [H_dmParoleBoardDeferralTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmParoleBoardDeferralTypes_LocationCd] ON [H_dmParoleBoardDeferralTypes] (LocationCd ASC)

ALTER TABLE [H_dmParoleBoardInterviewEventSpecialTypes]

DROP CONSTRAINT [PK_H_dmParoleBoardInterviewEventSpecialTypes];

ALTER TABLE [H_dmParoleBoardInterviewEventSpecialTypes] ADD CONSTRAINT [PK_H_dmParoleBoardInterviewEventSpecialTypes] PRIMARY KEY CLUSTERED (H_ParoleBoardInterviewEventSpecialTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmParoleBoardInterviewEventSpecialTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmParoleBoardInterviewEventSpecialTypes_LocationCd] on [H_dmParoleBoardInterviewEventSpecialTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmParoleBoardInterviewEventSpecialTypes_LocationCd] ON [H_dmParoleBoardInterviewEventSpecialTypes] (LocationCd ASC)

ALTER TABLE [H_dmParoleBoardInterviewPanels]

DROP CONSTRAINT [PK_H_dmParoleBoardInterviewPanels];

ALTER TABLE [H_dmParoleBoardInterviewPanels] ADD CONSTRAINT [PK_H_dmParoleBoardInterviewPanels] PRIMARY KEY CLUSTERED (H_ParoleBoardInterviewPanelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmParoleBoardInterviewPanels_LocationCd') BEGIN  Drop INDEX [IX_H_dmParoleBoardInterviewPanels_LocationCd] on [H_dmParoleBoardInterviewPanels]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmParoleBoardInterviewPanels_LocationCd] ON [H_dmParoleBoardInterviewPanels] (LocationCd ASC)

ALTER TABLE [H_dmParoleBoardLocationFacilities]

DROP CONSTRAINT [PK_H_dmParoleBoardLocationFacilities];

ALTER TABLE [H_dmParoleBoardLocationFacilities] ADD CONSTRAINT [PK_H_dmParoleBoardLocationFacilities] PRIMARY KEY CLUSTERED (H_ParoleBoardLocationFacilityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmParoleBoardLocationFacilities_LocationCd') BEGIN  Drop INDEX [IX_H_dmParoleBoardLocationFacilities_LocationCd] on [H_dmParoleBoardLocationFacilities]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmParoleBoardLocationFacilities_LocationCd] ON [H_dmParoleBoardLocationFacilities] (LocationCd ASC)

ALTER TABLE [H_dmParoleBoardLocations]

DROP CONSTRAINT [PK_H_dmParoleBoardLocations];

ALTER TABLE [H_dmParoleBoardLocations] ADD CONSTRAINT [PK_H_dmParoleBoardLocations] PRIMARY KEY CLUSTERED (H_ParoleBoardLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmParoleBoardLocations_LocationCd') BEGIN  Drop INDEX [IX_H_dmParoleBoardLocations_LocationCd] on [H_dmParoleBoardLocations]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmParoleBoardLocations_LocationCd] ON [H_dmParoleBoardLocations] (LocationCd ASC)

ALTER TABLE [H_dmParoleBoardOverrideReasons]

DROP CONSTRAINT [PK_H_dmParoleBoardOverrideReasons];

ALTER TABLE [H_dmParoleBoardOverrideReasons] ADD CONSTRAINT [PK_H_dmParoleBoardOverrideReasons] PRIMARY KEY CLUSTERED (H_ParoleBoardOverrideReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmParoleBoardOverrideReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmParoleBoardOverrideReasons_LocationCd] on [H_dmParoleBoardOverrideReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmParoleBoardOverrideReasons_LocationCd] ON [H_dmParoleBoardOverrideReasons] (LocationCd ASC)

ALTER TABLE [H_dmParoleBoardParoleDateTypes]

DROP CONSTRAINT [PK_H_dmParoleBoardParoleDateTypes];

ALTER TABLE [H_dmParoleBoardParoleDateTypes] ADD CONSTRAINT [PK_H_dmParoleBoardParoleDateTypes] PRIMARY KEY CLUSTERED (H_ParoleBoardParoleDateTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmParoleBoardParoleDateTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmParoleBoardParoleDateTypes_LocationCd] on [H_dmParoleBoardParoleDateTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmParoleBoardParoleDateTypes_LocationCd] ON [H_dmParoleBoardParoleDateTypes] (LocationCd ASC)

ALTER TABLE [H_dmParoleBoardParoleTerms]

DROP CONSTRAINT [PK_H_dmParoleBoardParoleTerms];

ALTER TABLE [H_dmParoleBoardParoleTerms] ADD CONSTRAINT [PK_H_dmParoleBoardParoleTerms] PRIMARY KEY CLUSTERED (H_ParoleBoardParoleTermId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmParoleBoardParoleTerms_LocationCd') BEGIN  Drop INDEX [IX_H_dmParoleBoardParoleTerms_LocationCd] on [H_dmParoleBoardParoleTerms]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmParoleBoardParoleTerms_LocationCd] ON [H_dmParoleBoardParoleTerms] (LocationCd ASC)

ALTER TABLE [H_dmParoleBoardParoleTypes]

DROP CONSTRAINT [PK_H_dmParoleBoardParoleTypes];

ALTER TABLE [H_dmParoleBoardParoleTypes] ADD CONSTRAINT [PK_H_dmParoleBoardParoleTypes] PRIMARY KEY CLUSTERED (H_ParoleBoardParoleTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmParoleBoardParoleTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmParoleBoardParoleTypes_LocationCd] on [H_dmParoleBoardParoleTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmParoleBoardParoleTypes_LocationCd] ON [H_dmParoleBoardParoleTypes] (LocationCd ASC)

ALTER TABLE [H_dmParoleBoardPhase1Recommendations]

DROP CONSTRAINT [PK_H_dmParoleBoardPhase1Recommendations];

ALTER TABLE [H_dmParoleBoardPhase1Recommendations] ADD CONSTRAINT [PK_H_dmParoleBoardPhase1Recommendations] PRIMARY KEY CLUSTERED (H_ParoleBoardPhase1RecommendationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmParoleBoardPhase1Recommendations_LocationCd') BEGIN  Drop INDEX [IX_H_dmParoleBoardPhase1Recommendations_LocationCd] on [H_dmParoleBoardPhase1Recommendations]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmParoleBoardPhase1Recommendations_LocationCd] ON [H_dmParoleBoardPhase1Recommendations] (LocationCd ASC)

ALTER TABLE [H_dmParoleBoardReferralProcessTypes]

DROP CONSTRAINT [PK_H_dmParoleBoardReferralProcessTypes];

ALTER TABLE [H_dmParoleBoardReferralProcessTypes] ADD CONSTRAINT [PK_H_dmParoleBoardReferralProcessTypes] PRIMARY KEY CLUSTERED (H_ParoleBoardReferralProcessTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmParoleBoardReferralProcessTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmParoleBoardReferralProcessTypes_LocationCd] on [H_dmParoleBoardReferralProcessTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmParoleBoardReferralProcessTypes_LocationCd] ON [H_dmParoleBoardReferralProcessTypes] (LocationCd ASC)

ALTER TABLE [H_dmParoleBoardScreeningResponseConditions]

DROP CONSTRAINT [PK_H_dmParoleBoardScreeningResponseConditions];

ALTER TABLE [H_dmParoleBoardScreeningResponseConditions] ADD CONSTRAINT [PK_H_dmParoleBoardScreeningResponseConditions] PRIMARY KEY CLUSTERED (H_ParoleBoardScreeningResponseConditionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmParoleBoardScreeningResponseConditions_LocationCd') BEGIN  Drop INDEX [IX_H_dmParoleBoardScreeningResponseConditions_LocationCd] on [H_dmParoleBoardScreeningResponseConditions]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmParoleBoardScreeningResponseConditions_LocationCd] ON [H_dmParoleBoardScreeningResponseConditions] (LocationCd ASC)

ALTER TABLE [H_dmParoleBoardScreeningResponses]

DROP CONSTRAINT [PK_H_dmParoleBoardScreeningResponses];

ALTER TABLE [H_dmParoleBoardScreeningResponses] ADD CONSTRAINT [PK_H_dmParoleBoardScreeningResponses] PRIMARY KEY CLUSTERED (H_ParoleBoardScreeningResponseId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmParoleBoardScreeningResponses_LocationCd') BEGIN  Drop INDEX [IX_H_dmParoleBoardScreeningResponses_LocationCd] on [H_dmParoleBoardScreeningResponses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmParoleBoardScreeningResponses_LocationCd] ON [H_dmParoleBoardScreeningResponses] (LocationCd ASC)

ALTER TABLE [H_dmParoleBoardStaffInformation]

DROP CONSTRAINT [PK_H_dmParoleBoardStaffInformation];

ALTER TABLE [H_dmParoleBoardStaffInformation] ADD CONSTRAINT [PK_H_dmParoleBoardStaffInformation] PRIMARY KEY CLUSTERED (H_ParoleBoardStaffInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmParoleBoardStaffInformation_LocationCd') BEGIN  Drop INDEX [IX_H_dmParoleBoardStaffInformation_LocationCd] on [H_dmParoleBoardStaffInformation]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmParoleBoardStaffInformation_LocationCd] ON [H_dmParoleBoardStaffInformation] (LocationCd ASC)

ALTER TABLE [H_dmParoleConditionCategories]

DROP CONSTRAINT [PK_H_dmParoleConditionCategories];

ALTER TABLE [H_dmParoleConditionCategories] ADD CONSTRAINT [PK_H_dmParoleConditionCategories] PRIMARY KEY CLUSTERED (H_ParoleConditionCategoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmParoleConditionCategories_LocationCd') BEGIN  Drop INDEX [IX_H_dmParoleConditionCategories_LocationCd] on [H_dmParoleConditionCategories]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmParoleConditionCategories_LocationCd] ON [H_dmParoleConditionCategories] (LocationCd ASC)

ALTER TABLE [H_dmParoleDispositionCategories]

DROP CONSTRAINT [PK_H_dmParoleDispositionCategories];

ALTER TABLE [H_dmParoleDispositionCategories] ADD CONSTRAINT [PK_H_dmParoleDispositionCategories] PRIMARY KEY CLUSTERED (H_ParoleDispositionCategoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmParoleDispositionCategories_LocationCd') BEGIN  Drop INDEX [IX_H_dmParoleDispositionCategories_LocationCd] on [H_dmParoleDispositionCategories]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmParoleDispositionCategories_LocationCd] ON [H_dmParoleDispositionCategories] (LocationCd ASC)

ALTER TABLE [H_dmParoleViolationReviewRecommendations]

DROP CONSTRAINT [PK_H_dmParoleViolationReviewRecommendations];

ALTER TABLE [H_dmParoleViolationReviewRecommendations] ADD CONSTRAINT [PK_H_dmParoleViolationReviewRecommendations] PRIMARY KEY CLUSTERED (H_ParoleViolationReviewRecommendationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmParoleViolationReviewRecommendations_LocationCd') BEGIN  Drop INDEX [IX_H_dmParoleViolationReviewRecommendations_LocationCd] on [H_dmParoleViolationReviewRecommendations]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmParoleViolationReviewRecommendations_LocationCd] ON [H_dmParoleViolationReviewRecommendations] (LocationCd ASC)

ALTER TABLE [H_dmParoleViolationReviewRequestRecommendations]

DROP CONSTRAINT [PK_H_dmParoleViolationReviewRequestRecommendations];

ALTER TABLE [H_dmParoleViolationReviewRequestRecommendations] ADD CONSTRAINT [PK_H_dmParoleViolationReviewRequestRecommendations] PRIMARY KEY CLUSTERED (H_ParoleViolationReviewRequestRecommendationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmParoleViolationReviewRequestRecommendations_LocationCd') BEGIN  Drop INDEX [IX_H_dmParoleViolationReviewRequestRecommendations_LocationCd] on [H_dmParoleViolationReviewRequestRecommendations]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmParoleViolationReviewRequestRecommendations_LocationCd] ON [H_dmParoleViolationReviewRequestRecommendations] (LocationCd ASC)

ALTER TABLE [H_dmParoleViolationReviewRequests]

DROP CONSTRAINT [PK_H_dmParoleViolationReviewRequests];

ALTER TABLE [H_dmParoleViolationReviewRequests] ADD CONSTRAINT [PK_H_dmParoleViolationReviewRequests] PRIMARY KEY CLUSTERED (H_ParoleViolationReviewRequestId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmParoleViolationReviewRequests_LocationCd') BEGIN  Drop INDEX [IX_H_dmParoleViolationReviewRequests_LocationCd] on [H_dmParoleViolationReviewRequests]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmParoleViolationReviewRequests_LocationCd] ON [H_dmParoleViolationReviewRequests] (LocationCd ASC)

ALTER TABLE [H_dmPaymentIntervals]

DROP CONSTRAINT [PK_H_dmPaymentIntervals];

ALTER TABLE [H_dmPaymentIntervals] ADD CONSTRAINT [PK_H_dmPaymentIntervals] PRIMARY KEY CLUSTERED (H_PaymentIntervalId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPaymentIntervals_LocationCd') BEGIN  Drop INDEX [IX_H_dmPaymentIntervals_LocationCd] on [H_dmPaymentIntervals]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPaymentIntervals_LocationCd] ON [H_dmPaymentIntervals] (LocationCd ASC)

ALTER TABLE [H_dmPhoneTypes]

DROP CONSTRAINT [PK_H_dmPhoneTypes];

ALTER TABLE [H_dmPhoneTypes] ADD CONSTRAINT [PK_H_dmPhoneTypes] PRIMARY KEY CLUSTERED (H_PhoneTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPhoneTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmPhoneTypes_LocationCd] on [H_dmPhoneTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPhoneTypes_LocationCd] ON [H_dmPhoneTypes] (LocationCd ASC)

ALTER TABLE [H_dmPleas]

DROP CONSTRAINT [PK_H_dmPleas];

ALTER TABLE [H_dmPleas] ADD CONSTRAINT [PK_H_dmPleas] PRIMARY KEY CLUSTERED (H_PleaId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPleas_LocationCd') BEGIN  Drop INDEX [IX_H_dmPleas_LocationCd] on [H_dmPleas]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPleas_LocationCd] ON [H_dmPleas] (LocationCd ASC)

ALTER TABLE [H_dmPreaAges]

DROP CONSTRAINT [PK_H_dmPreaAges];

ALTER TABLE [H_dmPreaAges] ADD CONSTRAINT [PK_H_dmPreaAges] PRIMARY KEY CLUSTERED (H_PreaAgeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPreaAges_LocationCd') BEGIN  Drop INDEX [IX_H_dmPreaAges_LocationCd] on [H_dmPreaAges]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPreaAges_LocationCd] ON [H_dmPreaAges] (LocationCd ASC)

ALTER TABLE [H_dmPreaConclusions]

DROP CONSTRAINT [PK_H_dmPreaConclusions];

ALTER TABLE [H_dmPreaConclusions] ADD CONSTRAINT [PK_H_dmPreaConclusions] PRIMARY KEY CLUSTERED (H_PreaConclusionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPreaConclusions_LocationCd') BEGIN  Drop INDEX [IX_H_dmPreaConclusions_LocationCd] on [H_dmPreaConclusions]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPreaConclusions_LocationCd] ON [H_dmPreaConclusions] (LocationCd ASC)

ALTER TABLE [H_dmPreaForceTypes]

DROP CONSTRAINT [PK_H_dmPreaForceTypes];

ALTER TABLE [H_dmPreaForceTypes] ADD CONSTRAINT [PK_H_dmPreaForceTypes] PRIMARY KEY CLUSTERED (H_PreaForceTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPreaForceTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmPreaForceTypes_LocationCd] on [H_dmPreaForceTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPreaForceTypes_LocationCd] ON [H_dmPreaForceTypes] (LocationCd ASC)

ALTER TABLE [H_dmPreaIncidentNatures]

DROP CONSTRAINT [PK_H_dmPreaIncidentNatures];

ALTER TABLE [H_dmPreaIncidentNatures] ADD CONSTRAINT [PK_H_dmPreaIncidentNatures] PRIMARY KEY CLUSTERED (H_PreaIncidentNatureId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPreaIncidentNatures_LocationCd') BEGIN  Drop INDEX [IX_H_dmPreaIncidentNatures_LocationCd] on [H_dmPreaIncidentNatures]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPreaIncidentNatures_LocationCd] ON [H_dmPreaIncidentNatures] (LocationCd ASC)

ALTER TABLE [H_dmPreaInjuries]

DROP CONSTRAINT [PK_H_dmPreaInjuries];

ALTER TABLE [H_dmPreaInjuries] ADD CONSTRAINT [PK_H_dmPreaInjuries] PRIMARY KEY CLUSTERED (H_PreaInjuryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPreaInjuries_LocationCd') BEGIN  Drop INDEX [IX_H_dmPreaInjuries_LocationCd] on [H_dmPreaInjuries]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPreaInjuries_LocationCd] ON [H_dmPreaInjuries] (LocationCd ASC)

ALTER TABLE [H_dmPreaLocations]

DROP CONSTRAINT [PK_H_dmPreaLocations];

ALTER TABLE [H_dmPreaLocations] ADD CONSTRAINT [PK_H_dmPreaLocations] PRIMARY KEY CLUSTERED (H_PreaLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPreaLocations_LocationCd') BEGIN  Drop INDEX [IX_H_dmPreaLocations_LocationCd] on [H_dmPreaLocations]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPreaLocations_LocationCd] ON [H_dmPreaLocations] (LocationCd ASC)

ALTER TABLE [H_dmPreaPostReportHousingActions]

DROP CONSTRAINT [PK_H_dmPreaPostReportHousingActions];

ALTER TABLE [H_dmPreaPostReportHousingActions] ADD CONSTRAINT [PK_H_dmPreaPostReportHousingActions] PRIMARY KEY CLUSTERED (H_PreaPostReportHousingActionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPreaPostReportHousingActions_LocationCd') BEGIN  Drop INDEX [IX_H_dmPreaPostReportHousingActions_LocationCd] on [H_dmPreaPostReportHousingActions]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPreaPostReportHousingActions_LocationCd] ON [H_dmPreaPostReportHousingActions] (LocationCd ASC)

ALTER TABLE [H_dmPreaPostReportMedicalActions]

DROP CONSTRAINT [PK_H_dmPreaPostReportMedicalActions];

ALTER TABLE [H_dmPreaPostReportMedicalActions] ADD CONSTRAINT [PK_H_dmPreaPostReportMedicalActions] PRIMARY KEY CLUSTERED (H_PreaPostReportMedicalActionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPreaPostReportMedicalActions_LocationCd') BEGIN  Drop INDEX [IX_H_dmPreaPostReportMedicalActions_LocationCd] on [H_dmPreaPostReportMedicalActions]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPreaPostReportMedicalActions_LocationCd] ON [H_dmPreaPostReportMedicalActions] (LocationCd ASC)

ALTER TABLE [H_dmPreaRaces]

DROP CONSTRAINT [PK_H_dmPreaRaces];

ALTER TABLE [H_dmPreaRaces] ADD CONSTRAINT [PK_H_dmPreaRaces] PRIMARY KEY CLUSTERED (H_PreaRaceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPreaRaces_LocationCd') BEGIN  Drop INDEX [IX_H_dmPreaRaces_LocationCd] on [H_dmPreaRaces]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPreaRaces_LocationCd] ON [H_dmPreaRaces] (LocationCd ASC)

ALTER TABLE [H_dmPreaReporters]

DROP CONSTRAINT [PK_H_dmPreaReporters];

ALTER TABLE [H_dmPreaReporters] ADD CONSTRAINT [PK_H_dmPreaReporters] PRIMARY KEY CLUSTERED (H_PreaReporterId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPreaReporters_LocationCd') BEGIN  Drop INDEX [IX_H_dmPreaReporters_LocationCd] on [H_dmPreaReporters]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPreaReporters_LocationCd] ON [H_dmPreaReporters] (LocationCd ASC)

ALTER TABLE [H_dmPreaSanctions]

DROP CONSTRAINT [PK_H_dmPreaSanctions];

ALTER TABLE [H_dmPreaSanctions] ADD CONSTRAINT [PK_H_dmPreaSanctions] PRIMARY KEY CLUSTERED (H_PreaSanctionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPreaSanctions_LocationCd') BEGIN  Drop INDEX [IX_H_dmPreaSanctions_LocationCd] on [H_dmPreaSanctions]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPreaSanctions_LocationCd] ON [H_dmPreaSanctions] (LocationCd ASC)

ALTER TABLE [H_dmPreaSexualViolenceTypes]

DROP CONSTRAINT [PK_H_dmPreaSexualViolenceTypes];

ALTER TABLE [H_dmPreaSexualViolenceTypes] ADD CONSTRAINT [PK_H_dmPreaSexualViolenceTypes] PRIMARY KEY CLUSTERED (H_PreaSexualViolenceTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPreaSexualViolenceTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmPreaSexualViolenceTypes_LocationCd] on [H_dmPreaSexualViolenceTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPreaSexualViolenceTypes_LocationCd] ON [H_dmPreaSexualViolenceTypes] (LocationCd ASC)

ALTER TABLE [H_dmPreaTimes]

DROP CONSTRAINT [PK_H_dmPreaTimes];

ALTER TABLE [H_dmPreaTimes] ADD CONSTRAINT [PK_H_dmPreaTimes] PRIMARY KEY CLUSTERED (H_PreaTimeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPreaTimes_LocationCd') BEGIN  Drop INDEX [IX_H_dmPreaTimes_LocationCd] on [H_dmPreaTimes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPreaTimes_LocationCd] ON [H_dmPreaTimes] (LocationCd ASC)

ALTER TABLE [H_dmPretrialDecisions]

DROP CONSTRAINT [PK_H_dmPretrialDecisions];

ALTER TABLE [H_dmPretrialDecisions] ADD CONSTRAINT [PK_H_dmPretrialDecisions] PRIMARY KEY CLUSTERED (H_PretrialDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPretrialDecisions_LocationCd') BEGIN  Drop INDEX [IX_H_dmPretrialDecisions_LocationCd] on [H_dmPretrialDecisions]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPretrialDecisions_LocationCd] ON [H_dmPretrialDecisions] (LocationCd ASC)

ALTER TABLE [H_dmPretrialDecisionTypes]

DROP CONSTRAINT [PK_H_dmPreTrialDecisionTypes];

ALTER TABLE [H_dmPretrialDecisionTypes] ADD CONSTRAINT [PK_H_dmPreTrialDecisionTypes] PRIMARY KEY CLUSTERED (H_PretrialDecisionTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPretrialDecisionTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmPretrialDecisionTypes_LocationCd] on [H_dmPretrialDecisionTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPretrialDecisionTypes_LocationCd] ON [H_dmPretrialDecisionTypes] (LocationCd ASC)

ALTER TABLE [H_dmPretrialTypes]

DROP CONSTRAINT [PK_H_dmPreTrialTypes];

ALTER TABLE [H_dmPretrialTypes] ADD CONSTRAINT [PK_H_dmPreTrialTypes] PRIMARY KEY CLUSTERED (H_PretrialTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPretrialTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmPretrialTypes_LocationCd] on [H_dmPretrialTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPretrialTypes_LocationCd] ON [H_dmPretrialTypes] (LocationCd ASC)

ALTER TABLE [H_dmPrimaryLanguages]

DROP CONSTRAINT [PK_H_dmPrimaryLanguages];

ALTER TABLE [H_dmPrimaryLanguages] ADD CONSTRAINT [PK_H_dmPrimaryLanguages] PRIMARY KEY CLUSTERED (H_PrimaryLanguageId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPrimaryLanguages_LocationCd') BEGIN  Drop INDEX [IX_H_dmPrimaryLanguages_LocationCd] on [H_dmPrimaryLanguages]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPrimaryLanguages_LocationCd] ON [H_dmPrimaryLanguages] (LocationCd ASC)

ALTER TABLE [H_dmProcesses]

DROP CONSTRAINT [PK_H_dmProcesses];

ALTER TABLE [H_dmProcesses] ADD CONSTRAINT [PK_H_dmProcesses] PRIMARY KEY CLUSTERED (H_ProcessId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmProcesses_LocationCd') BEGIN  Drop INDEX [IX_H_dmProcesses_LocationCd] on [H_dmProcesses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmProcesses_LocationCd] ON [H_dmProcesses] (LocationCd ASC)

ALTER TABLE [H_dmProcessTaskAssignedNotificationGroups]

DROP CONSTRAINT [PK_H_dmProcessTaskAssignedNotificationGroups];

ALTER TABLE [H_dmProcessTaskAssignedNotificationGroups] ADD CONSTRAINT [PK_H_dmProcessTaskAssignedNotificationGroups] PRIMARY KEY CLUSTERED (H_ProcessTaskAssignedNotificationGroupId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmProcessTaskAssignedNotificationGroups_LocationCd') BEGIN  Drop INDEX [IX_H_dmProcessTaskAssignedNotificationGroups_LocationCd] on [H_dmProcessTaskAssignedNotificationGroups]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmProcessTaskAssignedNotificationGroups_LocationCd] ON [H_dmProcessTaskAssignedNotificationGroups] (LocationCd ASC)

ALTER TABLE [H_dmProcessTaskClosingSecurityEntities]

DROP CONSTRAINT [PK_H_dmProcessTaskClosingSecurityEntities];

ALTER TABLE [H_dmProcessTaskClosingSecurityEntities] ADD CONSTRAINT [PK_H_dmProcessTaskClosingSecurityEntities] PRIMARY KEY CLUSTERED (H_ProcessTaskClosingSecurityEntityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmProcessTaskClosingSecurityEntities_LocationCd') BEGIN  Drop INDEX [IX_H_dmProcessTaskClosingSecurityEntities_LocationCd] on [H_dmProcessTaskClosingSecurityEntities]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmProcessTaskClosingSecurityEntities_LocationCd] ON [H_dmProcessTaskClosingSecurityEntities] (LocationCd ASC)

ALTER TABLE [H_dmProcessTaskGroupDependencies]

DROP CONSTRAINT [PK_H_dmProcessTaskGroupDependencies];

ALTER TABLE [H_dmProcessTaskGroupDependencies] ADD CONSTRAINT [PK_H_dmProcessTaskGroupDependencies] PRIMARY KEY CLUSTERED (H_ProcessTaskGroupDependencyId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmProcessTaskGroupDependencies_LocationCd') BEGIN  Drop INDEX [IX_H_dmProcessTaskGroupDependencies_LocationCd] on [H_dmProcessTaskGroupDependencies]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmProcessTaskGroupDependencies_LocationCd] ON [H_dmProcessTaskGroupDependencies] (LocationCd ASC)

ALTER TABLE [H_dmProcessTaskGroups]

DROP CONSTRAINT [PK_H_dmProcessTaskGroups];

ALTER TABLE [H_dmProcessTaskGroups] ADD CONSTRAINT [PK_H_dmProcessTaskGroups] PRIMARY KEY CLUSTERED (H_ProcessTaskGroupId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmProcessTaskGroups_LocationCd') BEGIN  Drop INDEX [IX_H_dmProcessTaskGroups_LocationCd] on [H_dmProcessTaskGroups]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmProcessTaskGroups_LocationCd] ON [H_dmProcessTaskGroups] (LocationCd ASC)

ALTER TABLE [H_dmProcessTasks]

DROP CONSTRAINT [PK_H_dmProcessTasks];

ALTER TABLE [H_dmProcessTasks] ADD CONSTRAINT [PK_H_dmProcessTasks] PRIMARY KEY CLUSTERED (H_ProcessTaskId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmProcessTasks_LocationCd') BEGIN  Drop INDEX [IX_H_dmProcessTasks_LocationCd] on [H_dmProcessTasks]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmProcessTasks_LocationCd] ON [H_dmProcessTasks] (LocationCd ASC)

ALTER TABLE [H_dmProcessTaskStaffGroups]

DROP CONSTRAINT [PK_H_dmProcessTaskStaffGroups];

ALTER TABLE [H_dmProcessTaskStaffGroups] ADD CONSTRAINT [PK_H_dmProcessTaskStaffGroups] PRIMARY KEY CLUSTERED (H_ProcessTaskStaffGroupId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmProcessTaskStaffGroups_LocationCd') BEGIN  Drop INDEX [IX_H_dmProcessTaskStaffGroups_LocationCd] on [H_dmProcessTaskStaffGroups]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmProcessTaskStaffGroups_LocationCd] ON [H_dmProcessTaskStaffGroups] (LocationCd ASC)

ALTER TABLE [H_dmProcessTaskStaffGroupStaff]

DROP CONSTRAINT [PK_H_dmProcessTaskStaffGroupStaff];

ALTER TABLE [H_dmProcessTaskStaffGroupStaff] ADD CONSTRAINT [PK_H_dmProcessTaskStaffGroupStaff] PRIMARY KEY CLUSTERED (H_ProcessTaskStaffGroupStaffId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmProcessTaskStaffGroupStaff_LocationCd') BEGIN  Drop INDEX [IX_H_dmProcessTaskStaffGroupStaff_LocationCd] on [H_dmProcessTaskStaffGroupStaff]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmProcessTaskStaffGroupStaff_LocationCd] ON [H_dmProcessTaskStaffGroupStaff] (LocationCd ASC)

ALTER TABLE [H_dmPropertyGroupTypeReasons]

DROP CONSTRAINT [PK_H_dmPropertyGroupTypeReasons];

ALTER TABLE [H_dmPropertyGroupTypeReasons] ADD CONSTRAINT [PK_H_dmPropertyGroupTypeReasons] PRIMARY KEY CLUSTERED (H_PropertyGroupTypeReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPropertyGroupTypeReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmPropertyGroupTypeReasons_LocationCd] on [H_dmPropertyGroupTypeReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPropertyGroupTypeReasons_LocationCd] ON [H_dmPropertyGroupTypeReasons] (LocationCd ASC)

ALTER TABLE [H_dmPropertyGroupTypes]

DROP CONSTRAINT [PK_H_dmPropertyGroupTypes];

ALTER TABLE [H_dmPropertyGroupTypes] ADD CONSTRAINT [PK_H_dmPropertyGroupTypes] PRIMARY KEY CLUSTERED (H_PropertyGroupTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPropertyGroupTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmPropertyGroupTypes_LocationCd] on [H_dmPropertyGroupTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPropertyGroupTypes_LocationCd] ON [H_dmPropertyGroupTypes] (LocationCd ASC)

ALTER TABLE [H_dmPropertyItemCategories]

DROP CONSTRAINT [PK_H_dmPropertyCategories];

ALTER TABLE [H_dmPropertyItemCategories] ADD CONSTRAINT [PK_H_dmPropertyCategories] PRIMARY KEY CLUSTERED (H_PropertyItemCategoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPropertyItemCategories_LocationCd') BEGIN  Drop INDEX [IX_H_dmPropertyItemCategories_LocationCd] on [H_dmPropertyItemCategories]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPropertyItemCategories_LocationCd] ON [H_dmPropertyItemCategories] (LocationCd ASC)

ALTER TABLE [H_dmPropertyItemFacilityLimits]

DROP CONSTRAINT [PK_H_dmPropertyItemFacilityLimits];

ALTER TABLE [H_dmPropertyItemFacilityLimits] ADD CONSTRAINT [PK_H_dmPropertyItemFacilityLimits] PRIMARY KEY CLUSTERED (H_PropertyItemFacilityLimitId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPropertyItemFacilityLimits_LocationCd') BEGIN  Drop INDEX [IX_H_dmPropertyItemFacilityLimits_LocationCd] on [H_dmPropertyItemFacilityLimits]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPropertyItemFacilityLimits_LocationCd] ON [H_dmPropertyItemFacilityLimits] (LocationCd ASC)

ALTER TABLE [H_dmPropertyItemFlDonationLocations]

DROP CONSTRAINT [PK_H_dmPropertyItemFlDonationLocations];

ALTER TABLE [H_dmPropertyItemFlDonationLocations] ADD CONSTRAINT [PK_H_dmPropertyItemFlDonationLocations] PRIMARY KEY CLUSTERED (H_PropertyItemFlDonationLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPropertyItemFlDonationLocations_LocationCd') BEGIN  Drop INDEX [IX_H_dmPropertyItemFlDonationLocations_LocationCd] on [H_dmPropertyItemFlDonationLocations]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPropertyItemFlDonationLocations_LocationCd] ON [H_dmPropertyItemFlDonationLocations] (LocationCd ASC)

ALTER TABLE [H_dmPropertyItemFlStorageLocations]

DROP CONSTRAINT [PK_H_dmPropertyItemStorageLocations];

ALTER TABLE [H_dmPropertyItemFlStorageLocations] ADD CONSTRAINT [PK_H_dmPropertyItemStorageLocations] PRIMARY KEY CLUSTERED (H_PropertyItemFlStorageLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPropertyItemFlStorageLocations_LocationCd') BEGIN  Drop INDEX [IX_H_dmPropertyItemFlStorageLocations_LocationCd] on [H_dmPropertyItemFlStorageLocations]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPropertyItemFlStorageLocations_LocationCd] ON [H_dmPropertyItemFlStorageLocations] (LocationCd ASC)

ALTER TABLE [H_dmPropertyItems]

DROP CONSTRAINT [PK_H_dmPropertyItems];

ALTER TABLE [H_dmPropertyItems] ADD CONSTRAINT [PK_H_dmPropertyItems] PRIMARY KEY CLUSTERED (H_PropertyItemId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPropertyItems_LocationCd') BEGIN  Drop INDEX [IX_H_dmPropertyItems_LocationCd] on [H_dmPropertyItems]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPropertyItems_LocationCd] ON [H_dmPropertyItems] (LocationCd ASC)

ALTER TABLE [H_dmPropertyItemSeizedReasons]

DROP CONSTRAINT [PK_H_dmPropertyItemConfiscatedReasons];

ALTER TABLE [H_dmPropertyItemSeizedReasons] ADD CONSTRAINT [PK_H_dmPropertyItemConfiscatedReasons] PRIMARY KEY CLUSTERED (H_PropertyItemSeizedReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPropertyItemSeizedReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmPropertyItemSeizedReasons_LocationCd] on [H_dmPropertyItemSeizedReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPropertyItemSeizedReasons_LocationCd] ON [H_dmPropertyItemSeizedReasons] (LocationCd ASC)

ALTER TABLE [H_dmPropertyItemStatuses]

DROP CONSTRAINT [PK_H_dmPropertyItemStatuses];

ALTER TABLE [H_dmPropertyItemStatuses] ADD CONSTRAINT [PK_H_dmPropertyItemStatuses] PRIMARY KEY CLUSTERED (H_PropertyItemStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPropertyItemStatuses_LocationCd') BEGIN  Drop INDEX [IX_H_dmPropertyItemStatuses_LocationCd] on [H_dmPropertyItemStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPropertyItemStatuses_LocationCd] ON [H_dmPropertyItemStatuses] (LocationCd ASC)

ALTER TABLE [H_dmPropertyItemStorageReasons]

DROP CONSTRAINT [PK_H_dmPropertyItemStorageReasons];

ALTER TABLE [H_dmPropertyItemStorageReasons] ADD CONSTRAINT [PK_H_dmPropertyItemStorageReasons] PRIMARY KEY CLUSTERED (H_PropertyItemStorageReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPropertyItemStorageReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmPropertyItemStorageReasons_LocationCd] on [H_dmPropertyItemStorageReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPropertyItemStorageReasons_LocationCd] ON [H_dmPropertyItemStorageReasons] (LocationCd ASC)

ALTER TABLE [H_dmPropertySets]

DROP CONSTRAINT [PK_H_dmPropertySets];

ALTER TABLE [H_dmPropertySets] ADD CONSTRAINT [PK_H_dmPropertySets] PRIMARY KEY CLUSTERED (H_PropertySetId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPropertySets_LocationCd') BEGIN  Drop INDEX [IX_H_dmPropertySets_LocationCd] on [H_dmPropertySets]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPropertySets_LocationCd] ON [H_dmPropertySets] (LocationCd ASC)

ALTER TABLE [H_dmPropertySetSubItems]

DROP CONSTRAINT [PK_H_dmPropertySetSubItems];

ALTER TABLE [H_dmPropertySetSubItems] ADD CONSTRAINT [PK_H_dmPropertySetSubItems] PRIMARY KEY CLUSTERED (H_PropertySetSubItemId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPropertySetSubItems_LocationCd') BEGIN  Drop INDEX [IX_H_dmPropertySetSubItems_LocationCd] on [H_dmPropertySetSubItems]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPropertySetSubItems_LocationCd] ON [H_dmPropertySetSubItems] (LocationCd ASC)

ALTER TABLE [H_dmPropertySubItems]

DROP CONSTRAINT [PK_H_dmPropertySubItems];

ALTER TABLE [H_dmPropertySubItems] ADD CONSTRAINT [PK_H_dmPropertySubItems] PRIMARY KEY CLUSTERED (H_PropertySubItemId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPropertySubItems_LocationCd') BEGIN  Drop INDEX [IX_H_dmPropertySubItems_LocationCd] on [H_dmPropertySubItems]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPropertySubItems_LocationCd] ON [H_dmPropertySubItems] (LocationCd ASC)

ALTER TABLE [H_dmPropertySubItemsIpi]

DROP CONSTRAINT [PK_H_dmPropertySubItemsIpi];

ALTER TABLE [H_dmPropertySubItemsIpi] ADD CONSTRAINT [PK_H_dmPropertySubItemsIpi] PRIMARY KEY CLUSTERED (H_PropertySubItemIpiId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPropertySubItemsIpi_LocationCd') BEGIN  Drop INDEX [IX_H_dmPropertySubItemsIpi_LocationCd] on [H_dmPropertySubItemsIpi]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPropertySubItemsIpi_LocationCd] ON [H_dmPropertySubItemsIpi] (LocationCd ASC)

ALTER TABLE [H_dmPropertySubItemsIpiAssociatedItems]

DROP CONSTRAINT [PK_H_dmPropertySubItemsIpiAssociatedItems];

ALTER TABLE [H_dmPropertySubItemsIpiAssociatedItems] ADD CONSTRAINT [PK_H_dmPropertySubItemsIpiAssociatedItems] PRIMARY KEY CLUSTERED (H_PropertySubItemIpiAssociatedItemId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPropertySubItemsIpiAssociatedItems_LocationCd') BEGIN  Drop INDEX [IX_H_dmPropertySubItemsIpiAssociatedItems_LocationCd] on [H_dmPropertySubItemsIpiAssociatedItems]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPropertySubItemsIpiAssociatedItems_LocationCd] ON [H_dmPropertySubItemsIpiAssociatedItems] (LocationCd ASC)

ALTER TABLE [H_dmPropertyTypes]

DROP CONSTRAINT [PK_H_dmPropertyTypes];

ALTER TABLE [H_dmPropertyTypes] ADD CONSTRAINT [PK_H_dmPropertyTypes] PRIMARY KEY CLUSTERED (H_PropertyTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPropertyTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmPropertyTypes_LocationCd] on [H_dmPropertyTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPropertyTypes_LocationCd] ON [H_dmPropertyTypes] (LocationCd ASC)

ALTER TABLE [H_dmPropertyVendorInformation]

DROP CONSTRAINT [PK_H_dmPropertyVendorInformation];

ALTER TABLE [H_dmPropertyVendorInformation] ADD CONSTRAINT [PK_H_dmPropertyVendorInformation] PRIMARY KEY CLUSTERED (H_PropertyVendorInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPropertyVendorInformation_LocationCd') BEGIN  Drop INDEX [IX_H_dmPropertyVendorInformation_LocationCd] on [H_dmPropertyVendorInformation]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPropertyVendorInformation_LocationCd] ON [H_dmPropertyVendorInformation] (LocationCd ASC)

ALTER TABLE [H_dmPsychDiagnosticAxisTypes]

DROP CONSTRAINT [PK_H_dmPsychDiagnosticAxisTypes];

ALTER TABLE [H_dmPsychDiagnosticAxisTypes] ADD CONSTRAINT [PK_H_dmPsychDiagnosticAxisTypes] PRIMARY KEY CLUSTERED (H_PsychDiagnosticAxisTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmPsychDiagnosticAxisTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmPsychDiagnosticAxisTypes_LocationCd] on [H_dmPsychDiagnosticAxisTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmPsychDiagnosticAxisTypes_LocationCd] ON [H_dmPsychDiagnosticAxisTypes] (LocationCd ASC)

ALTER TABLE [H_dmRaces]

DROP CONSTRAINT [PK_H_dmRaces];

ALTER TABLE [H_dmRaces] ADD CONSTRAINT [PK_H_dmRaces] PRIMARY KEY CLUSTERED (H_RaceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmRaces_LocationCd') BEGIN  Drop INDEX [IX_H_dmRaces_LocationCd] on [H_dmRaces]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmRaces_LocationCd] ON [H_dmRaces] (LocationCd ASC)

ALTER TABLE [H_dmReadingLevels]

DROP CONSTRAINT [PK_H_dmReadingLevels];

ALTER TABLE [H_dmReadingLevels] ADD CONSTRAINT [PK_H_dmReadingLevels] PRIMARY KEY CLUSTERED (H_ReadingLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmReadingLevels_LocationCd') BEGIN  Drop INDEX [IX_H_dmReadingLevels_LocationCd] on [H_dmReadingLevels]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmReadingLevels_LocationCd] ON [H_dmReadingLevels] (LocationCd ASC)

ALTER TABLE [H_dmReentryCasePlanAuditors]

DROP CONSTRAINT [PK_H_dmReentryCasePlanAuditors];

ALTER TABLE [H_dmReentryCasePlanAuditors] ADD CONSTRAINT [PK_H_dmReentryCasePlanAuditors] PRIMARY KEY CLUSTERED (H_ReentryCasePlanAuditorId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmReentryCasePlanAuditors_LocationCd') BEGIN  Drop INDEX [IX_H_dmReentryCasePlanAuditors_LocationCd] on [H_dmReentryCasePlanAuditors]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmReentryCasePlanAuditors_LocationCd] ON [H_dmReentryCasePlanAuditors] (LocationCd ASC)

ALTER TABLE [H_dmRegions]

DROP CONSTRAINT [PK_H_dmRegions];

ALTER TABLE [H_dmRegions] ADD CONSTRAINT [PK_H_dmRegions] PRIMARY KEY CLUSTERED (H_RegionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmRegions_LocationCd') BEGIN  Drop INDEX [IX_H_dmRegions_LocationCd] on [H_dmRegions]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmRegions_LocationCd] ON [H_dmRegions] (LocationCd ASC)

ALTER TABLE [H_dmRelationships]

DROP CONSTRAINT [PK_H_dmRelationships];

ALTER TABLE [H_dmRelationships] ADD CONSTRAINT [PK_H_dmRelationships] PRIMARY KEY CLUSTERED (H_RelationshipId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmRelationships_LocationCd') BEGIN  Drop INDEX [IX_H_dmRelationships_LocationCd] on [H_dmRelationships]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmRelationships_LocationCd] ON [H_dmRelationships] (LocationCd ASC)

ALTER TABLE [H_dmReleaseNotificationTypes]

DROP CONSTRAINT [PK_H_dmReleaseNotificationTypes];

ALTER TABLE [H_dmReleaseNotificationTypes] ADD CONSTRAINT [PK_H_dmReleaseNotificationTypes] PRIMARY KEY CLUSTERED (H_ReleaseNotificationTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmReleaseNotificationTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmReleaseNotificationTypes_LocationCd] on [H_dmReleaseNotificationTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmReleaseNotificationTypes_LocationCd] ON [H_dmReleaseNotificationTypes] (LocationCd ASC)

ALTER TABLE [H_dmReligiousIdentifiers]

DROP CONSTRAINT [PK_H_dmReligiousIdentifiers];

ALTER TABLE [H_dmReligiousIdentifiers] ADD CONSTRAINT [PK_H_dmReligiousIdentifiers] PRIMARY KEY CLUSTERED (H_ReligiousIdentifierId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmReligiousIdentifiers_LocationCd') BEGIN  Drop INDEX [IX_H_dmReligiousIdentifiers_LocationCd] on [H_dmReligiousIdentifiers]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmReligiousIdentifiers_LocationCd] ON [H_dmReligiousIdentifiers] (LocationCd ASC)

ALTER TABLE [H_dmResidentialSanctions]

DROP CONSTRAINT [PK_H_dmResidentialSanctions];

ALTER TABLE [H_dmResidentialSanctions] ADD CONSTRAINT [PK_H_dmResidentialSanctions] PRIMARY KEY CLUSTERED (H_ResidentialSanctionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmResidentialSanctions_LocationCd') BEGIN  Drop INDEX [IX_H_dmResidentialSanctions_LocationCd] on [H_dmResidentialSanctions]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmResidentialSanctions_LocationCd] ON [H_dmResidentialSanctions] (LocationCd ASC)

ALTER TABLE [H_dmRestitutionPaymentTypes]

DROP CONSTRAINT [PK_H_dmRestitutionPaymentTypes];

ALTER TABLE [H_dmRestitutionPaymentTypes] ADD CONSTRAINT [PK_H_dmRestitutionPaymentTypes] PRIMARY KEY CLUSTERED (H_RestitutionPaymentTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmRestitutionPaymentTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmRestitutionPaymentTypes_LocationCd] on [H_dmRestitutionPaymentTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmRestitutionPaymentTypes_LocationCd] ON [H_dmRestitutionPaymentTypes] (LocationCd ASC)

ALTER TABLE [H_dmRiskAssessmentOverrideReasons]

DROP CONSTRAINT [PK_H_dmRiskAssessmentOverrideReasons];

ALTER TABLE [H_dmRiskAssessmentOverrideReasons] ADD CONSTRAINT [PK_H_dmRiskAssessmentOverrideReasons] PRIMARY KEY CLUSTERED (H_RiskAssessmentOverrideReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmRiskAssessmentOverrideReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmRiskAssessmentOverrideReasons_LocationCd] on [H_dmRiskAssessmentOverrideReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmRiskAssessmentOverrideReasons_LocationCd] ON [H_dmRiskAssessmentOverrideReasons] (LocationCd ASC)

ALTER TABLE [H_dmRooms]

DROP CONSTRAINT [PK_H_dmRooms];

ALTER TABLE [H_dmRooms] ADD CONSTRAINT [PK_H_dmRooms] PRIMARY KEY CLUSTERED (H_RoomId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmRooms_LocationCd') BEGIN  Drop INDEX [IX_H_dmRooms_LocationCd] on [H_dmRooms]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmRooms_LocationCd] ON [H_dmRooms] (LocationCd ASC)

ALTER TABLE [H_dmRoundLocations]

DROP CONSTRAINT [PK_H_dmRoundLocations];

ALTER TABLE [H_dmRoundLocations] ADD CONSTRAINT [PK_H_dmRoundLocations] PRIMARY KEY CLUSTERED (H_RoundLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmRoundLocations_LocationCd') BEGIN  Drop INDEX [IX_H_dmRoundLocations_LocationCd] on [H_dmRoundLocations]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmRoundLocations_LocationCd] ON [H_dmRoundLocations] (LocationCd ASC)

ALTER TABLE [H_dmRuleCategories]

DROP CONSTRAINT [PK_H_dmRuleCategories];

ALTER TABLE [H_dmRuleCategories] ADD CONSTRAINT [PK_H_dmRuleCategories] PRIMARY KEY CLUSTERED (H_RuleCategoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmRuleCategories_LocationCd') BEGIN  Drop INDEX [IX_H_dmRuleCategories_LocationCd] on [H_dmRuleCategories]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmRuleCategories_LocationCd] ON [H_dmRuleCategories] (LocationCd ASC)

ALTER TABLE [H_dmRuleFilterRules]

DROP CONSTRAINT [PK_H_dmRuleFilterRules];

ALTER TABLE [H_dmRuleFilterRules] ADD CONSTRAINT [PK_H_dmRuleFilterRules] PRIMARY KEY CLUSTERED (H_RuleFilterRuleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmRuleFilterRules_LocationCd') BEGIN  Drop INDEX [IX_H_dmRuleFilterRules_LocationCd] on [H_dmRuleFilterRules]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmRuleFilterRules_LocationCd] ON [H_dmRuleFilterRules] (LocationCd ASC)

ALTER TABLE [H_dmRuleFilters]

DROP CONSTRAINT [PK_H_dmRuleFilters];

ALTER TABLE [H_dmRuleFilters] ADD CONSTRAINT [PK_H_dmRuleFilters] PRIMARY KEY CLUSTERED (H_RuleFilterId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmRuleFilters_LocationCd') BEGIN  Drop INDEX [IX_H_dmRuleFilters_LocationCd] on [H_dmRuleFilters]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmRuleFilters_LocationCd] ON [H_dmRuleFilters] (LocationCd ASC)

ALTER TABLE [H_dmRuleFilterSupervisionStatuses]

DROP CONSTRAINT [PK_H_dmRuleFilterSupervisionStatuses];

ALTER TABLE [H_dmRuleFilterSupervisionStatuses] ADD CONSTRAINT [PK_H_dmRuleFilterSupervisionStatuses] PRIMARY KEY CLUSTERED (H_RuleFilterSupervisionStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmRuleFilterSupervisionStatuses_LocationCd') BEGIN  Drop INDEX [IX_H_dmRuleFilterSupervisionStatuses_LocationCd] on [H_dmRuleFilterSupervisionStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmRuleFilterSupervisionStatuses_LocationCd] ON [H_dmRuleFilterSupervisionStatuses] (LocationCd ASC)

ALTER TABLE [H_dmRuleFilterWorkUnits]

DROP CONSTRAINT [PK_H_dmRuleFilterWorkUnits];

ALTER TABLE [H_dmRuleFilterWorkUnits] ADD CONSTRAINT [PK_H_dmRuleFilterWorkUnits] PRIMARY KEY CLUSTERED (H_RuleFilterWorkUnitId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmRuleFilterWorkUnits_LocationCd') BEGIN  Drop INDEX [IX_H_dmRuleFilterWorkUnits_LocationCd] on [H_dmRuleFilterWorkUnits]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmRuleFilterWorkUnits_LocationCd] ON [H_dmRuleFilterWorkUnits] (LocationCd ASC)

ALTER TABLE [H_dmRulePackageOrigins]

DROP CONSTRAINT [PK_H_dmRulePackageOrigins];

ALTER TABLE [H_dmRulePackageOrigins] ADD CONSTRAINT [PK_H_dmRulePackageOrigins] PRIMARY KEY CLUSTERED (H_RulePackageOriginId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmRulePackageOrigins_LocationCd') BEGIN  Drop INDEX [IX_H_dmRulePackageOrigins_LocationCd] on [H_dmRulePackageOrigins]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmRulePackageOrigins_LocationCd] ON [H_dmRulePackageOrigins] (LocationCd ASC)

ALTER TABLE [H_dmRulePackageRules]

DROP CONSTRAINT [PK_H_dmRulePackageRules];

ALTER TABLE [H_dmRulePackageRules] ADD CONSTRAINT [PK_H_dmRulePackageRules] PRIMARY KEY CLUSTERED (H_RulePackageRuleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmRulePackageRules_LocationCd') BEGIN  Drop INDEX [IX_H_dmRulePackageRules_LocationCd] on [H_dmRulePackageRules]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmRulePackageRules_LocationCd] ON [H_dmRulePackageRules] (LocationCd ASC)

ALTER TABLE [H_dmRulePackages]

DROP CONSTRAINT [PK_H_dmRulePackages];

ALTER TABLE [H_dmRulePackages] ADD CONSTRAINT [PK_H_dmRulePackages] PRIMARY KEY CLUSTERED (H_RulePackageId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmRulePackages_LocationCd') BEGIN  Drop INDEX [IX_H_dmRulePackages_LocationCd] on [H_dmRulePackages]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmRulePackages_LocationCd] ON [H_dmRulePackages] (LocationCd ASC)

ALTER TABLE [H_dmRulePackageSupervisionStatuses]

DROP CONSTRAINT [PK_H_dmRulePackageSupervisionStatuses];

ALTER TABLE [H_dmRulePackageSupervisionStatuses] ADD CONSTRAINT [PK_H_dmRulePackageSupervisionStatuses] PRIMARY KEY CLUSTERED (H_RulePackageSupervisionStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmRulePackageSupervisionStatuses_LocationCd') BEGIN  Drop INDEX [IX_H_dmRulePackageSupervisionStatuses_LocationCd] on [H_dmRulePackageSupervisionStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmRulePackageSupervisionStatuses_LocationCd] ON [H_dmRulePackageSupervisionStatuses] (LocationCd ASC)

ALTER TABLE [H_dmRulePackageWorkUnits]

DROP CONSTRAINT [PK_H_dmRulePackageWorkUnits];

ALTER TABLE [H_dmRulePackageWorkUnits] ADD CONSTRAINT [PK_H_dmRulePackageWorkUnits] PRIMARY KEY CLUSTERED (H_RulePackageWorkUnitId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmRulePackageWorkUnits_LocationCd') BEGIN  Drop INDEX [IX_H_dmRulePackageWorkUnits_LocationCd] on [H_dmRulePackageWorkUnits]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmRulePackageWorkUnits_LocationCd] ON [H_dmRulePackageWorkUnits] (LocationCd ASC)

ALTER TABLE [H_dmRules]

DROP CONSTRAINT [PK_H_dmRules];

ALTER TABLE [H_dmRules] ADD CONSTRAINT [PK_H_dmRules] PRIMARY KEY CLUSTERED (H_RuleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmRules_LocationCd') BEGIN  Drop INDEX [IX_H_dmRules_LocationCd] on [H_dmRules]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmRules_LocationCd] ON [H_dmRules] (LocationCd ASC)

ALTER TABLE [H_dmRuleSupervisionStatuses]

DROP CONSTRAINT [PK_H_dmRuleSupervisionStatuses];

ALTER TABLE [H_dmRuleSupervisionStatuses] ADD CONSTRAINT [PK_H_dmRuleSupervisionStatuses] PRIMARY KEY CLUSTERED (H_RuleSupervisionStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmRuleSupervisionStatuses_LocationCd') BEGIN  Drop INDEX [IX_H_dmRuleSupervisionStatuses_LocationCd] on [H_dmRuleSupervisionStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmRuleSupervisionStatuses_LocationCd] ON [H_dmRuleSupervisionStatuses] (LocationCd ASC)

ALTER TABLE [H_dmRuleViolationBehaviorCodeCategories]

DROP CONSTRAINT [PK_H_dmRuleViolationBehaviorCodeCategories];

ALTER TABLE [H_dmRuleViolationBehaviorCodeCategories] ADD CONSTRAINT [PK_H_dmRuleViolationBehaviorCodeCategories] PRIMARY KEY CLUSTERED (H_RuleViolationBehaviorCodeCategoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmRuleViolationBehaviorCodeCategories_LocationCd') BEGIN  Drop INDEX [IX_H_dmRuleViolationBehaviorCodeCategories_LocationCd] on [H_dmRuleViolationBehaviorCodeCategories]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmRuleViolationBehaviorCodeCategories_LocationCd] ON [H_dmRuleViolationBehaviorCodeCategories] (LocationCd ASC)

ALTER TABLE [H_dmRuleViolationBehaviorCodes]

DROP CONSTRAINT [PK_H_dmRuleViolationBehaviorCodes];

ALTER TABLE [H_dmRuleViolationBehaviorCodes] ADD CONSTRAINT [PK_H_dmRuleViolationBehaviorCodes] PRIMARY KEY CLUSTERED (H_RuleViolationBehaviorCodeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmRuleViolationBehaviorCodes_LocationCd') BEGIN  Drop INDEX [IX_H_dmRuleViolationBehaviorCodes_LocationCd] on [H_dmRuleViolationBehaviorCodes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmRuleViolationBehaviorCodes_LocationCd] ON [H_dmRuleViolationBehaviorCodes] (LocationCd ASC)

ALTER TABLE [H_dmRuleWorkUnits]

DROP CONSTRAINT [PK_H_dmRuleWorkUnits];

ALTER TABLE [H_dmRuleWorkUnits] ADD CONSTRAINT [PK_H_dmRuleWorkUnits] PRIMARY KEY CLUSTERED (H_RuleWorkUnitId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmRuleWorkUnits_LocationCd') BEGIN  Drop INDEX [IX_H_dmRuleWorkUnits_LocationCd] on [H_dmRuleWorkUnits]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmRuleWorkUnits_LocationCd] ON [H_dmRuleWorkUnits] (LocationCd ASC)

ALTER TABLE [H_dmSanctions]

DROP CONSTRAINT [PK_H_dmSanctions];

ALTER TABLE [H_dmSanctions] ADD CONSTRAINT [PK_H_dmSanctions] PRIMARY KEY CLUSTERED (H_SanctionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmSanctions_LocationCd') BEGIN  Drop INDEX [IX_H_dmSanctions_LocationCd] on [H_dmSanctions]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmSanctions_LocationCd] ON [H_dmSanctions] (LocationCd ASC)

ALTER TABLE [H_dmSassiRecommendations]

DROP CONSTRAINT [PK_H_dmSASSIRecommendations];

ALTER TABLE [H_dmSassiRecommendations] ADD CONSTRAINT [PK_H_dmSASSIRecommendations] PRIMARY KEY CLUSTERED (H_SassiRecommendationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmSassiRecommendations_LocationCd') BEGIN  Drop INDEX [IX_H_dmSassiRecommendations_LocationCd] on [H_dmSassiRecommendations]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmSassiRecommendations_LocationCd] ON [H_dmSassiRecommendations] (LocationCd ASC)

ALTER TABLE [H_dmSecurityStandardAssociatedSubstances_OLD]

DROP CONSTRAINT [PK_H_dmSecurityStandardAssociatedSubstances];

ALTER TABLE [H_dmSecurityStandardAssociatedSubstances_OLD] ADD CONSTRAINT [PK_H_dmSecurityStandardAssociatedSubstances] PRIMARY KEY CLUSTERED (H_SecurityStandardAssociatedSubstanceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmSecurityStandardAssociatedSubstances_OLD_LocationCd') BEGIN  Drop INDEX [IX_H_dmSecurityStandardAssociatedSubstances_OLD_LocationCd] on [H_dmSecurityStandardAssociatedSubstances_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmSecurityStandardAssociatedSubstances_OLD_LocationCd] ON [H_dmSecurityStandardAssociatedSubstances_OLD] (LocationCd ASC)

ALTER TABLE [H_dmSecurityStandardNonToxinSubtypes]

DROP CONSTRAINT [PK_H_dmSecurityStandardNonToxinSubtypes];

ALTER TABLE [H_dmSecurityStandardNonToxinSubtypes] ADD CONSTRAINT [PK_H_dmSecurityStandardNonToxinSubtypes] PRIMARY KEY CLUSTERED (H_SecurityStandardNonToxinSubtypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmSecurityStandardNonToxinSubtypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmSecurityStandardNonToxinSubtypes_LocationCd] on [H_dmSecurityStandardNonToxinSubtypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmSecurityStandardNonToxinSubtypes_LocationCd] ON [H_dmSecurityStandardNonToxinSubtypes] (LocationCd ASC)

ALTER TABLE [H_dmSecurityStandardNonToxinTypes]

DROP CONSTRAINT [PK_H_dmSecurityStandardNonToxinTypes];

ALTER TABLE [H_dmSecurityStandardNonToxinTypes] ADD CONSTRAINT [PK_H_dmSecurityStandardNonToxinTypes] PRIMARY KEY CLUSTERED (H_SecurityStandardNonToxinTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmSecurityStandardNonToxinTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmSecurityStandardNonToxinTypes_LocationCd] on [H_dmSecurityStandardNonToxinTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmSecurityStandardNonToxinTypes_LocationCd] ON [H_dmSecurityStandardNonToxinTypes] (LocationCd ASC)

ALTER TABLE [H_dmSecurityStandardReasons]

DROP CONSTRAINT [PK_H_dmSecurityStandardReasons];

ALTER TABLE [H_dmSecurityStandardReasons] ADD CONSTRAINT [PK_H_dmSecurityStandardReasons] PRIMARY KEY CLUSTERED (H_SecurityStandardReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmSecurityStandardReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmSecurityStandardReasons_LocationCd] on [H_dmSecurityStandardReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmSecurityStandardReasons_LocationCd] ON [H_dmSecurityStandardReasons] (LocationCd ASC)

ALTER TABLE [H_dmSecurityStandardSubstancePanels]

DROP CONSTRAINT [PK_H_dmSecurityStandardSubstancePanels];

ALTER TABLE [H_dmSecurityStandardSubstancePanels] ADD CONSTRAINT [PK_H_dmSecurityStandardSubstancePanels] PRIMARY KEY CLUSTERED (H_SecurityStandardSubstancePanelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmSecurityStandardSubstancePanels_LocationCd') BEGIN  Drop INDEX [IX_H_dmSecurityStandardSubstancePanels_LocationCd] on [H_dmSecurityStandardSubstancePanels]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmSecurityStandardSubstancePanels_LocationCd] ON [H_dmSecurityStandardSubstancePanels] (LocationCd ASC)

ALTER TABLE [H_dmSecurityStandardSubstancePanelSubstances]

DROP CONSTRAINT [PK_H_dmSecurityStandardSubstancePanelSubstances];

ALTER TABLE [H_dmSecurityStandardSubstancePanelSubstances] ADD CONSTRAINT [PK_H_dmSecurityStandardSubstancePanelSubstances] PRIMARY KEY CLUSTERED (H_SecurityStandardSubstancePanelSubstanceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmSecurityStandardSubstancePanelSubstances_LocationCd') BEGIN  Drop INDEX [IX_H_dmSecurityStandardSubstancePanelSubstances_LocationCd] on [H_dmSecurityStandardSubstancePanelSubstances]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmSecurityStandardSubstancePanelSubstances_LocationCd] ON [H_dmSecurityStandardSubstancePanelSubstances] (LocationCd ASC)

ALTER TABLE [H_dmSecurityStandardSubstances]

DROP CONSTRAINT [PK_H_dmSecurityStandardSubstances];

ALTER TABLE [H_dmSecurityStandardSubstances] ADD CONSTRAINT [PK_H_dmSecurityStandardSubstances] PRIMARY KEY CLUSTERED (H_SecurityStandardSubstanceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmSecurityStandardSubstances_LocationCd') BEGIN  Drop INDEX [IX_H_dmSecurityStandardSubstances_LocationCd] on [H_dmSecurityStandardSubstances]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmSecurityStandardSubstances_LocationCd] ON [H_dmSecurityStandardSubstances] (LocationCd ASC)

ALTER TABLE [H_dmSecurityStandardToxinTypes]

DROP CONSTRAINT [PK_H_dmSecurityStandardToxinTypes];

ALTER TABLE [H_dmSecurityStandardToxinTypes] ADD CONSTRAINT [PK_H_dmSecurityStandardToxinTypes] PRIMARY KEY CLUSTERED (H_SecurityStandardToxinTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmSecurityStandardToxinTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmSecurityStandardToxinTypes_LocationCd] on [H_dmSecurityStandardToxinTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmSecurityStandardToxinTypes_LocationCd] ON [H_dmSecurityStandardToxinTypes] (LocationCd ASC)

ALTER TABLE [H_dmSecurityStandardToxinUaSamples]

DROP CONSTRAINT [PK_H_dmSecurityStandardToxinUaSamples];

ALTER TABLE [H_dmSecurityStandardToxinUaSamples] ADD CONSTRAINT [PK_H_dmSecurityStandardToxinUaSamples] PRIMARY KEY CLUSTERED (H_SecurityStandardToxinUaSampleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmSecurityStandardToxinUaSamples_LocationCd') BEGIN  Drop INDEX [IX_H_dmSecurityStandardToxinUaSamples_LocationCd] on [H_dmSecurityStandardToxinUaSamples]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmSecurityStandardToxinUaSamples_LocationCd] ON [H_dmSecurityStandardToxinUaSamples] (LocationCd ASC)

ALTER TABLE [H_dmSecurityStandardTypes_OLD]

DROP CONSTRAINT [PK_H_dmSecurityStandardTypes];

ALTER TABLE [H_dmSecurityStandardTypes_OLD] ADD CONSTRAINT [PK_H_dmSecurityStandardTypes] PRIMARY KEY CLUSTERED (H_SecurityStandardTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmSecurityStandardTypes_OLD_LocationCd') BEGIN  Drop INDEX [IX_H_dmSecurityStandardTypes_OLD_LocationCd] on [H_dmSecurityStandardTypes_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmSecurityStandardTypes_OLD_LocationCd] ON [H_dmSecurityStandardTypes_OLD] (LocationCd ASC)

ALTER TABLE [H_dmSecurityStandardUnsatisfactoryReasons]

DROP CONSTRAINT [PK_H_dmSecurityStandardContraband];

ALTER TABLE [H_dmSecurityStandardUnsatisfactoryReasons] ADD CONSTRAINT [PK_H_dmSecurityStandardContraband] PRIMARY KEY CLUSTERED (H_SecurityStandardUnsatisfactoryReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmSecurityStandardUnsatisfactoryReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmSecurityStandardUnsatisfactoryReasons_LocationCd] on [H_dmSecurityStandardUnsatisfactoryReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmSecurityStandardUnsatisfactoryReasons_LocationCd] ON [H_dmSecurityStandardUnsatisfactoryReasons] (LocationCd ASC)

ALTER TABLE [H_dmSentenceDispositionStatus]

DROP CONSTRAINT [PK_H_dmSentenceDispositionStatus];

ALTER TABLE [H_dmSentenceDispositionStatus] ADD CONSTRAINT [PK_H_dmSentenceDispositionStatus] PRIMARY KEY CLUSTERED (H_DispositionStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmSentenceDispositionStatus_LocationCd') BEGIN  Drop INDEX [IX_H_dmSentenceDispositionStatus_LocationCd] on [H_dmSentenceDispositionStatus]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmSentenceDispositionStatus_LocationCd] ON [H_dmSentenceDispositionStatus] (LocationCd ASC)

ALTER TABLE [H_dmSentencePenaltyModifiers]

DROP CONSTRAINT [PK_H_dmSentencePenaltyModifiers];

ALTER TABLE [H_dmSentencePenaltyModifiers] ADD CONSTRAINT [PK_H_dmSentencePenaltyModifiers] PRIMARY KEY CLUSTERED (H_PenaltyModifierId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmSentencePenaltyModifiers_LocationCd') BEGIN  Drop INDEX [IX_H_dmSentencePenaltyModifiers_LocationCd] on [H_dmSentencePenaltyModifiers]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmSentencePenaltyModifiers_LocationCd] ON [H_dmSentencePenaltyModifiers] (LocationCd ASC)

ALTER TABLE [H_dmSentencePenaltyStatuses]

DROP CONSTRAINT [PK_H_dmSentencePenaltyStatuses];

ALTER TABLE [H_dmSentencePenaltyStatuses] ADD CONSTRAINT [PK_H_dmSentencePenaltyStatuses] PRIMARY KEY CLUSTERED (H_SentencePenaltyStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmSentencePenaltyStatuses_LocationCd') BEGIN  Drop INDEX [IX_H_dmSentencePenaltyStatuses_LocationCd] on [H_dmSentencePenaltyStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmSentencePenaltyStatuses_LocationCd] ON [H_dmSentencePenaltyStatuses] (LocationCd ASC)

ALTER TABLE [H_dmSentencePenaltyTypePenaltyModifiers]

DROP CONSTRAINT [PK_H_dmSentencePenaltyTypePenaltyModifiers];

ALTER TABLE [H_dmSentencePenaltyTypePenaltyModifiers] ADD CONSTRAINT [PK_H_dmSentencePenaltyTypePenaltyModifiers] PRIMARY KEY CLUSTERED (H_PenaltyTypePenaltyModifierId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmSentencePenaltyTypePenaltyModifiers_LocationCd') BEGIN  Drop INDEX [IX_H_dmSentencePenaltyTypePenaltyModifiers_LocationCd] on [H_dmSentencePenaltyTypePenaltyModifiers]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmSentencePenaltyTypePenaltyModifiers_LocationCd] ON [H_dmSentencePenaltyTypePenaltyModifiers] (LocationCd ASC)

ALTER TABLE [H_dmSentencePenaltyTypes]

DROP CONSTRAINT [PK_H_dmSentencePenaltyTypes];

ALTER TABLE [H_dmSentencePenaltyTypes] ADD CONSTRAINT [PK_H_dmSentencePenaltyTypes] PRIMARY KEY CLUSTERED (H_PenaltyTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmSentencePenaltyTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmSentencePenaltyTypes_LocationCd] on [H_dmSentencePenaltyTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmSentencePenaltyTypes_LocationCd] ON [H_dmSentencePenaltyTypes] (LocationCd ASC)

ALTER TABLE [H_dmStaffIdentifiers]

DROP CONSTRAINT [PK_H_dmStaffIdentifiers];

ALTER TABLE [H_dmStaffIdentifiers] ADD CONSTRAINT [PK_H_dmStaffIdentifiers] PRIMARY KEY CLUSTERED (H_StaffIdentifierId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmStaffIdentifiers_LocationCd') BEGIN  Drop INDEX [IX_H_dmStaffIdentifiers_LocationCd] on [H_dmStaffIdentifiers]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmStaffIdentifiers_LocationCd] ON [H_dmStaffIdentifiers] (LocationCd ASC)

ALTER TABLE [H_dmStaffInformation]

DROP CONSTRAINT [PK_H_dmStaffInformation];

ALTER TABLE [H_dmStaffInformation] ADD CONSTRAINT [PK_H_dmStaffInformation] PRIMARY KEY CLUSTERED (H_StaffInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmStaffInformation_LocationCd') BEGIN  Drop INDEX [IX_H_dmStaffInformation_LocationCd] on [H_dmStaffInformation]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmStaffInformation_LocationCd] ON [H_dmStaffInformation] (LocationCd ASC)

ALTER TABLE [H_dmStaffPhones]

DROP CONSTRAINT [PK_H_dmStaffPhones];

ALTER TABLE [H_dmStaffPhones] ADD CONSTRAINT [PK_H_dmStaffPhones] PRIMARY KEY CLUSTERED (H_StaffPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmStaffPhones_LocationCd') BEGIN  Drop INDEX [IX_H_dmStaffPhones_LocationCd] on [H_dmStaffPhones]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmStaffPhones_LocationCd] ON [H_dmStaffPhones] (LocationCd ASC)

ALTER TABLE [H_dmStaffSignatures]

DROP CONSTRAINT [PK_H_dmStaffSignatures];

ALTER TABLE [H_dmStaffSignatures] ADD CONSTRAINT [PK_H_dmStaffSignatures] PRIMARY KEY CLUSTERED (H_StaffSignatureId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmStaffSignatures_LocationCd') BEGIN  Drop INDEX [IX_H_dmStaffSignatures_LocationCd] on [H_dmStaffSignatures]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmStaffSignatures_LocationCd] ON [H_dmStaffSignatures] (LocationCd ASC)

ALTER TABLE [H_dmStaffWorkUnits]

DROP CONSTRAINT [PK_H_dmStaffWorkUnits];

ALTER TABLE [H_dmStaffWorkUnits] ADD CONSTRAINT [PK_H_dmStaffWorkUnits] PRIMARY KEY CLUSTERED (H_StaffWorkUnitId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmStaffWorkUnits_LocationCd') BEGIN  Drop INDEX [IX_H_dmStaffWorkUnits_LocationCd] on [H_dmStaffWorkUnits]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmStaffWorkUnits_LocationCd] ON [H_dmStaffWorkUnits] (LocationCd ASC)

ALTER TABLE [H_dmStaffWorkUnits_PROD_OLD]

DROP CONSTRAINT [PK_H_dmStaffWorkUnits_PROD];

ALTER TABLE [H_dmStaffWorkUnits_PROD_OLD] ADD CONSTRAINT [PK_H_dmStaffWorkUnits_PROD] PRIMARY KEY CLUSTERED (H_StaffWorkUnitId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmStaffWorkUnits_PROD_OLD_LocationCd') BEGIN  Drop INDEX [IX_H_dmStaffWorkUnits_PROD_OLD_LocationCd] on [H_dmStaffWorkUnits_PROD_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmStaffWorkUnits_PROD_OLD_LocationCd] ON [H_dmStaffWorkUnits_PROD_OLD] (LocationCd ASC)

ALTER TABLE [H_dmStateJobTitles]

DROP CONSTRAINT [PK_H_dmStateJobTitles];

ALTER TABLE [H_dmStateJobTitles] ADD CONSTRAINT [PK_H_dmStateJobTitles] PRIMARY KEY CLUSTERED (H_StateJobTitleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmStateJobTitles_LocationCd') BEGIN  Drop INDEX [IX_H_dmStateJobTitles_LocationCd] on [H_dmStateJobTitles]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmStateJobTitles_LocationCd] ON [H_dmStateJobTitles] (LocationCd ASC)

ALTER TABLE [H_dmStates]

DROP CONSTRAINT [PK_H_dmStates];

ALTER TABLE [H_dmStates] ADD CONSTRAINT [PK_H_dmStates] PRIMARY KEY CLUSTERED (H_StateId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmStates_LocationCd') BEGIN  Drop INDEX [IX_H_dmStates_LocationCd] on [H_dmStates]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmStates_LocationCd] ON [H_dmStates] (LocationCd ASC)

ALTER TABLE [H_dmSupervisionLevels]

DROP CONSTRAINT [PK_H_dmTierLevelsCbc];

ALTER TABLE [H_dmSupervisionLevels] ADD CONSTRAINT [PK_H_dmTierLevelsCbc] PRIMARY KEY CLUSTERED (H_SupervisionLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmSupervisionLevels_LocationCd') BEGIN  Drop INDEX [IX_H_dmSupervisionLevels_LocationCd] on [H_dmSupervisionLevels]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmSupervisionLevels_LocationCd] ON [H_dmSupervisionLevels] (LocationCd ASC)

ALTER TABLE [H_dmSupervisionModifiers]

DROP CONSTRAINT [PK_H_dmSupervisionModifiers];

ALTER TABLE [H_dmSupervisionModifiers] ADD CONSTRAINT [PK_H_dmSupervisionModifiers] PRIMARY KEY CLUSTERED (H_SupervisionModifierId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmSupervisionModifiers_LocationCd') BEGIN  Drop INDEX [IX_H_dmSupervisionModifiers_LocationCd] on [H_dmSupervisionModifiers]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmSupervisionModifiers_LocationCd] ON [H_dmSupervisionModifiers] (LocationCd ASC)

ALTER TABLE [H_dmSupervisionStatuses]

DROP CONSTRAINT [PK_H_dmSupervisionStatuses];

ALTER TABLE [H_dmSupervisionStatuses] ADD CONSTRAINT [PK_H_dmSupervisionStatuses] PRIMARY KEY CLUSTERED (H_SupervisionStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmSupervisionStatuses_LocationCd') BEGIN  Drop INDEX [IX_H_dmSupervisionStatuses_LocationCd] on [H_dmSupervisionStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmSupervisionStatuses_LocationCd] ON [H_dmSupervisionStatuses] (LocationCd ASC)

ALTER TABLE [H_dmSupportMeans]

DROP CONSTRAINT [PK_H_dmSupportMeans];

ALTER TABLE [H_dmSupportMeans] ADD CONSTRAINT [PK_H_dmSupportMeans] PRIMARY KEY CLUSTERED (H_SupportMeanId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmSupportMeans_LocationCd') BEGIN  Drop INDEX [IX_H_dmSupportMeans_LocationCd] on [H_dmSupportMeans]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmSupportMeans_LocationCd] ON [H_dmSupportMeans] (LocationCd ASC)

ALTER TABLE [H_dmTestingWaivedReasons]

DROP CONSTRAINT [PK_H_dmTestingWaivedReasons];

ALTER TABLE [H_dmTestingWaivedReasons] ADD CONSTRAINT [PK_H_dmTestingWaivedReasons] PRIMARY KEY CLUSTERED (H_TestingWaivedReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmTestingWaivedReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmTestingWaivedReasons_LocationCd] on [H_dmTestingWaivedReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmTestingWaivedReasons_LocationCd] ON [H_dmTestingWaivedReasons] (LocationCd ASC)

ALTER TABLE [H_dmTGLevelsOfInvolvement]

DROP CONSTRAINT [PK_H_dmTGLevelsOfInvolvement];

ALTER TABLE [H_dmTGLevelsOfInvolvement] ADD CONSTRAINT [PK_H_dmTGLevelsOfInvolvement] PRIMARY KEY CLUSTERED (H_TGLevelOfInvolvementId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmTGLevelsOfInvolvement_LocationCd') BEGIN  Drop INDEX [IX_H_dmTGLevelsOfInvolvement_LocationCd] on [H_dmTGLevelsOfInvolvement]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmTGLevelsOfInvolvement_LocationCd] ON [H_dmTGLevelsOfInvolvement] (LocationCd ASC)

ALTER TABLE [H_dmThreatGroupFactions]

DROP CONSTRAINT [PK_H_dmThreatGroupFactions];

ALTER TABLE [H_dmThreatGroupFactions] ADD CONSTRAINT [PK_H_dmThreatGroupFactions] PRIMARY KEY CLUSTERED (H_ThreatGroupFactionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmThreatGroupFactions_LocationCd') BEGIN  Drop INDEX [IX_H_dmThreatGroupFactions_LocationCd] on [H_dmThreatGroupFactions]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmThreatGroupFactions_LocationCd] ON [H_dmThreatGroupFactions] (LocationCd ASC)

ALTER TABLE [H_dmThreatGroupSubFactions]

DROP CONSTRAINT [PK_H_dmThreatGroupSubFactions];

ALTER TABLE [H_dmThreatGroupSubFactions] ADD CONSTRAINT [PK_H_dmThreatGroupSubFactions] PRIMARY KEY CLUSTERED (H_ThreatGroupSubFactionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmThreatGroupSubFactions_LocationCd') BEGIN  Drop INDEX [IX_H_dmThreatGroupSubFactions_LocationCd] on [H_dmThreatGroupSubFactions]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmThreatGroupSubFactions_LocationCd] ON [H_dmThreatGroupSubFactions] (LocationCd ASC)

ALTER TABLE [H_dmTimeCompAdjustments]

DROP CONSTRAINT [PK_H_dmTimeCompAdjustments];

ALTER TABLE [H_dmTimeCompAdjustments] ADD CONSTRAINT [PK_H_dmTimeCompAdjustments] PRIMARY KEY CLUSTERED (H_TimeCompAdjustmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmTimeCompAdjustments_LocationCd') BEGIN  Drop INDEX [IX_H_dmTimeCompAdjustments_LocationCd] on [H_dmTimeCompAdjustments]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmTimeCompAdjustments_LocationCd] ON [H_dmTimeCompAdjustments] (LocationCd ASC)

ALTER TABLE [H_dmTimeCompEvents]

DROP CONSTRAINT [PK_H_dmTimeCompEvents_2_ProdFix];

ALTER TABLE [H_dmTimeCompEvents] ADD CONSTRAINT [PK_H_dmTimeCompEvents_2_ProdFix] PRIMARY KEY CLUSTERED (H_TimeCompEventId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmTimeCompEvents_LocationCd') BEGIN  Drop INDEX [IX_H_dmTimeCompEvents_LocationCd] on [H_dmTimeCompEvents]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmTimeCompEvents_LocationCd] ON [H_dmTimeCompEvents] (LocationCd ASC)

ALTER TABLE [H_dmTimeCompMethods]

DROP CONSTRAINT [PK_H_dmTimeCompMethods];

ALTER TABLE [H_dmTimeCompMethods] ADD CONSTRAINT [PK_H_dmTimeCompMethods] PRIMARY KEY CLUSTERED (H_TimeCompMethodId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmTimeCompMethods_LocationCd') BEGIN  Drop INDEX [IX_H_dmTimeCompMethods_LocationCd] on [H_dmTimeCompMethods]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmTimeCompMethods_LocationCd] ON [H_dmTimeCompMethods] (LocationCd ASC)

ALTER TABLE [H_dmTransferHoldTypes]

DROP CONSTRAINT [PK_H_dmTransferHoldTypes];

ALTER TABLE [H_dmTransferHoldTypes] ADD CONSTRAINT [PK_H_dmTransferHoldTypes] PRIMARY KEY CLUSTERED (H_TransferHoldTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmTransferHoldTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmTransferHoldTypes_LocationCd] on [H_dmTransferHoldTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmTransferHoldTypes_LocationCd] ON [H_dmTransferHoldTypes] (LocationCd ASC)

ALTER TABLE [H_dmTransferInitiators]

DROP CONSTRAINT [PK_H_dmTransferInitiators];

ALTER TABLE [H_dmTransferInitiators] ADD CONSTRAINT [PK_H_dmTransferInitiators] PRIMARY KEY CLUSTERED (H_TransferInitiatorId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmTransferInitiators_LocationCd') BEGIN  Drop INDEX [IX_H_dmTransferInitiators_LocationCd] on [H_dmTransferInitiators]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmTransferInitiators_LocationCd] ON [H_dmTransferInitiators] (LocationCd ASC)

ALTER TABLE [H_dmTransferLocationReasons]

DROP CONSTRAINT [PK_H_dmTransferLocationReasons];

ALTER TABLE [H_dmTransferLocationReasons] ADD CONSTRAINT [PK_H_dmTransferLocationReasons] PRIMARY KEY CLUSTERED (H_TransferLocationReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmTransferLocationReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmTransferLocationReasons_LocationCd] on [H_dmTransferLocationReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmTransferLocationReasons_LocationCd] ON [H_dmTransferLocationReasons] (LocationCd ASC)

ALTER TABLE [H_dmTransferReasons]

DROP CONSTRAINT [PK_H_dmTransferReasons];

ALTER TABLE [H_dmTransferReasons] ADD CONSTRAINT [PK_H_dmTransferReasons] PRIMARY KEY CLUSTERED (H_TransferReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmTransferReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmTransferReasons_LocationCd] on [H_dmTransferReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmTransferReasons_LocationCd] ON [H_dmTransferReasons] (LocationCd ASC)

ALTER TABLE [H_dmTransferStatuses]

DROP CONSTRAINT [PK_H_dmTransferStatuses];

ALTER TABLE [H_dmTransferStatuses] ADD CONSTRAINT [PK_H_dmTransferStatuses] PRIMARY KEY CLUSTERED (H_TransferStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmTransferStatuses_LocationCd') BEGIN  Drop INDEX [IX_H_dmTransferStatuses_LocationCd] on [H_dmTransferStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmTransferStatuses_LocationCd] ON [H_dmTransferStatuses] (LocationCd ASC)

ALTER TABLE [H_dmTransportationTypes]

DROP CONSTRAINT [PK_H_dmTransportationTypes];

ALTER TABLE [H_dmTransportationTypes] ADD CONSTRAINT [PK_H_dmTransportationTypes] PRIMARY KEY CLUSTERED (H_TransportationTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmTransportationTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmTransportationTypes_LocationCd] on [H_dmTransportationTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmTransportationTypes_LocationCd] ON [H_dmTransportationTypes] (LocationCd ASC)

ALTER TABLE [H_dmTransportHolds]

DROP CONSTRAINT [PK_H_dmTransportHolds];

ALTER TABLE [H_dmTransportHolds] ADD CONSTRAINT [PK_H_dmTransportHolds] PRIMARY KEY CLUSTERED (H_TransportHoldId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmTransportHolds_LocationCd') BEGIN  Drop INDEX [IX_H_dmTransportHolds_LocationCd] on [H_dmTransportHolds]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmTransportHolds_LocationCd] ON [H_dmTransportHolds] (LocationCd ASC)

ALTER TABLE [H_dmTravelPermitTypes]

DROP CONSTRAINT [PK_H_dmTravelPermitTypes];

ALTER TABLE [H_dmTravelPermitTypes] ADD CONSTRAINT [PK_H_dmTravelPermitTypes] PRIMARY KEY CLUSTERED (H_TravelPermitTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmTravelPermitTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmTravelPermitTypes_LocationCd] on [H_dmTravelPermitTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmTravelPermitTypes_LocationCd] ON [H_dmTravelPermitTypes] (LocationCd ASC)

ALTER TABLE [H_dmTravelReasons]

DROP CONSTRAINT [PK_H_dmTravelReasons];

ALTER TABLE [H_dmTravelReasons] ADD CONSTRAINT [PK_H_dmTravelReasons] PRIMARY KEY CLUSTERED (H_TravelReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmTravelReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmTravelReasons_LocationCd] on [H_dmTravelReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmTravelReasons_LocationCd] ON [H_dmTravelReasons] (LocationCd ASC)

ALTER TABLE [H_dmTribes]

DROP CONSTRAINT [PK_H_dmTribes];

ALTER TABLE [H_dmTribes] ADD CONSTRAINT [PK_H_dmTribes] PRIMARY KEY CLUSTERED (H_TribeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmTribes_LocationCd') BEGIN  Drop INDEX [IX_H_dmTribes_LocationCd] on [H_dmTribes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmTribes_LocationCd] ON [H_dmTribes] (LocationCd ASC)

ALTER TABLE [H_dmTypesOfWork]

DROP CONSTRAINT [PK_H_dmTypesOfWork];

ALTER TABLE [H_dmTypesOfWork] ADD CONSTRAINT [PK_H_dmTypesOfWork] PRIMARY KEY CLUSTERED (H_TypeOfWorkId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmTypesOfWork_LocationCd') BEGIN  Drop INDEX [IX_H_dmTypesOfWork_LocationCd] on [H_dmTypesOfWork]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmTypesOfWork_LocationCd] ON [H_dmTypesOfWork] (LocationCd ASC)

ALTER TABLE [H_dmUricaStages]

DROP CONSTRAINT [PK_H_dmURICAStages];

ALTER TABLE [H_dmUricaStages] ADD CONSTRAINT [PK_H_dmURICAStages] PRIMARY KEY CLUSTERED (H_UricaStageId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmUricaStages_LocationCd') BEGIN  Drop INDEX [IX_H_dmUricaStages_LocationCd] on [H_dmUricaStages]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmUricaStages_LocationCd] ON [H_dmUricaStages] (LocationCd ASC)

ALTER TABLE [H_dmUsCitizenshipStatuses]

DROP CONSTRAINT [PK_H_dmUSCitizenshipStatuses];

ALTER TABLE [H_dmUsCitizenshipStatuses] ADD CONSTRAINT [PK_H_dmUSCitizenshipStatuses] PRIMARY KEY CLUSTERED (H_UsCitizenshipStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmUsCitizenshipStatuses_LocationCd') BEGIN  Drop INDEX [IX_H_dmUsCitizenshipStatuses_LocationCd] on [H_dmUsCitizenshipStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmUsCitizenshipStatuses_LocationCd] ON [H_dmUsCitizenshipStatuses] (LocationCd ASC)

ALTER TABLE [H_dmUserOffenderLocks_OLD]

DROP CONSTRAINT [PK_H_dmUserOffenderLocks];

ALTER TABLE [H_dmUserOffenderLocks_OLD] ADD CONSTRAINT [PK_H_dmUserOffenderLocks] PRIMARY KEY CLUSTERED (H_UserOffenderLockId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmUserOffenderLocks_OLD_LocationCd') BEGIN  Drop INDEX [IX_H_dmUserOffenderLocks_OLD_LocationCd] on [H_dmUserOffenderLocks_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmUserOffenderLocks_OLD_LocationCd] ON [H_dmUserOffenderLocks_OLD] (LocationCd ASC)

ALTER TABLE [H_dmVehicleMakes]

DROP CONSTRAINT [PK_H_dmVehicleMakes];

ALTER TABLE [H_dmVehicleMakes] ADD CONSTRAINT [PK_H_dmVehicleMakes] PRIMARY KEY CLUSTERED (H_VehicleMakeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmVehicleMakes_LocationCd') BEGIN  Drop INDEX [IX_H_dmVehicleMakes_LocationCd] on [H_dmVehicleMakes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmVehicleMakes_LocationCd] ON [H_dmVehicleMakes] (LocationCd ASC)

ALTER TABLE [H_dmVehicleModels]

DROP CONSTRAINT [PK_H_dmVehicleModels];

ALTER TABLE [H_dmVehicleModels] ADD CONSTRAINT [PK_H_dmVehicleModels] PRIMARY KEY CLUSTERED (H_VehicleModelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmVehicleModels_LocationCd') BEGIN  Drop INDEX [IX_H_dmVehicleModels_LocationCd] on [H_dmVehicleModels]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmVehicleModels_LocationCd] ON [H_dmVehicleModels] (LocationCd ASC)

ALTER TABLE [H_dmViolatorProgramCancelledReason]

DROP CONSTRAINT [PK_H_dmViolatorProgramCancelledReason];

ALTER TABLE [H_dmViolatorProgramCancelledReason] ADD CONSTRAINT [PK_H_dmViolatorProgramCancelledReason] PRIMARY KEY CLUSTERED (H_ViolatorProgramCancelledReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmViolatorProgramCancelledReason_LocationCd') BEGIN  Drop INDEX [IX_H_dmViolatorProgramCancelledReason_LocationCd] on [H_dmViolatorProgramCancelledReason]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmViolatorProgramCancelledReason_LocationCd] ON [H_dmViolatorProgramCancelledReason] (LocationCd ASC)

ALTER TABLE [H_dmViolatorProgramDeniedReason]

DROP CONSTRAINT [PK_H_dmViolatorProgramDeniedReason];

ALTER TABLE [H_dmViolatorProgramDeniedReason] ADD CONSTRAINT [PK_H_dmViolatorProgramDeniedReason] PRIMARY KEY CLUSTERED (H_ViolatorProgramDeniedReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmViolatorProgramDeniedReason_LocationCd') BEGIN  Drop INDEX [IX_H_dmViolatorProgramDeniedReason_LocationCd] on [H_dmViolatorProgramDeniedReason]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmViolatorProgramDeniedReason_LocationCd] ON [H_dmViolatorProgramDeniedReason] (LocationCd ASC)

ALTER TABLE [H_dmViolatorProgramPlacementLocations]

DROP CONSTRAINT [PK_h_dmViolatorProgramPlacementLocations];

ALTER TABLE [H_dmViolatorProgramPlacementLocations] ADD CONSTRAINT [PK_h_dmViolatorProgramPlacementLocations] PRIMARY KEY CLUSTERED (H_ViolatorProgramPlacementLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmViolatorProgramPlacementLocations_LocationCd') BEGIN  Drop INDEX [IX_H_dmViolatorProgramPlacementLocations_LocationCd] on [H_dmViolatorProgramPlacementLocations]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmViolatorProgramPlacementLocations_LocationCd] ON [H_dmViolatorProgramPlacementLocations] (LocationCd ASC)

ALTER TABLE [H_dmViolatorProgramReferralStatuses]

DROP CONSTRAINT [PK_H_dmViolatorProgramReferralStatuses];

ALTER TABLE [H_dmViolatorProgramReferralStatuses] ADD CONSTRAINT [PK_H_dmViolatorProgramReferralStatuses] PRIMARY KEY CLUSTERED (H_ViolatorProgramReferralStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmViolatorProgramReferralStatuses_LocationCd') BEGIN  Drop INDEX [IX_H_dmViolatorProgramReferralStatuses_LocationCd] on [H_dmViolatorProgramReferralStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmViolatorProgramReferralStatuses_LocationCd] ON [H_dmViolatorProgramReferralStatuses] (LocationCd ASC)

ALTER TABLE [H_dmVisitingRelationships]

DROP CONSTRAINT [PK_H_dmVisitingRelationships];

ALTER TABLE [H_dmVisitingRelationships] ADD CONSTRAINT [PK_H_dmVisitingRelationships] PRIMARY KEY CLUSTERED (H_VisitingRelationshipId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmVisitingRelationships_LocationCd') BEGIN  Drop INDEX [IX_H_dmVisitingRelationships_LocationCd] on [H_dmVisitingRelationships]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmVisitingRelationships_LocationCd] ON [H_dmVisitingRelationships] (LocationCd ASC)

ALTER TABLE [H_dmVisitingStatuses]

DROP CONSTRAINT [PK_H_dmVisitingStatuses];

ALTER TABLE [H_dmVisitingStatuses] ADD CONSTRAINT [PK_H_dmVisitingStatuses] PRIMARY KEY CLUSTERED (H_VisitingStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmVisitingStatuses_LocationCd') BEGIN  Drop INDEX [IX_H_dmVisitingStatuses_LocationCd] on [H_dmVisitingStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmVisitingStatuses_LocationCd] ON [H_dmVisitingStatuses] (LocationCd ASC)

ALTER TABLE [H_dmVisitingStatusReasons]

DROP CONSTRAINT [PK_H_dmVisitingStatusReasons];

ALTER TABLE [H_dmVisitingStatusReasons] ADD CONSTRAINT [PK_H_dmVisitingStatusReasons] PRIMARY KEY CLUSTERED (H_VisitingStatusReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmVisitingStatusReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmVisitingStatusReasons_LocationCd] on [H_dmVisitingStatusReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmVisitingStatusReasons_LocationCd] ON [H_dmVisitingStatusReasons] (LocationCd ASC)

ALTER TABLE [H_dmWatchActivities]

DROP CONSTRAINT [PK_H_dmWatchActivities];

ALTER TABLE [H_dmWatchActivities] ADD CONSTRAINT [PK_H_dmWatchActivities] PRIMARY KEY CLUSTERED (H_WatchActivityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmWatchActivities_LocationCd') BEGIN  Drop INDEX [IX_H_dmWatchActivities_LocationCd] on [H_dmWatchActivities]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmWatchActivities_LocationCd] ON [H_dmWatchActivities] (LocationCd ASC)

ALTER TABLE [H_dmWorkAssignmentLeavingReasons]

DROP CONSTRAINT [PK_H_dmWorkAssignmentLeavingReasons];

ALTER TABLE [H_dmWorkAssignmentLeavingReasons] ADD CONSTRAINT [PK_H_dmWorkAssignmentLeavingReasons] PRIMARY KEY CLUSTERED (H_ReasonForLeavingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmWorkAssignmentLeavingReasons_LocationCd') BEGIN  Drop INDEX [IX_H_dmWorkAssignmentLeavingReasons_LocationCd] on [H_dmWorkAssignmentLeavingReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmWorkAssignmentLeavingReasons_LocationCd] ON [H_dmWorkAssignmentLeavingReasons] (LocationCd ASC)

ALTER TABLE [H_dmWorkAssignmentsFl]

DROP CONSTRAINT [PK_H_dmWorkAssignmentsFL];

ALTER TABLE [H_dmWorkAssignmentsFl] ADD CONSTRAINT [PK_H_dmWorkAssignmentsFL] PRIMARY KEY CLUSTERED (H_WorkAssignmentFlId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmWorkAssignmentsFl_LocationCd') BEGIN  Drop INDEX [IX_H_dmWorkAssignmentsFl_LocationCd] on [H_dmWorkAssignmentsFl]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmWorkAssignmentsFl_LocationCd] ON [H_dmWorkAssignmentsFl] (LocationCd ASC)

ALTER TABLE [H_dmWorkAssignmentShifts]

DROP CONSTRAINT [PK_H_dmWorkAssignmentShifts];

ALTER TABLE [H_dmWorkAssignmentShifts] ADD CONSTRAINT [PK_H_dmWorkAssignmentShifts] PRIMARY KEY CLUSTERED (H_WorkAssignmentShiftId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmWorkAssignmentShifts_LocationCd') BEGIN  Drop INDEX [IX_H_dmWorkAssignmentShifts_LocationCd] on [H_dmWorkAssignmentShifts]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmWorkAssignmentShifts_LocationCd] ON [H_dmWorkAssignmentShifts] (LocationCd ASC)

ALTER TABLE [H_dmWorkAssignmentsSw]

DROP CONSTRAINT [PK_H_dmWorkAssignmentsSW];

ALTER TABLE [H_dmWorkAssignmentsSw] ADD CONSTRAINT [PK_H_dmWorkAssignmentsSW] PRIMARY KEY CLUSTERED (H_WorkAssignmentSwId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmWorkAssignmentsSw_LocationCd') BEGIN  Drop INDEX [IX_H_dmWorkAssignmentsSw_LocationCd] on [H_dmWorkAssignmentsSw]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmWorkAssignmentsSw_LocationCd] ON [H_dmWorkAssignmentsSw] (LocationCd ASC)

ALTER TABLE [H_dmWorkflowTypes]

DROP CONSTRAINT [PK_H_dmWorkflowTypes];

ALTER TABLE [H_dmWorkflowTypes] ADD CONSTRAINT [PK_H_dmWorkflowTypes] PRIMARY KEY CLUSTERED (H_WorkflowTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmWorkflowTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmWorkflowTypes_LocationCd] on [H_dmWorkflowTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmWorkflowTypes_LocationCd] ON [H_dmWorkflowTypes] (LocationCd ASC)

ALTER TABLE [H_dmWorkUnits]

DROP CONSTRAINT [PK_H_dmWorkUnits];

ALTER TABLE [H_dmWorkUnits] ADD CONSTRAINT [PK_H_dmWorkUnits] PRIMARY KEY CLUSTERED (H_WorkUnitId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmWorkUnits_LocationCd') BEGIN  Drop INDEX [IX_H_dmWorkUnits_LocationCd] on [H_dmWorkUnits]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmWorkUnits_LocationCd] ON [H_dmWorkUnits] (LocationCd ASC)

ALTER TABLE [H_dmWorkUnitServiceTypes]

DROP CONSTRAINT [PK_H_dmWorkUnitServiceTypes];

ALTER TABLE [H_dmWorkUnitServiceTypes] ADD CONSTRAINT [PK_H_dmWorkUnitServiceTypes] PRIMARY KEY CLUSTERED (H_WorkUnitServiceTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_dmWorkUnitServiceTypes_LocationCd') BEGIN  Drop INDEX [IX_H_dmWorkUnitServiceTypes_LocationCd] on [H_dmWorkUnitServiceTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_dmWorkUnitServiceTypes_LocationCd] ON [H_dmWorkUnitServiceTypes] (LocationCd ASC)

ALTER TABLE [H_Dna]

DROP CONSTRAINT [PK_H_DNA];

ALTER TABLE [H_Dna] ADD CONSTRAINT [PK_H_DNA] PRIMARY KEY CLUSTERED (H_DnaId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_Dna_LocationCd') BEGIN  Drop INDEX [IX_H_Dna_LocationCd] on [H_Dna]; END */

CREATE NONCLUSTERED INDEX [IX_H_Dna_LocationCd] ON [H_Dna] (LocationCd ASC)

ALTER TABLE [H_DocProjectedRecommendationDates]

DROP CONSTRAINT [PK_H_DOCProjectedRecommendationDates];

ALTER TABLE [H_DocProjectedRecommendationDates] ADD CONSTRAINT [PK_H_DOCProjectedRecommendationDates] PRIMARY KEY CLUSTERED (H_DocProjectedRecommendationDateId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_DocProjectedRecommendationDates_LocationCd') BEGIN  Drop INDEX [IX_H_DocProjectedRecommendationDates_LocationCd] on [H_DocProjectedRecommendationDates]; END */

CREATE NONCLUSTERED INDEX [IX_H_DocProjectedRecommendationDates_LocationCd] ON [H_DocProjectedRecommendationDates] (LocationCd ASC)

ALTER TABLE [H_DpsTrackingNumbers]

DROP CONSTRAINT [PK_H_DPSTrackingNumbers];

ALTER TABLE [H_DpsTrackingNumbers] ADD CONSTRAINT [PK_H_DPSTrackingNumbers] PRIMARY KEY CLUSTERED (H_DpsTrackingNumberId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_DpsTrackingNumbers_LocationCd') BEGIN  Drop INDEX [IX_H_DpsTrackingNumbers_LocationCd] on [H_DpsTrackingNumbers]; END */

CREATE NONCLUSTERED INDEX [IX_H_DpsTrackingNumbers_LocationCd] ON [H_DpsTrackingNumbers] (LocationCd ASC)

ALTER TABLE [H_DrcReviewProcess]

DROP CONSTRAINT [PK_H_DRCReviewProcess];

ALTER TABLE [H_DrcReviewProcess] ADD CONSTRAINT [PK_H_DRCReviewProcess] PRIMARY KEY CLUSTERED (H_DrcReviewProcessId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_DrcReviewProcess_LocationCd') BEGIN  Drop INDEX [IX_H_DrcReviewProcess_LocationCd] on [H_DrcReviewProcess]; END */

CREATE NONCLUSTERED INDEX [IX_H_DrcReviewProcess_LocationCd] ON [H_DrcReviewProcess] (LocationCd ASC)

ALTER TABLE [H_DriversLicenseInformation]

DROP CONSTRAINT [PK_H_DriversLicenseInformation];

ALTER TABLE [H_DriversLicenseInformation] ADD CONSTRAINT [PK_H_DriversLicenseInformation] PRIMARY KEY CLUSTERED (H_DriversLicenseInfoId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_DriversLicenseInformation_LocationCd') BEGIN  Drop INDEX [IX_H_DriversLicenseInformation_LocationCd] on [H_DriversLicenseInformation]; END */

CREATE NONCLUSTERED INDEX [IX_H_DriversLicenseInformation_LocationCd] ON [H_DriversLicenseInformation] (LocationCd ASC)

ALTER TABLE [H_EducationalDetailRecordRequests]

DROP CONSTRAINT [PK_H_EducationalDetailRecordRequests];

ALTER TABLE [H_EducationalDetailRecordRequests] ADD CONSTRAINT [PK_H_EducationalDetailRecordRequests] PRIMARY KEY CLUSTERED (H_EducationalDetailRecordRequestId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_EducationalDetailRecordRequests_LocationCd') BEGIN  Drop INDEX [IX_H_EducationalDetailRecordRequests_LocationCd] on [H_EducationalDetailRecordRequests]; END */

CREATE NONCLUSTERED INDEX [IX_H_EducationalDetailRecordRequests_LocationCd] ON [H_EducationalDetailRecordRequests] (LocationCd ASC)

ALTER TABLE [H_EducationalDetails]

DROP CONSTRAINT [PK_H_EducationalDetails];

ALTER TABLE [H_EducationalDetails] ADD CONSTRAINT [PK_H_EducationalDetails] PRIMARY KEY CLUSTERED (H_EducationalDetailId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_EducationalDetails_LocationCd') BEGIN  Drop INDEX [IX_H_EducationalDetails_LocationCd] on [H_EducationalDetails]; END */

CREATE NONCLUSTERED INDEX [IX_H_EducationalDetails_LocationCd] ON [H_EducationalDetails] (LocationCd ASC)

ALTER TABLE [H_EducationalSummary]

DROP CONSTRAINT [PK_H_EducationalSummary];

ALTER TABLE [H_EducationalSummary] ADD CONSTRAINT [PK_H_EducationalSummary] PRIMARY KEY CLUSTERED (H_EducationalSummaryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_EducationalSummary_LocationCd') BEGIN  Drop INDEX [IX_H_EducationalSummary_LocationCd] on [H_EducationalSummary]; END */

CREATE NONCLUSTERED INDEX [IX_H_EducationalSummary_LocationCd] ON [H_EducationalSummary] (LocationCd ASC)

ALTER TABLE [H_EducationGed]

DROP CONSTRAINT [PK_H_EducationGED];

ALTER TABLE [H_EducationGed] ADD CONSTRAINT [PK_H_EducationGED] PRIMARY KEY CLUSTERED (H_EducationGedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_EducationGed_LocationCd') BEGIN  Drop INDEX [IX_H_EducationGed_LocationCd] on [H_EducationGed]; END */

CREATE NONCLUSTERED INDEX [IX_H_EducationGed_LocationCd] ON [H_EducationGed] (LocationCd ASC)

ALTER TABLE [H_EducationGedAccommodations]

DROP CONSTRAINT [PK_H_EducationGEDAccommodations];

ALTER TABLE [H_EducationGedAccommodations] ADD CONSTRAINT [PK_H_EducationGEDAccommodations] PRIMARY KEY CLUSTERED (H_EducationGedAccommodationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_EducationGedAccommodations_LocationCd') BEGIN  Drop INDEX [IX_H_EducationGedAccommodations_LocationCd] on [H_EducationGedAccommodations]; END */

CREATE NONCLUSTERED INDEX [IX_H_EducationGedAccommodations_LocationCd] ON [H_EducationGedAccommodations] (LocationCd ASC)

ALTER TABLE [H_EmailAddresses]

DROP CONSTRAINT [PK_H_EmailAddresses];

ALTER TABLE [H_EmailAddresses] ADD CONSTRAINT [PK_H_EmailAddresses] PRIMARY KEY CLUSTERED (H_EmailAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_EmailAddresses_LocationCd') BEGIN  Drop INDEX [IX_H_EmailAddresses_LocationCd] on [H_EmailAddresses]; END */

CREATE NONCLUSTERED INDEX [IX_H_EmailAddresses_LocationCd] ON [H_EmailAddresses] (LocationCd ASC)

ALTER TABLE [H_EmploymentInformation]

DROP CONSTRAINT [PK_H_EmploymentInformation];

ALTER TABLE [H_EmploymentInformation] ADD CONSTRAINT [PK_H_EmploymentInformation] PRIMARY KEY CLUSTERED (H_EmploymentInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_EmploymentInformation_LocationCd') BEGIN  Drop INDEX [IX_H_EmploymentInformation_LocationCd] on [H_EmploymentInformation]; END */

CREATE NONCLUSTERED INDEX [IX_H_EmploymentInformation_LocationCd] ON [H_EmploymentInformation] (LocationCd ASC)

ALTER TABLE [H_EmploymentPhones]

DROP CONSTRAINT [PK_H_EmploymentPhones];

ALTER TABLE [H_EmploymentPhones] ADD CONSTRAINT [PK_H_EmploymentPhones] PRIMARY KEY CLUSTERED (H_EmploymentPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_EmploymentPhones_LocationCd') BEGIN  Drop INDEX [IX_H_EmploymentPhones_LocationCd] on [H_EmploymentPhones]; END */

CREATE NONCLUSTERED INDEX [IX_H_EmploymentPhones_LocationCd] ON [H_EmploymentPhones] (LocationCd ASC)

ALTER TABLE [H_EndKeepSeparates]

DROP CONSTRAINT [PK_H_EndKeepSeparates];

ALTER TABLE [H_EndKeepSeparates] ADD CONSTRAINT [PK_H_EndKeepSeparates] PRIMARY KEY CLUSTERED (H_EndKeepSeparateId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_EndKeepSeparates_LocationCd') BEGIN  Drop INDEX [IX_H_EndKeepSeparates_LocationCd] on [H_EndKeepSeparates]; END */

CREATE NONCLUSTERED INDEX [IX_H_EndKeepSeparates_LocationCd] ON [H_EndKeepSeparates] (LocationCd ASC)

ALTER TABLE [H_EnemyEndingInformation]

DROP CONSTRAINT [PK_H_EnemyEndingInformation];

ALTER TABLE [H_EnemyEndingInformation] ADD CONSTRAINT [PK_H_EnemyEndingInformation] PRIMARY KEY CLUSTERED (H_EnemyEndingInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_EnemyEndingInformation_LocationCd') BEGIN  Drop INDEX [IX_H_EnemyEndingInformation_LocationCd] on [H_EnemyEndingInformation]; END */

CREATE NONCLUSTERED INDEX [IX_H_EnemyEndingInformation_LocationCd] ON [H_EnemyEndingInformation] (LocationCd ASC)

ALTER TABLE [H_EnemyInformation]

DROP CONSTRAINT [PK_H_EnemyInformation];

ALTER TABLE [H_EnemyInformation] ADD CONSTRAINT [PK_H_EnemyInformation] PRIMARY KEY CLUSTERED (H_EnemyInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_EnemyInformation_LocationCd') BEGIN  Drop INDEX [IX_H_EnemyInformation_LocationCd] on [H_EnemyInformation]; END */

CREATE NONCLUSTERED INDEX [IX_H_EnemyInformation_LocationCd] ON [H_EnemyInformation] (LocationCd ASC)

ALTER TABLE [H_EnhancedModuleSecurity]

DROP CONSTRAINT [PK_H_EnhancedModuleSecurity];

ALTER TABLE [H_EnhancedModuleSecurity] ADD CONSTRAINT [PK_H_EnhancedModuleSecurity] PRIMARY KEY CLUSTERED (H_EnhancedModuleSecurityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_EnhancedModuleSecurity_LocationCd') BEGIN  Drop INDEX [IX_H_EnhancedModuleSecurity_LocationCd] on [H_EnhancedModuleSecurity]; END */

CREATE NONCLUSTERED INDEX [IX_H_EnhancedModuleSecurity_LocationCd] ON [H_EnhancedModuleSecurity] (LocationCd ASC)

ALTER TABLE [H_FacilityMaintenanceIssues]

DROP CONSTRAINT [PK_H_FacilityMaintenanceIssues];

ALTER TABLE [H_FacilityMaintenanceIssues] ADD CONSTRAINT [PK_H_FacilityMaintenanceIssues] PRIMARY KEY CLUSTERED (H_FacilityMaintenanceIssueId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_FacilityMaintenanceIssues_LocationCd') BEGIN  Drop INDEX [IX_H_FacilityMaintenanceIssues_LocationCd] on [H_FacilityMaintenanceIssues]; END */

CREATE NONCLUSTERED INDEX [IX_H_FacilityMaintenanceIssues_LocationCd] ON [H_FacilityMaintenanceIssues] (LocationCd ASC)

ALTER TABLE [H_FederalOffenderStatuses]

DROP CONSTRAINT [PK_H_FederalOffenderStatuses];

ALTER TABLE [H_FederalOffenderStatuses] ADD CONSTRAINT [PK_H_FederalOffenderStatuses] PRIMARY KEY CLUSTERED (H_FederalOffenderStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_FederalOffenderStatuses_LocationCd') BEGIN  Drop INDEX [IX_H_FederalOffenderStatuses_LocationCd] on [H_FederalOffenderStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_H_FederalOffenderStatuses_LocationCd] ON [H_FederalOffenderStatuses] (LocationCd ASC)

ALTER TABLE [H_FieldRuleViolationBehaviorCodes]

DROP CONSTRAINT [PK_H_FieldRuleViolationBehaviorCodes];

ALTER TABLE [H_FieldRuleViolationBehaviorCodes] ADD CONSTRAINT [PK_H_FieldRuleViolationBehaviorCodes] PRIMARY KEY CLUSTERED (H_FieldRuleViolationBehaviorCodeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_FieldRuleViolationBehaviorCodes_LocationCd') BEGIN  Drop INDEX [IX_H_FieldRuleViolationBehaviorCodes_LocationCd] on [H_FieldRuleViolationBehaviorCodes]; END */

CREATE NONCLUSTERED INDEX [IX_H_FieldRuleViolationBehaviorCodes_LocationCd] ON [H_FieldRuleViolationBehaviorCodes] (LocationCd ASC)

ALTER TABLE [H_FieldRuleViolationIncidents]

DROP CONSTRAINT [PK_H_FieldRuleViolationIncidents];

ALTER TABLE [H_FieldRuleViolationIncidents] ADD CONSTRAINT [PK_H_FieldRuleViolationIncidents] PRIMARY KEY CLUSTERED (H_FieldRuleViolationIncidentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_FieldRuleViolationIncidents_LocationCd') BEGIN  Drop INDEX [IX_H_FieldRuleViolationIncidents_LocationCd] on [H_FieldRuleViolationIncidents]; END */

CREATE NONCLUSTERED INDEX [IX_H_FieldRuleViolationIncidents_LocationCd] ON [H_FieldRuleViolationIncidents] (LocationCd ASC)

ALTER TABLE [H_FieldRuleViolations]

DROP CONSTRAINT [PK_H_FieldRuleViolations];

ALTER TABLE [H_FieldRuleViolations] ADD CONSTRAINT [PK_H_FieldRuleViolations] PRIMARY KEY CLUSTERED (H_FieldRuleViolationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_FieldRuleViolations_LocationCd') BEGIN  Drop INDEX [IX_H_FieldRuleViolations_LocationCd] on [H_FieldRuleViolations]; END */

CREATE NONCLUSTERED INDEX [IX_H_FieldRuleViolations_LocationCd] ON [H_FieldRuleViolations] (LocationCd ASC)

ALTER TABLE [H_FinancialInformation]

DROP CONSTRAINT [PK_H_FinancialInformation];

ALTER TABLE [H_FinancialInformation] ADD CONSTRAINT [PK_H_FinancialInformation] PRIMARY KEY CLUSTERED (H_FinancialInfoId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_FinancialInformation_LocationCd') BEGIN  Drop INDEX [IX_H_FinancialInformation_LocationCd] on [H_FinancialInformation]; END */

CREATE NONCLUSTERED INDEX [IX_H_FinancialInformation_LocationCd] ON [H_FinancialInformation] (LocationCd ASC)

ALTER TABLE [H_GenericNotes]

DROP CONSTRAINT [PK_H_GenericNotes];

ALTER TABLE [H_GenericNotes] ADD CONSTRAINT [PK_H_GenericNotes] PRIMARY KEY CLUSTERED (H_GenericNoteId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_GenericNotes_LocationCd') BEGIN  Drop INDEX [IX_H_GenericNotes_LocationCd] on [H_GenericNotes]; END */

CREATE NONCLUSTERED INDEX [IX_H_GenericNotes_LocationCd] ON [H_GenericNotes] (LocationCd ASC)

ALTER TABLE [H_GrievanceAppeals]

DROP CONSTRAINT [PK_H_GrievanceAppeals];

ALTER TABLE [H_GrievanceAppeals] ADD CONSTRAINT [PK_H_GrievanceAppeals] PRIMARY KEY CLUSTERED (H_GrievanceAppealId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_GrievanceAppeals_LocationCd') BEGIN  Drop INDEX [IX_H_GrievanceAppeals_LocationCd] on [H_GrievanceAppeals]; END */

CREATE NONCLUSTERED INDEX [IX_H_GrievanceAppeals_LocationCd] ON [H_GrievanceAppeals] (LocationCd ASC)

ALTER TABLE [H_GrievanceNotifications]

DROP CONSTRAINT [PK_H_GrievanceNotifications];

ALTER TABLE [H_GrievanceNotifications] ADD CONSTRAINT [PK_H_GrievanceNotifications] PRIMARY KEY CLUSTERED (H_GrievanceNotificationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_GrievanceNotifications_LocationCd') BEGIN  Drop INDEX [IX_H_GrievanceNotifications_LocationCd] on [H_GrievanceNotifications]; END */

CREATE NONCLUSTERED INDEX [IX_H_GrievanceNotifications_LocationCd] ON [H_GrievanceNotifications] (LocationCd ASC)

ALTER TABLE [H_GrievanceNoUnknown]

DROP CONSTRAINT [PK_H_GrievanceNoUnknown];

ALTER TABLE [H_GrievanceNoUnknown] ADD CONSTRAINT [PK_H_GrievanceNoUnknown] PRIMARY KEY CLUSTERED (H_GrievanceNoUnknownId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_GrievanceNoUnknown_LocationCd') BEGIN  Drop INDEX [IX_H_GrievanceNoUnknown_LocationCd] on [H_GrievanceNoUnknown]; END */

CREATE NONCLUSTERED INDEX [IX_H_GrievanceNoUnknown_LocationCd] ON [H_GrievanceNoUnknown] (LocationCd ASC)

ALTER TABLE [H_GrievanceNoUnknownStaffNamed]

DROP CONSTRAINT [PK_H_GrievanceNoUnknownStaffNamed];

ALTER TABLE [H_GrievanceNoUnknownStaffNamed] ADD CONSTRAINT [PK_H_GrievanceNoUnknownStaffNamed] PRIMARY KEY CLUSTERED (H_GrievanceNoUnknownStaffNamedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_GrievanceNoUnknownStaffNamed_LocationCd') BEGIN  Drop INDEX [IX_H_GrievanceNoUnknownStaffNamed_LocationCd] on [H_GrievanceNoUnknownStaffNamed]; END */

CREATE NONCLUSTERED INDEX [IX_H_GrievanceNoUnknownStaffNamed_LocationCd] ON [H_GrievanceNoUnknownStaffNamed] (LocationCd ASC)

ALTER TABLE [H_GrievanceReceipts]

DROP CONSTRAINT [PK_H_GrievanceReceipts];

ALTER TABLE [H_GrievanceReceipts] ADD CONSTRAINT [PK_H_GrievanceReceipts] PRIMARY KEY CLUSTERED (H_GrievanceReceiptId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_GrievanceReceipts_LocationCd') BEGIN  Drop INDEX [IX_H_GrievanceReceipts_LocationCd] on [H_GrievanceReceipts]; END */

CREATE NONCLUSTERED INDEX [IX_H_GrievanceReceipts_LocationCd] ON [H_GrievanceReceipts] (LocationCd ASC)

ALTER TABLE [H_GrievanceResponses]

DROP CONSTRAINT [PK_H_GrievanceResponses];

ALTER TABLE [H_GrievanceResponses] ADD CONSTRAINT [PK_H_GrievanceResponses] PRIMARY KEY CLUSTERED (H_GrievanceResponseId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_GrievanceResponses_LocationCd') BEGIN  Drop INDEX [IX_H_GrievanceResponses_LocationCd] on [H_GrievanceResponses]; END */

CREATE NONCLUSTERED INDEX [IX_H_GrievanceResponses_LocationCd] ON [H_GrievanceResponses] (LocationCd ASC)

ALTER TABLE [H_GrievanceRestrictionReviews]

DROP CONSTRAINT [PK_H_GrievanceRestrictionReviews];

ALTER TABLE [H_GrievanceRestrictionReviews] ADD CONSTRAINT [PK_H_GrievanceRestrictionReviews] PRIMARY KEY CLUSTERED (H_GrievanceRestrictionReviewId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_GrievanceRestrictionReviews_LocationCd') BEGIN  Drop INDEX [IX_H_GrievanceRestrictionReviews_LocationCd] on [H_GrievanceRestrictionReviews]; END */

CREATE NONCLUSTERED INDEX [IX_H_GrievanceRestrictionReviews_LocationCd] ON [H_GrievanceRestrictionReviews] (LocationCd ASC)

ALTER TABLE [H_GrievanceRestrictions]

DROP CONSTRAINT [PK_H_GrievanceRestrictions];

ALTER TABLE [H_GrievanceRestrictions] ADD CONSTRAINT [PK_H_GrievanceRestrictions] PRIMARY KEY CLUSTERED (H_GrievanceRestrictionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_GrievanceRestrictions_LocationCd') BEGIN  Drop INDEX [IX_H_GrievanceRestrictions_LocationCd] on [H_GrievanceRestrictions]; END */

CREATE NONCLUSTERED INDEX [IX_H_GrievanceRestrictions_LocationCd] ON [H_GrievanceRestrictions] (LocationCd ASC)

ALTER TABLE [H_Grievances]

DROP CONSTRAINT [PK_H_Grievances];

ALTER TABLE [H_Grievances] ADD CONSTRAINT [PK_H_Grievances] PRIMARY KEY CLUSTERED (H_GrievanceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_Grievances_LocationCd') BEGIN  Drop INDEX [IX_H_Grievances_LocationCd] on [H_Grievances]; END */

CREATE NONCLUSTERED INDEX [IX_H_Grievances_LocationCd] ON [H_Grievances] (LocationCd ASC)

ALTER TABLE [H_GrievanceStaffNamed]

DROP CONSTRAINT [PK_H_GrievanceStaffNamed];

ALTER TABLE [H_GrievanceStaffNamed] ADD CONSTRAINT [PK_H_GrievanceStaffNamed] PRIMARY KEY CLUSTERED (H_GrievanceStaffNamedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_GrievanceStaffNamed_LocationCd') BEGIN  Drop INDEX [IX_H_GrievanceStaffNamed_LocationCd] on [H_GrievanceStaffNamed]; END */

CREATE NONCLUSTERED INDEX [IX_H_GrievanceStaffNamed_LocationCd] ON [H_GrievanceStaffNamed] (LocationCd ASC)

ALTER TABLE [H_Groups]

DROP CONSTRAINT [PK_H_Groups];

ALTER TABLE [H_Groups] ADD CONSTRAINT [PK_H_Groups] PRIMARY KEY CLUSTERED (H_GroupId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_Groups_LocationCd') BEGIN  Drop INDEX [IX_H_Groups_LocationCd] on [H_Groups]; END */

CREATE NONCLUSTERED INDEX [IX_H_Groups_LocationCd] ON [H_Groups] (LocationCd ASC)

ALTER TABLE [H_GroupUsers]

DROP CONSTRAINT [PK_H_GroupUsers];

ALTER TABLE [H_GroupUsers] ADD CONSTRAINT [PK_H_GroupUsers] PRIMARY KEY CLUSTERED (H_GroupUserId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_GroupUsers_LocationCd') BEGIN  Drop INDEX [IX_H_GroupUsers_LocationCd] on [H_GroupUsers]; END */

CREATE NONCLUSTERED INDEX [IX_H_GroupUsers_LocationCd] ON [H_GroupUsers] (LocationCd ASC)

ALTER TABLE [H_HandheldDevices]

DROP CONSTRAINT [PK_H_HandheldDevices];

ALTER TABLE [H_HandheldDevices] ADD CONSTRAINT [PK_H_HandheldDevices] PRIMARY KEY CLUSTERED (H_HandheldDeviceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_HandheldDevices_LocationCd') BEGIN  Drop INDEX [IX_H_HandheldDevices_LocationCd] on [H_HandheldDevices]; END */

CREATE NONCLUSTERED INDEX [IX_H_HandheldDevices_LocationCd] ON [H_HandheldDevices] (LocationCd ASC)

ALTER TABLE [H_HealthInformation]

DROP CONSTRAINT [PK_H_HealthInformation];

ALTER TABLE [H_HealthInformation] ADD CONSTRAINT [PK_H_HealthInformation] PRIMARY KEY CLUSTERED (H_HealthInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_HealthInformation_LocationCd') BEGIN  Drop INDEX [IX_H_HealthInformation_LocationCd] on [H_HealthInformation]; END */

CREATE NONCLUSTERED INDEX [IX_H_HealthInformation_LocationCd] ON [H_HealthInformation] (LocationCd ASC)

ALTER TABLE [H_Hist_ServingSS]

DROP CONSTRAINT [PK_H_Hist_ServingSS];

ALTER TABLE [H_Hist_ServingSS] ADD CONSTRAINT [PK_H_Hist_ServingSS] PRIMARY KEY CLUSTERED (H_HistSSId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_Hist_ServingSS_LocationCd') BEGIN  Drop INDEX [IX_H_Hist_ServingSS_LocationCd] on [H_Hist_ServingSS]; END */

CREATE NONCLUSTERED INDEX [IX_H_Hist_ServingSS_LocationCd] ON [H_Hist_ServingSS] (LocationCd ASC)

ALTER TABLE [H_Housing]

DROP CONSTRAINT [PK_H_Housing];

ALTER TABLE [H_Housing] ADD CONSTRAINT [PK_H_Housing] PRIMARY KEY CLUSTERED (H_HousingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_Housing_LocationCd') BEGIN  Drop INDEX [IX_H_Housing_LocationCd] on [H_Housing]; END */

CREATE NONCLUSTERED INDEX [IX_H_Housing_LocationCd] ON [H_Housing] (LocationCd ASC)

ALTER TABLE [H_HousingCountLocations]

DROP CONSTRAINT [PK_H_HousingCountLocations];

ALTER TABLE [H_HousingCountLocations] ADD CONSTRAINT [PK_H_HousingCountLocations] PRIMARY KEY CLUSTERED (H_HousingCountLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_HousingCountLocations_LocationCd') BEGIN  Drop INDEX [IX_H_HousingCountLocations_LocationCd] on [H_HousingCountLocations]; END */

CREATE NONCLUSTERED INDEX [IX_H_HousingCountLocations_LocationCd] ON [H_HousingCountLocations] (LocationCd ASC)

ALTER TABLE [H_HousingCountOffenders]

DROP CONSTRAINT [PK_H_HousingCountOffenders];

ALTER TABLE [H_HousingCountOffenders] ADD CONSTRAINT [PK_H_HousingCountOffenders] PRIMARY KEY CLUSTERED (H_HousingCountOffenderId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_HousingCountOffenders_LocationCd') BEGIN  Drop INDEX [IX_H_HousingCountOffenders_LocationCd] on [H_HousingCountOffenders]; END */

CREATE NONCLUSTERED INDEX [IX_H_HousingCountOffenders_LocationCd] ON [H_HousingCountOffenders] (LocationCd ASC)

ALTER TABLE [H_HousingCounts]

DROP CONSTRAINT [PK_H_HousingCounts];

ALTER TABLE [H_HousingCounts] ADD CONSTRAINT [PK_H_HousingCounts] PRIMARY KEY CLUSTERED (H_HousingCountId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_HousingCounts_LocationCd') BEGIN  Drop INDEX [IX_H_HousingCounts_LocationCd] on [H_HousingCounts]; END */

CREATE NONCLUSTERED INDEX [IX_H_HousingCounts_LocationCd] ON [H_HousingCounts] (LocationCd ASC)

ALTER TABLE [H_Hruwt]

DROP CONSTRAINT [PK_H_Hruwt];

ALTER TABLE [H_Hruwt] ADD CONSTRAINT [PK_H_Hruwt] PRIMARY KEY CLUSTERED (H_HruwtId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_Hruwt_LocationCd') BEGIN  Drop INDEX [IX_H_Hruwt_LocationCd] on [H_Hruwt]; END */

CREATE NONCLUSTERED INDEX [IX_H_Hruwt_LocationCd] ON [H_Hruwt] (LocationCd ASC)

ALTER TABLE [H_HruwtCurfews]

DROP CONSTRAINT [PK_H_HruwtCurfews];

ALTER TABLE [H_HruwtCurfews] ADD CONSTRAINT [PK_H_HruwtCurfews] PRIMARY KEY CLUSTERED (H_HruwtCurfewId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_HruwtCurfews_LocationCd') BEGIN  Drop INDEX [IX_H_HruwtCurfews_LocationCd] on [H_HruwtCurfews]; END */

CREATE NONCLUSTERED INDEX [IX_H_HruwtCurfews_LocationCd] ON [H_HruwtCurfews] (LocationCd ASC)

ALTER TABLE [H_HruwtProgramManagers]

DROP CONSTRAINT [PK_H_HruwtProgramManagers];

ALTER TABLE [H_HruwtProgramManagers] ADD CONSTRAINT [PK_H_HruwtProgramManagers] PRIMARY KEY CLUSTERED (H_HruwtProgramManagerId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_HruwtProgramManagers_LocationCd') BEGIN  Drop INDEX [IX_H_HruwtProgramManagers_LocationCd] on [H_HruwtProgramManagers]; END */

CREATE NONCLUSTERED INDEX [IX_H_HruwtProgramManagers_LocationCd] ON [H_HruwtProgramManagers] (LocationCd ASC)

ALTER TABLE [H_ICIS_COURT_ORDER_REQUESTS]

DROP CONSTRAINT [PK_H_ICIS_COURT_ORDER_REQUESTS];

ALTER TABLE [H_ICIS_COURT_ORDER_REQUESTS] ADD CONSTRAINT [PK_H_ICIS_COURT_ORDER_REQUESTS] PRIMARY KEY CLUSTERED (H_ICIS_COURT_ORDER_REQUEST_ID ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ICIS_COURT_ORDER_REQUESTS_LocationCd') BEGIN  Drop INDEX [IX_H_ICIS_COURT_ORDER_REQUESTS_LocationCd] on [H_ICIS_COURT_ORDER_REQUESTS]; END */

CREATE NONCLUSTERED INDEX [IX_H_ICIS_COURT_ORDER_REQUESTS_LocationCd] ON [H_ICIS_COURT_ORDER_REQUESTS] (LocationCd ASC)

ALTER TABLE [H_ICIS_COURT_ORDER_REQUESTS_SYSTEM_REJECTED]

DROP CONSTRAINT [PK_H_ICIS_COURT_ORDER_REQUESTS_SYSTEM_REJECTED];

ALTER TABLE [H_ICIS_COURT_ORDER_REQUESTS_SYSTEM_REJECTED] ADD CONSTRAINT [PK_H_ICIS_COURT_ORDER_REQUESTS_SYSTEM_REJECTED] PRIMARY KEY CLUSTERED (H_ICIS_COURT_ORDER_REQUEST_SYSTEM_REJECTED_ID ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ICIS_COURT_ORDER_REQUESTS_SYSTEM_REJECTED_LocationCd') BEGIN  Drop INDEX [IX_H_ICIS_COURT_ORDER_REQUESTS_SYSTEM_REJECTED_LocationCd] on [H_ICIS_COURT_ORDER_REQUESTS_SYSTEM_REJECTED]; END */

CREATE NONCLUSTERED INDEX [IX_H_ICIS_COURT_ORDER_REQUESTS_SYSTEM_REJECTED_LocationCd] ON [H_ICIS_COURT_ORDER_REQUESTS_SYSTEM_REJECTED] (LocationCd ASC)

ALTER TABLE [H_ICIS_DOC_ORIGINATED_ADDENDUMS]

DROP CONSTRAINT [PK_H_ICIS_DOC_ORIGINATED_ADDENDUMS];

ALTER TABLE [H_ICIS_DOC_ORIGINATED_ADDENDUMS] ADD CONSTRAINT [PK_H_ICIS_DOC_ORIGINATED_ADDENDUMS] PRIMARY KEY CLUSTERED (H_ICIS_DOC_ORIGINATED_ADDENDUM_ID ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ICIS_DOC_ORIGINATED_ADDENDUMS_LocationCd') BEGIN  Drop INDEX [IX_H_ICIS_DOC_ORIGINATED_ADDENDUMS_LocationCd] on [H_ICIS_DOC_ORIGINATED_ADDENDUMS]; END */

CREATE NONCLUSTERED INDEX [IX_H_ICIS_DOC_ORIGINATED_ADDENDUMS_LocationCd] ON [H_ICIS_DOC_ORIGINATED_ADDENDUMS] (LocationCd ASC)

ALTER TABLE [H_ICIS_PSI_REQUEST]

DROP CONSTRAINT [PK_H_ICIS_PSI_REQUEST_1];

ALTER TABLE [H_ICIS_PSI_REQUEST] ADD CONSTRAINT [PK_H_ICIS_PSI_REQUEST_1] PRIMARY KEY CLUSTERED (H_ICIS_PSI_REQUEST_ID ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ICIS_PSI_REQUEST_LocationCd') BEGIN  Drop INDEX [IX_H_ICIS_PSI_REQUEST_LocationCd] on [H_ICIS_PSI_REQUEST]; END */

CREATE NONCLUSTERED INDEX [IX_H_ICIS_PSI_REQUEST_LocationCd] ON [H_ICIS_PSI_REQUEST] (LocationCd ASC)

ALTER TABLE [H_IcssConfidentialityReasons]

DROP CONSTRAINT [PK_H_IcssConfidentialityReasons];

ALTER TABLE [H_IcssConfidentialityReasons] ADD CONSTRAINT [PK_H_IcssConfidentialityReasons] PRIMARY KEY CLUSTERED (H_IcssConfidentialityReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_IcssConfidentialityReasons_LocationCd') BEGIN  Drop INDEX [IX_H_IcssConfidentialityReasons_LocationCd] on [H_IcssConfidentialityReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_IcssConfidentialityReasons_LocationCd] ON [H_IcssConfidentialityReasons] (LocationCd ASC)

ALTER TABLE [H_IcssCorroboratingTypes]

DROP CONSTRAINT [PK_H_IcssCorroboratingTypes];

ALTER TABLE [H_IcssCorroboratingTypes] ADD CONSTRAINT [PK_H_IcssCorroboratingTypes] PRIMARY KEY CLUSTERED (H_IcssCorroboratingTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_IcssCorroboratingTypes_LocationCd') BEGIN  Drop INDEX [IX_H_IcssCorroboratingTypes_LocationCd] on [H_IcssCorroboratingTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_IcssCorroboratingTypes_LocationCd] ON [H_IcssCorroboratingTypes] (LocationCd ASC)

ALTER TABLE [H_IcssReliableReasons]

DROP CONSTRAINT [PK_H_IcssReliableReasons];

ALTER TABLE [H_IcssReliableReasons] ADD CONSTRAINT [PK_H_IcssReliableReasons] PRIMARY KEY CLUSTERED (H_IcssReliableReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_IcssReliableReasons_LocationCd') BEGIN  Drop INDEX [IX_H_IcssReliableReasons_LocationCd] on [H_IcssReliableReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_IcssReliableReasons_LocationCd] ON [H_IcssReliableReasons] (LocationCd ASC)

ALTER TABLE [H_IncomeReporting]

DROP CONSTRAINT [PK_H_IncomeReporting];

ALTER TABLE [H_IncomeReporting] ADD CONSTRAINT [PK_H_IncomeReporting] PRIMARY KEY CLUSTERED (H_IncomeReportingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_IncomeReporting_LocationCd') BEGIN  Drop INDEX [IX_H_IncomeReporting_LocationCd] on [H_IncomeReporting]; END */

CREATE NONCLUSTERED INDEX [IX_H_IncomeReporting_LocationCd] ON [H_IncomeReporting] (LocationCd ASC)

ALTER TABLE [H_InstitutionalInsOuts]

DROP CONSTRAINT [PK_H_InstitutionalInsOuts];

ALTER TABLE [H_InstitutionalInsOuts] ADD CONSTRAINT [PK_H_InstitutionalInsOuts] PRIMARY KEY CLUSTERED (H_InstitutionalInsOutsId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_InstitutionalInsOuts_LocationCd') BEGIN  Drop INDEX [IX_H_InstitutionalInsOuts_LocationCd] on [H_InstitutionalInsOuts]; END */

CREATE NONCLUSTERED INDEX [IX_H_InstitutionalInsOuts_LocationCd] ON [H_InstitutionalInsOuts] (LocationCd ASC)

ALTER TABLE [H_InstitutionAllegedRuleViolations]

DROP CONSTRAINT [PK_H_InstitutionAllegedRuleViolations];

ALTER TABLE [H_InstitutionAllegedRuleViolations] ADD CONSTRAINT [PK_H_InstitutionAllegedRuleViolations] PRIMARY KEY CLUSTERED (H_InstitutionAllegedRuleViolationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_InstitutionAllegedRuleViolations_LocationCd') BEGIN  Drop INDEX [IX_H_InstitutionAllegedRuleViolations_LocationCd] on [H_InstitutionAllegedRuleViolations]; END */

CREATE NONCLUSTERED INDEX [IX_H_InstitutionAllegedRuleViolations_LocationCd] ON [H_InstitutionAllegedRuleViolations] (LocationCd ASC)

ALTER TABLE [H_InstitutionAppealReasons]

DROP CONSTRAINT [PK_H_InstitutionAppealReasons];

ALTER TABLE [H_InstitutionAppealReasons] ADD CONSTRAINT [PK_H_InstitutionAppealReasons] PRIMARY KEY CLUSTERED (H_InstitutionAppealReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_InstitutionAppealReasons_LocationCd') BEGIN  Drop INDEX [IX_H_InstitutionAppealReasons_LocationCd] on [H_InstitutionAppealReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_InstitutionAppealReasons_LocationCd] ON [H_InstitutionAppealReasons] (LocationCd ASC)

ALTER TABLE [H_InstitutionAppealReports]

DROP CONSTRAINT [PK_H_InstitutionAppealReports];

ALTER TABLE [H_InstitutionAppealReports] ADD CONSTRAINT [PK_H_InstitutionAppealReports] PRIMARY KEY CLUSTERED (H_InstitutionAppealReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_InstitutionAppealReports_LocationCd') BEGIN  Drop INDEX [IX_H_InstitutionAppealReports_LocationCd] on [H_InstitutionAppealReports]; END */

CREATE NONCLUSTERED INDEX [IX_H_InstitutionAppealReports_LocationCd] ON [H_InstitutionAppealReports] (LocationCd ASC)

ALTER TABLE [H_InstitutionAppeals]

DROP CONSTRAINT [PK_H_InstitutionAppeals];

ALTER TABLE [H_InstitutionAppeals] ADD CONSTRAINT [PK_H_InstitutionAppeals] PRIMARY KEY CLUSTERED (H_InstitutionAppealId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_InstitutionAppeals_LocationCd') BEGIN  Drop INDEX [IX_H_InstitutionAppeals_LocationCd] on [H_InstitutionAppeals]; END */

CREATE NONCLUSTERED INDEX [IX_H_InstitutionAppeals_LocationCd] ON [H_InstitutionAppeals] (LocationCd ASC)

ALTER TABLE [H_InstitutionCasePlans]

DROP CONSTRAINT [PK_H_InstitutionCasePlans];

ALTER TABLE [H_InstitutionCasePlans] ADD CONSTRAINT [PK_H_InstitutionCasePlans] PRIMARY KEY CLUSTERED (H_InstitutionCasePlanId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_InstitutionCasePlans_LocationCd') BEGIN  Drop INDEX [IX_H_InstitutionCasePlans_LocationCd] on [H_InstitutionCasePlans]; END */

CREATE NONCLUSTERED INDEX [IX_H_InstitutionCasePlans_LocationCd] ON [H_InstitutionCasePlans] (LocationCd ASC)

ALTER TABLE [H_InstitutionConfidentialStatementSummaries]

DROP CONSTRAINT [PK_H_InstitutionConfidentialStatementSummaries];

ALTER TABLE [H_InstitutionConfidentialStatementSummaries] ADD CONSTRAINT [PK_H_InstitutionConfidentialStatementSummaries] PRIMARY KEY CLUSTERED (H_InstitutionConfidentialStatementSummaryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_InstitutionConfidentialStatementSummaries_LocationCd') BEGIN  Drop INDEX [IX_H_InstitutionConfidentialStatementSummaries_LocationCd] on [H_InstitutionConfidentialStatementSummaries]; END */

CREATE NONCLUSTERED INDEX [IX_H_InstitutionConfidentialStatementSummaries_LocationCd] ON [H_InstitutionConfidentialStatementSummaries] (LocationCd ASC)

ALTER TABLE [H_InstitutionDisciplinaryNoticeReports]

DROP CONSTRAINT [PK_H_InstitutionDisciplinaryNoticeReports];

ALTER TABLE [H_InstitutionDisciplinaryNoticeReports] ADD CONSTRAINT [PK_H_InstitutionDisciplinaryNoticeReports] PRIMARY KEY CLUSTERED (H_InstitutionDisciplinaryNoticeReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_InstitutionDisciplinaryNoticeReports_LocationCd') BEGIN  Drop INDEX [IX_H_InstitutionDisciplinaryNoticeReports_LocationCd] on [H_InstitutionDisciplinaryNoticeReports]; END */

CREATE NONCLUSTERED INDEX [IX_H_InstitutionDisciplinaryNoticeReports_LocationCd] ON [H_InstitutionDisciplinaryNoticeReports] (LocationCd ASC)

ALTER TABLE [H_InstitutionDisciplinaryNotices]

DROP CONSTRAINT [PK_H_InstitutionDisciplinaryNotices];

ALTER TABLE [H_InstitutionDisciplinaryNotices] ADD CONSTRAINT [PK_H_InstitutionDisciplinaryNotices] PRIMARY KEY CLUSTERED (H_InstitutionDisciplinaryNoticeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_InstitutionDisciplinaryNotices_LocationCd') BEGIN  Drop INDEX [IX_H_InstitutionDisciplinaryNotices_LocationCd] on [H_InstitutionDisciplinaryNotices]; END */

CREATE NONCLUSTERED INDEX [IX_H_InstitutionDisciplinaryNotices_LocationCd] ON [H_InstitutionDisciplinaryNotices] (LocationCd ASC)

ALTER TABLE [H_InstitutionHearingDisciplinaryNotices]

DROP CONSTRAINT [PK_H_InstitutionHearingDisciplinaryNotices];

ALTER TABLE [H_InstitutionHearingDisciplinaryNotices] ADD CONSTRAINT [PK_H_InstitutionHearingDisciplinaryNotices] PRIMARY KEY CLUSTERED (H_InstitutionHearingDisciplinaryNoticeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_InstitutionHearingDisciplinaryNotices_LocationCd') BEGIN  Drop INDEX [IX_H_InstitutionHearingDisciplinaryNotices_LocationCd] on [H_InstitutionHearingDisciplinaryNotices]; END */

CREATE NONCLUSTERED INDEX [IX_H_InstitutionHearingDisciplinaryNotices_LocationCd] ON [H_InstitutionHearingDisciplinaryNotices] (LocationCd ASC)

ALTER TABLE [H_InstitutionHearingReports]

DROP CONSTRAINT [PK_H_InstitutionHearingReports];

ALTER TABLE [H_InstitutionHearingReports] ADD CONSTRAINT [PK_H_InstitutionHearingReports] PRIMARY KEY CLUSTERED (H_InstitutionHearingReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_InstitutionHearingReports_LocationCd') BEGIN  Drop INDEX [IX_H_InstitutionHearingReports_LocationCd] on [H_InstitutionHearingReports]; END */

CREATE NONCLUSTERED INDEX [IX_H_InstitutionHearingReports_LocationCd] ON [H_InstitutionHearingReports] (LocationCd ASC)

ALTER TABLE [H_InstitutionHearings]

DROP CONSTRAINT [PK_H_InstitutionHearings];

ALTER TABLE [H_InstitutionHearings] ADD CONSTRAINT [PK_H_InstitutionHearings] PRIMARY KEY CLUSTERED (H_InstitutionHearingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_InstitutionHearings_LocationCd') BEGIN  Drop INDEX [IX_H_InstitutionHearings_LocationCd] on [H_InstitutionHearings]; END */

CREATE NONCLUSTERED INDEX [IX_H_InstitutionHearings_LocationCd] ON [H_InstitutionHearings] (LocationCd ASC)

ALTER TABLE [H_InstitutionInvestigationReports]

DROP CONSTRAINT [PK_H_InstitutionInvestigationReports];

ALTER TABLE [H_InstitutionInvestigationReports] ADD CONSTRAINT [PK_H_InstitutionInvestigationReports] PRIMARY KEY CLUSTERED (H_InstitutionInvestigationReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_InstitutionInvestigationReports_LocationCd') BEGIN  Drop INDEX [IX_H_InstitutionInvestigationReports_LocationCd] on [H_InstitutionInvestigationReports]; END */

CREATE NONCLUSTERED INDEX [IX_H_InstitutionInvestigationReports_LocationCd] ON [H_InstitutionInvestigationReports] (LocationCd ASC)

ALTER TABLE [H_InstitutionInvestigations]

DROP CONSTRAINT [PK_H_InstitutionInvestigations];

ALTER TABLE [H_InstitutionInvestigations] ADD CONSTRAINT [PK_H_InstitutionInvestigations] PRIMARY KEY CLUSTERED (H_InstitutionInvestigationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_InstitutionInvestigations_LocationCd') BEGIN  Drop INDEX [IX_H_InstitutionInvestigations_LocationCd] on [H_InstitutionInvestigations]; END */

CREATE NONCLUSTERED INDEX [IX_H_InstitutionInvestigations_LocationCd] ON [H_InstitutionInvestigations] (LocationCd ASC)

ALTER TABLE [H_InstitutionRuleViolations]

DROP CONSTRAINT [PK_H_InstitutionRuleViolations];

ALTER TABLE [H_InstitutionRuleViolations] ADD CONSTRAINT [PK_H_InstitutionRuleViolations] PRIMARY KEY CLUSTERED (H_InstitutionRuleViolationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_InstitutionRuleViolations_LocationCd') BEGIN  Drop INDEX [IX_H_InstitutionRuleViolations_LocationCd] on [H_InstitutionRuleViolations]; END */

CREATE NONCLUSTERED INDEX [IX_H_InstitutionRuleViolations_LocationCd] ON [H_InstitutionRuleViolations] (LocationCd ASC)

ALTER TABLE [H_InstitutionSanctions]

DROP CONSTRAINT [PK_H_InstitutionSanctions];

ALTER TABLE [H_InstitutionSanctions] ADD CONSTRAINT [PK_H_InstitutionSanctions] PRIMARY KEY CLUSTERED (H_InstitutionSanctionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_InstitutionSanctions_LocationCd') BEGIN  Drop INDEX [IX_H_InstitutionSanctions_LocationCd] on [H_InstitutionSanctions]; END */

CREATE NONCLUSTERED INDEX [IX_H_InstitutionSanctions_LocationCd] ON [H_InstitutionSanctions] (LocationCd ASC)

ALTER TABLE [H_InterstateCompactIn]

DROP CONSTRAINT [PK_H_InterstateCompactIn];

ALTER TABLE [H_InterstateCompactIn] ADD CONSTRAINT [PK_H_InterstateCompactIn] PRIMARY KEY CLUSTERED (H_InterstateCompactInId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_InterstateCompactIn_LocationCd') BEGIN  Drop INDEX [IX_H_InterstateCompactIn_LocationCd] on [H_InterstateCompactIn]; END */

CREATE NONCLUSTERED INDEX [IX_H_InterstateCompactIn_LocationCd] ON [H_InterstateCompactIn] (LocationCd ASC)

ALTER TABLE [H_InterstateCompactOut]

DROP CONSTRAINT [PK_H_InterstateCompactOut];

ALTER TABLE [H_InterstateCompactOut] ADD CONSTRAINT [PK_H_InterstateCompactOut] PRIMARY KEY CLUSTERED (H_InterstateCompactOutId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_InterstateCompactOut_LocationCd') BEGIN  Drop INDEX [IX_H_InterstateCompactOut_LocationCd] on [H_InterstateCompactOut]; END */

CREATE NONCLUSTERED INDEX [IX_H_InterstateCompactOut_LocationCd] ON [H_InterstateCompactOut] (LocationCd ASC)

ALTER TABLE [H_InterventionAssessments]

DROP CONSTRAINT [PK_H_InterventionAssessments];

ALTER TABLE [H_InterventionAssessments] ADD CONSTRAINT [PK_H_InterventionAssessments] PRIMARY KEY CLUSTERED (H_InterventionAssessmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_InterventionAssessments_LocationCd') BEGIN  Drop INDEX [IX_H_InterventionAssessments_LocationCd] on [H_InterventionAssessments]; END */

CREATE NONCLUSTERED INDEX [IX_H_InterventionAssessments_LocationCd] ON [H_InterventionAssessments] (LocationCd ASC)

ALTER TABLE [H_InterventionsInitiatedReasons]

DROP CONSTRAINT [PK_H_InterventionsInitiatedReasons];

ALTER TABLE [H_InterventionsInitiatedReasons] ADD CONSTRAINT [PK_H_InterventionsInitiatedReasons] PRIMARY KEY CLUSTERED (H_InterventionsInitiatedReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_InterventionsInitiatedReasons_LocationCd') BEGIN  Drop INDEX [IX_H_InterventionsInitiatedReasons_LocationCd] on [H_InterventionsInitiatedReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_InterventionsInitiatedReasons_LocationCd] ON [H_InterventionsInitiatedReasons] (LocationCd ASC)

ALTER TABLE [H_KeepSeparates]

DROP CONSTRAINT [PK_H_KeepSeparates];

ALTER TABLE [H_KeepSeparates] ADD CONSTRAINT [PK_H_KeepSeparates] PRIMARY KEY CLUSTERED (H_KeepSeparateId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_KeepSeparates_LocationCd') BEGIN  Drop INDEX [IX_H_KeepSeparates_LocationCd] on [H_KeepSeparates]; END */

CREATE NONCLUSTERED INDEX [IX_H_KeepSeparates_LocationCd] ON [H_KeepSeparates] (LocationCd ASC)

ALTER TABLE [H_KioskAnnouncements]

DROP CONSTRAINT [PK_H_KioskAnnouncements];

ALTER TABLE [H_KioskAnnouncements] ADD CONSTRAINT [PK_H_KioskAnnouncements] PRIMARY KEY CLUSTERED (H_KioskAnnouncementId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_KioskAnnouncements_LocationCd') BEGIN  Drop INDEX [IX_H_KioskAnnouncements_LocationCd] on [H_KioskAnnouncements]; END */

CREATE NONCLUSTERED INDEX [IX_H_KioskAnnouncements_LocationCd] ON [H_KioskAnnouncements] (LocationCd ASC)

ALTER TABLE [H_KioskFurloughApplicationPlans]

DROP CONSTRAINT [PK_H_KioskFurloughApplicationPlans];

ALTER TABLE [H_KioskFurloughApplicationPlans] ADD CONSTRAINT [PK_H_KioskFurloughApplicationPlans] PRIMARY KEY CLUSTERED (H_KioskFurloughApplicationPlanId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_KioskFurloughApplicationPlans_LocationCd') BEGIN  Drop INDEX [IX_H_KioskFurloughApplicationPlans_LocationCd] on [H_KioskFurloughApplicationPlans]; END */

CREATE NONCLUSTERED INDEX [IX_H_KioskFurloughApplicationPlans_LocationCd] ON [H_KioskFurloughApplicationPlans] (LocationCd ASC)

ALTER TABLE [H_KioskFurloughApplicationProcessing]

DROP CONSTRAINT [PK_H_KioskFurloughApplicationProcessing];

ALTER TABLE [H_KioskFurloughApplicationProcessing] ADD CONSTRAINT [PK_H_KioskFurloughApplicationProcessing] PRIMARY KEY CLUSTERED (H_KioskFurloughApplicationProcessingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_KioskFurloughApplicationProcessing_LocationCd') BEGIN  Drop INDEX [IX_H_KioskFurloughApplicationProcessing_LocationCd] on [H_KioskFurloughApplicationProcessing]; END */

CREATE NONCLUSTERED INDEX [IX_H_KioskFurloughApplicationProcessing_LocationCd] ON [H_KioskFurloughApplicationProcessing] (LocationCd ASC)

ALTER TABLE [H_KioskFurloughApplications]

DROP CONSTRAINT [PK_H_KioskFurloughApplications];

ALTER TABLE [H_KioskFurloughApplications] ADD CONSTRAINT [PK_H_KioskFurloughApplications] PRIMARY KEY CLUSTERED (H_KioskFurloughApplicationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_KioskFurloughApplications_LocationCd') BEGIN  Drop INDEX [IX_H_KioskFurloughApplications_LocationCd] on [H_KioskFurloughApplications]; END */

CREATE NONCLUSTERED INDEX [IX_H_KioskFurloughApplications_LocationCd] ON [H_KioskFurloughApplications] (LocationCd ASC)

ALTER TABLE [H_KioskMessageConversations]

DROP CONSTRAINT [PK_H_KioskMessageConversations];

ALTER TABLE [H_KioskMessageConversations] ADD CONSTRAINT [PK_H_KioskMessageConversations] PRIMARY KEY CLUSTERED (H_KioskMessageConversationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_KioskMessageConversations_LocationCd') BEGIN  Drop INDEX [IX_H_KioskMessageConversations_LocationCd] on [H_KioskMessageConversations]; END */

CREATE NONCLUSTERED INDEX [IX_H_KioskMessageConversations_LocationCd] ON [H_KioskMessageConversations] (LocationCd ASC)

ALTER TABLE [H_KioskMessages]

DROP CONSTRAINT [PK_H_KioskMessages];

ALTER TABLE [H_KioskMessages] ADD CONSTRAINT [PK_H_KioskMessages] PRIMARY KEY CLUSTERED (H_KioskMessageId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_KioskMessages_LocationCd') BEGIN  Drop INDEX [IX_H_KioskMessages_LocationCd] on [H_KioskMessages]; END */

CREATE NONCLUSTERED INDEX [IX_H_KioskMessages_LocationCd] ON [H_KioskMessages] (LocationCd ASC)

ALTER TABLE [H_KioskMonthlyReportEmployment]

DROP CONSTRAINT [PK_H_KioskMonthlyReportEmployment];

ALTER TABLE [H_KioskMonthlyReportEmployment] ADD CONSTRAINT [PK_H_KioskMonthlyReportEmployment] PRIMARY KEY CLUSTERED (H_KioskMonthlyReportEmploymentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_KioskMonthlyReportEmployment_LocationCd') BEGIN  Drop INDEX [IX_H_KioskMonthlyReportEmployment_LocationCd] on [H_KioskMonthlyReportEmployment]; END */

CREATE NONCLUSTERED INDEX [IX_H_KioskMonthlyReportEmployment_LocationCd] ON [H_KioskMonthlyReportEmployment] (LocationCd ASC)

ALTER TABLE [H_KioskMonthlyReportProcessing]

DROP CONSTRAINT [PK_H_KioskMonthlyReportProcessing];

ALTER TABLE [H_KioskMonthlyReportProcessing] ADD CONSTRAINT [PK_H_KioskMonthlyReportProcessing] PRIMARY KEY CLUSTERED (H_KioskMonthlyReportProcessingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_KioskMonthlyReportProcessing_LocationCd') BEGIN  Drop INDEX [IX_H_KioskMonthlyReportProcessing_LocationCd] on [H_KioskMonthlyReportProcessing]; END */

CREATE NONCLUSTERED INDEX [IX_H_KioskMonthlyReportProcessing_LocationCd] ON [H_KioskMonthlyReportProcessing] (LocationCd ASC)

ALTER TABLE [H_KioskMonthlyReports]

DROP CONSTRAINT [PK_H_KioskMonthlyReports];

ALTER TABLE [H_KioskMonthlyReports] ADD CONSTRAINT [PK_H_KioskMonthlyReports] PRIMARY KEY CLUSTERED (H_KioskMonthlyReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_KioskMonthlyReports_LocationCd') BEGIN  Drop INDEX [IX_H_KioskMonthlyReports_LocationCd] on [H_KioskMonthlyReports]; END */

CREATE NONCLUSTERED INDEX [IX_H_KioskMonthlyReports_LocationCd] ON [H_KioskMonthlyReports] (LocationCd ASC)

ALTER TABLE [H_KioskPassApplicationPlans]

DROP CONSTRAINT [PK_H_KioskPassApplicationPlans];

ALTER TABLE [H_KioskPassApplicationPlans] ADD CONSTRAINT [PK_H_KioskPassApplicationPlans] PRIMARY KEY CLUSTERED (H_KioskPassApplicationPlanId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_KioskPassApplicationPlans_LocationCd') BEGIN  Drop INDEX [IX_H_KioskPassApplicationPlans_LocationCd] on [H_KioskPassApplicationPlans]; END */

CREATE NONCLUSTERED INDEX [IX_H_KioskPassApplicationPlans_LocationCd] ON [H_KioskPassApplicationPlans] (LocationCd ASC)

ALTER TABLE [H_KioskPassApplicationProcessing]

DROP CONSTRAINT [PK_H_KioskPassApplicationProcessing];

ALTER TABLE [H_KioskPassApplicationProcessing] ADD CONSTRAINT [PK_H_KioskPassApplicationProcessing] PRIMARY KEY CLUSTERED (H_KioskPassApplicationProcessingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_KioskPassApplicationProcessing_LocationCd') BEGIN  Drop INDEX [IX_H_KioskPassApplicationProcessing_LocationCd] on [H_KioskPassApplicationProcessing]; END */

CREATE NONCLUSTERED INDEX [IX_H_KioskPassApplicationProcessing_LocationCd] ON [H_KioskPassApplicationProcessing] (LocationCd ASC)

ALTER TABLE [H_KioskPassApplications]

DROP CONSTRAINT [PK_H_KioskPassApplications];

ALTER TABLE [H_KioskPassApplications] ADD CONSTRAINT [PK_H_KioskPassApplications] PRIMARY KEY CLUSTERED (H_KioskPassApplicationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_KioskPassApplications_LocationCd') BEGIN  Drop INDEX [IX_H_KioskPassApplications_LocationCd] on [H_KioskPassApplications]; END */

CREATE NONCLUSTERED INDEX [IX_H_KioskPassApplications_LocationCd] ON [H_KioskPassApplications] (LocationCd ASC)

ALTER TABLE [H_KioskStaffAuthorizations]

DROP CONSTRAINT [PK_H_KioskStaffAuthorizations];

ALTER TABLE [H_KioskStaffAuthorizations] ADD CONSTRAINT [PK_H_KioskStaffAuthorizations] PRIMARY KEY CLUSTERED (H_KioskStaffAuthorizationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_KioskStaffAuthorizations_LocationCd') BEGIN  Drop INDEX [IX_H_KioskStaffAuthorizations_LocationCd] on [H_KioskStaffAuthorizations]; END */

CREATE NONCLUSTERED INDEX [IX_H_KioskStaffAuthorizations_LocationCd] ON [H_KioskStaffAuthorizations] (LocationCd ASC)

ALTER TABLE [H_KioskTravelRequestProcessing]

DROP CONSTRAINT [PK_H_KioskTravelRequestProcessing];

ALTER TABLE [H_KioskTravelRequestProcessing] ADD CONSTRAINT [PK_H_KioskTravelRequestProcessing] PRIMARY KEY CLUSTERED (H_KioskTravelRequestProcessingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_KioskTravelRequestProcessing_LocationCd') BEGIN  Drop INDEX [IX_H_KioskTravelRequestProcessing_LocationCd] on [H_KioskTravelRequestProcessing]; END */

CREATE NONCLUSTERED INDEX [IX_H_KioskTravelRequestProcessing_LocationCd] ON [H_KioskTravelRequestProcessing] (LocationCd ASC)

ALTER TABLE [H_KioskTravelRequests]

DROP CONSTRAINT [PK_H_KioskTravelRequests];

ALTER TABLE [H_KioskTravelRequests] ADD CONSTRAINT [PK_H_KioskTravelRequests] PRIMARY KEY CLUSTERED (H_KioskTravelRequestId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_KioskTravelRequests_LocationCd') BEGIN  Drop INDEX [IX_H_KioskTravelRequests_LocationCd] on [H_KioskTravelRequests]; END */

CREATE NONCLUSTERED INDEX [IX_H_KioskTravelRequests_LocationCd] ON [H_KioskTravelRequests] (LocationCd ASC)

ALTER TABLE [H_LawEnforcementNotificationReports]

DROP CONSTRAINT [PK_H_LawEnforcementNotificationReports];

ALTER TABLE [H_LawEnforcementNotificationReports] ADD CONSTRAINT [PK_H_LawEnforcementNotificationReports] PRIMARY KEY CLUSTERED (H_LawEnforcementNotificationReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_LawEnforcementNotificationReports_LocationCd') BEGIN  Drop INDEX [IX_H_LawEnforcementNotificationReports_LocationCd] on [H_LawEnforcementNotificationReports]; END */

CREATE NONCLUSTERED INDEX [IX_H_LawEnforcementNotificationReports_LocationCd] ON [H_LawEnforcementNotificationReports] (LocationCd ASC)

ALTER TABLE [H_LocationScans]

DROP CONSTRAINT [PK_H_LocationScans];

ALTER TABLE [H_LocationScans] ADD CONSTRAINT [PK_H_LocationScans] PRIMARY KEY CLUSTERED (H_LocationScanId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_LocationScans_LocationCd') BEGIN  Drop INDEX [IX_H_LocationScans_LocationCd] on [H_LocationScans]; END */

CREATE NONCLUSTERED INDEX [IX_H_LocationScans_LocationCd] ON [H_LocationScans] (LocationCd ASC)

ALTER TABLE [H_LouisTrainingAddresses]

DROP CONSTRAINT [PK_H_LouisTrainingAddresses];

ALTER TABLE [H_LouisTrainingAddresses] ADD CONSTRAINT [PK_H_LouisTrainingAddresses] PRIMARY KEY CLUSTERED (H_LouisTrainingAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_LouisTrainingAddresses_LocationCd') BEGIN  Drop INDEX [IX_H_LouisTrainingAddresses_LocationCd] on [H_LouisTrainingAddresses]; END */

CREATE NONCLUSTERED INDEX [IX_H_LouisTrainingAddresses_LocationCd] ON [H_LouisTrainingAddresses] (LocationCd ASC)

ALTER TABLE [H_LouisTrainingAddressPhones]

DROP CONSTRAINT [PK_H_LouisTrainingAddressPhones];

ALTER TABLE [H_LouisTrainingAddressPhones] ADD CONSTRAINT [PK_H_LouisTrainingAddressPhones] PRIMARY KEY CLUSTERED (H_LouisTrainingAddressPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_LouisTrainingAddressPhones_LocationCd') BEGIN  Drop INDEX [IX_H_LouisTrainingAddressPhones_LocationCd] on [H_LouisTrainingAddressPhones]; END */

CREATE NONCLUSTERED INDEX [IX_H_LouisTrainingAddressPhones_LocationCd] ON [H_LouisTrainingAddressPhones] (LocationCd ASC)

ALTER TABLE [H_MedicalMentalHealthStatus]

DROP CONSTRAINT [PK_H_MedicalMentalHealthStatus];

ALTER TABLE [H_MedicalMentalHealthStatus] ADD CONSTRAINT [PK_H_MedicalMentalHealthStatus] PRIMARY KEY CLUSTERED (H_MedicalMentalHealthStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_MedicalMentalHealthStatus_LocationCd') BEGIN  Drop INDEX [IX_H_MedicalMentalHealthStatus_LocationCd] on [H_MedicalMentalHealthStatus]; END */

CREATE NONCLUSTERED INDEX [IX_H_MedicalMentalHealthStatus_LocationCd] ON [H_MedicalMentalHealthStatus] (LocationCd ASC)

ALTER TABLE [H_MeganTrainingAddresses]

DROP CONSTRAINT [PK_H_MeganTrainingAddresses];

ALTER TABLE [H_MeganTrainingAddresses] ADD CONSTRAINT [PK_H_MeganTrainingAddresses] PRIMARY KEY CLUSTERED (H_TrainingAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_MeganTrainingAddresses_LocationCd') BEGIN  Drop INDEX [IX_H_MeganTrainingAddresses_LocationCd] on [H_MeganTrainingAddresses]; END */

CREATE NONCLUSTERED INDEX [IX_H_MeganTrainingAddresses_LocationCd] ON [H_MeganTrainingAddresses] (LocationCd ASC)

ALTER TABLE [H_MeganTrainingAddressPhones]

DROP CONSTRAINT [PK_H_MeganTrainingAddressPhones];

ALTER TABLE [H_MeganTrainingAddressPhones] ADD CONSTRAINT [PK_H_MeganTrainingAddressPhones] PRIMARY KEY CLUSTERED (H_TrainingAddressPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_MeganTrainingAddressPhones_LocationCd') BEGIN  Drop INDEX [IX_H_MeganTrainingAddressPhones_LocationCd] on [H_MeganTrainingAddressPhones]; END */

CREATE NONCLUSTERED INDEX [IX_H_MeganTrainingAddressPhones_LocationCd] ON [H_MeganTrainingAddressPhones] (LocationCd ASC)

ALTER TABLE [H_MikeTrainingAddresses]

DROP CONSTRAINT [PK_H_MikeTrainingAddresses];

ALTER TABLE [H_MikeTrainingAddresses] ADD CONSTRAINT [PK_H_MikeTrainingAddresses] PRIMARY KEY CLUSTERED (H_TrainingAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_MikeTrainingAddresses_LocationCd') BEGIN  Drop INDEX [IX_H_MikeTrainingAddresses_LocationCd] on [H_MikeTrainingAddresses]; END */

CREATE NONCLUSTERED INDEX [IX_H_MikeTrainingAddresses_LocationCd] ON [H_MikeTrainingAddresses] (LocationCd ASC)

ALTER TABLE [H_MikeTrainingAddressPhones]

DROP CONSTRAINT [PK_H_MikeTrainingAddressPhones];

ALTER TABLE [H_MikeTrainingAddressPhones] ADD CONSTRAINT [PK_H_MikeTrainingAddressPhones] PRIMARY KEY CLUSTERED (H_TrainingAddressPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_MikeTrainingAddressPhones_LocationCd') BEGIN  Drop INDEX [IX_H_MikeTrainingAddressPhones_LocationCd] on [H_MikeTrainingAddressPhones]; END */

CREATE NONCLUSTERED INDEX [IX_H_MikeTrainingAddressPhones_LocationCd] ON [H_MikeTrainingAddressPhones] (LocationCd ASC)

ALTER TABLE [H_MilitaryInformation]

DROP CONSTRAINT [PK_H_MilitaryInformation];

ALTER TABLE [H_MilitaryInformation] ADD CONSTRAINT [PK_H_MilitaryInformation] PRIMARY KEY CLUSTERED (H_MilitaryInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_MilitaryInformation_LocationCd') BEGIN  Drop INDEX [IX_H_MilitaryInformation_LocationCd] on [H_MilitaryInformation]; END */

CREATE NONCLUSTERED INDEX [IX_H_MilitaryInformation_LocationCd] ON [H_MilitaryInformation] (LocationCd ASC)

ALTER TABLE [H_MobileDevices]

DROP CONSTRAINT [PK_H_MobileDevices];

ALTER TABLE [H_MobileDevices] ADD CONSTRAINT [PK_H_MobileDevices] PRIMARY KEY CLUSTERED (H_MobileDeviceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_MobileDevices_LocationCd') BEGIN  Drop INDEX [IX_H_MobileDevices_LocationCd] on [H_MobileDevices]; END */

CREATE NONCLUSTERED INDEX [IX_H_MobileDevices_LocationCd] ON [H_MobileDevices] (LocationCd ASC)

ALTER TABLE [H_MonitoringPrograms]

DROP CONSTRAINT [PK_H_MonitoringPrograms];

ALTER TABLE [H_MonitoringPrograms] ADD CONSTRAINT [PK_H_MonitoringPrograms] PRIMARY KEY CLUSTERED (H_MonitoringProgramId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_MonitoringPrograms_LocationCd') BEGIN  Drop INDEX [IX_H_MonitoringPrograms_LocationCd] on [H_MonitoringPrograms]; END */

CREATE NONCLUSTERED INDEX [IX_H_MonitoringPrograms_LocationCd] ON [H_MonitoringPrograms] (LocationCd ASC)

ALTER TABLE [H_Movements]

DROP CONSTRAINT [PK_H_Movements];

ALTER TABLE [H_Movements] ADD CONSTRAINT [PK_H_Movements] PRIMARY KEY CLUSTERED (H_MovementId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_Movements_LocationCd') BEGIN  Drop INDEX [IX_H_Movements_LocationCd] on [H_Movements]; END */

CREATE NONCLUSTERED INDEX [IX_H_Movements_LocationCd] ON [H_Movements] (LocationCd ASC)

ALTER TABLE [H_MpCaseManagers]

DROP CONSTRAINT [PK_H_MpCaseManagers];

ALTER TABLE [H_MpCaseManagers] ADD CONSTRAINT [PK_H_MpCaseManagers] PRIMARY KEY CLUSTERED (H_MpCaseManagerId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_MpCaseManagers_LocationCd') BEGIN  Drop INDEX [IX_H_MpCaseManagers_LocationCd] on [H_MpCaseManagers]; END */

CREATE NONCLUSTERED INDEX [IX_H_MpCaseManagers_LocationCd] ON [H_MpCaseManagers] (LocationCd ASC)

ALTER TABLE [H_MpCharges]

DROP CONSTRAINT [PK_H_MpCharges];

ALTER TABLE [H_MpCharges] ADD CONSTRAINT [PK_H_MpCharges] PRIMARY KEY CLUSTERED (H_MpChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_MpCharges_LocationCd') BEGIN  Drop INDEX [IX_H_MpCharges_LocationCd] on [H_MpCharges]; END */

CREATE NONCLUSTERED INDEX [IX_H_MpCharges_LocationCd] ON [H_MpCharges] (LocationCd ASC)

ALTER TABLE [H_MpOffenderInterventionPrograms]

DROP CONSTRAINT [PK_H_MpOffenderInterventionPrograms];

ALTER TABLE [H_MpOffenderInterventionPrograms] ADD CONSTRAINT [PK_H_MpOffenderInterventionPrograms] PRIMARY KEY CLUSTERED (H_MpOffenderInterventionProgramId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_MpOffenderInterventionPrograms_LocationCd') BEGIN  Drop INDEX [IX_H_MpOffenderInterventionPrograms_LocationCd] on [H_MpOffenderInterventionPrograms]; END */

CREATE NONCLUSTERED INDEX [IX_H_MpOffenderInterventionPrograms_LocationCd] ON [H_MpOffenderInterventionPrograms] (LocationCd ASC)

ALTER TABLE [H_MpOffenderWorkUnits]

DROP CONSTRAINT [PK_H_MpOffenderWorkUnits];

ALTER TABLE [H_MpOffenderWorkUnits] ADD CONSTRAINT [PK_H_MpOffenderWorkUnits] PRIMARY KEY CLUSTERED (H_MpOffenderWorkUnitId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_MpOffenderWorkUnits_LocationCd') BEGIN  Drop INDEX [IX_H_MpOffenderWorkUnits_LocationCd] on [H_MpOffenderWorkUnits]; END */

CREATE NONCLUSTERED INDEX [IX_H_MpOffenderWorkUnits_LocationCd] ON [H_MpOffenderWorkUnits] (LocationCd ASC)

ALTER TABLE [H_MpSecondaryManagement]

DROP CONSTRAINT [PK_H_MpSecondaryManagement];

ALTER TABLE [H_MpSecondaryManagement] ADD CONSTRAINT [PK_H_MpSecondaryManagement] PRIMARY KEY CLUSTERED (H_MpSecondaryManagementId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_MpSecondaryManagement_LocationCd') BEGIN  Drop INDEX [IX_H_MpSecondaryManagement_LocationCd] on [H_MpSecondaryManagement]; END */

CREATE NONCLUSTERED INDEX [IX_H_MpSecondaryManagement_LocationCd] ON [H_MpSecondaryManagement] (LocationCd ASC)

ALTER TABLE [H_MpTrackedItems]

DROP CONSTRAINT [PK_H_MpTrackedItems];

ALTER TABLE [H_MpTrackedItems] ADD CONSTRAINT [PK_H_MpTrackedItems] PRIMARY KEY CLUSTERED (H_MpTrackedItemId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_MpTrackedItems_LocationCd') BEGIN  Drop INDEX [IX_H_MpTrackedItems_LocationCd] on [H_MpTrackedItems]; END */

CREATE NONCLUSTERED INDEX [IX_H_MpTrackedItems_LocationCd] ON [H_MpTrackedItems] (LocationCd ASC)

ALTER TABLE [H_MpTransferNotifications]

DROP CONSTRAINT [PK_H_MpTransferNotifications];

ALTER TABLE [H_MpTransferNotifications] ADD CONSTRAINT [PK_H_MpTransferNotifications] PRIMARY KEY CLUSTERED (H_MpTransferNotificationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_MpTransferNotifications_LocationCd') BEGIN  Drop INDEX [IX_H_MpTransferNotifications_LocationCd] on [H_MpTransferNotifications]; END */

CREATE NONCLUSTERED INDEX [IX_H_MpTransferNotifications_LocationCd] ON [H_MpTransferNotifications] (LocationCd ASC)

ALTER TABLE [H_NameInformation]

DROP CONSTRAINT [PK_H_NameInformation];

ALTER TABLE [H_NameInformation] ADD CONSTRAINT [PK_H_NameInformation] PRIMARY KEY CLUSTERED (H_NameInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_NameInformation_LocationCd') BEGIN  Drop INDEX [IX_H_NameInformation_LocationCd] on [H_NameInformation]; END */

CREATE NONCLUSTERED INDEX [IX_H_NameInformation_LocationCd] ON [H_NameInformation] (LocationCd ASC)

ALTER TABLE [H_NameTypes]

DROP CONSTRAINT [PK_H_NameTypes];

ALTER TABLE [H_NameTypes] ADD CONSTRAINT [PK_H_NameTypes] PRIMARY KEY CLUSTERED (H_OffenderNameTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_NameTypes_LocationCd') BEGIN  Drop INDEX [IX_H_NameTypes_LocationCd] on [H_NameTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_NameTypes_LocationCd] ON [H_NameTypes] (LocationCd ASC)

ALTER TABLE [H_NeedsEndedReasons]

DROP CONSTRAINT [PK_H_NeedsEndedReasons];

ALTER TABLE [H_NeedsEndedReasons] ADD CONSTRAINT [PK_H_NeedsEndedReasons] PRIMARY KEY CLUSTERED (H_NeedsEndedReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_NeedsEndedReasons_LocationCd') BEGIN  Drop INDEX [IX_H_NeedsEndedReasons_LocationCd] on [H_NeedsEndedReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_NeedsEndedReasons_LocationCd] ON [H_NeedsEndedReasons] (LocationCd ASC)

ALTER TABLE [H_NeedsIdentifiedReasons]

DROP CONSTRAINT [PK_H_NeedsIdentifiedReasons];

ALTER TABLE [H_NeedsIdentifiedReasons] ADD CONSTRAINT [PK_H_NeedsIdentifiedReasons] PRIMARY KEY CLUSTERED (H_NeedsIdentifiedReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_NeedsIdentifiedReasons_LocationCd') BEGIN  Drop INDEX [IX_H_NeedsIdentifiedReasons_LocationCd] on [H_NeedsIdentifiedReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_NeedsIdentifiedReasons_LocationCd] ON [H_NeedsIdentifiedReasons] (LocationCd ASC)

ALTER TABLE [H_Nga_Ca_Cases]

DROP CONSTRAINT [PK_H_NGA_CA_Cases];

ALTER TABLE [H_Nga_Ca_Cases] ADD CONSTRAINT [PK_H_NGA_CA_Cases] PRIMARY KEY CLUSTERED (H_IconCaseId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_Nga_Ca_Cases_LocationCd') BEGIN  Drop INDEX [IX_H_Nga_Ca_Cases_LocationCd] on [H_Nga_Ca_Cases]; END */

CREATE NONCLUSTERED INDEX [IX_H_Nga_Ca_Cases_LocationCd] ON [H_Nga_Ca_Cases] (LocationCd ASC)

ALTER TABLE [H_Nga_Ca_Charges]

DROP CONSTRAINT [PK_H_NGA_CA_Charges];

ALTER TABLE [H_Nga_Ca_Charges] ADD CONSTRAINT [PK_H_NGA_CA_Charges] PRIMARY KEY CLUSTERED (H_IconChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_Nga_Ca_Charges_LocationCd') BEGIN  Drop INDEX [IX_H_Nga_Ca_Charges_LocationCd] on [H_Nga_Ca_Charges]; END */

CREATE NONCLUSTERED INDEX [IX_H_Nga_Ca_Charges_LocationCd] ON [H_Nga_Ca_Charges] (LocationCd ASC)

ALTER TABLE [H_Nga_Ca_Defendants]

DROP CONSTRAINT [PK_H_NGA_CA_Defendants];

ALTER TABLE [H_Nga_Ca_Defendants] ADD CONSTRAINT [PK_H_NGA_CA_Defendants] PRIMARY KEY CLUSTERED (H_IconDefendantId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_Nga_Ca_Defendants_LocationCd') BEGIN  Drop INDEX [IX_H_Nga_Ca_Defendants_LocationCd] on [H_Nga_Ca_Defendants]; END */

CREATE NONCLUSTERED INDEX [IX_H_Nga_Ca_Defendants_LocationCd] ON [H_Nga_Ca_Defendants] (LocationCd ASC)

ALTER TABLE [H_Nga_Ca_Releases]

DROP CONSTRAINT [PK_H_Nga_Ca_Releases];

ALTER TABLE [H_Nga_Ca_Releases] ADD CONSTRAINT [PK_H_Nga_Ca_Releases] PRIMARY KEY CLUSTERED (H_IconReleaseId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_Nga_Ca_Releases_LocationCd') BEGIN  Drop INDEX [IX_H_Nga_Ca_Releases_LocationCd] on [H_Nga_Ca_Releases]; END */

CREATE NONCLUSTERED INDEX [IX_H_Nga_Ca_Releases_LocationCd] ON [H_Nga_Ca_Releases] (LocationCd ASC)

ALTER TABLE [H_Nga_Ca_Victims]

DROP CONSTRAINT [PK_H_NGA_CA_Victims];

ALTER TABLE [H_Nga_Ca_Victims] ADD CONSTRAINT [PK_H_NGA_CA_Victims] PRIMARY KEY CLUSTERED (H_IconVictimId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_Nga_Ca_Victims_LocationCd') BEGIN  Drop INDEX [IX_H_Nga_Ca_Victims_LocationCd] on [H_Nga_Ca_Victims]; END */

CREATE NONCLUSTERED INDEX [IX_H_Nga_Ca_Victims_LocationCd] ON [H_Nga_Ca_Victims] (LocationCd ASC)

ALTER TABLE [H_NonOffenderFileBusinessRuleSecurityEntities]

DROP CONSTRAINT [PK_H_NonOffenderFileBusinessRuleSecurityEntities];

ALTER TABLE [H_NonOffenderFileBusinessRuleSecurityEntities] ADD CONSTRAINT [PK_H_NonOffenderFileBusinessRuleSecurityEntities] PRIMARY KEY CLUSTERED (H_NonOffenderFileBusinessRuleSecurityEntityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_NonOffenderFileBusinessRuleSecurityEntities_LocationCd') BEGIN  Drop INDEX [IX_H_NonOffenderFileBusinessRuleSecurityEntities_LocationCd] on [H_NonOffenderFileBusinessRuleSecurityEntities]; END */

CREATE NONCLUSTERED INDEX [IX_H_NonOffenderFileBusinessRuleSecurityEntities_LocationCd] ON [H_NonOffenderFileBusinessRuleSecurityEntities] (LocationCd ASC)

ALTER TABLE [H_NonOffenderFiles]

DROP CONSTRAINT [PK_H_NonOffenderFiles];

ALTER TABLE [H_NonOffenderFiles] ADD CONSTRAINT [PK_H_NonOffenderFiles] PRIMARY KEY CLUSTERED (H_NonOffenderFileId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_NonOffenderFiles_LocationCd') BEGIN  Drop INDEX [IX_H_NonOffenderFiles_LocationCd] on [H_NonOffenderFiles]; END */

CREATE NONCLUSTERED INDEX [IX_H_NonOffenderFiles_LocationCd] ON [H_NonOffenderFiles] (LocationCd ASC)

ALTER TABLE [H_NonPhysicalIdentifiers]

DROP CONSTRAINT [PK_H_NonPhysicalIdentifiers];

ALTER TABLE [H_NonPhysicalIdentifiers] ADD CONSTRAINT [PK_H_NonPhysicalIdentifiers] PRIMARY KEY CLUSTERED (H_NonPhysicalIdentifierId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_NonPhysicalIdentifiers_LocationCd') BEGIN  Drop INDEX [IX_H_NonPhysicalIdentifiers_LocationCd] on [H_NonPhysicalIdentifiers]; END */

CREATE NONCLUSTERED INDEX [IX_H_NonPhysicalIdentifiers_LocationCd] ON [H_NonPhysicalIdentifiers] (LocationCd ASC)

ALTER TABLE [H_Obligations]

DROP CONSTRAINT [PK_H_Obligations];

ALTER TABLE [H_Obligations] ADD CONSTRAINT [PK_H_Obligations] PRIMARY KEY CLUSTERED (H_ObligationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_Obligations_LocationCd') BEGIN  Drop INDEX [IX_H_Obligations_LocationCd] on [H_Obligations]; END */

CREATE NONCLUSTERED INDEX [IX_H_Obligations_LocationCd] ON [H_Obligations] (LocationCd ASC)

ALTER TABLE [H_OffenderActivities]

DROP CONSTRAINT [PK_H_OffenderActivities];

ALTER TABLE [H_OffenderActivities] ADD CONSTRAINT [PK_H_OffenderActivities] PRIMARY KEY CLUSTERED (H_OffenderActivityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderActivities_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderActivities_LocationCd] on [H_OffenderActivities]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderActivities_LocationCd] ON [H_OffenderActivities] (LocationCd ASC)

ALTER TABLE [H_OffenderAgreements]

DROP CONSTRAINT [PK_H_OffenderAgreements];

ALTER TABLE [H_OffenderAgreements] ADD CONSTRAINT [PK_H_OffenderAgreements] PRIMARY KEY CLUSTERED (H_OffenderAgreementId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderAgreements_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderAgreements_LocationCd] on [H_OffenderAgreements]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderAgreements_LocationCd] ON [H_OffenderAgreements] (LocationCd ASC)

ALTER TABLE [H_OffenderApprovedDestinations]

DROP CONSTRAINT [PK_H_OffenderApprovedDestinations];

ALTER TABLE [H_OffenderApprovedDestinations] ADD CONSTRAINT [PK_H_OffenderApprovedDestinations] PRIMARY KEY CLUSTERED (H_OffenderApprovedDestinationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderApprovedDestinations_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderApprovedDestinations_LocationCd] on [H_OffenderApprovedDestinations]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderApprovedDestinations_LocationCd] ON [H_OffenderApprovedDestinations] (LocationCd ASC)

ALTER TABLE [H_OffenderAssessments]

DROP CONSTRAINT [PK_H_OffenderAssessments];

ALTER TABLE [H_OffenderAssessments] ADD CONSTRAINT [PK_H_OffenderAssessments] PRIMARY KEY CLUSTERED (H_OffenderAssessmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderAssessments_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderAssessments_LocationCd] on [H_OffenderAssessments]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderAssessments_LocationCd] ON [H_OffenderAssessments] (LocationCd ASC)

ALTER TABLE [H_OffenderCustodyLevels]

DROP CONSTRAINT [PK_H_OffenderCustodyLevels];

ALTER TABLE [H_OffenderCustodyLevels] ADD CONSTRAINT [PK_H_OffenderCustodyLevels] PRIMARY KEY CLUSTERED (H_OffenderCustodyLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderCustodyLevels_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderCustodyLevels_LocationCd] on [H_OffenderCustodyLevels]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderCustodyLevels_LocationCd] ON [H_OffenderCustodyLevels] (LocationCd ASC)

ALTER TABLE [H_OffenderFileBopCommutationDetails]

DROP CONSTRAINT [PK_H_OffenderFileBopCommutationDetails];

ALTER TABLE [H_OffenderFileBopCommutationDetails] ADD CONSTRAINT [PK_H_OffenderFileBopCommutationDetails] PRIMARY KEY CLUSTERED (H_OffenderFileBopCommutationDetailId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderFileBopCommutationDetails_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderFileBopCommutationDetails_LocationCd] on [H_OffenderFileBopCommutationDetails]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderFileBopCommutationDetails_LocationCd] ON [H_OffenderFileBopCommutationDetails] (LocationCd ASC)

ALTER TABLE [H_OffenderFileParoleViolationReviewDetails]

DROP CONSTRAINT [PK_H_OffenderFileParoleViolationReviewDetails];

ALTER TABLE [H_OffenderFileParoleViolationReviewDetails] ADD CONSTRAINT [PK_H_OffenderFileParoleViolationReviewDetails] PRIMARY KEY CLUSTERED (H_OffenderFileParoleViolationReviewDetailId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderFileParoleViolationReviewDetails_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderFileParoleViolationReviewDetails_LocationCd] on [H_OffenderFileParoleViolationReviewDetails]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderFileParoleViolationReviewDetails_LocationCd] ON [H_OffenderFileParoleViolationReviewDetails] (LocationCd ASC)

ALTER TABLE [H_OffenderFiles]

DROP CONSTRAINT [PK_H_OffenderFiles];

ALTER TABLE [H_OffenderFiles] ADD CONSTRAINT [PK_H_OffenderFiles] PRIMARY KEY CLUSTERED (H_OffenderFileId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderFiles_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderFiles_LocationCd] on [H_OffenderFiles]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderFiles_LocationCd] ON [H_OffenderFiles] (LocationCd ASC)

ALTER TABLE [H_OffenderFilesCauseNumber]

DROP CONSTRAINT [PK_H_OffenderFilesCauseNumber];

ALTER TABLE [H_OffenderFilesCauseNumber] ADD CONSTRAINT [PK_H_OffenderFilesCauseNumber] PRIMARY KEY CLUSTERED (H_OffenderFilesCauseNumberId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderFilesCauseNumber_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderFilesCauseNumber_LocationCd] on [H_OffenderFilesCauseNumber]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderFilesCauseNumber_LocationCd] ON [H_OffenderFilesCauseNumber] (LocationCd ASC)

ALTER TABLE [H_OffenderGrievanceProcessTypeReasons]

DROP CONSTRAINT [PK_H_OffenderGrievanceProcessTypeReasons];

ALTER TABLE [H_OffenderGrievanceProcessTypeReasons] ADD CONSTRAINT [PK_H_OffenderGrievanceProcessTypeReasons] PRIMARY KEY CLUSTERED (H_OffenderGrievanceProcessTypeReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderGrievanceProcessTypeReasons_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderGrievanceProcessTypeReasons_LocationCd] on [H_OffenderGrievanceProcessTypeReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderGrievanceProcessTypeReasons_LocationCd] ON [H_OffenderGrievanceProcessTypeReasons] (LocationCd ASC)

ALTER TABLE [H_OffenderGroupLockExclusions]

DROP CONSTRAINT [PK_H_OffenderGroupLockExclusions];

ALTER TABLE [H_OffenderGroupLockExclusions] ADD CONSTRAINT [PK_H_OffenderGroupLockExclusions] PRIMARY KEY CLUSTERED (H_OffenderGroupLockExclusionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderGroupLockExclusions_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderGroupLockExclusions_LocationCd] on [H_OffenderGroupLockExclusions]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderGroupLockExclusions_LocationCd] ON [H_OffenderGroupLockExclusions] (LocationCd ASC)

ALTER TABLE [H_OffenderGroupLocks]

DROP CONSTRAINT [PK_H_OffenderGroupLocks];

ALTER TABLE [H_OffenderGroupLocks] ADD CONSTRAINT [PK_H_OffenderGroupLocks] PRIMARY KEY CLUSTERED (H_OffenderGroupLockId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderGroupLocks_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderGroupLocks_LocationCd] on [H_OffenderGroupLocks]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderGroupLocks_LocationCd] ON [H_OffenderGroupLocks] (LocationCd ASC)

ALTER TABLE [H_OffenderHousingAssignmentRestrictions]

DROP CONSTRAINT [PK_H_OffenderAssignmentRestrictions];

ALTER TABLE [H_OffenderHousingAssignmentRestrictions] ADD CONSTRAINT [PK_H_OffenderAssignmentRestrictions] PRIMARY KEY CLUSTERED (H_OffenderHousingAssignmentRestrictionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderHousingAssignmentRestrictions_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderHousingAssignmentRestrictions_LocationCd] on [H_OffenderHousingAssignmentRestrictions]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderHousingAssignmentRestrictions_LocationCd] ON [H_OffenderHousingAssignmentRestrictions] (LocationCd ASC)

ALTER TABLE [H_OffenderHousingAssignmentRestrictions_OLD]

DROP CONSTRAINT [PK_H_OffenderHousingAssignmentRestrictions];

ALTER TABLE [H_OffenderHousingAssignmentRestrictions_OLD] ADD CONSTRAINT [PK_H_OffenderHousingAssignmentRestrictions] PRIMARY KEY CLUSTERED (H_OffenderHousingAssignmentRestrictionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderHousingAssignmentRestrictions_OLD_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderHousingAssignmentRestrictions_OLD_LocationCd] on [H_OffenderHousingAssignmentRestrictions_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderHousingAssignmentRestrictions_OLD_LocationCd] ON [H_OffenderHousingAssignmentRestrictions_OLD] (LocationCd ASC)

ALTER TABLE [H_OffenderInformation]

DROP CONSTRAINT [PK_H_OffenderInformation];

ALTER TABLE [H_OffenderInformation] ADD CONSTRAINT [PK_H_OffenderInformation] PRIMARY KEY CLUSTERED (H_OffenderInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderInformation_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderInformation_LocationCd] on [H_OffenderInformation]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderInformation_LocationCd] ON [H_OffenderInformation] (LocationCd ASC)

ALTER TABLE [H_OffenderInsOuts]

DROP CONSTRAINT [PK_H_OffenderInsOuts];

ALTER TABLE [H_OffenderInsOuts] ADD CONSTRAINT [PK_H_OffenderInsOuts] PRIMARY KEY CLUSTERED (H_OffenderInOutId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderInsOuts_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderInsOuts_LocationCd] on [H_OffenderInsOuts]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderInsOuts_LocationCd] ON [H_OffenderInsOuts] (LocationCd ASC)

ALTER TABLE [H_OffenderInsOutsDestinations]

DROP CONSTRAINT [PK_H_OffenderInsOutsDestinations];

ALTER TABLE [H_OffenderInsOutsDestinations] ADD CONSTRAINT [PK_H_OffenderInsOutsDestinations] PRIMARY KEY CLUSTERED (H_OffenderInsOutsDestinationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderInsOutsDestinations_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderInsOutsDestinations_LocationCd] on [H_OffenderInsOutsDestinations]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderInsOutsDestinations_LocationCd] ON [H_OffenderInsOutsDestinations] (LocationCd ASC)

ALTER TABLE [H_OffenderInterventionPrograms]

DROP CONSTRAINT [PK_H_OffenderInterventionPrograms];

ALTER TABLE [H_OffenderInterventionPrograms] ADD CONSTRAINT [PK_H_OffenderInterventionPrograms] PRIMARY KEY CLUSTERED (H_OffenderInterventionProgramId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderInterventionPrograms_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderInterventionPrograms_LocationCd] on [H_OffenderInterventionPrograms]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderInterventionPrograms_LocationCd] ON [H_OffenderInterventionPrograms] (LocationCd ASC)

ALTER TABLE [H_OffenderInterventions]

DROP CONSTRAINT [PK_H_OffenderInterventions];

ALTER TABLE [H_OffenderInterventions] ADD CONSTRAINT [PK_H_OffenderInterventions] PRIMARY KEY CLUSTERED (H_OffenderInterventionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderInterventions_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderInterventions_LocationCd] on [H_OffenderInterventions]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderInterventions_LocationCd] ON [H_OffenderInterventions] (LocationCd ASC)

ALTER TABLE [H_OffenderLevelOfSupervision]

DROP CONSTRAINT [PK_H_OffenderLevelOfSupervision];

ALTER TABLE [H_OffenderLevelOfSupervision] ADD CONSTRAINT [PK_H_OffenderLevelOfSupervision] PRIMARY KEY CLUSTERED (H_OffenderLevelOfSupervisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderLevelOfSupervision_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderLevelOfSupervision_LocationCd] on [H_OffenderLevelOfSupervision]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderLevelOfSupervision_LocationCd] ON [H_OffenderLevelOfSupervision] (LocationCd ASC)

ALTER TABLE [H_OffenderLevelSpecialty]

DROP CONSTRAINT [PK_H_OffenderLevelSpecialty];

ALTER TABLE [H_OffenderLevelSpecialty] ADD CONSTRAINT [PK_H_OffenderLevelSpecialty] PRIMARY KEY CLUSTERED (H_OffenderLevelSpecialtyId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderLevelSpecialty_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderLevelSpecialty_LocationCd] on [H_OffenderLevelSpecialty]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderLevelSpecialty_LocationCd] ON [H_OffenderLevelSpecialty] (LocationCd ASC)

ALTER TABLE [H_OffenderNeedGroupNeeds]

DROP CONSTRAINT [PK_H_OffenderNeedGroupNeeds];

ALTER TABLE [H_OffenderNeedGroupNeeds] ADD CONSTRAINT [PK_H_OffenderNeedGroupNeeds] PRIMARY KEY CLUSTERED (H_OffenderNeedGroupNeedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderNeedGroupNeeds_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderNeedGroupNeeds_LocationCd] on [H_OffenderNeedGroupNeeds]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderNeedGroupNeeds_LocationCd] ON [H_OffenderNeedGroupNeeds] (LocationCd ASC)

ALTER TABLE [H_OffenderNeedGroups]

DROP CONSTRAINT [PK_H_OffenderNeedGroups];

ALTER TABLE [H_OffenderNeedGroups] ADD CONSTRAINT [PK_H_OffenderNeedGroups] PRIMARY KEY CLUSTERED (H_OffenderNeedGroupId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderNeedGroups_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderNeedGroups_LocationCd] on [H_OffenderNeedGroups]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderNeedGroups_LocationCd] ON [H_OffenderNeedGroups] (LocationCd ASC)

ALTER TABLE [H_OffenderNeeds]

DROP CONSTRAINT [PK_H_OffenderNeeds];

ALTER TABLE [H_OffenderNeeds] ADD CONSTRAINT [PK_H_OffenderNeeds] PRIMARY KEY CLUSTERED (H_OffenderNeedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderNeeds_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderNeeds_LocationCd] on [H_OffenderNeeds]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderNeeds_LocationCd] ON [H_OffenderNeeds] (LocationCd ASC)

ALTER TABLE [H_OffenderPrivilegeLevelsInstFl]

DROP CONSTRAINT [PK_H_OffenderPrivilegeLevelsInstFL];

ALTER TABLE [H_OffenderPrivilegeLevelsInstFl] ADD CONSTRAINT [PK_H_OffenderPrivilegeLevelsInstFL] PRIMARY KEY CLUSTERED (H_OffenderPrivilegeLevelInstFlId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderPrivilegeLevelsInstFl_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderPrivilegeLevelsInstFl_LocationCd] on [H_OffenderPrivilegeLevelsInstFl]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderPrivilegeLevelsInstFl_LocationCd] ON [H_OffenderPrivilegeLevelsInstFl] (LocationCd ASC)

ALTER TABLE [H_OffenderPrivilegeLevelsInstSw]

DROP CONSTRAINT [PK_H_OffenderPrivilegeLevelsInstSW];

ALTER TABLE [H_OffenderPrivilegeLevelsInstSw] ADD CONSTRAINT [PK_H_OffenderPrivilegeLevelsInstSW] PRIMARY KEY CLUSTERED (H_OffenderPrivilegeLevelInstSwId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderPrivilegeLevelsInstSw_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderPrivilegeLevelsInstSw_LocationCd] on [H_OffenderPrivilegeLevelsInstSw]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderPrivilegeLevelsInstSw_LocationCd] ON [H_OffenderPrivilegeLevelsInstSw] (LocationCd ASC)

ALTER TABLE [H_OffenderPrivilegeLevelsResi]

DROP CONSTRAINT [PK_H_OffenderPrivilegeLevelsResi];

ALTER TABLE [H_OffenderPrivilegeLevelsResi] ADD CONSTRAINT [PK_H_OffenderPrivilegeLevelsResi] PRIMARY KEY CLUSTERED (H_OffenderPrivilegeLevelResiId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderPrivilegeLevelsResi_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderPrivilegeLevelsResi_LocationCd] on [H_OffenderPrivilegeLevelsResi]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderPrivilegeLevelsResi_LocationCd] ON [H_OffenderPrivilegeLevelsResi] (LocationCd ASC)

ALTER TABLE [H_OffenderProcesses]

DROP CONSTRAINT [PK_H_OffenderProcesses];

ALTER TABLE [H_OffenderProcesses] ADD CONSTRAINT [PK_H_OffenderProcesses] PRIMARY KEY CLUSTERED (H_OffenderProcessId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderProcesses_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderProcesses_LocationCd] on [H_OffenderProcesses]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderProcesses_LocationCd] ON [H_OffenderProcesses] (LocationCd ASC)

ALTER TABLE [H_OffenderProcessTaskGroupDependencies]

DROP CONSTRAINT [PK_H_OffenderProcessTaskGroupDependencies];

ALTER TABLE [H_OffenderProcessTaskGroupDependencies] ADD CONSTRAINT [PK_H_OffenderProcessTaskGroupDependencies] PRIMARY KEY CLUSTERED (H_OffenderProcessTaskGroupDependencyId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderProcessTaskGroupDependencies_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderProcessTaskGroupDependencies_LocationCd] on [H_OffenderProcessTaskGroupDependencies]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderProcessTaskGroupDependencies_LocationCd] ON [H_OffenderProcessTaskGroupDependencies] (LocationCd ASC)

ALTER TABLE [H_OffenderProcessTaskGroups]

DROP CONSTRAINT [PK_H_OffenderProcessTaskGroups];

ALTER TABLE [H_OffenderProcessTaskGroups] ADD CONSTRAINT [PK_H_OffenderProcessTaskGroups] PRIMARY KEY CLUSTERED (H_OffenderProcessTaskGroupId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderProcessTaskGroups_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderProcessTaskGroups_LocationCd] on [H_OffenderProcessTaskGroups]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderProcessTaskGroups_LocationCd] ON [H_OffenderProcessTaskGroups] (LocationCd ASC)

ALTER TABLE [H_OffenderProcessTasks]

DROP CONSTRAINT [PK_H_OffenderProcessTasks];

ALTER TABLE [H_OffenderProcessTasks] ADD CONSTRAINT [PK_H_OffenderProcessTasks] PRIMARY KEY CLUSTERED (H_OffenderProcessTaskId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderProcessTasks_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderProcessTasks_LocationCd] on [H_OffenderProcessTasks]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderProcessTasks_LocationCd] ON [H_OffenderProcessTasks] (LocationCd ASC)

ALTER TABLE [H_OffenderRuleCharges]

DROP CONSTRAINT [PK_H_OffenderRuleCharges];

ALTER TABLE [H_OffenderRuleCharges] ADD CONSTRAINT [PK_H_OffenderRuleCharges] PRIMARY KEY CLUSTERED (H_OffenderRuleChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderRuleCharges_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderRuleCharges_LocationCd] on [H_OffenderRuleCharges]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderRuleCharges_LocationCd] ON [H_OffenderRuleCharges] (LocationCd ASC)

ALTER TABLE [H_OffenderRules]

DROP CONSTRAINT [PK_H_OffenderRules];

ALTER TABLE [H_OffenderRules] ADD CONSTRAINT [PK_H_OffenderRules] PRIMARY KEY CLUSTERED (H_OffenderRuleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderRules_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderRules_LocationCd] on [H_OffenderRules]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderRules_LocationCd] ON [H_OffenderRules] (LocationCd ASC)

ALTER TABLE [H_OffenderScheduledEvents]

DROP CONSTRAINT [PK_H_OffenderScheduledEvents];

ALTER TABLE [H_OffenderScheduledEvents] ADD CONSTRAINT [PK_H_OffenderScheduledEvents] PRIMARY KEY CLUSTERED (H_OffenderScheduledEventId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderScheduledEvents_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderScheduledEvents_LocationCd] on [H_OffenderScheduledEvents]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderScheduledEvents_LocationCd] ON [H_OffenderScheduledEvents] (LocationCd ASC)

ALTER TABLE [H_OffenderSessionClassFacilitators]

DROP CONSTRAINT [PK_H_OffenderSessionClassFacilitators];

ALTER TABLE [H_OffenderSessionClassFacilitators] ADD CONSTRAINT [PK_H_OffenderSessionClassFacilitators] PRIMARY KEY CLUSTERED (H_OffenderSessionClassFacilitatorId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderSessionClassFacilitators_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderSessionClassFacilitators_LocationCd] on [H_OffenderSessionClassFacilitators]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderSessionClassFacilitators_LocationCd] ON [H_OffenderSessionClassFacilitators] (LocationCd ASC)

ALTER TABLE [H_OffenderSessions]

DROP CONSTRAINT [PK_H_OffenderSessions];

ALTER TABLE [H_OffenderSessions] ADD CONSTRAINT [PK_H_OffenderSessions] PRIMARY KEY CLUSTERED (H_OffenderSessionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderSessions_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderSessions_LocationCd] on [H_OffenderSessions]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderSessions_LocationCd] ON [H_OffenderSessions] (LocationCd ASC)

ALTER TABLE [H_OffenderSessionSummaries]

DROP CONSTRAINT [PK_H_OffenderSessionSummaries];

ALTER TABLE [H_OffenderSessionSummaries] ADD CONSTRAINT [PK_H_OffenderSessionSummaries] PRIMARY KEY CLUSTERED (H_OffenderSessionSummaryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderSessionSummaries_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderSessionSummaries_LocationCd] on [H_OffenderSessionSummaries]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderSessionSummaries_LocationCd] ON [H_OffenderSessionSummaries] (LocationCd ASC)

ALTER TABLE [H_OffenderSessionTopics]

DROP CONSTRAINT [PK_H_OffenderSessionTopics];

ALTER TABLE [H_OffenderSessionTopics] ADD CONSTRAINT [PK_H_OffenderSessionTopics] PRIMARY KEY CLUSTERED (H_OffenderSessionTopicId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderSessionTopics_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderSessionTopics_LocationCd] on [H_OffenderSessionTopics]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderSessionTopics_LocationCd] ON [H_OffenderSessionTopics] (LocationCd ASC)

ALTER TABLE [H_OffenderSupervisionLevels]

DROP CONSTRAINT [PK_H_OffenderTierLevelsCbc];

ALTER TABLE [H_OffenderSupervisionLevels] ADD CONSTRAINT [PK_H_OffenderTierLevelsCbc] PRIMARY KEY CLUSTERED (H_OffenderSupervisionLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderSupervisionLevels_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderSupervisionLevels_LocationCd] on [H_OffenderSupervisionLevels]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderSupervisionLevels_LocationCd] ON [H_OffenderSupervisionLevels] (LocationCd ASC)

ALTER TABLE [H_OffenderTrips]

DROP CONSTRAINT [PK_H_OffenderTrips];

ALTER TABLE [H_OffenderTrips] ADD CONSTRAINT [PK_H_OffenderTrips] PRIMARY KEY CLUSTERED (H_OffenderTripId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderTrips_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderTrips_LocationCd] on [H_OffenderTrips]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderTrips_LocationCd] ON [H_OffenderTrips] (LocationCd ASC)

ALTER TABLE [H_OffenderUserLocks]

DROP CONSTRAINT [PK_H_OffenderUserLocks];

ALTER TABLE [H_OffenderUserLocks] ADD CONSTRAINT [PK_H_OffenderUserLocks] PRIMARY KEY CLUSTERED (H_OffenderUserLockId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderUserLocks_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderUserLocks_LocationCd] on [H_OffenderUserLocks]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderUserLocks_LocationCd] ON [H_OffenderUserLocks] (LocationCd ASC)

ALTER TABLE [H_OffenderUserRestrictions]

DROP CONSTRAINT [PK_H_OffenderUserRestrictions];

ALTER TABLE [H_OffenderUserRestrictions] ADD CONSTRAINT [PK_H_OffenderUserRestrictions] PRIMARY KEY CLUSTERED (H_OffenderUserRestrictionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderUserRestrictions_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderUserRestrictions_LocationCd] on [H_OffenderUserRestrictions]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderUserRestrictions_LocationCd] ON [H_OffenderUserRestrictions] (LocationCd ASC)

ALTER TABLE [H_OffenderVisitingPrivilegeLevels]

DROP CONSTRAINT [PK_H_OffenderVisitingPrivilegeLevels];

ALTER TABLE [H_OffenderVisitingPrivilegeLevels] ADD CONSTRAINT [PK_H_OffenderVisitingPrivilegeLevels] PRIMARY KEY CLUSTERED (H_OffenderVisitingPrivilegeLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderVisitingPrivilegeLevels_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderVisitingPrivilegeLevels_LocationCd] on [H_OffenderVisitingPrivilegeLevels]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderVisitingPrivilegeLevels_LocationCd] ON [H_OffenderVisitingPrivilegeLevels] (LocationCd ASC)

ALTER TABLE [H_OffenderWorkAssignments]

DROP CONSTRAINT [PK_H_OffenderWorkAssignments];

ALTER TABLE [H_OffenderWorkAssignments] ADD CONSTRAINT [PK_H_OffenderWorkAssignments] PRIMARY KEY CLUSTERED (H_OffenderWorkAssignmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_OffenderWorkAssignments_LocationCd') BEGIN  Drop INDEX [IX_H_OffenderWorkAssignments_LocationCd] on [H_OffenderWorkAssignments]; END */

CREATE NONCLUSTERED INDEX [IX_H_OffenderWorkAssignments_LocationCd] ON [H_OffenderWorkAssignments] (LocationCd ASC)

ALTER TABLE [H_ParoleBoardInterviewEventOffenders]

DROP CONSTRAINT [PK_H_ParoleBoardInterviewEventOffenders];

ALTER TABLE [H_ParoleBoardInterviewEventOffenders] ADD CONSTRAINT [PK_H_ParoleBoardInterviewEventOffenders] PRIMARY KEY CLUSTERED (H_ParoleBoardInterviewEventOffenderId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ParoleBoardInterviewEventOffenders_LocationCd') BEGIN  Drop INDEX [IX_H_ParoleBoardInterviewEventOffenders_LocationCd] on [H_ParoleBoardInterviewEventOffenders]; END */

CREATE NONCLUSTERED INDEX [IX_H_ParoleBoardInterviewEventOffenders_LocationCd] ON [H_ParoleBoardInterviewEventOffenders] (LocationCd ASC)

ALTER TABLE [H_ParoleBoardInterviewEvents]

DROP CONSTRAINT [PK_H_ParoleBoardInterviewEvents];

ALTER TABLE [H_ParoleBoardInterviewEvents] ADD CONSTRAINT [PK_H_ParoleBoardInterviewEvents] PRIMARY KEY CLUSTERED (H_ParoleBoardInterviewEventId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ParoleBoardInterviewEvents_LocationCd') BEGIN  Drop INDEX [IX_H_ParoleBoardInterviewEvents_LocationCd] on [H_ParoleBoardInterviewEvents]; END */

CREATE NONCLUSTERED INDEX [IX_H_ParoleBoardInterviewEvents_LocationCd] ON [H_ParoleBoardInterviewEvents] (LocationCd ASC)

ALTER TABLE [H_ParoleBoardInterviewProcesses]

DROP CONSTRAINT [PK_H_ParoleBoardInterviewProcesses];

ALTER TABLE [H_ParoleBoardInterviewProcesses] ADD CONSTRAINT [PK_H_ParoleBoardInterviewProcesses] PRIMARY KEY CLUSTERED (H_ParoleBoardInterviewProcessId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ParoleBoardInterviewProcesses_LocationCd') BEGIN  Drop INDEX [IX_H_ParoleBoardInterviewProcesses_LocationCd] on [H_ParoleBoardInterviewProcesses]; END */

CREATE NONCLUSTERED INDEX [IX_H_ParoleBoardInterviewProcesses_LocationCd] ON [H_ParoleBoardInterviewProcesses] (LocationCd ASC)

ALTER TABLE [H_ParoleBoardReviewAttachments]

DROP CONSTRAINT [PK_H_ParoleBoardReviewAttachments];

ALTER TABLE [H_ParoleBoardReviewAttachments] ADD CONSTRAINT [PK_H_ParoleBoardReviewAttachments] PRIMARY KEY CLUSTERED (H_ParoleBoardReviewAttachmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ParoleBoardReviewAttachments_LocationCd') BEGIN  Drop INDEX [IX_H_ParoleBoardReviewAttachments_LocationCd] on [H_ParoleBoardReviewAttachments]; END */

CREATE NONCLUSTERED INDEX [IX_H_ParoleBoardReviewAttachments_LocationCd] ON [H_ParoleBoardReviewAttachments] (LocationCd ASC)

ALTER TABLE [H_ParoleBoardReviews]

DROP CONSTRAINT [PK_H_ParoleBoardReviews];

ALTER TABLE [H_ParoleBoardReviews] ADD CONSTRAINT [PK_H_ParoleBoardReviews] PRIMARY KEY CLUSTERED (H_ParoleBoardReviewId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ParoleBoardReviews_LocationCd') BEGIN  Drop INDEX [IX_H_ParoleBoardReviews_LocationCd] on [H_ParoleBoardReviews]; END */

CREATE NONCLUSTERED INDEX [IX_H_ParoleBoardReviews_LocationCd] ON [H_ParoleBoardReviews] (LocationCd ASC)

ALTER TABLE [H_ParoleEligibilityDateAdjustments]

DROP CONSTRAINT [PK_H_ParoleEligibilityDateAdjustments];

ALTER TABLE [H_ParoleEligibilityDateAdjustments] ADD CONSTRAINT [PK_H_ParoleEligibilityDateAdjustments] PRIMARY KEY CLUSTERED (H_ParoleEligibilityDateAdjustmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ParoleEligibilityDateAdjustments_LocationCd') BEGIN  Drop INDEX [IX_H_ParoleEligibilityDateAdjustments_LocationCd] on [H_ParoleEligibilityDateAdjustments]; END */

CREATE NONCLUSTERED INDEX [IX_H_ParoleEligibilityDateAdjustments_LocationCd] ON [H_ParoleEligibilityDateAdjustments] (LocationCd ASC)

ALTER TABLE [H_ParoleEligibilityDates]

DROP CONSTRAINT [PK_H_ParoleEligibilityDates];

ALTER TABLE [H_ParoleEligibilityDates] ADD CONSTRAINT [PK_H_ParoleEligibilityDates] PRIMARY KEY CLUSTERED (H_ParoleEligibilityDateId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ParoleEligibilityDates_LocationCd') BEGIN  Drop INDEX [IX_H_ParoleEligibilityDates_LocationCd] on [H_ParoleEligibilityDates]; END */

CREATE NONCLUSTERED INDEX [IX_H_ParoleEligibilityDates_LocationCd] ON [H_ParoleEligibilityDates] (LocationCd ASC)

ALTER TABLE [H_ParoleGuidelineScoresheets]

DROP CONSTRAINT [PK_H_ParoleGuidelineScoresheets];

ALTER TABLE [H_ParoleGuidelineScoresheets] ADD CONSTRAINT [PK_H_ParoleGuidelineScoresheets] PRIMARY KEY CLUSTERED (H_ParoleGuidelineScoresheetId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ParoleGuidelineScoresheets_LocationCd') BEGIN  Drop INDEX [IX_H_ParoleGuidelineScoresheets_LocationCd] on [H_ParoleGuidelineScoresheets]; END */

CREATE NONCLUSTERED INDEX [IX_H_ParoleGuidelineScoresheets_LocationCd] ON [H_ParoleGuidelineScoresheets] (LocationCd ASC)

ALTER TABLE [H_ParoleRovFieldRuleViolationIncidents_OLD]

DROP CONSTRAINT [PK_H_ParoleROVFieldRuleViolationIncidents];

ALTER TABLE [H_ParoleRovFieldRuleViolationIncidents_OLD] ADD CONSTRAINT [PK_H_ParoleROVFieldRuleViolationIncidents] PRIMARY KEY CLUSTERED (H_ParoleRovFieldRuleViolationIncidentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ParoleRovFieldRuleViolationIncidents_OLD_LocationCd') BEGIN  Drop INDEX [IX_H_ParoleRovFieldRuleViolationIncidents_OLD_LocationCd] on [H_ParoleRovFieldRuleViolationIncidents_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_H_ParoleRovFieldRuleViolationIncidents_OLD_LocationCd] ON [H_ParoleRovFieldRuleViolationIncidents_OLD] (LocationCd ASC)

ALTER TABLE [H_ParoleRovHearingResponseDecisions_OLD]

DROP CONSTRAINT [PK_H_ParoleROVHearingResponseDecisions];

ALTER TABLE [H_ParoleRovHearingResponseDecisions_OLD] ADD CONSTRAINT [PK_H_ParoleROVHearingResponseDecisions] PRIMARY KEY CLUSTERED (H_ParoleRovHearingResponseDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ParoleRovHearingResponseDecisions_OLD_LocationCd') BEGIN  Drop INDEX [IX_H_ParoleRovHearingResponseDecisions_OLD_LocationCd] on [H_ParoleRovHearingResponseDecisions_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_H_ParoleRovHearingResponseDecisions_OLD_LocationCd] ON [H_ParoleRovHearingResponseDecisions_OLD] (LocationCd ASC)

ALTER TABLE [H_ParoleRovHearingResponseRecommendations_OLD]

DROP CONSTRAINT [PK_H_ParoleROVHearingResponseRecommendations];

ALTER TABLE [H_ParoleRovHearingResponseRecommendations_OLD] ADD CONSTRAINT [PK_H_ParoleROVHearingResponseRecommendations] PRIMARY KEY CLUSTERED (H_ParoleRovHearingResponseRecommendationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ParoleRovHearingResponseRecommendations_OLD_LocationCd') BEGIN  Drop INDEX [IX_H_ParoleRovHearingResponseRecommendations_OLD_LocationCd] on [H_ParoleRovHearingResponseRecommendations_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_H_ParoleRovHearingResponseRecommendations_OLD_LocationCd] ON [H_ParoleRovHearingResponseRecommendations_OLD] (LocationCd ASC)

ALTER TABLE [H_ParoleRovResidentialFormalDisciplines_OLD]

DROP CONSTRAINT [PK_H_ParoleROVResidentialFormalDisciplines];

ALTER TABLE [H_ParoleRovResidentialFormalDisciplines_OLD] ADD CONSTRAINT [PK_H_ParoleROVResidentialFormalDisciplines] PRIMARY KEY CLUSTERED (H_ParoleRovResidentialFormalDisciplineId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ParoleRovResidentialFormalDisciplines_OLD_LocationCd') BEGIN  Drop INDEX [IX_H_ParoleRovResidentialFormalDisciplines_OLD_LocationCd] on [H_ParoleRovResidentialFormalDisciplines_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_H_ParoleRovResidentialFormalDisciplines_OLD_LocationCd] ON [H_ParoleRovResidentialFormalDisciplines_OLD] (LocationCd ASC)

ALTER TABLE [H_ParoleRovResiFormalDisciplineRuleViolations_OLD]

DROP CONSTRAINT [PK_H_ParoleROVResiFormalDisciplineRuleViolations];

ALTER TABLE [H_ParoleRovResiFormalDisciplineRuleViolations_OLD] ADD CONSTRAINT [PK_H_ParoleROVResiFormalDisciplineRuleViolations] PRIMARY KEY CLUSTERED (H_ParoleRovResiFormalDisciplineRuleViolationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ParoleRovResiFormalDisciplineRuleViolations_OLD_LocationCd') BEGIN  Drop INDEX [IX_H_ParoleRovResiFormalDisciplineRuleViolations_OLD_LocationCd] on [H_ParoleRovResiFormalDisciplineRuleViolations_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_H_ParoleRovResiFormalDisciplineRuleViolations_OLD_LocationCd] ON [H_ParoleRovResiFormalDisciplineRuleViolations_OLD] (LocationCd ASC)

ALTER TABLE [H_ParoleViolationReviewCharges]

DROP CONSTRAINT [PK_H_ParoleViolationReviewCharges];

ALTER TABLE [H_ParoleViolationReviewCharges] ADD CONSTRAINT [PK_H_ParoleViolationReviewCharges] PRIMARY KEY CLUSTERED (H_ParoleViolationReviewChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ParoleViolationReviewCharges_LocationCd') BEGIN  Drop INDEX [IX_H_ParoleViolationReviewCharges_LocationCd] on [H_ParoleViolationReviewCharges]; END */

CREATE NONCLUSTERED INDEX [IX_H_ParoleViolationReviewCharges_LocationCd] ON [H_ParoleViolationReviewCharges] (LocationCd ASC)

ALTER TABLE [H_ParoleViolationReviewFrvi]

DROP CONSTRAINT [PK_H_ParoleViolationReviewFrvi];

ALTER TABLE [H_ParoleViolationReviewFrvi] ADD CONSTRAINT [PK_H_ParoleViolationReviewFrvi] PRIMARY KEY CLUSTERED (H_ParoleViolationReviewFrviId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ParoleViolationReviewFrvi_LocationCd') BEGIN  Drop INDEX [IX_H_ParoleViolationReviewFrvi_LocationCd] on [H_ParoleViolationReviewFrvi]; END */

CREATE NONCLUSTERED INDEX [IX_H_ParoleViolationReviewFrvi_LocationCd] ON [H_ParoleViolationReviewFrvi] (LocationCd ASC)

ALTER TABLE [H_ParoleViolationReviewPpvi]

DROP CONSTRAINT [PK_H_ParoleViolationReviewPpvi];

ALTER TABLE [H_ParoleViolationReviewPpvi] ADD CONSTRAINT [PK_H_ParoleViolationReviewPpvi] PRIMARY KEY CLUSTERED (H_ParoleViolationReviewPpviId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ParoleViolationReviewPpvi_LocationCd') BEGIN  Drop INDEX [IX_H_ParoleViolationReviewPpvi_LocationCd] on [H_ParoleViolationReviewPpvi]; END */

CREATE NONCLUSTERED INDEX [IX_H_ParoleViolationReviewPpvi_LocationCd] ON [H_ParoleViolationReviewPpvi] (LocationCd ASC)

ALTER TABLE [H_ParoleViolationReviewPriorRevocationHearings]

DROP CONSTRAINT [PK_H_ParoleViolationReviewPriorRevocationHearings];

ALTER TABLE [H_ParoleViolationReviewPriorRevocationHearings] ADD CONSTRAINT [PK_H_ParoleViolationReviewPriorRevocationHearings] PRIMARY KEY CLUSTERED (H_ParoleViolationReviewPriorRevocationHearingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ParoleViolationReviewPriorRevocationHearings_LocationCd') BEGIN  Drop INDEX [IX_H_ParoleViolationReviewPriorRevocationHearings_LocationCd] on [H_ParoleViolationReviewPriorRevocationHearings]; END */

CREATE NONCLUSTERED INDEX [IX_H_ParoleViolationReviewPriorRevocationHearings_LocationCd] ON [H_ParoleViolationReviewPriorRevocationHearings] (LocationCd ASC)

ALTER TABLE [H_ParoleViolationReviewReportPpviCaseNumbers]

DROP CONSTRAINT [PK_H_ParoleViolationReviewReportPpviCaseNumbers];

ALTER TABLE [H_ParoleViolationReviewReportPpviCaseNumbers] ADD CONSTRAINT [PK_H_ParoleViolationReviewReportPpviCaseNumbers] PRIMARY KEY CLUSTERED (H_ParoleViolationReviewReportPpviCaseNumberId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ParoleViolationReviewReportPpviCaseNumbers_LocationCd') BEGIN  Drop INDEX [IX_H_ParoleViolationReviewReportPpviCaseNumbers_LocationCd] on [H_ParoleViolationReviewReportPpviCaseNumbers]; END */

CREATE NONCLUSTERED INDEX [IX_H_ParoleViolationReviewReportPpviCaseNumbers_LocationCd] ON [H_ParoleViolationReviewReportPpviCaseNumbers] (LocationCd ASC)

ALTER TABLE [H_ParoleViolationReviewReports]

DROP CONSTRAINT [PK_H_ParoleViolationReviewReports];

ALTER TABLE [H_ParoleViolationReviewReports] ADD CONSTRAINT [PK_H_ParoleViolationReviewReports] PRIMARY KEY CLUSTERED (H_ParoleViolationReviewReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ParoleViolationReviewReports_LocationCd') BEGIN  Drop INDEX [IX_H_ParoleViolationReviewReports_LocationCd] on [H_ParoleViolationReviewReports]; END */

CREATE NONCLUSTERED INDEX [IX_H_ParoleViolationReviewReports_LocationCd] ON [H_ParoleViolationReviewReports] (LocationCd ASC)

ALTER TABLE [H_ParoleViolationReviewResiFormalDiscipline]

DROP CONSTRAINT [PK_H_ParoleViolationReviewResiFormalDiscipline];

ALTER TABLE [H_ParoleViolationReviewResiFormalDiscipline] ADD CONSTRAINT [PK_H_ParoleViolationReviewResiFormalDiscipline] PRIMARY KEY CLUSTERED (H_ParoleViolationReviewResiFormalDisciplineId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ParoleViolationReviewResiFormalDiscipline_LocationCd') BEGIN  Drop INDEX [IX_H_ParoleViolationReviewResiFormalDiscipline_LocationCd] on [H_ParoleViolationReviewResiFormalDiscipline]; END */

CREATE NONCLUSTERED INDEX [IX_H_ParoleViolationReviewResiFormalDiscipline_LocationCd] ON [H_ParoleViolationReviewResiFormalDiscipline] (LocationCd ASC)

ALTER TABLE [H_ParoleViolationReviewRfdRuleViolations]

DROP CONSTRAINT [PK_H_ParoleViolationReviewRfdRuleViolations];

ALTER TABLE [H_ParoleViolationReviewRfdRuleViolations] ADD CONSTRAINT [PK_H_ParoleViolationReviewRfdRuleViolations] PRIMARY KEY CLUSTERED (H_ParoleViolationReviewRfdRuleViolationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ParoleViolationReviewRfdRuleViolations_LocationCd') BEGIN  Drop INDEX [IX_H_ParoleViolationReviewRfdRuleViolations_LocationCd] on [H_ParoleViolationReviewRfdRuleViolations]; END */

CREATE NONCLUSTERED INDEX [IX_H_ParoleViolationReviewRfdRuleViolations_LocationCd] ON [H_ParoleViolationReviewRfdRuleViolations] (LocationCd ASC)

ALTER TABLE [H_ParoleViolationReviews]

DROP CONSTRAINT [PK_H_ParoleViolationReviews];

ALTER TABLE [H_ParoleViolationReviews] ADD CONSTRAINT [PK_H_ParoleViolationReviews] PRIMARY KEY CLUSTERED (H_ParoleViolationReviewId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ParoleViolationReviews_LocationCd') BEGIN  Drop INDEX [IX_H_ParoleViolationReviews_LocationCd] on [H_ParoleViolationReviews]; END */

CREATE NONCLUSTERED INDEX [IX_H_ParoleViolationReviews_LocationCd] ON [H_ParoleViolationReviews] (LocationCd ASC)

ALTER TABLE [H_ParoleViolationReviewWitnesses]

DROP CONSTRAINT [PK_H_ParoleViolationReviewWitnesses];

ALTER TABLE [H_ParoleViolationReviewWitnesses] ADD CONSTRAINT [PK_H_ParoleViolationReviewWitnesses] PRIMARY KEY CLUSTERED (H_ParoleViolationReviewWitnessId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ParoleViolationReviewWitnesses_LocationCd') BEGIN  Drop INDEX [IX_H_ParoleViolationReviewWitnesses_LocationCd] on [H_ParoleViolationReviewWitnesses]; END */

CREATE NONCLUSTERED INDEX [IX_H_ParoleViolationReviewWitnesses_LocationCd] ON [H_ParoleViolationReviewWitnesses] (LocationCd ASC)

ALTER TABLE [H_PersonalProtectionOrders]

DROP CONSTRAINT [PK_H_PersonalProtectionOrders];

ALTER TABLE [H_PersonalProtectionOrders] ADD CONSTRAINT [PK_H_PersonalProtectionOrders] PRIMARY KEY CLUSTERED (H_PersonalProtectionOrderId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PersonalProtectionOrders_LocationCd') BEGIN  Drop INDEX [IX_H_PersonalProtectionOrders_LocationCd] on [H_PersonalProtectionOrders]; END */

CREATE NONCLUSTERED INDEX [IX_H_PersonalProtectionOrders_LocationCd] ON [H_PersonalProtectionOrders] (LocationCd ASC)

ALTER TABLE [H_Phase1InterviewEventOffenders]

DROP CONSTRAINT [PK_H_Phase1InterviewEventOffenders];

ALTER TABLE [H_Phase1InterviewEventOffenders] ADD CONSTRAINT [PK_H_Phase1InterviewEventOffenders] PRIMARY KEY CLUSTERED (H_Phase1InterviewEventOffenderId  ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_Phase1InterviewEventOffenders_LocationCd') BEGIN  Drop INDEX [IX_H_Phase1InterviewEventOffenders_LocationCd] on [H_Phase1InterviewEventOffenders]; END */

CREATE NONCLUSTERED INDEX [IX_H_Phase1InterviewEventOffenders_LocationCd] ON [H_Phase1InterviewEventOffenders] (LocationCd ASC)

ALTER TABLE [H_PhysicalFileTrackings]

DROP CONSTRAINT [PK_H_PhysicalFileTrackings];

ALTER TABLE [H_PhysicalFileTrackings] ADD CONSTRAINT [PK_H_PhysicalFileTrackings] PRIMARY KEY CLUSTERED (H_PhysicalFileTrackingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PhysicalFileTrackings_LocationCd') BEGIN  Drop INDEX [IX_H_PhysicalFileTrackings_LocationCd] on [H_PhysicalFileTrackings]; END */

CREATE NONCLUSTERED INDEX [IX_H_PhysicalFileTrackings_LocationCd] ON [H_PhysicalFileTrackings] (LocationCd ASC)

ALTER TABLE [H_PhysicalFileTrackingTransfers]

DROP CONSTRAINT [PK_H_PhysicalFileTrackingTransfers];

ALTER TABLE [H_PhysicalFileTrackingTransfers] ADD CONSTRAINT [PK_H_PhysicalFileTrackingTransfers] PRIMARY KEY CLUSTERED (H_PhysicalFileTrackingTransferId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PhysicalFileTrackingTransfers_LocationCd') BEGIN  Drop INDEX [IX_H_PhysicalFileTrackingTransfers_LocationCd] on [H_PhysicalFileTrackingTransfers]; END */

CREATE NONCLUSTERED INDEX [IX_H_PhysicalFileTrackingTransfers_LocationCd] ON [H_PhysicalFileTrackingTransfers] (LocationCd ASC)

ALTER TABLE [H_PhysicalIdentifiers]

DROP CONSTRAINT [PK_H_PhysicalIdentifiers];

ALTER TABLE [H_PhysicalIdentifiers] ADD CONSTRAINT [PK_H_PhysicalIdentifiers] PRIMARY KEY CLUSTERED (H_PhysicalIdentifierId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PhysicalIdentifiers_LocationCd') BEGIN  Drop INDEX [IX_H_PhysicalIdentifiers_LocationCd] on [H_PhysicalIdentifiers]; END */

CREATE NONCLUSTERED INDEX [IX_H_PhysicalIdentifiers_LocationCd] ON [H_PhysicalIdentifiers] (LocationCd ASC)

ALTER TABLE [H_PrathyushaTrainingAddresses]

DROP CONSTRAINT [PK_H_PrathyushaTrainingAddresses];

ALTER TABLE [H_PrathyushaTrainingAddresses] ADD CONSTRAINT [PK_H_PrathyushaTrainingAddresses] PRIMARY KEY CLUSTERED (H_TrainingAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PrathyushaTrainingAddresses_LocationCd') BEGIN  Drop INDEX [IX_H_PrathyushaTrainingAddresses_LocationCd] on [H_PrathyushaTrainingAddresses]; END */

CREATE NONCLUSTERED INDEX [IX_H_PrathyushaTrainingAddresses_LocationCd] ON [H_PrathyushaTrainingAddresses] (LocationCd ASC)

ALTER TABLE [H_PrathyushaTrainingAddressPhones]

DROP CONSTRAINT [PK_H_PrathyushaTrainingAddressPhones];

ALTER TABLE [H_PrathyushaTrainingAddressPhones] ADD CONSTRAINT [PK_H_PrathyushaTrainingAddressPhones] PRIMARY KEY CLUSTERED (H_TrainingAddressPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PrathyushaTrainingAddressPhones_LocationCd') BEGIN  Drop INDEX [IX_H_PrathyushaTrainingAddressPhones_LocationCd] on [H_PrathyushaTrainingAddressPhones]; END */

CREATE NONCLUSTERED INDEX [IX_H_PrathyushaTrainingAddressPhones_LocationCd] ON [H_PrathyushaTrainingAddressPhones] (LocationCd ASC)

ALTER TABLE [H_PreaReporting]

DROP CONSTRAINT [PK_H_PreaReporting];

ALTER TABLE [H_PreaReporting] ADD CONSTRAINT [PK_H_PreaReporting] PRIMARY KEY CLUSTERED (H_PreaReportingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PreaReporting_LocationCd') BEGIN  Drop INDEX [IX_H_PreaReporting_LocationCd] on [H_PreaReporting]; END */

CREATE NONCLUSTERED INDEX [IX_H_PreaReporting_LocationCd] ON [H_PreaReporting] (LocationCd ASC)

ALTER TABLE [H_PreaReportingForceTypes]

DROP CONSTRAINT [PK_H_PreaReportingForceTypes];

ALTER TABLE [H_PreaReportingForceTypes] ADD CONSTRAINT [PK_H_PreaReportingForceTypes] PRIMARY KEY CLUSTERED (H_PreaReportingForceTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PreaReportingForceTypes_LocationCd') BEGIN  Drop INDEX [IX_H_PreaReportingForceTypes_LocationCd] on [H_PreaReportingForceTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_PreaReportingForceTypes_LocationCd] ON [H_PreaReportingForceTypes] (LocationCd ASC)

ALTER TABLE [H_PreaReportingIncidentNatures]

DROP CONSTRAINT [PK_H_PreaReportingIncidentNatures];

ALTER TABLE [H_PreaReportingIncidentNatures] ADD CONSTRAINT [PK_H_PreaReportingIncidentNatures] PRIMARY KEY CLUSTERED (H_PreaReportingIncidentNatureId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PreaReportingIncidentNatures_LocationCd') BEGIN  Drop INDEX [IX_H_PreaReportingIncidentNatures_LocationCd] on [H_PreaReportingIncidentNatures]; END */

CREATE NONCLUSTERED INDEX [IX_H_PreaReportingIncidentNatures_LocationCd] ON [H_PreaReportingIncidentNatures] (LocationCd ASC)

ALTER TABLE [H_PreaReportingInstDiscNotices]

DROP CONSTRAINT [PK_H_PreaReportingInstDiscNotices];

ALTER TABLE [H_PreaReportingInstDiscNotices] ADD CONSTRAINT [PK_H_PreaReportingInstDiscNotices] PRIMARY KEY CLUSTERED (H_PreaReportingInstDiscNoticeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PreaReportingInstDiscNotices_LocationCd') BEGIN  Drop INDEX [IX_H_PreaReportingInstDiscNotices_LocationCd] on [H_PreaReportingInstDiscNotices]; END */

CREATE NONCLUSTERED INDEX [IX_H_PreaReportingInstDiscNotices_LocationCd] ON [H_PreaReportingInstDiscNotices] (LocationCd ASC)

ALTER TABLE [H_PreaReportingLocations]

DROP CONSTRAINT [PK_H_PreaReportingLocations];

ALTER TABLE [H_PreaReportingLocations] ADD CONSTRAINT [PK_H_PreaReportingLocations] PRIMARY KEY CLUSTERED (H_PreaReportingLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PreaReportingLocations_LocationCd') BEGIN  Drop INDEX [IX_H_PreaReportingLocations_LocationCd] on [H_PreaReportingLocations]; END */

CREATE NONCLUSTERED INDEX [IX_H_PreaReportingLocations_LocationCd] ON [H_PreaReportingLocations] (LocationCd ASC)

ALTER TABLE [H_PreaReportingPostReportHousingActions]

DROP CONSTRAINT [PK_H_PreaReportingPostReportHousingActions];

ALTER TABLE [H_PreaReportingPostReportHousingActions] ADD CONSTRAINT [PK_H_PreaReportingPostReportHousingActions] PRIMARY KEY CLUSTERED (H_PreaReportingPostReportHousingActionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PreaReportingPostReportHousingActions_LocationCd') BEGIN  Drop INDEX [IX_H_PreaReportingPostReportHousingActions_LocationCd] on [H_PreaReportingPostReportHousingActions]; END */

CREATE NONCLUSTERED INDEX [IX_H_PreaReportingPostReportHousingActions_LocationCd] ON [H_PreaReportingPostReportHousingActions] (LocationCd ASC)

ALTER TABLE [H_PreaReportingPostReportMedicalActions]

DROP CONSTRAINT [PK_H_PreaReportingPostReportMedicalActions];

ALTER TABLE [H_PreaReportingPostReportMedicalActions] ADD CONSTRAINT [PK_H_PreaReportingPostReportMedicalActions] PRIMARY KEY CLUSTERED (H_PreaReportingPostReportMedicalActionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PreaReportingPostReportMedicalActions_LocationCd') BEGIN  Drop INDEX [IX_H_PreaReportingPostReportMedicalActions_LocationCd] on [H_PreaReportingPostReportMedicalActions]; END */

CREATE NONCLUSTERED INDEX [IX_H_PreaReportingPostReportMedicalActions_LocationCd] ON [H_PreaReportingPostReportMedicalActions] (LocationCd ASC)

ALTER TABLE [H_PreaReportingRaces]

DROP CONSTRAINT [PK_H_PreaReportingRaces];

ALTER TABLE [H_PreaReportingRaces] ADD CONSTRAINT [PK_H_PreaReportingRaces] PRIMARY KEY CLUSTERED (H_PreaReportingRaceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PreaReportingRaces_LocationCd') BEGIN  Drop INDEX [IX_H_PreaReportingRaces_LocationCd] on [H_PreaReportingRaces]; END */

CREATE NONCLUSTERED INDEX [IX_H_PreaReportingRaces_LocationCd] ON [H_PreaReportingRaces] (LocationCd ASC)

ALTER TABLE [H_PreaReportingReporters]

DROP CONSTRAINT [PK_H_PreaReportingReporters];

ALTER TABLE [H_PreaReportingReporters] ADD CONSTRAINT [PK_H_PreaReportingReporters] PRIMARY KEY CLUSTERED (H_PreaReportingReporterId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PreaReportingReporters_LocationCd') BEGIN  Drop INDEX [IX_H_PreaReportingReporters_LocationCd] on [H_PreaReportingReporters]; END */

CREATE NONCLUSTERED INDEX [IX_H_PreaReportingReporters_LocationCd] ON [H_PreaReportingReporters] (LocationCd ASC)

ALTER TABLE [H_PreaReportingSanctions]

DROP CONSTRAINT [PK_H_PreaReportingSanctions];

ALTER TABLE [H_PreaReportingSanctions] ADD CONSTRAINT [PK_H_PreaReportingSanctions] PRIMARY KEY CLUSTERED (H_PreaReportingSanctionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PreaReportingSanctions_LocationCd') BEGIN  Drop INDEX [IX_H_PreaReportingSanctions_LocationCd] on [H_PreaReportingSanctions]; END */

CREATE NONCLUSTERED INDEX [IX_H_PreaReportingSanctions_LocationCd] ON [H_PreaReportingSanctions] (LocationCd ASC)

ALTER TABLE [H_PreaReportingTimes]

DROP CONSTRAINT [PK_H_PreaReportingTimes];

ALTER TABLE [H_PreaReportingTimes] ADD CONSTRAINT [PK_H_PreaReportingTimes] PRIMARY KEY CLUSTERED (H_PreaReportingTimeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PreaReportingTimes_LocationCd') BEGIN  Drop INDEX [IX_H_PreaReportingTimes_LocationCd] on [H_PreaReportingTimes]; END */

CREATE NONCLUSTERED INDEX [IX_H_PreaReportingTimes_LocationCd] ON [H_PreaReportingTimes] (LocationCd ASC)

ALTER TABLE [H_PreaReportingVictimInjuries]

DROP CONSTRAINT [PK_H_PreaReportingVictimInjuries];

ALTER TABLE [H_PreaReportingVictimInjuries] ADD CONSTRAINT [PK_H_PreaReportingVictimInjuries] PRIMARY KEY CLUSTERED (H_PreaReportingVictimInjuryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PreaReportingVictimInjuries_LocationCd') BEGIN  Drop INDEX [IX_H_PreaReportingVictimInjuries_LocationCd] on [H_PreaReportingVictimInjuries]; END */

CREATE NONCLUSTERED INDEX [IX_H_PreaReportingVictimInjuries_LocationCd] ON [H_PreaReportingVictimInjuries] (LocationCd ASC)

ALTER TABLE [H_Prescreenings]

DROP CONSTRAINT [PK_H_Prescreenings];

ALTER TABLE [H_Prescreenings] ADD CONSTRAINT [PK_H_Prescreenings] PRIMARY KEY CLUSTERED (H_PrescreeningId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_Prescreenings_LocationCd') BEGIN  Drop INDEX [IX_H_Prescreenings_LocationCd] on [H_Prescreenings]; END */

CREATE NONCLUSTERED INDEX [IX_H_Prescreenings_LocationCd] ON [H_Prescreenings] (LocationCd ASC)

ALTER TABLE [H_PrescreeningScreeningResponses]

DROP CONSTRAINT [PK_H_PrescreeningScreeningResponses];

ALTER TABLE [H_PrescreeningScreeningResponses] ADD CONSTRAINT [PK_H_PrescreeningScreeningResponses] PRIMARY KEY CLUSTERED (H_PrescreeningScreeningResponseId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PrescreeningScreeningResponses_LocationCd') BEGIN  Drop INDEX [IX_H_PrescreeningScreeningResponses_LocationCd] on [H_PrescreeningScreeningResponses]; END */

CREATE NONCLUSTERED INDEX [IX_H_PrescreeningScreeningResponses_LocationCd] ON [H_PrescreeningScreeningResponses] (LocationCd ASC)

ALTER TABLE [H_PresentenceAddendumCharges]

DROP CONSTRAINT [PK_H_PreSentenceAddendumCharges];

ALTER TABLE [H_PresentenceAddendumCharges] ADD CONSTRAINT [PK_H_PreSentenceAddendumCharges] PRIMARY KEY CLUSTERED (H_PresentenceAddendumChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PresentenceAddendumCharges_LocationCd') BEGIN  Drop INDEX [IX_H_PresentenceAddendumCharges_LocationCd] on [H_PresentenceAddendumCharges]; END */

CREATE NONCLUSTERED INDEX [IX_H_PresentenceAddendumCharges_LocationCd] ON [H_PresentenceAddendumCharges] (LocationCd ASC)

ALTER TABLE [H_PresentenceAddendums]

DROP CONSTRAINT [PK_H_PreSentenceAddendums];

ALTER TABLE [H_PresentenceAddendums] ADD CONSTRAINT [PK_H_PreSentenceAddendums] PRIMARY KEY CLUSTERED (H_PresentenceAddendumId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PresentenceAddendums_LocationCd') BEGIN  Drop INDEX [IX_H_PresentenceAddendums_LocationCd] on [H_PresentenceAddendums]; END */

CREATE NONCLUSTERED INDEX [IX_H_PresentenceAddendums_LocationCd] ON [H_PresentenceAddendums] (LocationCd ASC)

ALTER TABLE [H_PresentenceInvestigationCharges]

DROP CONSTRAINT [PK_H_PreSentenceInvestigationCharges];

ALTER TABLE [H_PresentenceInvestigationCharges] ADD CONSTRAINT [PK_H_PreSentenceInvestigationCharges] PRIMARY KEY CLUSTERED (H_PresentenceInvestigationChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PresentenceInvestigationCharges_LocationCd') BEGIN  Drop INDEX [IX_H_PresentenceInvestigationCharges_LocationCd] on [H_PresentenceInvestigationCharges]; END */

CREATE NONCLUSTERED INDEX [IX_H_PresentenceInvestigationCharges_LocationCd] ON [H_PresentenceInvestigationCharges] (LocationCd ASC)

ALTER TABLE [H_PresentenceInvestigations]

DROP CONSTRAINT [PK_H_PreSentenceInvestigations];

ALTER TABLE [H_PresentenceInvestigations] ADD CONSTRAINT [PK_H_PreSentenceInvestigations] PRIMARY KEY CLUSTERED (H_PresentenceInvestigationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PresentenceInvestigations_LocationCd') BEGIN  Drop INDEX [IX_H_PresentenceInvestigations_LocationCd] on [H_PresentenceInvestigations]; END */

CREATE NONCLUSTERED INDEX [IX_H_PresentenceInvestigations_LocationCd] ON [H_PresentenceInvestigations] (LocationCd ASC)

ALTER TABLE [H_PretrialInterviewCharges]

DROP CONSTRAINT [PK_H_PretrialInterviewCharges];

ALTER TABLE [H_PretrialInterviewCharges] ADD CONSTRAINT [PK_H_PretrialInterviewCharges] PRIMARY KEY CLUSTERED (H_PretrialInterviewChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PretrialInterviewCharges_LocationCd') BEGIN  Drop INDEX [IX_H_PretrialInterviewCharges_LocationCd] on [H_PretrialInterviewCharges]; END */

CREATE NONCLUSTERED INDEX [IX_H_PretrialInterviewCharges_LocationCd] ON [H_PretrialInterviewCharges] (LocationCd ASC)

ALTER TABLE [H_PretrialInterviews]

DROP CONSTRAINT [PK_H_PreTrialInterviews];

ALTER TABLE [H_PretrialInterviews] ADD CONSTRAINT [PK_H_PreTrialInterviews] PRIMARY KEY CLUSTERED (H_PretrialInterviewId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PretrialInterviews_LocationCd') BEGIN  Drop INDEX [IX_H_PretrialInterviews_LocationCd] on [H_PretrialInterviews]; END */

CREATE NONCLUSTERED INDEX [IX_H_PretrialInterviews_LocationCd] ON [H_PretrialInterviews] (LocationCd ASC)

ALTER TABLE [H_ProbationAgreementAssocRules]

DROP CONSTRAINT [PK_H_ProbationAgreementAssocRules];

ALTER TABLE [H_ProbationAgreementAssocRules] ADD CONSTRAINT [PK_H_ProbationAgreementAssocRules] PRIMARY KEY CLUSTERED (H_ProbationAgreementAssocRuleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ProbationAgreementAssocRules_LocationCd') BEGIN  Drop INDEX [IX_H_ProbationAgreementAssocRules_LocationCd] on [H_ProbationAgreementAssocRules]; END */

CREATE NONCLUSTERED INDEX [IX_H_ProbationAgreementAssocRules_LocationCd] ON [H_ProbationAgreementAssocRules] (LocationCd ASC)

ALTER TABLE [H_ProbationAgreementCharges]

DROP CONSTRAINT [PK_H_ProbationAgreementCharges];

ALTER TABLE [H_ProbationAgreementCharges] ADD CONSTRAINT [PK_H_ProbationAgreementCharges] PRIMARY KEY CLUSTERED (H_ProbationAgreementChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ProbationAgreementCharges_LocationCd') BEGIN  Drop INDEX [IX_H_ProbationAgreementCharges_LocationCd] on [H_ProbationAgreementCharges]; END */

CREATE NONCLUSTERED INDEX [IX_H_ProbationAgreementCharges_LocationCd] ON [H_ProbationAgreementCharges] (LocationCd ASC)

ALTER TABLE [H_ProbationAgreements]

DROP CONSTRAINT [PK_H_ProbationAgreements];

ALTER TABLE [H_ProbationAgreements] ADD CONSTRAINT [PK_H_ProbationAgreements] PRIMARY KEY CLUSTERED (H_ProbationAgreementId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ProbationAgreements_LocationCd') BEGIN  Drop INDEX [IX_H_ProbationAgreements_LocationCd] on [H_ProbationAgreements]; END */

CREATE NONCLUSTERED INDEX [IX_H_ProbationAgreements_LocationCd] ON [H_ProbationAgreements] (LocationCd ASC)

ALTER TABLE [H_ProbationReportOfViolation]

DROP CONSTRAINT [PK_H_ProbationReportOfViolation];

ALTER TABLE [H_ProbationReportOfViolation] ADD CONSTRAINT [PK_H_ProbationReportOfViolation] PRIMARY KEY CLUSTERED (H_ProbationReportOfViolationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ProbationReportOfViolation_LocationCd') BEGIN  Drop INDEX [IX_H_ProbationReportOfViolation_LocationCd] on [H_ProbationReportOfViolation]; END */

CREATE NONCLUSTERED INDEX [IX_H_ProbationReportOfViolation_LocationCd] ON [H_ProbationReportOfViolation] (LocationCd ASC)

ALTER TABLE [H_ProbationRovCharges]

DROP CONSTRAINT [PK_H_ProbationROVCharges];

ALTER TABLE [H_ProbationRovCharges] ADD CONSTRAINT [PK_H_ProbationROVCharges] PRIMARY KEY CLUSTERED (H_ProbationRovChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ProbationRovCharges_LocationCd') BEGIN  Drop INDEX [IX_H_ProbationRovCharges_LocationCd] on [H_ProbationRovCharges]; END */

CREATE NONCLUSTERED INDEX [IX_H_ProbationRovCharges_LocationCd] ON [H_ProbationRovCharges] (LocationCd ASC)

ALTER TABLE [H_ProbationRovFieldRuleViolationIncidents]

DROP CONSTRAINT [PK_H_ProbationROVFieldRuleViolationIncidents];

ALTER TABLE [H_ProbationRovFieldRuleViolationIncidents] ADD CONSTRAINT [PK_H_ProbationROVFieldRuleViolationIncidents] PRIMARY KEY CLUSTERED (H_ProbationRovFieldRuleViolationIncidentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ProbationRovFieldRuleViolationIncidents_LocationCd') BEGIN  Drop INDEX [IX_H_ProbationRovFieldRuleViolationIncidents_LocationCd] on [H_ProbationRovFieldRuleViolationIncidents]; END */

CREATE NONCLUSTERED INDEX [IX_H_ProbationRovFieldRuleViolationIncidents_LocationCd] ON [H_ProbationRovFieldRuleViolationIncidents] (LocationCd ASC)

ALTER TABLE [H_ProbationRovHearingResponseDecisions]

DROP CONSTRAINT [PK_H_ProbationROVHearingResponseDecisions];

ALTER TABLE [H_ProbationRovHearingResponseDecisions] ADD CONSTRAINT [PK_H_ProbationROVHearingResponseDecisions] PRIMARY KEY CLUSTERED (H_ProbationRovHearingResponseDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ProbationRovHearingResponseDecisions_LocationCd') BEGIN  Drop INDEX [IX_H_ProbationRovHearingResponseDecisions_LocationCd] on [H_ProbationRovHearingResponseDecisions]; END */

CREATE NONCLUSTERED INDEX [IX_H_ProbationRovHearingResponseDecisions_LocationCd] ON [H_ProbationRovHearingResponseDecisions] (LocationCd ASC)

ALTER TABLE [H_ProbationRovHearingResponseRecommendations]

DROP CONSTRAINT [PK_H_ProbationROVHearingResponseRecommendations];

ALTER TABLE [H_ProbationRovHearingResponseRecommendations] ADD CONSTRAINT [PK_H_ProbationROVHearingResponseRecommendations] PRIMARY KEY CLUSTERED (H_ProbationRovHearingResponseRecommendationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ProbationRovHearingResponseRecommendations_LocationCd') BEGIN  Drop INDEX [IX_H_ProbationRovHearingResponseRecommendations_LocationCd] on [H_ProbationRovHearingResponseRecommendations]; END */

CREATE NONCLUSTERED INDEX [IX_H_ProbationRovHearingResponseRecommendations_LocationCd] ON [H_ProbationRovHearingResponseRecommendations] (LocationCd ASC)

ALTER TABLE [H_ProbationRovHearingResponses]

DROP CONSTRAINT [PK_H_ProbationROVHearingResponses];

ALTER TABLE [H_ProbationRovHearingResponses] ADD CONSTRAINT [PK_H_ProbationROVHearingResponses] PRIMARY KEY CLUSTERED (H_ProbationRovHearingResponseId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ProbationRovHearingResponses_LocationCd') BEGIN  Drop INDEX [IX_H_ProbationRovHearingResponses_LocationCd] on [H_ProbationRovHearingResponses]; END */

CREATE NONCLUSTERED INDEX [IX_H_ProbationRovHearingResponses_LocationCd] ON [H_ProbationRovHearingResponses] (LocationCd ASC)

ALTER TABLE [H_ProbationRovResidentialFormalDisciplines]

DROP CONSTRAINT [PK_H_ProbationROVResidentialFormalDisciplines];

ALTER TABLE [H_ProbationRovResidentialFormalDisciplines] ADD CONSTRAINT [PK_H_ProbationROVResidentialFormalDisciplines] PRIMARY KEY CLUSTERED (H_ProbationRovResidentialFormalDisciplineId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ProbationRovResidentialFormalDisciplines_LocationCd') BEGIN  Drop INDEX [IX_H_ProbationRovResidentialFormalDisciplines_LocationCd] on [H_ProbationRovResidentialFormalDisciplines]; END */

CREATE NONCLUSTERED INDEX [IX_H_ProbationRovResidentialFormalDisciplines_LocationCd] ON [H_ProbationRovResidentialFormalDisciplines] (LocationCd ASC)

ALTER TABLE [H_ProbationRovResiFormalDisciplineRuleViolations]

DROP CONSTRAINT [PK_H_ProbationROVResiFormalDisciplineRuleViolations];

ALTER TABLE [H_ProbationRovResiFormalDisciplineRuleViolations] ADD CONSTRAINT [PK_H_ProbationROVResiFormalDisciplineRuleViolations] PRIMARY KEY CLUSTERED (H_ProbationRovResiFormalDisciplineRuleViolationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ProbationRovResiFormalDisciplineRuleViolations_LocationCd') BEGIN  Drop INDEX [IX_H_ProbationRovResiFormalDisciplineRuleViolations_LocationCd] on [H_ProbationRovResiFormalDisciplineRuleViolations]; END */

CREATE NONCLUSTERED INDEX [IX_H_ProbationRovResiFormalDisciplineRuleViolations_LocationCd] ON [H_ProbationRovResiFormalDisciplineRuleViolations] (LocationCd ASC)

ALTER TABLE [H_Property]

DROP CONSTRAINT [PK_H_Property];

ALTER TABLE [H_Property] ADD CONSTRAINT [PK_H_Property] PRIMARY KEY CLUSTERED (H_PropertyId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_Property_LocationCd') BEGIN  Drop INDEX [IX_H_Property_LocationCd] on [H_Property]; END */

CREATE NONCLUSTERED INDEX [IX_H_Property_LocationCd] ON [H_Property] (LocationCd ASC)

ALTER TABLE [H_PropertyGroups]

DROP CONSTRAINT [PK_H_PropertyGroups];

ALTER TABLE [H_PropertyGroups] ADD CONSTRAINT [PK_H_PropertyGroups] PRIMARY KEY CLUSTERED (H_PropertyGroupId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PropertyGroups_LocationCd') BEGIN  Drop INDEX [IX_H_PropertyGroups_LocationCd] on [H_PropertyGroups]; END */

CREATE NONCLUSTERED INDEX [IX_H_PropertyGroups_LocationCd] ON [H_PropertyGroups] (LocationCd ASC)

ALTER TABLE [H_PropertyGroupShipmentDetails]

DROP CONSTRAINT [PK_H_PropertyGroupShipmentDetails];

ALTER TABLE [H_PropertyGroupShipmentDetails] ADD CONSTRAINT [PK_H_PropertyGroupShipmentDetails] PRIMARY KEY CLUSTERED (H_PropertyGroupShipmentDetailId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PropertyGroupShipmentDetails_LocationCd') BEGIN  Drop INDEX [IX_H_PropertyGroupShipmentDetails_LocationCd] on [H_PropertyGroupShipmentDetails]; END */

CREATE NONCLUSTERED INDEX [IX_H_PropertyGroupShipmentDetails_LocationCd] ON [H_PropertyGroupShipmentDetails] (LocationCd ASC)

ALTER TABLE [H_PropertyShipmentAddresses]

DROP CONSTRAINT [PK_H_PropertyShipmentAddresses];

ALTER TABLE [H_PropertyShipmentAddresses] ADD CONSTRAINT [PK_H_PropertyShipmentAddresses] PRIMARY KEY CLUSTERED (H_PropertyShipmentAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PropertyShipmentAddresses_LocationCd') BEGIN  Drop INDEX [IX_H_PropertyShipmentAddresses_LocationCd] on [H_PropertyShipmentAddresses]; END */

CREATE NONCLUSTERED INDEX [IX_H_PropertyShipmentAddresses_LocationCd] ON [H_PropertyShipmentAddresses] (LocationCd ASC)

ALTER TABLE [H_PropertyStatuses]

DROP CONSTRAINT [PK_H_PropertyStatuses];

ALTER TABLE [H_PropertyStatuses] ADD CONSTRAINT [PK_H_PropertyStatuses] PRIMARY KEY CLUSTERED (H_PropertyStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PropertyStatuses_LocationCd') BEGIN  Drop INDEX [IX_H_PropertyStatuses_LocationCd] on [H_PropertyStatuses]; END */

CREATE NONCLUSTERED INDEX [IX_H_PropertyStatuses_LocationCd] ON [H_PropertyStatuses] (LocationCd ASC)

ALTER TABLE [H_PsiAddendumChargeRecommendations]

DROP CONSTRAINT [PK_H_PSIAddendumChargeRecommendations];

ALTER TABLE [H_PsiAddendumChargeRecommendations] ADD CONSTRAINT [PK_H_PSIAddendumChargeRecommendations] PRIMARY KEY CLUSTERED (H_PsiAddendumChargeRecommendationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PsiAddendumChargeRecommendations_LocationCd') BEGIN  Drop INDEX [IX_H_PsiAddendumChargeRecommendations_LocationCd] on [H_PsiAddendumChargeRecommendations]; END */

CREATE NONCLUSTERED INDEX [IX_H_PsiAddendumChargeRecommendations_LocationCd] ON [H_PsiAddendumChargeRecommendations] (LocationCd ASC)

ALTER TABLE [H_PsiChargeRecommendations]

DROP CONSTRAINT [PK_H_PSIChargeRecommendations];

ALTER TABLE [H_PsiChargeRecommendations] ADD CONSTRAINT [PK_H_PSIChargeRecommendations] PRIMARY KEY CLUSTERED (H_PsiChargeRecommendationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PsiChargeRecommendations_LocationCd') BEGIN  Drop INDEX [IX_H_PsiChargeRecommendations_LocationCd] on [H_PsiChargeRecommendations]; END */

CREATE NONCLUSTERED INDEX [IX_H_PsiChargeRecommendations_LocationCd] ON [H_PsiChargeRecommendations] (LocationCd ASC)

ALTER TABLE [H_PsiExtraOffenderNeeds]

DROP CONSTRAINT [PK_H_PsiExtraOffenderNeeds];

ALTER TABLE [H_PsiExtraOffenderNeeds] ADD CONSTRAINT [PK_H_PsiExtraOffenderNeeds] PRIMARY KEY CLUSTERED (H_PsiExtraOffenderNeedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_PsiExtraOffenderNeeds_LocationCd') BEGIN  Drop INDEX [IX_H_PsiExtraOffenderNeeds_LocationCd] on [H_PsiExtraOffenderNeeds]; END */

CREATE NONCLUSTERED INDEX [IX_H_PsiExtraOffenderNeeds_LocationCd] ON [H_PsiExtraOffenderNeeds] (LocationCd ASC)

ALTER TABLE [H_ReceptionReports]

DROP CONSTRAINT [PK_H_ReceptionReports];

ALTER TABLE [H_ReceptionReports] ADD CONSTRAINT [PK_H_ReceptionReports] PRIMARY KEY CLUSTERED (H_ReceptionReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ReceptionReports_LocationCd') BEGIN  Drop INDEX [IX_H_ReceptionReports_LocationCd] on [H_ReceptionReports]; END */

CREATE NONCLUSTERED INDEX [IX_H_ReceptionReports_LocationCd] ON [H_ReceptionReports] (LocationCd ASC)

ALTER TABLE [H_ReceptionTracking]

DROP CONSTRAINT [PK_H_ReceptionTracking];

ALTER TABLE [H_ReceptionTracking] ADD CONSTRAINT [PK_H_ReceptionTracking] PRIMARY KEY CLUSTERED (H_ReceptionTrackingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ReceptionTracking_LocationCd') BEGIN  Drop INDEX [IX_H_ReceptionTracking_LocationCd] on [H_ReceptionTracking]; END */

CREATE NONCLUSTERED INDEX [IX_H_ReceptionTracking_LocationCd] ON [H_ReceptionTracking] (LocationCd ASC)

ALTER TABLE [H_ReconsiderSentenceWorksheet]

DROP CONSTRAINT [PK_H_ReconsiderSentenceWorksheet];

ALTER TABLE [H_ReconsiderSentenceWorksheet] ADD CONSTRAINT [PK_H_ReconsiderSentenceWorksheet] PRIMARY KEY CLUSTERED (H_ReconsiderSentenceWorksheetId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ReconsiderSentenceWorksheet_LocationCd') BEGIN  Drop INDEX [IX_H_ReconsiderSentenceWorksheet_LocationCd] on [H_ReconsiderSentenceWorksheet]; END */

CREATE NONCLUSTERED INDEX [IX_H_ReconsiderSentenceWorksheet_LocationCd] ON [H_ReconsiderSentenceWorksheet] (LocationCd ASC)

ALTER TABLE [H_ReconsiderSentenceWorksheetCharges]

DROP CONSTRAINT [PK_H_ReconsiderSentenceWorksheetCharges];

ALTER TABLE [H_ReconsiderSentenceWorksheetCharges] ADD CONSTRAINT [PK_H_ReconsiderSentenceWorksheetCharges] PRIMARY KEY CLUSTERED (H_ReconsiderSentenceWorksheetChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ReconsiderSentenceWorksheetCharges_LocationCd') BEGIN  Drop INDEX [IX_H_ReconsiderSentenceWorksheetCharges_LocationCd] on [H_ReconsiderSentenceWorksheetCharges]; END */

CREATE NONCLUSTERED INDEX [IX_H_ReconsiderSentenceWorksheetCharges_LocationCd] ON [H_ReconsiderSentenceWorksheetCharges] (LocationCd ASC)

ALTER TABLE [H_ReentryCasePlanFaceSheet]

DROP CONSTRAINT [PK_H_ReentryCasePlanFaceSheet];

ALTER TABLE [H_ReentryCasePlanFaceSheet] ADD CONSTRAINT [PK_H_ReentryCasePlanFaceSheet] PRIMARY KEY CLUSTERED (H_ReentryCasePlanFaceSheetId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ReentryCasePlanFaceSheet_LocationCd') BEGIN  Drop INDEX [IX_H_ReentryCasePlanFaceSheet_LocationCd] on [H_ReentryCasePlanFaceSheet]; END */

CREATE NONCLUSTERED INDEX [IX_H_ReentryCasePlanFaceSheet_LocationCd] ON [H_ReentryCasePlanFaceSheet] (LocationCd ASC)

ALTER TABLE [H_ReleaseNotificationContacts]

DROP CONSTRAINT [PK_H_ReleaseNotificationContacts];

ALTER TABLE [H_ReleaseNotificationContacts] ADD CONSTRAINT [PK_H_ReleaseNotificationContacts] PRIMARY KEY CLUSTERED (H_ReleaseNotificationContactId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ReleaseNotificationContacts_LocationCd') BEGIN  Drop INDEX [IX_H_ReleaseNotificationContacts_LocationCd] on [H_ReleaseNotificationContacts]; END */

CREATE NONCLUSTERED INDEX [IX_H_ReleaseNotificationContacts_LocationCd] ON [H_ReleaseNotificationContacts] (LocationCd ASC)

ALTER TABLE [H_ReleaseNotificationReportExtras]

DROP CONSTRAINT [PK_H_ReleaseNotificationReportExtras];

ALTER TABLE [H_ReleaseNotificationReportExtras] ADD CONSTRAINT [PK_H_ReleaseNotificationReportExtras] PRIMARY KEY CLUSTERED (H_ReleaseNotificationReportExtraId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ReleaseNotificationReportExtras_LocationCd') BEGIN  Drop INDEX [IX_H_ReleaseNotificationReportExtras_LocationCd] on [H_ReleaseNotificationReportExtras]; END */

CREATE NONCLUSTERED INDEX [IX_H_ReleaseNotificationReportExtras_LocationCd] ON [H_ReleaseNotificationReportExtras] (LocationCd ASC)

ALTER TABLE [H_ReleaseNotificationReports]

DROP CONSTRAINT [PK_H_ReleaseNotificationReports];

ALTER TABLE [H_ReleaseNotificationReports] ADD CONSTRAINT [PK_H_ReleaseNotificationReports] PRIMARY KEY CLUSTERED (H_ReleaseNotificationReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ReleaseNotificationReports_LocationCd') BEGIN  Drop INDEX [IX_H_ReleaseNotificationReports_LocationCd] on [H_ReleaseNotificationReports]; END */

CREATE NONCLUSTERED INDEX [IX_H_ReleaseNotificationReports_LocationCd] ON [H_ReleaseNotificationReports] (LocationCd ASC)

ALTER TABLE [H_ReleaseNotifications]

DROP CONSTRAINT [PK_H_ReleaseNotifications];

ALTER TABLE [H_ReleaseNotifications] ADD CONSTRAINT [PK_H_ReleaseNotifications] PRIMARY KEY CLUSTERED (H_ReleaseNotificationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ReleaseNotifications_LocationCd') BEGIN  Drop INDEX [IX_H_ReleaseNotifications_LocationCd] on [H_ReleaseNotifications]; END */

CREATE NONCLUSTERED INDEX [IX_H_ReleaseNotifications_LocationCd] ON [H_ReleaseNotifications] (LocationCd ASC)

ALTER TABLE [H_ReleasesOfInformation]

DROP CONSTRAINT [PK_H_ReleasesOfInformation];

ALTER TABLE [H_ReleasesOfInformation] ADD CONSTRAINT [PK_H_ReleasesOfInformation] PRIMARY KEY CLUSTERED (H_ReleaseOfInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ReleasesOfInformation_LocationCd') BEGIN  Drop INDEX [IX_H_ReleasesOfInformation_LocationCd] on [H_ReleasesOfInformation]; END */

CREATE NONCLUSTERED INDEX [IX_H_ReleasesOfInformation_LocationCd] ON [H_ReleasesOfInformation] (LocationCd ASC)

ALTER TABLE [H_ResidentialAllegedRuleViolations]

DROP CONSTRAINT [PK_H_ResidentialAllegedRuleViolations];

ALTER TABLE [H_ResidentialAllegedRuleViolations] ADD CONSTRAINT [PK_H_ResidentialAllegedRuleViolations] PRIMARY KEY CLUSTERED (H_ResidentialAllegedRuleViolationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ResidentialAllegedRuleViolations_LocationCd') BEGIN  Drop INDEX [IX_H_ResidentialAllegedRuleViolations_LocationCd] on [H_ResidentialAllegedRuleViolations]; END */

CREATE NONCLUSTERED INDEX [IX_H_ResidentialAllegedRuleViolations_LocationCd] ON [H_ResidentialAllegedRuleViolations] (LocationCd ASC)

ALTER TABLE [H_ResidentialAppealReasons]

DROP CONSTRAINT [PK_H_ResidentialAppealReasons];

ALTER TABLE [H_ResidentialAppealReasons] ADD CONSTRAINT [PK_H_ResidentialAppealReasons] PRIMARY KEY CLUSTERED (H_ResidentialAppealReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ResidentialAppealReasons_LocationCd') BEGIN  Drop INDEX [IX_H_ResidentialAppealReasons_LocationCd] on [H_ResidentialAppealReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_ResidentialAppealReasons_LocationCd] ON [H_ResidentialAppealReasons] (LocationCd ASC)

ALTER TABLE [H_ResidentialAppealReports]

DROP CONSTRAINT [PK_H_ResidentialAppealReports];

ALTER TABLE [H_ResidentialAppealReports] ADD CONSTRAINT [PK_H_ResidentialAppealReports] PRIMARY KEY CLUSTERED (H_ResidentialAppealReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ResidentialAppealReports_LocationCd') BEGIN  Drop INDEX [IX_H_ResidentialAppealReports_LocationCd] on [H_ResidentialAppealReports]; END */

CREATE NONCLUSTERED INDEX [IX_H_ResidentialAppealReports_LocationCd] ON [H_ResidentialAppealReports] (LocationCd ASC)

ALTER TABLE [H_ResidentialAppeals]

DROP CONSTRAINT [PK_H_ResidentialAppeals];

ALTER TABLE [H_ResidentialAppeals] ADD CONSTRAINT [PK_H_ResidentialAppeals] PRIMARY KEY CLUSTERED (H_ResidentialAppealId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ResidentialAppeals_LocationCd') BEGIN  Drop INDEX [IX_H_ResidentialAppeals_LocationCd] on [H_ResidentialAppeals]; END */

CREATE NONCLUSTERED INDEX [IX_H_ResidentialAppeals_LocationCd] ON [H_ResidentialAppeals] (LocationCd ASC)

ALTER TABLE [H_ResidentialFormalDiscipline]

DROP CONSTRAINT [PK_H_ResidentialFormalDiscipline];

ALTER TABLE [H_ResidentialFormalDiscipline] ADD CONSTRAINT [PK_H_ResidentialFormalDiscipline] PRIMARY KEY CLUSTERED (H_ResidentialFormalDisciplineId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ResidentialFormalDiscipline_LocationCd') BEGIN  Drop INDEX [IX_H_ResidentialFormalDiscipline_LocationCd] on [H_ResidentialFormalDiscipline]; END */

CREATE NONCLUSTERED INDEX [IX_H_ResidentialFormalDiscipline_LocationCd] ON [H_ResidentialFormalDiscipline] (LocationCd ASC)

ALTER TABLE [H_ResidentialFormalDisciplineReports]

DROP CONSTRAINT [PK_H_ResidentialFormalDisciplineReports];

ALTER TABLE [H_ResidentialFormalDisciplineReports] ADD CONSTRAINT [PK_H_ResidentialFormalDisciplineReports] PRIMARY KEY CLUSTERED (H_ResidentialFormalDisciplineReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ResidentialFormalDisciplineReports_LocationCd') BEGIN  Drop INDEX [IX_H_ResidentialFormalDisciplineReports_LocationCd] on [H_ResidentialFormalDisciplineReports]; END */

CREATE NONCLUSTERED INDEX [IX_H_ResidentialFormalDisciplineReports_LocationCd] ON [H_ResidentialFormalDisciplineReports] (LocationCd ASC)

ALTER TABLE [H_ResidentialHearingReports]

DROP CONSTRAINT [PK_H_ResidentialHearingReports];

ALTER TABLE [H_ResidentialHearingReports] ADD CONSTRAINT [PK_H_ResidentialHearingReports] PRIMARY KEY CLUSTERED (H_ResidentialHearingReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ResidentialHearingReports_LocationCd') BEGIN  Drop INDEX [IX_H_ResidentialHearingReports_LocationCd] on [H_ResidentialHearingReports]; END */

CREATE NONCLUSTERED INDEX [IX_H_ResidentialHearingReports_LocationCd] ON [H_ResidentialHearingReports] (LocationCd ASC)

ALTER TABLE [H_ResidentialHearings]

DROP CONSTRAINT [PK_H_ResidentialHearings];

ALTER TABLE [H_ResidentialHearings] ADD CONSTRAINT [PK_H_ResidentialHearings] PRIMARY KEY CLUSTERED (H_ResidentialHearingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ResidentialHearings_LocationCd') BEGIN  Drop INDEX [IX_H_ResidentialHearings_LocationCd] on [H_ResidentialHearings]; END */

CREATE NONCLUSTERED INDEX [IX_H_ResidentialHearings_LocationCd] ON [H_ResidentialHearings] (LocationCd ASC)

ALTER TABLE [H_ResidentialInformalDiscipline]

DROP CONSTRAINT [PK_H_ResidentialInformalDiscipline];

ALTER TABLE [H_ResidentialInformalDiscipline] ADD CONSTRAINT [PK_H_ResidentialInformalDiscipline] PRIMARY KEY CLUSTERED (H_ResidentialInformalDisciplineId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ResidentialInformalDiscipline_LocationCd') BEGIN  Drop INDEX [IX_H_ResidentialInformalDiscipline_LocationCd] on [H_ResidentialInformalDiscipline]; END */

CREATE NONCLUSTERED INDEX [IX_H_ResidentialInformalDiscipline_LocationCd] ON [H_ResidentialInformalDiscipline] (LocationCd ASC)

ALTER TABLE [H_ResidentialInformalDisciplineReports]

DROP CONSTRAINT [PK_H_ResidentialInformalDisciplineReports];

ALTER TABLE [H_ResidentialInformalDisciplineReports] ADD CONSTRAINT [PK_H_ResidentialInformalDisciplineReports] PRIMARY KEY CLUSTERED (H_ResidentialInformalDisciplineReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ResidentialInformalDisciplineReports_LocationCd') BEGIN  Drop INDEX [IX_H_ResidentialInformalDisciplineReports_LocationCd] on [H_ResidentialInformalDisciplineReports]; END */

CREATE NONCLUSTERED INDEX [IX_H_ResidentialInformalDisciplineReports_LocationCd] ON [H_ResidentialInformalDisciplineReports] (LocationCd ASC)

ALTER TABLE [H_ResidentialRuleViolations]

DROP CONSTRAINT [PK_H_ResidentialRuleViolations];

ALTER TABLE [H_ResidentialRuleViolations] ADD CONSTRAINT [PK_H_ResidentialRuleViolations] PRIMARY KEY CLUSTERED (H_ResidentialRuleViolationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ResidentialRuleViolations_LocationCd') BEGIN  Drop INDEX [IX_H_ResidentialRuleViolations_LocationCd] on [H_ResidentialRuleViolations]; END */

CREATE NONCLUSTERED INDEX [IX_H_ResidentialRuleViolations_LocationCd] ON [H_ResidentialRuleViolations] (LocationCd ASC)

ALTER TABLE [H_ResidentialSanctions]

DROP CONSTRAINT [PK_H_ResidentialSanctions];

ALTER TABLE [H_ResidentialSanctions] ADD CONSTRAINT [PK_H_ResidentialSanctions] PRIMARY KEY CLUSTERED (H_ResidentialSanctionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ResidentialSanctions_LocationCd') BEGIN  Drop INDEX [IX_H_ResidentialSanctions_LocationCd] on [H_ResidentialSanctions]; END */

CREATE NONCLUSTERED INDEX [IX_H_ResidentialSanctions_LocationCd] ON [H_ResidentialSanctions] (LocationCd ASC)

ALTER TABLE [H_ResidentialTimeLossSanctionAppeals]

DROP CONSTRAINT [PK_H_ResidentialTimeLossSanctionAppeals];

ALTER TABLE [H_ResidentialTimeLossSanctionAppeals] ADD CONSTRAINT [PK_H_ResidentialTimeLossSanctionAppeals] PRIMARY KEY CLUSTERED (H_ResidentialTimeLossSanctionAppealId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ResidentialTimeLossSanctionAppeals_LocationCd') BEGIN  Drop INDEX [IX_H_ResidentialTimeLossSanctionAppeals_LocationCd] on [H_ResidentialTimeLossSanctionAppeals]; END */

CREATE NONCLUSTERED INDEX [IX_H_ResidentialTimeLossSanctionAppeals_LocationCd] ON [H_ResidentialTimeLossSanctionAppeals] (LocationCd ASC)

ALTER TABLE [H_ResidentialTimeLossSanctions]

DROP CONSTRAINT [PK_H_ResidentialTimeLossSanctions];

ALTER TABLE [H_ResidentialTimeLossSanctions] ADD CONSTRAINT [PK_H_ResidentialTimeLossSanctions] PRIMARY KEY CLUSTERED (H_ResidentialTimeLossSanctionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ResidentialTimeLossSanctions_LocationCd') BEGIN  Drop INDEX [IX_H_ResidentialTimeLossSanctions_LocationCd] on [H_ResidentialTimeLossSanctions]; END */

CREATE NONCLUSTERED INDEX [IX_H_ResidentialTimeLossSanctions_LocationCd] ON [H_ResidentialTimeLossSanctions] (LocationCd ASC)

ALTER TABLE [H_ResidentialViolationBehaviorCodes]

DROP CONSTRAINT [PK_H_ResidentialViolationBehaviorCodes];

ALTER TABLE [H_ResidentialViolationBehaviorCodes] ADD CONSTRAINT [PK_H_ResidentialViolationBehaviorCodes] PRIMARY KEY CLUSTERED (H_ResidentialViolationBehaviorCodeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ResidentialViolationBehaviorCodes_LocationCd') BEGIN  Drop INDEX [IX_H_ResidentialViolationBehaviorCodes_LocationCd] on [H_ResidentialViolationBehaviorCodes]; END */

CREATE NONCLUSTERED INDEX [IX_H_ResidentialViolationBehaviorCodes_LocationCd] ON [H_ResidentialViolationBehaviorCodes] (LocationCd ASC)

ALTER TABLE [H_RestitutionInformation]

DROP CONSTRAINT [PK_H_RestitutionInformation];

ALTER TABLE [H_RestitutionInformation] ADD CONSTRAINT [PK_H_RestitutionInformation] PRIMARY KEY CLUSTERED (H_RestitutionInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_RestitutionInformation_LocationCd') BEGIN  Drop INDEX [IX_H_RestitutionInformation_LocationCd] on [H_RestitutionInformation]; END */

CREATE NONCLUSTERED INDEX [IX_H_RestitutionInformation_LocationCd] ON [H_RestitutionInformation] (LocationCd ASC)

ALTER TABLE [H_RestitutionPlans]

DROP CONSTRAINT [PK_H_RestitutionPlans];

ALTER TABLE [H_RestitutionPlans] ADD CONSTRAINT [PK_H_RestitutionPlans] PRIMARY KEY CLUSTERED (H_RestitutionPlanId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_RestitutionPlans_LocationCd') BEGIN  Drop INDEX [IX_H_RestitutionPlans_LocationCd] on [H_RestitutionPlans]; END */

CREATE NONCLUSTERED INDEX [IX_H_RestitutionPlans_LocationCd] ON [H_RestitutionPlans] (LocationCd ASC)

ALTER TABLE [H_RestorationOfRights]

DROP CONSTRAINT [PK_H_RestorationOfRights];

ALTER TABLE [H_RestorationOfRights] ADD CONSTRAINT [PK_H_RestorationOfRights] PRIMARY KEY CLUSTERED (H_RestorationOfRightsId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_RestorationOfRights_LocationCd') BEGIN  Drop INDEX [IX_H_RestorationOfRights_LocationCd] on [H_RestorationOfRights]; END */

CREATE NONCLUSTERED INDEX [IX_H_RestorationOfRights_LocationCd] ON [H_RestorationOfRights] (LocationCd ASC)

ALTER TABLE [H_RestorationOfRightsOffenses]

DROP CONSTRAINT [PK_H_RestorationOfRightsOffenses];

ALTER TABLE [H_RestorationOfRightsOffenses] ADD CONSTRAINT [PK_H_RestorationOfRightsOffenses] PRIMARY KEY CLUSTERED (H_RestorationOfRightsOffenseId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_RestorationOfRightsOffenses_LocationCd') BEGIN  Drop INDEX [IX_H_RestorationOfRightsOffenses_LocationCd] on [H_RestorationOfRightsOffenses]; END */

CREATE NONCLUSTERED INDEX [IX_H_RestorationOfRightsOffenses_LocationCd] ON [H_RestorationOfRightsOffenses] (LocationCd ASC)

ALTER TABLE [H_RevocationDetailImposedConditions_OLD]

DROP CONSTRAINT [PK_H_RevocationDetailImposedConditions];

ALTER TABLE [H_RevocationDetailImposedConditions_OLD] ADD CONSTRAINT [PK_H_RevocationDetailImposedConditions] PRIMARY KEY CLUSTERED (H_RevocationDetailImposedConditionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_RevocationDetailImposedConditions_OLD_LocationCd') BEGIN  Drop INDEX [IX_H_RevocationDetailImposedConditions_OLD_LocationCd] on [H_RevocationDetailImposedConditions_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_H_RevocationDetailImposedConditions_OLD_LocationCd] ON [H_RevocationDetailImposedConditions_OLD] (LocationCd ASC)

ALTER TABLE [H_RevocationDetailViolatedConditions_OLD]

DROP CONSTRAINT [PK_H_RevocationDetailViolatedConditions];

ALTER TABLE [H_RevocationDetailViolatedConditions_OLD] ADD CONSTRAINT [PK_H_RevocationDetailViolatedConditions] PRIMARY KEY CLUSTERED (H_RevocationDetailViolatedConditionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_RevocationDetailViolatedConditions_OLD_LocationCd') BEGIN  Drop INDEX [IX_H_RevocationDetailViolatedConditions_OLD_LocationCd] on [H_RevocationDetailViolatedConditions_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_H_RevocationDetailViolatedConditions_OLD_LocationCd] ON [H_RevocationDetailViolatedConditions_OLD] (LocationCd ASC)

ALTER TABLE [H_RlRestitutionPaymentTypes]

DROP CONSTRAINT [PK_H_RLRestitutionPaymentTypes];

ALTER TABLE [H_RlRestitutionPaymentTypes] ADD CONSTRAINT [PK_H_RLRestitutionPaymentTypes] PRIMARY KEY CLUSTERED (H_RlRestitutionPaymentTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_RlRestitutionPaymentTypes_LocationCd') BEGIN  Drop INDEX [IX_H_RlRestitutionPaymentTypes_LocationCd] on [H_RlRestitutionPaymentTypes]; END */

CREATE NONCLUSTERED INDEX [IX_H_RlRestitutionPaymentTypes_LocationCd] ON [H_RlRestitutionPaymentTypes] (LocationCd ASC)

ALTER TABLE [H_RpoDischargeReports]

DROP CONSTRAINT [PK_H_RpoDischargeReports];

ALTER TABLE [H_RpoDischargeReports] ADD CONSTRAINT [PK_H_RpoDischargeReports] PRIMARY KEY CLUSTERED (H_RpoDischargeReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_RpoDischargeReports_LocationCd') BEGIN  Drop INDEX [IX_H_RpoDischargeReports_LocationCd] on [H_RpoDischargeReports]; END */

CREATE NONCLUSTERED INDEX [IX_H_RpoDischargeReports_LocationCd] ON [H_RpoDischargeReports] (LocationCd ASC)

ALTER TABLE [H_RuleViolationIncidents]

DROP CONSTRAINT [PK_H_RuleViolationIncidents];

ALTER TABLE [H_RuleViolationIncidents] ADD CONSTRAINT [PK_H_RuleViolationIncidents] PRIMARY KEY CLUSTERED (H_RuleViolationIncidentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_RuleViolationIncidents_LocationCd') BEGIN  Drop INDEX [IX_H_RuleViolationIncidents_LocationCd] on [H_RuleViolationIncidents]; END */

CREATE NONCLUSTERED INDEX [IX_H_RuleViolationIncidents_LocationCd] ON [H_RuleViolationIncidents] (LocationCd ASC)

ALTER TABLE [H_RwsReportOfViolation]

DROP CONSTRAINT [PK_H_RWSReportOfViolation];

ALTER TABLE [H_RwsReportOfViolation] ADD CONSTRAINT [PK_H_RWSReportOfViolation] PRIMARY KEY CLUSTERED (H_RwsReportOfViolationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_RwsReportOfViolation_LocationCd') BEGIN  Drop INDEX [IX_H_RwsReportOfViolation_LocationCd] on [H_RwsReportOfViolation]; END */

CREATE NONCLUSTERED INDEX [IX_H_RwsReportOfViolation_LocationCd] ON [H_RwsReportOfViolation] (LocationCd ASC)

ALTER TABLE [H_RwsRovCharges]

DROP CONSTRAINT [PK_H_RWSROVCharges];

ALTER TABLE [H_RwsRovCharges] ADD CONSTRAINT [PK_H_RWSROVCharges] PRIMARY KEY CLUSTERED (H_RwsRovChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_RwsRovCharges_LocationCd') BEGIN  Drop INDEX [IX_H_RwsRovCharges_LocationCd] on [H_RwsRovCharges]; END */

CREATE NONCLUSTERED INDEX [IX_H_RwsRovCharges_LocationCd] ON [H_RwsRovCharges] (LocationCd ASC)

ALTER TABLE [H_RwsRovFieldRuleViolationIncidents]

DROP CONSTRAINT [PK_H_RWSROVFieldRuleViolationIncidents];

ALTER TABLE [H_RwsRovFieldRuleViolationIncidents] ADD CONSTRAINT [PK_H_RWSROVFieldRuleViolationIncidents] PRIMARY KEY CLUSTERED (H_RwsRovFieldRuleViolationIncidentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_RwsRovFieldRuleViolationIncidents_LocationCd') BEGIN  Drop INDEX [IX_H_RwsRovFieldRuleViolationIncidents_LocationCd] on [H_RwsRovFieldRuleViolationIncidents]; END */

CREATE NONCLUSTERED INDEX [IX_H_RwsRovFieldRuleViolationIncidents_LocationCd] ON [H_RwsRovFieldRuleViolationIncidents] (LocationCd ASC)

ALTER TABLE [H_RwsRovHearingResponseDecisions]

DROP CONSTRAINT [PK_H_RWSROVHearingResponseDecisions];

ALTER TABLE [H_RwsRovHearingResponseDecisions] ADD CONSTRAINT [PK_H_RWSROVHearingResponseDecisions] PRIMARY KEY CLUSTERED (H_RwsRovHearingResponseDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_RwsRovHearingResponseDecisions_LocationCd') BEGIN  Drop INDEX [IX_H_RwsRovHearingResponseDecisions_LocationCd] on [H_RwsRovHearingResponseDecisions]; END */

CREATE NONCLUSTERED INDEX [IX_H_RwsRovHearingResponseDecisions_LocationCd] ON [H_RwsRovHearingResponseDecisions] (LocationCd ASC)

ALTER TABLE [H_RwsRovHearingResponseRecommendations]

DROP CONSTRAINT [PK_H_RWSROVHearingResponseRecommendations];

ALTER TABLE [H_RwsRovHearingResponseRecommendations] ADD CONSTRAINT [PK_H_RWSROVHearingResponseRecommendations] PRIMARY KEY CLUSTERED (H_RwsRovHearingResponseRecommendationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_RwsRovHearingResponseRecommendations_LocationCd') BEGIN  Drop INDEX [IX_H_RwsRovHearingResponseRecommendations_LocationCd] on [H_RwsRovHearingResponseRecommendations]; END */

CREATE NONCLUSTERED INDEX [IX_H_RwsRovHearingResponseRecommendations_LocationCd] ON [H_RwsRovHearingResponseRecommendations] (LocationCd ASC)

ALTER TABLE [H_RwsRovHearingResponses]

DROP CONSTRAINT [PK_H_RWSROVHearingResponses];

ALTER TABLE [H_RwsRovHearingResponses] ADD CONSTRAINT [PK_H_RWSROVHearingResponses] PRIMARY KEY CLUSTERED (H_RwsRovHearingResponseId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_RwsRovHearingResponses_LocationCd') BEGIN  Drop INDEX [IX_H_RwsRovHearingResponses_LocationCd] on [H_RwsRovHearingResponses]; END */

CREATE NONCLUSTERED INDEX [IX_H_RwsRovHearingResponses_LocationCd] ON [H_RwsRovHearingResponses] (LocationCd ASC)

ALTER TABLE [H_SecurityStandardDetails_OLD]

DROP CONSTRAINT [PK_H_SecurityStandardDetails];

ALTER TABLE [H_SecurityStandardDetails_OLD] ADD CONSTRAINT [PK_H_SecurityStandardDetails] PRIMARY KEY CLUSTERED (H_SecurityStandardDetailId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_SecurityStandardDetails_OLD_LocationCd') BEGIN  Drop INDEX [IX_H_SecurityStandardDetails_OLD_LocationCd] on [H_SecurityStandardDetails_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_H_SecurityStandardDetails_OLD_LocationCd] ON [H_SecurityStandardDetails_OLD] (LocationCd ASC)

ALTER TABLE [H_SecurityStandards_OLD]

DROP CONSTRAINT [PK_H_SecurityStandards];

ALTER TABLE [H_SecurityStandards_OLD] ADD CONSTRAINT [PK_H_SecurityStandards] PRIMARY KEY CLUSTERED (H_SecurityStandardId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_SecurityStandards_OLD_LocationCd') BEGIN  Drop INDEX [IX_H_SecurityStandards_OLD_LocationCd] on [H_SecurityStandards_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_H_SecurityStandards_OLD_LocationCd] ON [H_SecurityStandards_OLD] (LocationCd ASC)

ALTER TABLE [H_SecurityStandardsNonToxin]

DROP CONSTRAINT [PK_H_SecurityStandardsNonToxin];

ALTER TABLE [H_SecurityStandardsNonToxin] ADD CONSTRAINT [PK_H_SecurityStandardsNonToxin] PRIMARY KEY CLUSTERED (H_SecurityStandardsNonToxinId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_SecurityStandardsNonToxin_LocationCd') BEGIN  Drop INDEX [IX_H_SecurityStandardsNonToxin_LocationCd] on [H_SecurityStandardsNonToxin]; END */

CREATE NONCLUSTERED INDEX [IX_H_SecurityStandardsNonToxin_LocationCd] ON [H_SecurityStandardsNonToxin] (LocationCd ASC)

ALTER TABLE [H_SecurityStandardsNonToxinStaff]

DROP CONSTRAINT [PK_H_SecurityStandardsNonToxinStaff];

ALTER TABLE [H_SecurityStandardsNonToxinStaff] ADD CONSTRAINT [PK_H_SecurityStandardsNonToxinStaff] PRIMARY KEY CLUSTERED (H_SecurityStandardsNonToxinStaffId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_SecurityStandardsNonToxinStaff_LocationCd') BEGIN  Drop INDEX [IX_H_SecurityStandardsNonToxinStaff_LocationCd] on [H_SecurityStandardsNonToxinStaff]; END */

CREATE NONCLUSTERED INDEX [IX_H_SecurityStandardsNonToxinStaff_LocationCd] ON [H_SecurityStandardsNonToxinStaff] (LocationCd ASC)

ALTER TABLE [H_SecurityStandardsNonToxinUnsatisfactoryReasons]

DROP CONSTRAINT [PK_H_SecurityStandardsNonToxinContraband];

ALTER TABLE [H_SecurityStandardsNonToxinUnsatisfactoryReasons] ADD CONSTRAINT [PK_H_SecurityStandardsNonToxinContraband] PRIMARY KEY CLUSTERED (H_SecurityStandardsNonToxinUnsatisfactoryReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_SecurityStandardsNonToxinUnsatisfactoryReasons_LocationCd') BEGIN  Drop INDEX [IX_H_SecurityStandardsNonToxinUnsatisfactoryReasons_LocationCd] on [H_SecurityStandardsNonToxinUnsatisfactoryReasons]; END */

CREATE NONCLUSTERED INDEX [IX_H_SecurityStandardsNonToxinUnsatisfactoryReasons_LocationCd] ON [H_SecurityStandardsNonToxinUnsatisfactoryReasons] (LocationCd ASC)

ALTER TABLE [H_SecurityStandardsToxin]

DROP CONSTRAINT [PK_H_SecurityStandardsToxin];

ALTER TABLE [H_SecurityStandardsToxin] ADD CONSTRAINT [PK_H_SecurityStandardsToxin] PRIMARY KEY CLUSTERED (H_SecurityStandardsToxinId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_SecurityStandardsToxin_LocationCd') BEGIN  Drop INDEX [IX_H_SecurityStandardsToxin_LocationCd] on [H_SecurityStandardsToxin]; END */

CREATE NONCLUSTERED INDEX [IX_H_SecurityStandardsToxin_LocationCd] ON [H_SecurityStandardsToxin] (LocationCd ASC)

ALTER TABLE [H_SecurityStandardsToxinStaff]

DROP CONSTRAINT [PK_H_SecurityStandardsToxinStaff];

ALTER TABLE [H_SecurityStandardsToxinStaff] ADD CONSTRAINT [PK_H_SecurityStandardsToxinStaff] PRIMARY KEY CLUSTERED (H_SecurityStandardsToxinStaffId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_SecurityStandardsToxinStaff_LocationCd') BEGIN  Drop INDEX [IX_H_SecurityStandardsToxinStaff_LocationCd] on [H_SecurityStandardsToxinStaff]; END */

CREATE NONCLUSTERED INDEX [IX_H_SecurityStandardsToxinStaff_LocationCd] ON [H_SecurityStandardsToxinStaff] (LocationCd ASC)

ALTER TABLE [H_SecurityStandardsToxinSubstances]

DROP CONSTRAINT [PK_H_SecurityStandardsToxinSubstances];

ALTER TABLE [H_SecurityStandardsToxinSubstances] ADD CONSTRAINT [PK_H_SecurityStandardsToxinSubstances] PRIMARY KEY CLUSTERED (H_SecurityStandardsToxinSubstanceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_SecurityStandardsToxinSubstances_LocationCd') BEGIN  Drop INDEX [IX_H_SecurityStandardsToxinSubstances_LocationCd] on [H_SecurityStandardsToxinSubstances]; END */

CREATE NONCLUSTERED INDEX [IX_H_SecurityStandardsToxinSubstances_LocationCd] ON [H_SecurityStandardsToxinSubstances] (LocationCd ASC)

ALTER TABLE [H_SentencePenalties]

DROP CONSTRAINT [PK_H_SentencePenalties];

ALTER TABLE [H_SentencePenalties] ADD CONSTRAINT [PK_H_SentencePenalties] PRIMARY KEY CLUSTERED (H_SentencePenaltyId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_SentencePenalties_LocationCd') BEGIN  Drop INDEX [IX_H_SentencePenalties_LocationCd] on [H_SentencePenalties]; END */

CREATE NONCLUSTERED INDEX [IX_H_SentencePenalties_LocationCd] ON [H_SentencePenalties] (LocationCd ASC)

ALTER TABLE [H_Sentences]

DROP CONSTRAINT [PK_H_Sentences];

ALTER TABLE [H_Sentences] ADD CONSTRAINT [PK_H_Sentences] PRIMARY KEY CLUSTERED (H_SentenceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_Sentences_LocationCd') BEGIN  Drop INDEX [IX_H_Sentences_LocationCd] on [H_Sentences]; END */

CREATE NONCLUSTERED INDEX [IX_H_Sentences_LocationCd] ON [H_Sentences] (LocationCd ASC)

ALTER TABLE [H_SexOffenderRegistry]

DROP CONSTRAINT [PK_H_SexOffenderRegistry];

ALTER TABLE [H_SexOffenderRegistry] ADD CONSTRAINT [PK_H_SexOffenderRegistry] PRIMARY KEY CLUSTERED (H_SexOffenderRegistryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_SexOffenderRegistry_LocationCd') BEGIN  Drop INDEX [IX_H_SexOffenderRegistry_LocationCd] on [H_SexOffenderRegistry]; END */

CREATE NONCLUSTERED INDEX [IX_H_SexOffenderRegistry_LocationCd] ON [H_SexOffenderRegistry] (LocationCd ASC)

ALTER TABLE [H_ShrabyaTrainingAddresses]

DROP CONSTRAINT [PK_H_ShrabyaTrainingAddresses];

ALTER TABLE [H_ShrabyaTrainingAddresses] ADD CONSTRAINT [PK_H_ShrabyaTrainingAddresses] PRIMARY KEY CLUSTERED (H_TrainingAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ShrabyaTrainingAddresses_LocationCd') BEGIN  Drop INDEX [IX_H_ShrabyaTrainingAddresses_LocationCd] on [H_ShrabyaTrainingAddresses]; END */

CREATE NONCLUSTERED INDEX [IX_H_ShrabyaTrainingAddresses_LocationCd] ON [H_ShrabyaTrainingAddresses] (LocationCd ASC)

ALTER TABLE [H_ShrabyaTrainingAddressPhones]

DROP CONSTRAINT [PK_H_ShrabyaTrainingAddressPhones];

ALTER TABLE [H_ShrabyaTrainingAddressPhones] ADD CONSTRAINT [PK_H_ShrabyaTrainingAddressPhones] PRIMARY KEY CLUSTERED (H_TrainingAddressPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ShrabyaTrainingAddressPhones_LocationCd') BEGIN  Drop INDEX [IX_H_ShrabyaTrainingAddressPhones_LocationCd] on [H_ShrabyaTrainingAddressPhones]; END */

CREATE NONCLUSTERED INDEX [IX_H_ShrabyaTrainingAddressPhones_LocationCd] ON [H_ShrabyaTrainingAddressPhones] (LocationCd ASC)

ALTER TABLE [H_SlCaseManagers]

DROP CONSTRAINT [PK_H_SLCaseManagers];

ALTER TABLE [H_SlCaseManagers] ADD CONSTRAINT [PK_H_SLCaseManagers] PRIMARY KEY CLUSTERED (H_SlCaseManagerId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_SlCaseManagers_LocationCd') BEGIN  Drop INDEX [IX_H_SlCaseManagers_LocationCd] on [H_SlCaseManagers]; END */

CREATE NONCLUSTERED INDEX [IX_H_SlCaseManagers_LocationCd] ON [H_SlCaseManagers] (LocationCd ASC)

ALTER TABLE [H_SlOffenderWorkUnits]

DROP CONSTRAINT [PK_H_SLOffenderWorkUnits];

ALTER TABLE [H_SlOffenderWorkUnits] ADD CONSTRAINT [PK_H_SLOffenderWorkUnits] PRIMARY KEY CLUSTERED (H_SlOffenderWorkUnitId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_SlOffenderWorkUnits_LocationCd') BEGIN  Drop INDEX [IX_H_SlOffenderWorkUnits_LocationCd] on [H_SlOffenderWorkUnits]; END */

CREATE NONCLUSTERED INDEX [IX_H_SlOffenderWorkUnits_LocationCd] ON [H_SlOffenderWorkUnits] (LocationCd ASC)

ALTER TABLE [H_SlSecondaryManagement]

DROP CONSTRAINT [PK_H_SLSecondaryManagement];

ALTER TABLE [H_SlSecondaryManagement] ADD CONSTRAINT [PK_H_SLSecondaryManagement] PRIMARY KEY CLUSTERED (H_SlSecondaryManagementId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_SlSecondaryManagement_LocationCd') BEGIN  Drop INDEX [IX_H_SlSecondaryManagement_LocationCd] on [H_SlSecondaryManagement]; END */

CREATE NONCLUSTERED INDEX [IX_H_SlSecondaryManagement_LocationCd] ON [H_SlSecondaryManagement] (LocationCd ASC)

ALTER TABLE [H_SlSpecialties]

DROP CONSTRAINT [PK_H_SLSpecialties];

ALTER TABLE [H_SlSpecialties] ADD CONSTRAINT [PK_H_SLSpecialties] PRIMARY KEY CLUSTERED (H_SlSpecialtyId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_SlSpecialties_LocationCd') BEGIN  Drop INDEX [IX_H_SlSpecialties_LocationCd] on [H_SlSpecialties]; END */

CREATE NONCLUSTERED INDEX [IX_H_SlSpecialties_LocationCd] ON [H_SlSpecialties] (LocationCd ASC)

ALTER TABLE [H_SlSupervisionModifiers]

DROP CONSTRAINT [PK_H_SLSupervisionModifiers];

ALTER TABLE [H_SlSupervisionModifiers] ADD CONSTRAINT [PK_H_SLSupervisionModifiers] PRIMARY KEY CLUSTERED (H_SlSupervisionModifierId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_SlSupervisionModifiers_LocationCd') BEGIN  Drop INDEX [IX_H_SlSupervisionModifiers_LocationCd] on [H_SlSupervisionModifiers]; END */

CREATE NONCLUSTERED INDEX [IX_H_SlSupervisionModifiers_LocationCd] ON [H_SlSupervisionModifiers] (LocationCd ASC)

ALTER TABLE [H_SocialSecurityCardTrackings]

DROP CONSTRAINT [PK_H_SocialSecurityCardTrackings];

ALTER TABLE [H_SocialSecurityCardTrackings] ADD CONSTRAINT [PK_H_SocialSecurityCardTrackings] PRIMARY KEY CLUSTERED (H_SocialSecurityCardTrackingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_SocialSecurityCardTrackings_LocationCd') BEGIN  Drop INDEX [IX_H_SocialSecurityCardTrackings_LocationCd] on [H_SocialSecurityCardTrackings]; END */

CREATE NONCLUSTERED INDEX [IX_H_SocialSecurityCardTrackings_LocationCd] ON [H_SocialSecurityCardTrackings] (LocationCd ASC)

ALTER TABLE [H_SocialSecurityNumbers]

DROP CONSTRAINT [PK_H_SocialSecurityNumbers];

ALTER TABLE [H_SocialSecurityNumbers] ADD CONSTRAINT [PK_H_SocialSecurityNumbers] PRIMARY KEY CLUSTERED (H_SsnId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_SocialSecurityNumbers_LocationCd') BEGIN  Drop INDEX [IX_H_SocialSecurityNumbers_LocationCd] on [H_SocialSecurityNumbers]; END */

CREATE NONCLUSTERED INDEX [IX_H_SocialSecurityNumbers_LocationCd] ON [H_SocialSecurityNumbers] (LocationCd ASC)

ALTER TABLE [H_SpecialEducation]

DROP CONSTRAINT [PK_H_SpecialEducation];

ALTER TABLE [H_SpecialEducation] ADD CONSTRAINT [PK_H_SpecialEducation] PRIMARY KEY CLUSTERED (H_SpecialEducationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_SpecialEducation_LocationCd') BEGIN  Drop INDEX [IX_H_SpecialEducation_LocationCd] on [H_SpecialEducation]; END */

CREATE NONCLUSTERED INDEX [IX_H_SpecialEducation_LocationCd] ON [H_SpecialEducation] (LocationCd ASC)

ALTER TABLE [H_SSCardInstTransferred]

DROP CONSTRAINT [PK_H_SSCardInstTransferred];

ALTER TABLE [H_SSCardInstTransferred] ADD CONSTRAINT [PK_H_SSCardInstTransferred] PRIMARY KEY CLUSTERED (H_SSCardInstTransferredId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_SSCardInstTransferred_LocationCd') BEGIN  Drop INDEX [IX_H_SSCardInstTransferred_LocationCd] on [H_SSCardInstTransferred]; END */

CREATE NONCLUSTERED INDEX [IX_H_SSCardInstTransferred_LocationCd] ON [H_SSCardInstTransferred] (LocationCd ASC)

ALTER TABLE [H_StaffVacancies]

DROP CONSTRAINT [PK_H_StaffVacancies];

ALTER TABLE [H_StaffVacancies] ADD CONSTRAINT [PK_H_StaffVacancies] PRIMARY KEY CLUSTERED (H_StaffVacancyId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_StaffVacancies_LocationCd') BEGIN  Drop INDEX [IX_H_StaffVacancies_LocationCd] on [H_StaffVacancies]; END */

CREATE NONCLUSTERED INDEX [IX_H_StaffVacancies_LocationCd] ON [H_StaffVacancies] (LocationCd ASC)

ALTER TABLE [H_SupervisionStatusCharges]

DROP CONSTRAINT [PK_H_SupervisionStatusCharges];

ALTER TABLE [H_SupervisionStatusCharges] ADD CONSTRAINT [PK_H_SupervisionStatusCharges] PRIMARY KEY CLUSTERED (H_SupervisionStatusChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_SupervisionStatusCharges_LocationCd') BEGIN  Drop INDEX [IX_H_SupervisionStatusCharges_LocationCd] on [H_SupervisionStatusCharges]; END */

CREATE NONCLUSTERED INDEX [IX_H_SupervisionStatusCharges_LocationCd] ON [H_SupervisionStatusCharges] (LocationCd ASC)

ALTER TABLE [H_SupervisionStatusInformation]

DROP CONSTRAINT [PK_H_SupervisionStatusInformation];

ALTER TABLE [H_SupervisionStatusInformation] ADD CONSTRAINT [PK_H_SupervisionStatusInformation] PRIMARY KEY CLUSTERED (H_SupervisionStatusInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_SupervisionStatusInformation_LocationCd') BEGIN  Drop INDEX [IX_H_SupervisionStatusInformation_LocationCd] on [H_SupervisionStatusInformation]; END */

CREATE NONCLUSTERED INDEX [IX_H_SupervisionStatusInformation_LocationCd] ON [H_SupervisionStatusInformation] (LocationCd ASC)

ALTER TABLE [H_SupportMeans]

DROP CONSTRAINT [PK_H_SupportMeans];

ALTER TABLE [H_SupportMeans] ADD CONSTRAINT [PK_H_SupportMeans] PRIMARY KEY CLUSTERED (H_FinancialSupportMeanId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_SupportMeans_LocationCd') BEGIN  Drop INDEX [IX_H_SupportMeans_LocationCd] on [H_SupportMeans]; END */

CREATE NONCLUSTERED INDEX [IX_H_SupportMeans_LocationCd] ON [H_SupportMeans] (LocationCd ASC)

ALTER TABLE [H_TableGlossary]

DROP CONSTRAINT [PK_H_TableGlossary];

ALTER TABLE [H_TableGlossary] ADD CONSTRAINT [PK_H_TableGlossary] PRIMARY KEY CLUSTERED (H_TableGlossaryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_TableGlossary_LocationCd') BEGIN  Drop INDEX [IX_H_TableGlossary_LocationCd] on [H_TableGlossary]; END */

CREATE NONCLUSTERED INDEX [IX_H_TableGlossary_LocationCd] ON [H_TableGlossary] (LocationCd ASC)

ALTER TABLE [H_ThreatGroupIdentifiers]

DROP CONSTRAINT [PK_H_ThreatGroupIdentifiers];

ALTER TABLE [H_ThreatGroupIdentifiers] ADD CONSTRAINT [PK_H_ThreatGroupIdentifiers] PRIMARY KEY CLUSTERED (H_ThreatGroupIdentifierId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ThreatGroupIdentifiers_LocationCd') BEGIN  Drop INDEX [IX_H_ThreatGroupIdentifiers_LocationCd] on [H_ThreatGroupIdentifiers]; END */

CREATE NONCLUSTERED INDEX [IX_H_ThreatGroupIdentifiers_LocationCd] ON [H_ThreatGroupIdentifiers] (LocationCd ASC)

ALTER TABLE [H_ThreatGroupInvolvement]

DROP CONSTRAINT [PK_H_ThreatGroupInvolvement];

ALTER TABLE [H_ThreatGroupInvolvement] ADD CONSTRAINT [PK_H_ThreatGroupInvolvement] PRIMARY KEY CLUSTERED (H_ThreatGroupInvolvementId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ThreatGroupInvolvement_LocationCd') BEGIN  Drop INDEX [IX_H_ThreatGroupInvolvement_LocationCd] on [H_ThreatGroupInvolvement]; END */

CREATE NONCLUSTERED INDEX [IX_H_ThreatGroupInvolvement_LocationCd] ON [H_ThreatGroupInvolvement] (LocationCd ASC)

ALTER TABLE [H_ThreatGroupInvolvementEndings]

DROP CONSTRAINT [PK_H_ThreatGroupInvolvementEndings];

ALTER TABLE [H_ThreatGroupInvolvementEndings] ADD CONSTRAINT [PK_H_ThreatGroupInvolvementEndings] PRIMARY KEY CLUSTERED (H_ThreatGroupInvolvementEndingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ThreatGroupInvolvementEndings_LocationCd') BEGIN  Drop INDEX [IX_H_ThreatGroupInvolvementEndings_LocationCd] on [H_ThreatGroupInvolvementEndings]; END */

CREATE NONCLUSTERED INDEX [IX_H_ThreatGroupInvolvementEndings_LocationCd] ON [H_ThreatGroupInvolvementEndings] (LocationCd ASC)

ALTER TABLE [H_TimeCompGroupAdjustments]

DROP CONSTRAINT [PK_H_TimeCompGroupAdjustments];

ALTER TABLE [H_TimeCompGroupAdjustments] ADD CONSTRAINT [PK_H_TimeCompGroupAdjustments] PRIMARY KEY CLUSTERED (H_TimeCompGroupAdjustmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_TimeCompGroupAdjustments_LocationCd') BEGIN  Drop INDEX [IX_H_TimeCompGroupAdjustments_LocationCd] on [H_TimeCompGroupAdjustments]; END */

CREATE NONCLUSTERED INDEX [IX_H_TimeCompGroupAdjustments_LocationCd] ON [H_TimeCompGroupAdjustments] (LocationCd ASC)

ALTER TABLE [H_TimeCompGroupPenalties]

DROP CONSTRAINT [PK_H_TimeCompGroupPenalties];

ALTER TABLE [H_TimeCompGroupPenalties] ADD CONSTRAINT [PK_H_TimeCompGroupPenalties] PRIMARY KEY CLUSTERED (H_TimeCompGroupPenaltyId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_TimeCompGroupPenalties_LocationCd') BEGIN  Drop INDEX [IX_H_TimeCompGroupPenalties_LocationCd] on [H_TimeCompGroupPenalties]; END */

CREATE NONCLUSTERED INDEX [IX_H_TimeCompGroupPenalties_LocationCd] ON [H_TimeCompGroupPenalties] (LocationCd ASC)

ALTER TABLE [H_TimeCompGroups]

DROP CONSTRAINT [PK_H_TimeCompGroups];

ALTER TABLE [H_TimeCompGroups] ADD CONSTRAINT [PK_H_TimeCompGroups] PRIMARY KEY CLUSTERED (H_TimeCompGroupId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_TimeCompGroups_LocationCd') BEGIN  Drop INDEX [IX_H_TimeCompGroups_LocationCd] on [H_TimeCompGroups]; END */

CREATE NONCLUSTERED INDEX [IX_H_TimeCompGroups_LocationCd] ON [H_TimeCompGroups] (LocationCd ASC)

ALTER TABLE [H_TransferInstancesToField]

DROP CONSTRAINT [PK_H_TransferInstancesToField];

ALTER TABLE [H_TransferInstancesToField] ADD CONSTRAINT [PK_H_TransferInstancesToField] PRIMARY KEY CLUSTERED (H_TransferInstanceToFieldId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_TransferInstancesToField_LocationCd') BEGIN  Drop INDEX [IX_H_TransferInstancesToField_LocationCd] on [H_TransferInstancesToField]; END */

CREATE NONCLUSTERED INDEX [IX_H_TransferInstancesToField_LocationCd] ON [H_TransferInstancesToField] (LocationCd ASC)

ALTER TABLE [H_TransferInstancesToInstitution]

DROP CONSTRAINT [PK_H_TransferInstancesToInstitution];

ALTER TABLE [H_TransferInstancesToInstitution] ADD CONSTRAINT [PK_H_TransferInstancesToInstitution] PRIMARY KEY CLUSTERED (H_TransferInstanceToInstitutionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_TransferInstancesToInstitution_LocationCd') BEGIN  Drop INDEX [IX_H_TransferInstancesToInstitution_LocationCd] on [H_TransferInstancesToInstitution]; END */

CREATE NONCLUSTERED INDEX [IX_H_TransferInstancesToInstitution_LocationCd] ON [H_TransferInstancesToInstitution] (LocationCd ASC)

ALTER TABLE [H_TransferInstancesToResidential]

DROP CONSTRAINT [PK_H_TransferInstancesToResidential];

ALTER TABLE [H_TransferInstancesToResidential] ADD CONSTRAINT [PK_H_TransferInstancesToResidential] PRIMARY KEY CLUSTERED (H_TransferInstanceToResidentialId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_TransferInstancesToResidential_LocationCd') BEGIN  Drop INDEX [IX_H_TransferInstancesToResidential_LocationCd] on [H_TransferInstancesToResidential]; END */

CREATE NONCLUSTERED INDEX [IX_H_TransferInstancesToResidential_LocationCd] ON [H_TransferInstancesToResidential] (LocationCd ASC)

ALTER TABLE [H_TransferReports]

DROP CONSTRAINT [PK_H_TransferReports];

ALTER TABLE [H_TransferReports] ADD CONSTRAINT [PK_H_TransferReports] PRIMARY KEY CLUSTERED (H_TransferReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_TransferReports_LocationCd') BEGIN  Drop INDEX [IX_H_TransferReports_LocationCd] on [H_TransferReports]; END */

CREATE NONCLUSTERED INDEX [IX_H_TransferReports_LocationCd] ON [H_TransferReports] (LocationCd ASC)

ALTER TABLE [H_TransportInformation]

DROP CONSTRAINT [PK_H_TransportInformation];

ALTER TABLE [H_TransportInformation] ADD CONSTRAINT [PK_H_TransportInformation] PRIMARY KEY CLUSTERED (H_TransportInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_TransportInformation_LocationCd') BEGIN  Drop INDEX [IX_H_TransportInformation_LocationCd] on [H_TransportInformation]; END */

CREATE NONCLUSTERED INDEX [IX_H_TransportInformation_LocationCd] ON [H_TransportInformation] (LocationCd ASC)

ALTER TABLE [H_TravelPermits]

DROP CONSTRAINT [PK_H_TravelPermits];

ALTER TABLE [H_TravelPermits] ADD CONSTRAINT [PK_H_TravelPermits] PRIMARY KEY CLUSTERED (H_TravelPermitId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_TravelPermits_LocationCd') BEGIN  Drop INDEX [IX_H_TravelPermits_LocationCd] on [H_TravelPermits]; END */

CREATE NONCLUSTERED INDEX [IX_H_TravelPermits_LocationCd] ON [H_TravelPermits] (LocationCd ASC)

ALTER TABLE [H_TripSchedules]

DROP CONSTRAINT [PK_H_TripSchedules];

ALTER TABLE [H_TripSchedules] ADD CONSTRAINT [PK_H_TripSchedules] PRIMARY KEY CLUSTERED (H_TripScheduleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_TripSchedules_LocationCd') BEGIN  Drop INDEX [IX_H_TripSchedules_LocationCd] on [H_TripSchedules]; END */

CREATE NONCLUSTERED INDEX [IX_H_TripSchedules_LocationCd] ON [H_TripSchedules] (LocationCd ASC)

ALTER TABLE [H_TripScheduleTrips]

DROP CONSTRAINT [PK_H_TripScheduleTrips];

ALTER TABLE [H_TripScheduleTrips] ADD CONSTRAINT [PK_H_TripScheduleTrips] PRIMARY KEY CLUSTERED (H_TripScheduleTripId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_TripScheduleTrips_LocationCd') BEGIN  Drop INDEX [IX_H_TripScheduleTrips_LocationCd] on [H_TripScheduleTrips]; END */

CREATE NONCLUSTERED INDEX [IX_H_TripScheduleTrips_LocationCd] ON [H_TripScheduleTrips] (LocationCd ASC)

ALTER TABLE [H_UserLocations]

DROP CONSTRAINT [PK_H_UserLocations];

ALTER TABLE [H_UserLocations] ADD CONSTRAINT [PK_H_UserLocations] PRIMARY KEY CLUSTERED (H_UserLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_UserLocations_LocationCd') BEGIN  Drop INDEX [IX_H_UserLocations_LocationCd] on [H_UserLocations]; END */

CREATE NONCLUSTERED INDEX [IX_H_UserLocations_LocationCd] ON [H_UserLocations] (LocationCd ASC)

ALTER TABLE [H_UserPasswords]

DROP CONSTRAINT [PK_H_UserPasswords];

ALTER TABLE [H_UserPasswords] ADD CONSTRAINT [PK_H_UserPasswords] PRIMARY KEY CLUSTERED (H_UserPasswordId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_UserPasswords_LocationCd') BEGIN  Drop INDEX [IX_H_UserPasswords_LocationCd] on [H_UserPasswords]; END */

CREATE NONCLUSTERED INDEX [IX_H_UserPasswords_LocationCd] ON [H_UserPasswords] (LocationCd ASC)

ALTER TABLE [H_UserPreferences]

DROP CONSTRAINT [PK_H_UserPreferences];

ALTER TABLE [H_UserPreferences] ADD CONSTRAINT [PK_H_UserPreferences] PRIMARY KEY CLUSTERED (H_UserPreferenceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_UserPreferences_LocationCd') BEGIN  Drop INDEX [IX_H_UserPreferences_LocationCd] on [H_UserPreferences]; END */

CREATE NONCLUSTERED INDEX [IX_H_UserPreferences_LocationCd] ON [H_UserPreferences] (LocationCd ASC)

ALTER TABLE [H_UserPreferences_New]

DROP CONSTRAINT [PK_H_UserPreferences_New];

ALTER TABLE [H_UserPreferences_New] ADD CONSTRAINT [PK_H_UserPreferences_New] PRIMARY KEY CLUSTERED (H_UserPreferenceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_UserPreferences_New_LocationCd') BEGIN  Drop INDEX [IX_H_UserPreferences_New_LocationCd] on [H_UserPreferences_New]; END */

CREATE NONCLUSTERED INDEX [IX_H_UserPreferences_New_LocationCd] ON [H_UserPreferences_New] (LocationCd ASC)

ALTER TABLE [H_Users_OLD_OLD]

DROP CONSTRAINT [PK_H_Users];

ALTER TABLE [H_Users_OLD_OLD] ADD CONSTRAINT [PK_H_Users] PRIMARY KEY CLUSTERED (H_UserId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_Users_OLD_OLD_LocationCd') BEGIN  Drop INDEX [IX_H_Users_OLD_OLD_LocationCd] on [H_Users_OLD_OLD]; END */

CREATE NONCLUSTERED INDEX [IX_H_Users_OLD_OLD_LocationCd] ON [H_Users_OLD_OLD] (LocationCd ASC)

ALTER TABLE [H_VehicleInformation]

DROP CONSTRAINT [PK_H_VehicleInformation];

ALTER TABLE [H_VehicleInformation] ADD CONSTRAINT [PK_H_VehicleInformation] PRIMARY KEY CLUSTERED (H_VehicleInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_VehicleInformation_LocationCd') BEGIN  Drop INDEX [IX_H_VehicleInformation_LocationCd] on [H_VehicleInformation]; END */

CREATE NONCLUSTERED INDEX [IX_H_VehicleInformation_LocationCd] ON [H_VehicleInformation] (LocationCd ASC)

ALTER TABLE [H_VictimCases]

DROP CONSTRAINT [PK_H_VictimCases];

ALTER TABLE [H_VictimCases] ADD CONSTRAINT [PK_H_VictimCases] PRIMARY KEY CLUSTERED (H_VictimCaseId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_VictimCases_LocationCd') BEGIN  Drop INDEX [IX_H_VictimCases_LocationCd] on [H_VictimCases]; END */

CREATE NONCLUSTERED INDEX [IX_H_VictimCases_LocationCd] ON [H_VictimCases] (LocationCd ASC)

ALTER TABLE [H_VictimCauseNumbers]

DROP CONSTRAINT [PK_H_VictimCauseNumbers];

ALTER TABLE [H_VictimCauseNumbers] ADD CONSTRAINT [PK_H_VictimCauseNumbers] PRIMARY KEY CLUSTERED (H_VictimCauseNumberId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_VictimCauseNumbers_LocationCd') BEGIN  Drop INDEX [IX_H_VictimCauseNumbers_LocationCd] on [H_VictimCauseNumbers]; END */

CREATE NONCLUSTERED INDEX [IX_H_VictimCauseNumbers_LocationCd] ON [H_VictimCauseNumbers] (LocationCd ASC)

ALTER TABLE [H_VictimConfidentialComments]

DROP CONSTRAINT [PK_H_VictimConfidentialComments];

ALTER TABLE [H_VictimConfidentialComments] ADD CONSTRAINT [PK_H_VictimConfidentialComments] PRIMARY KEY CLUSTERED (H_VictimConfidentialCommentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_VictimConfidentialComments_LocationCd') BEGIN  Drop INDEX [IX_H_VictimConfidentialComments_LocationCd] on [H_VictimConfidentialComments]; END */

CREATE NONCLUSTERED INDEX [IX_H_VictimConfidentialComments_LocationCd] ON [H_VictimConfidentialComments] (LocationCd ASC)

ALTER TABLE [H_VictimEmsNotificationLetters]

DROP CONSTRAINT [PK_H_VictimEmsNotificationReports];

ALTER TABLE [H_VictimEmsNotificationLetters] ADD CONSTRAINT [PK_H_VictimEmsNotificationReports] PRIMARY KEY CLUSTERED (H_VictimEmsNotificationLetterId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_VictimEmsNotificationLetters_LocationCd') BEGIN  Drop INDEX [IX_H_VictimEmsNotificationLetters_LocationCd] on [H_VictimEmsNotificationLetters]; END */

CREATE NONCLUSTERED INDEX [IX_H_VictimEmsNotificationLetters_LocationCd] ON [H_VictimEmsNotificationLetters] (LocationCd ASC)

ALTER TABLE [H_VictimNotificationLetters]

DROP CONSTRAINT [PK_H_VictimNotificationReports];

ALTER TABLE [H_VictimNotificationLetters] ADD CONSTRAINT [PK_H_VictimNotificationReports] PRIMARY KEY CLUSTERED (H_VictimNotificationLetterId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_VictimNotificationLetters_LocationCd') BEGIN  Drop INDEX [IX_H_VictimNotificationLetters_LocationCd] on [H_VictimNotificationLetters]; END */

CREATE NONCLUSTERED INDEX [IX_H_VictimNotificationLetters_LocationCd] ON [H_VictimNotificationLetters] (LocationCd ASC)

ALTER TABLE [H_VictimNotificationReportExtras]

DROP CONSTRAINT [PK_H_VictimNotificationReportExtras];

ALTER TABLE [H_VictimNotificationReportExtras] ADD CONSTRAINT [PK_H_VictimNotificationReportExtras] PRIMARY KEY CLUSTERED (H_VictimNotificationReportExtrasId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_VictimNotificationReportExtras_LocationCd') BEGIN  Drop INDEX [IX_H_VictimNotificationReportExtras_LocationCd] on [H_VictimNotificationReportExtras]; END */

CREATE NONCLUSTERED INDEX [IX_H_VictimNotificationReportExtras_LocationCd] ON [H_VictimNotificationReportExtras] (LocationCd ASC)

ALTER TABLE [H_VictimRegistrationLetters]

DROP CONSTRAINT [PK_H_VictimRegistrationReports];

ALTER TABLE [H_VictimRegistrationLetters] ADD CONSTRAINT [PK_H_VictimRegistrationReports] PRIMARY KEY CLUSTERED (H_VictimRegistrationLetterId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_VictimRegistrationLetters_LocationCd') BEGIN  Drop INDEX [IX_H_VictimRegistrationLetters_LocationCd] on [H_VictimRegistrationLetters]; END */

CREATE NONCLUSTERED INDEX [IX_H_VictimRegistrationLetters_LocationCd] ON [H_VictimRegistrationLetters] (LocationCd ASC)

ALTER TABLE [H_Victims]

DROP CONSTRAINT [PK_H_Victims];

ALTER TABLE [H_Victims] ADD CONSTRAINT [PK_H_Victims] PRIMARY KEY CLUSTERED (H_VictimId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_Victims_LocationCd') BEGIN  Drop INDEX [IX_H_Victims_LocationCd] on [H_Victims]; END */

CREATE NONCLUSTERED INDEX [IX_H_Victims_LocationCd] ON [H_Victims] (LocationCd ASC)

ALTER TABLE [H_ViolatorProgramContinuingCarePlans]

DROP CONSTRAINT [PK_H_ViolatorProgramContinuingCarePlans];

ALTER TABLE [H_ViolatorProgramContinuingCarePlans] ADD CONSTRAINT [PK_H_ViolatorProgramContinuingCarePlans] PRIMARY KEY CLUSTERED (H_ViolatorProgramContinuingCarePlanId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ViolatorProgramContinuingCarePlans_LocationCd') BEGIN  Drop INDEX [IX_H_ViolatorProgramContinuingCarePlans_LocationCd] on [H_ViolatorProgramContinuingCarePlans]; END */

CREATE NONCLUSTERED INDEX [IX_H_ViolatorProgramContinuingCarePlans_LocationCd] ON [H_ViolatorProgramContinuingCarePlans] (LocationCd ASC)

ALTER TABLE [H_ViolatorProgramDischargeSummary]

DROP CONSTRAINT [PK_H_ViolatorProgramDischargeSummary];

ALTER TABLE [H_ViolatorProgramDischargeSummary] ADD CONSTRAINT [PK_H_ViolatorProgramDischargeSummary] PRIMARY KEY CLUSTERED (H_ViolatorProgramDischargeSummaryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ViolatorProgramDischargeSummary_LocationCd') BEGIN  Drop INDEX [IX_H_ViolatorProgramDischargeSummary_LocationCd] on [H_ViolatorProgramDischargeSummary]; END */

CREATE NONCLUSTERED INDEX [IX_H_ViolatorProgramDischargeSummary_LocationCd] ON [H_ViolatorProgramDischargeSummary] (LocationCd ASC)

ALTER TABLE [H_ViolatorProgramProgressReport]

DROP CONSTRAINT [PK_H_ViolatorProgramProgressReport];

ALTER TABLE [H_ViolatorProgramProgressReport] ADD CONSTRAINT [PK_H_ViolatorProgramProgressReport] PRIMARY KEY CLUSTERED (H_ViolatorProgramProgressReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ViolatorProgramProgressReport_LocationCd') BEGIN  Drop INDEX [IX_H_ViolatorProgramProgressReport_LocationCd] on [H_ViolatorProgramProgressReport]; END */

CREATE NONCLUSTERED INDEX [IX_H_ViolatorProgramProgressReport_LocationCd] ON [H_ViolatorProgramProgressReport] (LocationCd ASC)

ALTER TABLE [H_ViolatorProgramReferralForms]

DROP CONSTRAINT [PK_H_ViolatorProgramReferralForms];

ALTER TABLE [H_ViolatorProgramReferralForms] ADD CONSTRAINT [PK_H_ViolatorProgramReferralForms] PRIMARY KEY CLUSTERED (H_ViolatorProgramReferralFormId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_ViolatorProgramReferralForms_LocationCd') BEGIN  Drop INDEX [IX_H_ViolatorProgramReferralForms_LocationCd] on [H_ViolatorProgramReferralForms]; END */

CREATE NONCLUSTERED INDEX [IX_H_ViolatorProgramReferralForms_LocationCd] ON [H_ViolatorProgramReferralForms] (LocationCd ASC)

ALTER TABLE [H_VisitingListsInstitution]

DROP CONSTRAINT [PK_H_VisitingListsInstitution];

ALTER TABLE [H_VisitingListsInstitution] ADD CONSTRAINT [PK_H_VisitingListsInstitution] PRIMARY KEY CLUSTERED (H_VisitingListInstitutionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_VisitingListsInstitution_LocationCd') BEGIN  Drop INDEX [IX_H_VisitingListsInstitution_LocationCd] on [H_VisitingListsInstitution]; END */

CREATE NONCLUSTERED INDEX [IX_H_VisitingListsInstitution_LocationCd] ON [H_VisitingListsInstitution] (LocationCd ASC)

ALTER TABLE [H_VisitingOffenderSuspensions]

DROP CONSTRAINT [PK_H_VisitingOffenderSuspensions];

ALTER TABLE [H_VisitingOffenderSuspensions] ADD CONSTRAINT [PK_H_VisitingOffenderSuspensions] PRIMARY KEY CLUSTERED (H_VisitingOffenderSuspensionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_VisitingOffenderSuspensions_LocationCd') BEGIN  Drop INDEX [IX_H_VisitingOffenderSuspensions_LocationCd] on [H_VisitingOffenderSuspensions]; END */

CREATE NONCLUSTERED INDEX [IX_H_VisitingOffenderSuspensions_LocationCd] ON [H_VisitingOffenderSuspensions] (LocationCd ASC)

ALTER TABLE [H_VisitorInsOutsInstitution]

DROP CONSTRAINT [PK_H_VisitorInsOutsInstitution];

ALTER TABLE [H_VisitorInsOutsInstitution] ADD CONSTRAINT [PK_H_VisitorInsOutsInstitution] PRIMARY KEY CLUSTERED (H_VisitorInsOutsInstitutionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_VisitorInsOutsInstitution_LocationCd') BEGIN  Drop INDEX [IX_H_VisitorInsOutsInstitution_LocationCd] on [H_VisitorInsOutsInstitution]; END */

CREATE NONCLUSTERED INDEX [IX_H_VisitorInsOutsInstitution_LocationCd] ON [H_VisitorInsOutsInstitution] (LocationCd ASC)

ALTER TABLE [H_VliVisitingGroupsInstitution]

DROP CONSTRAINT [PK_H_VLIVisitingGroupsInstitution];

ALTER TABLE [H_VliVisitingGroupsInstitution] ADD CONSTRAINT [PK_H_VLIVisitingGroupsInstitution] PRIMARY KEY CLUSTERED (H_VliVisitingGroupInstitutionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_VliVisitingGroupsInstitution_LocationCd') BEGIN  Drop INDEX [IX_H_VliVisitingGroupsInstitution_LocationCd] on [H_VliVisitingGroupsInstitution]; END */

CREATE NONCLUSTERED INDEX [IX_H_VliVisitingGroupsInstitution_LocationCd] ON [H_VliVisitingGroupsInstitution] (LocationCd ASC)

ALTER TABLE [H_VliVisitingStatusesInstitution]

DROP CONSTRAINT [PK_H_VLIVisitingStatusesInstitution];

ALTER TABLE [H_VliVisitingStatusesInstitution] ADD CONSTRAINT [PK_H_VLIVisitingStatusesInstitution] PRIMARY KEY CLUSTERED (H_VliVisitingStatusInstitutionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_VliVisitingStatusesInstitution_LocationCd') BEGIN  Drop INDEX [IX_H_VliVisitingStatusesInstitution_LocationCd] on [H_VliVisitingStatusesInstitution]; END */

CREATE NONCLUSTERED INDEX [IX_H_VliVisitingStatusesInstitution_LocationCd] ON [H_VliVisitingStatusesInstitution] (LocationCd ASC)

ALTER TABLE [H_WatchInformation]

DROP CONSTRAINT [PK_H_WatchInformation];

ALTER TABLE [H_WatchInformation] ADD CONSTRAINT [PK_H_WatchInformation] PRIMARY KEY CLUSTERED (H_WatchInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_WatchInformation_LocationCd') BEGIN  Drop INDEX [IX_H_WatchInformation_LocationCd] on [H_WatchInformation]; END */

CREATE NONCLUSTERED INDEX [IX_H_WatchInformation_LocationCd] ON [H_WatchInformation] (LocationCd ASC)

ALTER TABLE [H_WordTemplates]

DROP CONSTRAINT [PK_H_WordTemplates];

ALTER TABLE [H_WordTemplates] ADD CONSTRAINT [PK_H_WordTemplates] PRIMARY KEY CLUSTERED (H_WordTemplateId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_WordTemplates_LocationCd') BEGIN  Drop INDEX [IX_H_WordTemplates_LocationCd] on [H_WordTemplates]; END */

CREATE NONCLUSTERED INDEX [IX_H_WordTemplates_LocationCd] ON [H_WordTemplates] (LocationCd ASC)

ALTER TABLE [H_Workflows]

DROP CONSTRAINT [PK_H_Workflows];

ALTER TABLE [H_Workflows] ADD CONSTRAINT [PK_H_Workflows] PRIMARY KEY CLUSTERED (H_WorkflowId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_Workflows_LocationCd') BEGIN  Drop INDEX [IX_H_Workflows_LocationCd] on [H_Workflows]; END */

CREATE NONCLUSTERED INDEX [IX_H_Workflows_LocationCd] ON [H_Workflows] (LocationCd ASC)

ALTER TABLE [H_WrOwiTcnResidentialFormalDisciplines]

DROP CONSTRAINT [PK_H_WROWITCNResidentialFormalDisciplines];

ALTER TABLE [H_WrOwiTcnResidentialFormalDisciplines] ADD CONSTRAINT [PK_H_WROWITCNResidentialFormalDisciplines] PRIMARY KEY CLUSTERED (H_WrOwiTcnResidentialFormalDisciplineId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_WrOwiTcnResidentialFormalDisciplines_LocationCd') BEGIN  Drop INDEX [IX_H_WrOwiTcnResidentialFormalDisciplines_LocationCd] on [H_WrOwiTcnResidentialFormalDisciplines]; END */

CREATE NONCLUSTERED INDEX [IX_H_WrOwiTcnResidentialFormalDisciplines_LocationCd] ON [H_WrOwiTcnResidentialFormalDisciplines] (LocationCd ASC)

ALTER TABLE [H_WrOwiTcnResiFormalDisciplineRuleViolations]

DROP CONSTRAINT [PK_H_WROWITCNResiFormalDisciplineRuleViolations];

ALTER TABLE [H_WrOwiTcnResiFormalDisciplineRuleViolations] ADD CONSTRAINT [PK_H_WROWITCNResiFormalDisciplineRuleViolations] PRIMARY KEY CLUSTERED (H_WrOwiTcnResiFormalDisciplineRuleViolationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_WrOwiTcnResiFormalDisciplineRuleViolations_LocationCd') BEGIN  Drop INDEX [IX_H_WrOwiTcnResiFormalDisciplineRuleViolations_LocationCd] on [H_WrOwiTcnResiFormalDisciplineRuleViolations]; END */

CREATE NONCLUSTERED INDEX [IX_H_WrOwiTcnResiFormalDisciplineRuleViolations_LocationCd] ON [H_WrOwiTcnResiFormalDisciplineRuleViolations] (LocationCd ASC)

ALTER TABLE [H_WrOwiTransferClassificationAppealDecisionNotices]

DROP CONSTRAINT [PK_H_WROWITransferClassificationAppealDecisionNotices];

ALTER TABLE [H_WrOwiTransferClassificationAppealDecisionNotices] ADD CONSTRAINT [PK_H_WROWITransferClassificationAppealDecisionNotices] PRIMARY KEY CLUSTERED (H_WrOwiTransferClassificationAppealDecisionNoticeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_WrOwiTransferClassificationAppealDecisionNotices_LocationCd') BEGIN  Drop INDEX [IX_H_WrOwiTransferClassificationAppealDecisionNotices_LocationCd] on [H_WrOwiTransferClassificationAppealDecisionNotices]; END */

CREATE NONCLUSTERED INDEX [IX_H_WrOwiTransferClassificationAppealDecisionNotices_LocationCd] ON [H_WrOwiTransferClassificationAppealDecisionNotices] (LocationCd ASC)

ALTER TABLE [H_WrOwiTransferClassificationDecisions]

DROP CONSTRAINT [PK_H_WROWITransferClassificationDecisions];

ALTER TABLE [H_WrOwiTransferClassificationDecisions] ADD CONSTRAINT [PK_H_WROWITransferClassificationDecisions] PRIMARY KEY CLUSTERED (H_WrOwiTransferClassificationDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_WrOwiTransferClassificationDecisions_LocationCd') BEGIN  Drop INDEX [IX_H_WrOwiTransferClassificationDecisions_LocationCd] on [H_WrOwiTransferClassificationDecisions]; END */

CREATE NONCLUSTERED INDEX [IX_H_WrOwiTransferClassificationDecisions_LocationCd] ON [H_WrOwiTransferClassificationDecisions] (LocationCd ASC)

ALTER TABLE [H_WrOwiTransferClassificationNotices]

DROP CONSTRAINT [PK_H_WROWITransferClassificationNotices];

ALTER TABLE [H_WrOwiTransferClassificationNotices] ADD CONSTRAINT [PK_H_WROWITransferClassificationNotices] PRIMARY KEY CLUSTERED (H_WrOwiTransferClassificationNoticeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_H_WrOwiTransferClassificationNotices_LocationCd') BEGIN  Drop INDEX [IX_H_WrOwiTransferClassificationNotices_LocationCd] on [H_WrOwiTransferClassificationNotices]; END */

CREATE NONCLUSTERED INDEX [IX_H_WrOwiTransferClassificationNotices_LocationCd] ON [H_WrOwiTransferClassificationNotices] (LocationCd ASC)

ALTER TABLE [HandheldDevices]

DROP CONSTRAINT [PK_HandheldDevices];

ALTER TABLE [HandheldDevices] ADD CONSTRAINT [PK_HandheldDevices] PRIMARY KEY CLUSTERED (HandheldDeviceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_HandheldDevices_LocationCd') BEGIN  Drop INDEX [IX_HandheldDevices_LocationCd] on [HandheldDevices]; END */

CREATE NONCLUSTERED INDEX [IX_HandheldDevices_LocationCd] ON [HandheldDevices] (LocationCd ASC)

ALTER TABLE [HelpFiles]

DROP CONSTRAINT [PK_HelpFiles];

ALTER TABLE [HelpFiles] ADD CONSTRAINT [PK_HelpFiles] PRIMARY KEY CLUSTERED (HelpFileId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_HelpFiles_LocationCd') BEGIN  Drop INDEX [IX_HelpFiles_LocationCd] on [HelpFiles]; END */

CREATE NONCLUSTERED INDEX [IX_HelpFiles_LocationCd] ON [HelpFiles] (LocationCd ASC)

ALTER TABLE [HousingCounts]

DROP CONSTRAINT [PK_HousingCounts];

ALTER TABLE [HousingCounts] ADD CONSTRAINT [PK_HousingCounts] PRIMARY KEY CLUSTERED (HousingCountId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_HousingCounts_LocationCd') BEGIN  Drop INDEX [IX_HousingCounts_LocationCd] on [HousingCounts]; END */

CREATE NONCLUSTERED INDEX [IX_HousingCounts_LocationCd] ON [HousingCounts] (LocationCd ASC)

ALTER TABLE [ICIS_COURT_ORDER_REQUESTS]

DROP CONSTRAINT [PK_ICIS_COURT_ORDER_REQUESTS_1];

ALTER TABLE [ICIS_COURT_ORDER_REQUESTS] ADD CONSTRAINT [PK_ICIS_COURT_ORDER_REQUESTS_1] PRIMARY KEY CLUSTERED (ICIS_COURT_ORDER_REQUEST_ID ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_ICIS_COURT_ORDER_REQUESTS_LocationCd') BEGIN  Drop INDEX [IX_ICIS_COURT_ORDER_REQUESTS_LocationCd] on [ICIS_COURT_ORDER_REQUESTS]; END */

CREATE NONCLUSTERED INDEX [IX_ICIS_COURT_ORDER_REQUESTS_LocationCd] ON [ICIS_COURT_ORDER_REQUESTS] (LocationCd ASC)

ALTER TABLE [ICIS_COURT_ORDER_REQUESTS_SYSTEM_REJECTED]

DROP CONSTRAINT [PK_ICIS_COURT_ORDER_REQUESTS_SYSTEM_REJECTED];

ALTER TABLE [ICIS_COURT_ORDER_REQUESTS_SYSTEM_REJECTED] ADD CONSTRAINT [PK_ICIS_COURT_ORDER_REQUESTS_SYSTEM_REJECTED] PRIMARY KEY CLUSTERED (ICIS_COURT_ORDER_REQUEST_SYSTEM_REJECTED_ID ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_ICIS_COURT_ORDER_REQUESTS_SYSTEM_REJECTED_LocationCd') BEGIN  Drop INDEX [IX_ICIS_COURT_ORDER_REQUESTS_SYSTEM_REJECTED_LocationCd] on [ICIS_COURT_ORDER_REQUESTS_SYSTEM_REJECTED]; END */

CREATE NONCLUSTERED INDEX [IX_ICIS_COURT_ORDER_REQUESTS_SYSTEM_REJECTED_LocationCd] ON [ICIS_COURT_ORDER_REQUESTS_SYSTEM_REJECTED] (LocationCd ASC)

ALTER TABLE [ICIS_DOC_ORIGINATED_ADDENDUMS]

DROP CONSTRAINT [PK_ICIS_DOC_ORIGINATED_ADDENDUMS_1];

ALTER TABLE [ICIS_DOC_ORIGINATED_ADDENDUMS] ADD CONSTRAINT [PK_ICIS_DOC_ORIGINATED_ADDENDUMS_1] PRIMARY KEY CLUSTERED (ICIS_DOC_ORIGINATED_ADDENDUM_ID ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_ICIS_DOC_ORIGINATED_ADDENDUMS_LocationCd') BEGIN  Drop INDEX [IX_ICIS_DOC_ORIGINATED_ADDENDUMS_LocationCd] on [ICIS_DOC_ORIGINATED_ADDENDUMS]; END */

CREATE NONCLUSTERED INDEX [IX_ICIS_DOC_ORIGINATED_ADDENDUMS_LocationCd] ON [ICIS_DOC_ORIGINATED_ADDENDUMS] (LocationCd ASC)

ALTER TABLE [ICIS_PSI_REQUEST]

DROP CONSTRAINT [PK_ICIS_PSI_REQUEST_1];

ALTER TABLE [ICIS_PSI_REQUEST] ADD CONSTRAINT [PK_ICIS_PSI_REQUEST_1] PRIMARY KEY CLUSTERED (ICIS_PSI_REQUEST_ID ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_ICIS_PSI_REQUEST_LocationCd') BEGIN  Drop INDEX [IX_ICIS_PSI_REQUEST_LocationCd] on [ICIS_PSI_REQUEST]; END */

CREATE NONCLUSTERED INDEX [IX_ICIS_PSI_REQUEST_LocationCd] ON [ICIS_PSI_REQUEST] (LocationCd ASC)

ALTER TABLE [IPI_dmCategory]

DROP CONSTRAINT [PK_IPI_dmCategory];

ALTER TABLE [IPI_dmCategory] ADD CONSTRAINT [PK_IPI_dmCategory] PRIMARY KEY CLUSTERED (CategoryId  ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_IPI_dmCategory_LocationCd') BEGIN  Drop INDEX [IX_IPI_dmCategory_LocationCd] on [IPI_dmCategory]; END */

CREATE NONCLUSTERED INDEX [IX_IPI_dmCategory_LocationCd] ON [IPI_dmCategory] (LocationCd ASC)

ALTER TABLE [IPI_dmDepartment]

DROP CONSTRAINT [PK_IPI_dmDepartment];

ALTER TABLE [IPI_dmDepartment] ADD CONSTRAINT [PK_IPI_dmDepartment] PRIMARY KEY CLUSTERED (DepartmentId   ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_IPI_dmDepartment_LocationCd') BEGIN  Drop INDEX [IX_IPI_dmDepartment_LocationCd] on [IPI_dmDepartment]; END */

CREATE NONCLUSTERED INDEX [IX_IPI_dmDepartment_LocationCd] ON [IPI_dmDepartment] (LocationCd ASC)

ALTER TABLE [IPI_ItemInfo]

DROP CONSTRAINT [PK_IPI_ItemInfo];

ALTER TABLE [IPI_ItemInfo] ADD CONSTRAINT [PK_IPI_ItemInfo] PRIMARY KEY CLUSTERED (ItemId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_IPI_ItemInfo_LocationCd') BEGIN  Drop INDEX [IX_IPI_ItemInfo_LocationCd] on [IPI_ItemInfo]; END */

CREATE NONCLUSTERED INDEX [IX_IPI_ItemInfo_LocationCd] ON [IPI_ItemInfo] (LocationCd  ASC)

ALTER TABLE [KioskAnnouncements]

DROP CONSTRAINT [PK_KioskAnnouncements];

ALTER TABLE [KioskAnnouncements] ADD CONSTRAINT [PK_KioskAnnouncements] PRIMARY KEY CLUSTERED (KioskAnnouncementId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_KioskAnnouncements_LocationCd') BEGIN  Drop INDEX [IX_KioskAnnouncements_LocationCd] on [KioskAnnouncements]; END */

CREATE NONCLUSTERED INDEX [IX_KioskAnnouncements_LocationCd] ON [KioskAnnouncements] (LocationCd ASC)

ALTER TABLE [KioskFingerPrintTemplates]

DROP CONSTRAINT [PK_KioskFingerPrintTemplates];

ALTER TABLE [KioskFingerPrintTemplates] ADD CONSTRAINT [PK_KioskFingerPrintTemplates] PRIMARY KEY CLUSTERED (TemplateId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_KioskFingerPrintTemplates_LocationCd') BEGIN  Drop INDEX [IX_KioskFingerPrintTemplates_LocationCd] on [KioskFingerPrintTemplates]; END */

CREATE NONCLUSTERED INDEX [IX_KioskFingerPrintTemplates_LocationCd] ON [KioskFingerPrintTemplates] (LocationCd ASC)

ALTER TABLE [KioskOffenderLogInLog]

DROP CONSTRAINT [PK_KioskOffenderLogInLog];

ALTER TABLE [KioskOffenderLogInLog] ADD CONSTRAINT [PK_KioskOffenderLogInLog] PRIMARY KEY CLUSTERED (KioskOffenderLogInLogId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_KioskOffenderLogInLog_LocationCd') BEGIN  Drop INDEX [IX_KioskOffenderLogInLog_LocationCd] on [KioskOffenderLogInLog]; END */

CREATE NONCLUSTERED INDEX [IX_KioskOffenderLogInLog_LocationCd] ON [KioskOffenderLogInLog] (LocationCd ASC)

ALTER TABLE [KioskStaffAuthorizations]

DROP CONSTRAINT [PK_KioskStaffAuthorizations];

ALTER TABLE [KioskStaffAuthorizations] ADD CONSTRAINT [PK_KioskStaffAuthorizations] PRIMARY KEY CLUSTERED (KioskStaffAuthorizationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_KioskStaffAuthorizations_LocationCd') BEGIN  Drop INDEX [IX_KioskStaffAuthorizations_LocationCd] on [KioskStaffAuthorizations]; END */

CREATE NONCLUSTERED INDEX [IX_KioskStaffAuthorizations_LocationCd] ON [KioskStaffAuthorizations] (LocationCd ASC)

ALTER TABLE [KioskUnexpectedErrorLog]

DROP CONSTRAINT [PK_KioskUnexpectedErrorLog];

ALTER TABLE [KioskUnexpectedErrorLog] ADD CONSTRAINT [PK_KioskUnexpectedErrorLog] PRIMARY KEY CLUSTERED (UnexpectedErrorId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_KioskUnexpectedErrorLog_LocationCd') BEGIN  Drop INDEX [IX_KioskUnexpectedErrorLog_LocationCd] on [KioskUnexpectedErrorLog]; END */

CREATE NONCLUSTERED INDEX [IX_KioskUnexpectedErrorLog_LocationCd] ON [KioskUnexpectedErrorLog] (LocationCd ASC)

ALTER TABLE [KioskUserLogInLog]

DROP CONSTRAINT [PK_KioskUserLogInLog];

ALTER TABLE [KioskUserLogInLog] ADD CONSTRAINT [PK_KioskUserLogInLog] PRIMARY KEY CLUSTERED (KioskUserLogInLogId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_KioskUserLogInLog_LocationCd') BEGIN  Drop INDEX [IX_KioskUserLogInLog_LocationCd] on [KioskUserLogInLog]; END */

CREATE NONCLUSTERED INDEX [IX_KioskUserLogInLog_LocationCd] ON [KioskUserLogInLog] (LocationCd ASC)

ALTER TABLE [LocationScans]

DROP CONSTRAINT [PK_LocationScans];

ALTER TABLE [LocationScans] ADD CONSTRAINT [PK_LocationScans] PRIMARY KEY CLUSTERED (LocationScanId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_LocationScans_LocationCd') BEGIN  Drop INDEX [IX_LocationScans_LocationCd] on [LocationScans]; END */

CREATE NONCLUSTERED INDEX [IX_LocationScans_LocationCd] ON [LocationScans] (LocationCd ASC)

ALTER TABLE [LouisTrainingAddresses]

DROP CONSTRAINT [PK_LouisTrainingAddresses];

ALTER TABLE [LouisTrainingAddresses] ADD CONSTRAINT [PK_LouisTrainingAddresses] PRIMARY KEY CLUSTERED (LouisTrainingAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_LouisTrainingAddresses_LocationCd') BEGIN  Drop INDEX [IX_LouisTrainingAddresses_LocationCd] on [LouisTrainingAddresses]; END */

CREATE NONCLUSTERED INDEX [IX_LouisTrainingAddresses_LocationCd] ON [LouisTrainingAddresses] (LocationCd ASC)

ALTER TABLE [LouisTrainingAddressPhones]

DROP CONSTRAINT [PK_LouisTrainingAddressPhones];

ALTER TABLE [LouisTrainingAddressPhones] ADD CONSTRAINT [PK_LouisTrainingAddressPhones] PRIMARY KEY CLUSTERED (LouisTrainingAddressPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_LouisTrainingAddressPhones_LocationCd') BEGIN  Drop INDEX [IX_LouisTrainingAddressPhones_LocationCd] on [LouisTrainingAddressPhones]; END */

CREATE NONCLUSTERED INDEX [IX_LouisTrainingAddressPhones_LocationCd] ON [LouisTrainingAddressPhones] (LocationCd ASC)

ALTER TABLE [MagdyH_TrainingAddresses]

DROP CONSTRAINT [PK_MagdyH_TrainingAddresses];

ALTER TABLE [MagdyH_TrainingAddresses] ADD CONSTRAINT [PK_MagdyH_TrainingAddresses] PRIMARY KEY CLUSTERED (H_TrainingAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_MagdyH_TrainingAddresses_LocationCd') BEGIN  Drop INDEX [IX_MagdyH_TrainingAddresses_LocationCd] on [MagdyH_TrainingAddresses]; END */

CREATE NONCLUSTERED INDEX [IX_MagdyH_TrainingAddresses_LocationCd] ON [MagdyH_TrainingAddresses] (LocationCd ASC)

ALTER TABLE [MagdyH_TrainingAddressPhones]

DROP CONSTRAINT [PK_MagdyH_TrainingAddressPhones];

ALTER TABLE [MagdyH_TrainingAddressPhones] ADD CONSTRAINT [PK_MagdyH_TrainingAddressPhones] PRIMARY KEY CLUSTERED (H_TrainingAddressPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_MagdyH_TrainingAddressPhones_LocationCd') BEGIN  Drop INDEX [IX_MagdyH_TrainingAddressPhones_LocationCd] on [MagdyH_TrainingAddressPhones]; END */

CREATE NONCLUSTERED INDEX [IX_MagdyH_TrainingAddressPhones_LocationCd] ON [MagdyH_TrainingAddressPhones] (LocationCd ASC)

ALTER TABLE [MobileDevices]

DROP CONSTRAINT [PK_MobileDevices];

ALTER TABLE [MobileDevices] ADD CONSTRAINT [PK_MobileDevices] PRIMARY KEY CLUSTERED (MobileDeviceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_MobileDevices_LocationCd') BEGIN  Drop INDEX [IX_MobileDevices_LocationCd] on [MobileDevices]; END */

CREATE NONCLUSTERED INDEX [IX_MobileDevices_LocationCd] ON [MobileDevices] (LocationCd ASC)

ALTER TABLE [MobileSessions]

DROP CONSTRAINT [PK_MobileSessions];

ALTER TABLE [MobileSessions] ADD CONSTRAINT [PK_MobileSessions] PRIMARY KEY CLUSTERED (MobileSessionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_MobileSessions_LocationCd') BEGIN  Drop INDEX [IX_MobileSessions_LocationCd] on [MobileSessions]; END */

CREATE NONCLUSTERED INDEX [IX_MobileSessions_LocationCd] ON [MobileSessions] (LocationCd ASC)

ALTER TABLE [Nga_Ca_Cases]

DROP CONSTRAINT [PK_NGA_CA_Cases];

ALTER TABLE [Nga_Ca_Cases] ADD CONSTRAINT [PK_NGA_CA_Cases] PRIMARY KEY CLUSTERED (IconCaseId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_Nga_Ca_Cases_LocationCd') BEGIN  Drop INDEX [IX_Nga_Ca_Cases_LocationCd] on [Nga_Ca_Cases]; END */

CREATE NONCLUSTERED INDEX [IX_Nga_Ca_Cases_LocationCd] ON [Nga_Ca_Cases] (LocationCd ASC)

ALTER TABLE [NletsRequests]

DROP CONSTRAINT [PK_NletsRequests];

ALTER TABLE [NletsRequests] ADD CONSTRAINT [PK_NletsRequests] PRIMARY KEY CLUSTERED (NletsRequestId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_NletsRequests_LocationCd') BEGIN  Drop INDEX [IX_NletsRequests_LocationCd] on [NletsRequests]; END */

CREATE NONCLUSTERED INDEX [IX_NletsRequests_LocationCd] ON [NletsRequests] (LocationCd ASC)

ALTER TABLE [NonOffenderFiles]

DROP CONSTRAINT [PK_NonOffenderFiles];

ALTER TABLE [NonOffenderFiles] ADD CONSTRAINT [PK_NonOffenderFiles] PRIMARY KEY CLUSTERED (NonOffenderFileId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_NonOffenderFiles_LocationCd') BEGIN  Drop INDEX [IX_NonOffenderFiles_LocationCd] on [NonOffenderFiles]; END */

CREATE NONCLUSTERED INDEX [IX_NonOffenderFiles_LocationCd] ON [NonOffenderFiles] (LocationCd ASC)

ALTER TABLE [NPErrorLog]

DROP CONSTRAINT [PK_NPErrorLog];

ALTER TABLE [NPErrorLog] ADD CONSTRAINT [PK_NPErrorLog] PRIMARY KEY CLUSTERED (NPErrorLogId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_NPErrorLog_LocationCd') BEGIN  Drop INDEX [IX_NPErrorLog_LocationCd] on [NPErrorLog]; END */

CREATE NONCLUSTERED INDEX [IX_NPErrorLog_LocationCd] ON [NPErrorLog] (LocationCd ASC)

ALTER TABLE [O_KioskFingerPrintTemplates]

DROP CONSTRAINT [PK_O_KioskFingerPrintTemplates];

ALTER TABLE [O_KioskFingerPrintTemplates] ADD CONSTRAINT [PK_O_KioskFingerPrintTemplates] PRIMARY KEY CLUSTERED (O_TemplateId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_O_KioskFingerPrintTemplates_LocationCd') BEGIN  Drop INDEX [IX_O_KioskFingerPrintTemplates_LocationCd] on [O_KioskFingerPrintTemplates]; END */

CREATE NONCLUSTERED INDEX [IX_O_KioskFingerPrintTemplates_LocationCd] ON [O_KioskFingerPrintTemplates] (LocationCd ASC)

ALTER TABLE [OffenderActivities]

DROP CONSTRAINT [PK_OffenderActivities];

ALTER TABLE [OffenderActivities] ADD CONSTRAINT [PK_OffenderActivities] PRIMARY KEY CLUSTERED (OffenderActivityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_OffenderActivities_LocationCd') BEGIN  Drop INDEX [IX_OffenderActivities_LocationCd] on [OffenderActivities]; END */

CREATE NONCLUSTERED INDEX [IX_OffenderActivities_LocationCd] ON [OffenderActivities] (LocationCd ASC)

ALTER TABLE [OffenderGroupLocks]

DROP CONSTRAINT [PK_OffenderGroupLocks];

ALTER TABLE [OffenderGroupLocks] ADD CONSTRAINT [PK_OffenderGroupLocks] PRIMARY KEY CLUSTERED (OffenderGroupLockId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_OffenderGroupLocks_LocationCd') BEGIN  Drop INDEX [IX_OffenderGroupLocks_LocationCd] on [OffenderGroupLocks]; END */

CREATE NONCLUSTERED INDEX [IX_OffenderGroupLocks_LocationCd] ON [OffenderGroupLocks] (LocationCd ASC)

ALTER TABLE [OffenderInformationDeletes]

DROP CONSTRAINT [PK_OffenderInformationDeletes];

ALTER TABLE [OffenderInformationDeletes] ADD CONSTRAINT [PK_OffenderInformationDeletes] PRIMARY KEY CLUSTERED (OffenderInformationDeleteId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_OffenderInformationDeletes_LocationCd') BEGIN  Drop INDEX [IX_OffenderInformationDeletes_LocationCd] on [OffenderInformationDeletes]; END */

CREATE NONCLUSTERED INDEX [IX_OffenderInformationDeletes_LocationCd] ON [OffenderInformationDeletes] (LocationCd ASC)

ALTER TABLE [OffenderInformationMerges]

DROP CONSTRAINT [PK_OffenderInformationMerges];

ALTER TABLE [OffenderInformationMerges] ADD CONSTRAINT [PK_OffenderInformationMerges] PRIMARY KEY CLUSTERED (OffenderInformationMergeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_OffenderInformationMerges_LocationCd') BEGIN  Drop INDEX [IX_OffenderInformationMerges_LocationCd] on [OffenderInformationMerges]; END */

CREATE NONCLUSTERED INDEX [IX_OffenderInformationMerges_LocationCd] ON [OffenderInformationMerges] (LocationCd ASC)

ALTER TABLE [OffenderUserLocks]

DROP CONSTRAINT [PK_OffenderUserLocks];

ALTER TABLE [OffenderUserLocks] ADD CONSTRAINT [PK_OffenderUserLocks] PRIMARY KEY CLUSTERED (OffenderUserLockId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_OffenderUserLocks_LocationCd') BEGIN  Drop INDEX [IX_OffenderUserLocks_LocationCd] on [OffenderUserLocks]; END */

CREATE NONCLUSTERED INDEX [IX_OffenderUserLocks_LocationCd] ON [OffenderUserLocks] (LocationCd ASC)

ALTER TABLE [ParoleBoardInterviewEvents]

DROP CONSTRAINT [PK_ParoleBoardInterviewEvents];

ALTER TABLE [ParoleBoardInterviewEvents] ADD CONSTRAINT [PK_ParoleBoardInterviewEvents] PRIMARY KEY CLUSTERED (ParoleBoardInterviewEventId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_ParoleBoardInterviewEvents_LocationCd') BEGIN  Drop INDEX [IX_ParoleBoardInterviewEvents_LocationCd] on [ParoleBoardInterviewEvents]; END */

CREATE NONCLUSTERED INDEX [IX_ParoleBoardInterviewEvents_LocationCd] ON [ParoleBoardInterviewEvents] (LocationCd ASC)

ALTER TABLE [PrathyushaTrainingAddresses]

DROP CONSTRAINT [PK_PrathyushaTrainingAddresses];

ALTER TABLE [PrathyushaTrainingAddresses] ADD CONSTRAINT [PK_PrathyushaTrainingAddresses] PRIMARY KEY CLUSTERED (TrainingAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_PrathyushaTrainingAddresses_LocationCd') BEGIN  Drop INDEX [IX_PrathyushaTrainingAddresses_LocationCd] on [PrathyushaTrainingAddresses]; END */

CREATE NONCLUSTERED INDEX [IX_PrathyushaTrainingAddresses_LocationCd] ON [PrathyushaTrainingAddresses] (LocationCd ASC)

ALTER TABLE [PrathyushaTrainingAddressPhones]

DROP CONSTRAINT [PK_PrathyushaTrainingAddressPhones];

ALTER TABLE [PrathyushaTrainingAddressPhones] ADD CONSTRAINT [PK_PrathyushaTrainingAddressPhones] PRIMARY KEY CLUSTERED (TrainingAddressPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_PrathyushaTrainingAddressPhones_LocationCd') BEGIN  Drop INDEX [IX_PrathyushaTrainingAddressPhones_LocationCd] on [PrathyushaTrainingAddressPhones]; END */

CREATE NONCLUSTERED INDEX [IX_PrathyushaTrainingAddressPhones_LocationCd] ON [PrathyushaTrainingAddressPhones] (LocationCd ASC)

ALTER TABLE [PreaReporting]

DROP CONSTRAINT [PK_PreaReporting];

ALTER TABLE [PreaReporting] ADD CONSTRAINT [PK_PreaReporting] PRIMARY KEY CLUSTERED (PreaReportingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_PreaReporting_LocationCd') BEGIN  Drop INDEX [IX_PreaReporting_LocationCd] on [PreaReporting]; END */

CREATE NONCLUSTERED INDEX [IX_PreaReporting_LocationCd] ON [PreaReporting] (LocationCd ASC)

ALTER TABLE [Prescreenings]

DROP CONSTRAINT [PK_Prescreenings];

ALTER TABLE [Prescreenings] ADD CONSTRAINT [PK_Prescreenings] PRIMARY KEY CLUSTERED (PrescreeningId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_Prescreenings_LocationCd') BEGIN  Drop INDEX [IX_Prescreenings_LocationCd] on [Prescreenings]; END */

CREATE NONCLUSTERED INDEX [IX_Prescreenings_LocationCd] ON [Prescreenings] (LocationCd ASC)

ALTER TABLE [QuangH_TrainingAddresses]

DROP CONSTRAINT [PK_QuangH_TrainingAddresses];

ALTER TABLE [QuangH_TrainingAddresses] ADD CONSTRAINT [PK_QuangH_TrainingAddresses] PRIMARY KEY CLUSTERED (H_TrainingAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_QuangH_TrainingAddresses_LocationCd') BEGIN  Drop INDEX [IX_QuangH_TrainingAddresses_LocationCd] on [QuangH_TrainingAddresses]; END */

CREATE NONCLUSTERED INDEX [IX_QuangH_TrainingAddresses_LocationCd] ON [QuangH_TrainingAddresses] (LocationCd ASC)

ALTER TABLE [QuangH_TrainingAddressPhones]

DROP CONSTRAINT [PK_QuangH_TrainingAddressPhones];

ALTER TABLE [QuangH_TrainingAddressPhones] ADD CONSTRAINT [PK_QuangH_TrainingAddressPhones] PRIMARY KEY CLUSTERED (H_TrainingAddressPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_QuangH_TrainingAddressPhones_LocationCd') BEGIN  Drop INDEX [IX_QuangH_TrainingAddressPhones_LocationCd] on [QuangH_TrainingAddressPhones]; END */

CREATE NONCLUSTERED INDEX [IX_QuangH_TrainingAddressPhones_LocationCd] ON [QuangH_TrainingAddressPhones] (LocationCd ASC)

ALTER TABLE [ReportsOld]

DROP CONSTRAINT [PK_ReportsOld];

ALTER TABLE [ReportsOld] ADD CONSTRAINT [PK_ReportsOld] PRIMARY KEY CLUSTERED (ReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_ReportsOld_LocationCd') BEGIN  Drop INDEX [IX_ReportsOld_LocationCd] on [ReportsOld]; END */

CREATE NONCLUSTERED INDEX [IX_ReportsOld_LocationCd] ON [ReportsOld] (LocationCd ASC)

ALTER TABLE [RestorationOfRights]

DROP CONSTRAINT [PK_RestorationOfRights];

ALTER TABLE [RestorationOfRights] ADD CONSTRAINT [PK_RestorationOfRights] PRIMARY KEY CLUSTERED (RestorationOfRightsId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_RestorationOfRights_LocationCd') BEGIN  Drop INDEX [IX_RestorationOfRights_LocationCd] on [RestorationOfRights]; END */

CREATE NONCLUSTERED INDEX [IX_RestorationOfRights_LocationCd] ON [RestorationOfRights] (LocationCd ASC)

ALTER TABLE [Screens]

DROP CONSTRAINT [PK_Screens];

ALTER TABLE [Screens] ADD CONSTRAINT [PK_Screens] PRIMARY KEY CLUSTERED (ScreenId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_Screens_LocationCd') BEGIN  Drop INDEX [IX_Screens_LocationCd] on [Screens]; END */

CREATE NONCLUSTERED INDEX [IX_Screens_LocationCd] ON [Screens] (LocationCd ASC)

ALTER TABLE [SecEnt]

DROP CONSTRAINT [PK_SecEnt];

ALTER TABLE [SecEnt] ADD CONSTRAINT [PK_SecEnt] PRIMARY KEY CLUSTERED (SecEntId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_SecEnt_LocationCd') BEGIN  Drop INDEX [IX_SecEnt_LocationCd] on [SecEnt]; END */

CREATE NONCLUSTERED INDEX [IX_SecEnt_LocationCd] ON [SecEnt] (LocationCd ASC)

ALTER TABLE [ShikshyaH_TrainingAddresses]

DROP CONSTRAINT [PK_ShikshyaH_TrainingAddresses];

ALTER TABLE [ShikshyaH_TrainingAddresses] ADD CONSTRAINT [PK_ShikshyaH_TrainingAddresses] PRIMARY KEY CLUSTERED (H_TrainingAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_ShikshyaH_TrainingAddresses_LocationCd') BEGIN  Drop INDEX [IX_ShikshyaH_TrainingAddresses_LocationCd] on [ShikshyaH_TrainingAddresses]; END */

CREATE NONCLUSTERED INDEX [IX_ShikshyaH_TrainingAddresses_LocationCd] ON [ShikshyaH_TrainingAddresses] (LocationCd ASC)

ALTER TABLE [ShikshyaH_TrainingAddressPhones]

DROP CONSTRAINT [PK_ShikshyaH_TrainingAddressPhones];

ALTER TABLE [ShikshyaH_TrainingAddressPhones] ADD CONSTRAINT [PK_ShikshyaH_TrainingAddressPhones] PRIMARY KEY CLUSTERED (H_TrainingAddressPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_ShikshyaH_TrainingAddressPhones_LocationCd') BEGIN  Drop INDEX [IX_ShikshyaH_TrainingAddressPhones_LocationCd] on [ShikshyaH_TrainingAddressPhones]; END */

CREATE NONCLUSTERED INDEX [IX_ShikshyaH_TrainingAddressPhones_LocationCd] ON [ShikshyaH_TrainingAddressPhones] (LocationCd ASC)

ALTER TABLE [StaffVacancies]

DROP CONSTRAINT [PK_StaffVacancies];

ALTER TABLE [StaffVacancies] ADD CONSTRAINT [PK_StaffVacancies] PRIMARY KEY CLUSTERED (StaffVacancyId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_StaffVacancies_LocationCd') BEGIN  Drop INDEX [IX_StaffVacancies_LocationCd] on [StaffVacancies]; END */

CREATE NONCLUSTERED INDEX [IX_StaffVacancies_LocationCd] ON [StaffVacancies] (LocationCd ASC)

ALTER TABLE [StevenH_TrainingAddresses]

DROP CONSTRAINT [PK_StevenH_TrainingAddresses];

ALTER TABLE [StevenH_TrainingAddresses] ADD CONSTRAINT [PK_StevenH_TrainingAddresses] PRIMARY KEY CLUSTERED (H_TrainingAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_StevenH_TrainingAddresses_LocationCd') BEGIN  Drop INDEX [IX_StevenH_TrainingAddresses_LocationCd] on [StevenH_TrainingAddresses]; END */

CREATE NONCLUSTERED INDEX [IX_StevenH_TrainingAddresses_LocationCd] ON [StevenH_TrainingAddresses] (LocationCd ASC)

ALTER TABLE [StevenH_TrainingAddressPhones]

DROP CONSTRAINT [PK_StevenH_TrainingAddressPhones];

ALTER TABLE [StevenH_TrainingAddressPhones] ADD CONSTRAINT [PK_StevenH_TrainingAddressPhones] PRIMARY KEY CLUSTERED (H_TrainingAddressPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_StevenH_TrainingAddressPhones_LocationCd') BEGIN  Drop INDEX [IX_StevenH_TrainingAddressPhones_LocationCd] on [StevenH_TrainingAddressPhones]; END */

CREATE NONCLUSTERED INDEX [IX_StevenH_TrainingAddressPhones_LocationCd] ON [StevenH_TrainingAddressPhones] (LocationCd ASC)

ALTER TABLE [StoredReports]

DROP CONSTRAINT [PK_StoredReports];

ALTER TABLE [StoredReports] ADD CONSTRAINT [PK_StoredReports] PRIMARY KEY CLUSTERED (StoredReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_StoredReports_LocationCd') BEGIN  Drop INDEX [IX_StoredReports_LocationCd] on [StoredReports]; END */

CREATE NONCLUSTERED INDEX [IX_StoredReports_LocationCd] ON [StoredReports] (LocationCd ASC)

ALTER TABLE [TableGlossary]

DROP CONSTRAINT [PK_TableGlossary];

ALTER TABLE [TableGlossary] ADD CONSTRAINT [PK_TableGlossary] PRIMARY KEY CLUSTERED (TableGlossaryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_TableGlossary_LocationCd') BEGIN  Drop INDEX [IX_TableGlossary_LocationCd] on [TableGlossary]; END */

CREATE NONCLUSTERED INDEX [IX_TableGlossary_LocationCd] ON [TableGlossary] (LocationCd ASC)

ALTER TABLE [TripSchedules]

DROP CONSTRAINT [PK_TripSchedules];

ALTER TABLE [TripSchedules] ADD CONSTRAINT [PK_TripSchedules] PRIMARY KEY CLUSTERED (TripScheduleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_TripSchedules_LocationCd') BEGIN  Drop INDEX [IX_TripSchedules_LocationCd] on [TripSchedules]; END */

CREATE NONCLUSTERED INDEX [IX_TripSchedules_LocationCd] ON [TripSchedules] (LocationCd ASC)

ALTER TABLE [UserLocations]

DROP CONSTRAINT [PK_UserLocations];

ALTER TABLE [UserLocations] ADD CONSTRAINT [PK_UserLocations] PRIMARY KEY CLUSTERED (UserLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_UserLocations_LocationCd') BEGIN  Drop INDEX [IX_UserLocations_LocationCd] on [UserLocations]; END */

CREATE NONCLUSTERED INDEX [IX_UserLocations_LocationCd] ON [UserLocations] (LocationCd ASC)

ALTER TABLE [UserNameChanges]

DROP CONSTRAINT [PK_UserNameChanges];

ALTER TABLE [UserNameChanges] ADD CONSTRAINT [PK_UserNameChanges] PRIMARY KEY CLUSTERED (UserNameChangeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_UserNameChanges_LocationCd') BEGIN  Drop INDEX [IX_UserNameChanges_LocationCd] on [UserNameChanges]; END */

CREATE NONCLUSTERED INDEX [IX_UserNameChanges_LocationCd] ON [UserNameChanges] (LocationCd ASC)

ALTER TABLE [WordTemplates]

DROP CONSTRAINT [PK_WordTemplates];

ALTER TABLE [WordTemplates] ADD CONSTRAINT [PK_WordTemplates] PRIMARY KEY CLUSTERED (WordTemplateId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_WordTemplates_LocationCd') BEGIN  Drop INDEX [IX_WordTemplates_LocationCd] on [WordTemplates]; END */

CREATE NONCLUSTERED INDEX [IX_WordTemplates_LocationCd] ON [WordTemplates] (LocationCd ASC)

ALTER TABLE [Workflows]

DROP CONSTRAINT [PK_Workflows];

ALTER TABLE [Workflows] ADD CONSTRAINT [PK_Workflows] PRIMARY KEY CLUSTERED (WorkflowId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_Workflows_LocationCd') BEGIN  Drop INDEX [IX_Workflows_LocationCd] on [Workflows]; END */

CREATE NONCLUSTERED INDEX [IX_Workflows_LocationCd] ON [Workflows] (LocationCd ASC)