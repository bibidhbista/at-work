--ALTER TABLE [aLsi_rWorkTable]-- where SourceId= 20000031

--DROP CONSTRAINT [PK_aLsi_rWorkTable];

--ALTER TABLE [aLsi_rWorkTable] ADD CONSTRAINT [PK_aLsi_rWorkTable] PRIMARY KEY CLUSTERED (SourceId ASC)
--	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

--IF EXISTS (
--		SELECT NAME
--		FROM SYS.INDEXES
--		WHERE NAME = 'IX_aLsi_rWorkTable_LocationCd_OffenderCd'
--		)
--BEGIN
--	DROP INDEX [IX_aLsi_rWorkTable_LocationCd_OffenderCd] ON [aLsi_rWorkTable];
--END

--CREATE NONCLUSTERED INDEX [IX_aLsi_rWorkTable_LocationCd_OffenderCd] ON [aLsi_rWorkTable] (LocationCd ASC, OffenderCd ASC, Source ASC)

--ALTER TABLE [dmBopRevocationHearingNumbers]

--DROP CONSTRAINT [PK_dmBopRevocationHearingNumbers];

--ALTER TABLE [dmBopRevocationHearingNumbers] ADD CONSTRAINT [PK_dmBopRevocationHearingNumbers] PRIMARY KEY CLUSTERED (JudgeDesignation ASC)
--	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

--IF EXISTS (
--		SELECT NAME
--		FROM SYS.INDEXES
--		WHERE NAME = 'IX_dmBopRevocationHearingNumbers_LocationCd_OffenderCd'
--		)
--BEGIN
--	DROP INDEX [IX_dmBopRevocationHearingNumbers_LocationCd_OffenderCd] ON [dmBopRevocationHearingNumbers];
--END

--CREATE NONCLUSTERED INDEX [IX_dmBopRevocationHearingNumbers_LocationCd_OffenderCd] ON [dmBopRevocationHearingNumbers] (LocationCd ASC, HearingDt ASC, HearingType ASC)

ALTER TABLE [ResidentialAppeals]

DROP CONSTRAINT [PK_ResidentialAppeals];

ALTER TABLE [ResidentialAppeals] ADD CONSTRAINT [PK_ResidentialAppeals] PRIMARY KEY CLUSTERED (ResidentialAppealId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ResidentialAppeals_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ResidentialAppeals_LocationCd_OffenderCd] ON [ResidentialAppeals];
END

CREATE NONCLUSTERED INDEX [IX_ResidentialAppeals_LocationCd_OffenderCd] ON [ResidentialAppeals] (LocationCd ASC, ParentType ASC, ParentId ASC)

ALTER TABLE [ResidentialRuleViolations]

DROP CONSTRAINT [PK_ResidentialRuleViolations];

ALTER TABLE [ResidentialRuleViolations] ADD CONSTRAINT [PK_ResidentialRuleViolations] PRIMARY KEY CLUSTERED (ResidentialRuleViolationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ResidentialRuleViolations_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ResidentialRuleViolations_LocationCd_OffenderCd] ON [ResidentialRuleViolations];
END

CREATE NONCLUSTERED INDEX [IX_ResidentialRuleViolations_LocationCd_OffenderCd] ON [ResidentialRuleViolations] (LocationCd ASC, ParentType ASC, ParentId ASC)

ALTER TABLE [ResidentialSanctions]

DROP CONSTRAINT [PK_ResidentialSanctions];

ALTER TABLE [ResidentialSanctions] ADD CONSTRAINT [PK_ResidentialSanctions] PRIMARY KEY CLUSTERED (ResidentialSanctionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ResidentialSanctions_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ResidentialSanctions_LocationCd_OffenderCd] ON [ResidentialSanctions];
END

CREATE NONCLUSTERED INDEX [IX_ResidentialSanctions_LocationCd_OffenderCd] ON [ResidentialSanctions] (LocationCd ASC, ParentType ASC, ParentId ASC)

ALTER TABLE [SecEntUrls]

DROP CONSTRAINT [PK_SecEntUrls];

ALTER TABLE [SecEntUrls] ADD CONSTRAINT [PK_SecEntUrls] PRIMARY KEY CLUSTERED (UrlId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_SecEntUrls_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_SecEntUrls_LocationCd_OffenderCd] ON [SecEntUrls];
END

CREATE NONCLUSTERED INDEX [IX_SecEntUrls_LocationCd_OffenderCd] ON [SecEntUrls] (LocationCd ASC, SecEntUrlId ASC, SecEntId ASC)