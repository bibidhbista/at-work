ALTER TABLE [aAcute2007]

DROP CONSTRAINT [PK_aAcute2007];

ALTER TABLE [aAcute2007] ADD CONSTRAINT [PK_aAcute2007] PRIMARY KEY CLUSTERED (Acute2007Id ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aAcute2007_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aAcute2007_LocationCd] ON [aAcute2007];
END

CREATE NONCLUSTERED INDEX [IX_aAcute2007_LocationCd_OffenderCd] ON [aAcute2007] (LocationCd ASC, OffenderCd ASC)



ALTER TABLE [aAsam]

DROP CONSTRAINT [PK_aASAM];

ALTER TABLE [aAsam] ADD CONSTRAINT [PK_aASAM] PRIMARY KEY CLUSTERED (AsamId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aAsam_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aAsam_LocationCd] ON [aAsam];
END

CREATE NONCLUSTERED INDEX [IX_aAsam_LocationCd_OffenderCd] ON [aAsam] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aAsamPpc2r]

DROP CONSTRAINT [PK_aASAMPPC2R];

ALTER TABLE [aAsamPpc2r] ADD CONSTRAINT [PK_aASAMPPC2R] PRIMARY KEY CLUSTERED (AsamPpc2rId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aAsamPpc2r_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aAsamPpc2r_LocationCd] ON [aAsamPpc2r];
END

CREATE NONCLUSTERED INDEX [IX_aAsamPpc2r_LocationCd_OffenderCd] ON [aAsamPpc2r] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aAsi]

DROP CONSTRAINT [PK_aASI];

ALTER TABLE [aAsi] ADD CONSTRAINT [PK_aASI] PRIMARY KEY CLUSTERED (AsiId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aAsi_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aAsi_LocationCd] ON [aAsi];
END

CREATE NONCLUSTERED INDEX [IX_aAsi_LocationCd_OffenderCd] ON [aAsi] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aBetaIIIq]

DROP CONSTRAINT [PK_aBetaIIIQ];

ALTER TABLE [aBetaIIIq] ADD CONSTRAINT [PK_aBetaIIIQ] PRIMARY KEY CLUSTERED (BetaIIIqId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aBetaIIIq_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aBetaIIIq_LocationCd] ON [aBetaIIIq];
END

CREATE NONCLUSTERED INDEX [IX_aBetaIIIq_LocationCd_OffenderCd] ON [aBetaIIIq] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aBopRiskAssessments]

DROP CONSTRAINT [PK_aBopRiskAssessments];

ALTER TABLE [aBopRiskAssessments] ADD CONSTRAINT [PK_aBopRiskAssessments] PRIMARY KEY CLUSTERED (BopRiskAssessmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aBopRiskAssessments_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aBopRiskAssessments_LocationCd] ON [aBopRiskAssessments];
END

CREATE NONCLUSTERED INDEX [IX_aBopRiskAssessments_LocationCd_OffenderCd] ON [aBopRiskAssessments] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aBrownAdhdScreen]

DROP CONSTRAINT [PK_aBrownADHDScreen];

ALTER TABLE [aBrownAdhdScreen] ADD CONSTRAINT [PK_aBrownADHDScreen] PRIMARY KEY CLUSTERED (BrownAdhdScreenId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aBrownAdhdScreen_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aBrownAdhdScreen_LocationCd] ON [aBrownAdhdScreen];
END

CREATE NONCLUSTERED INDEX [IX_aBrownAdhdScreen_LocationCd_OffenderCd] ON [aBrownAdhdScreen] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aCasasEmployabilityCompetencySystem]

DROP CONSTRAINT [PK_aCASASEmployabilityCompetencySystem];

ALTER TABLE [aCasasEmployabilityCompetencySystem] ADD CONSTRAINT [PK_aCASASEmployabilityCompetencySystem] PRIMARY KEY CLUSTERED (CasasEmployabilityCompetencySystemId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aCasasEmployabilityCompetencySystem_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aCasasEmployabilityCompetencySystem_LocationCd] ON [aCasasEmployabilityCompetencySystem];
END

CREATE NONCLUSTERED INDEX [IX_aCasasEmployabilityCompetencySystem_LocationCd_OffenderCd] ON [aCasasEmployabilityCompetencySystem] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aCasasFunctionalWritingAssessment]

DROP CONSTRAINT [PK_aCASASFunctionalWritingAssessment];

ALTER TABLE [aCasasFunctionalWritingAssessment] ADD CONSTRAINT [PK_aCASASFunctionalWritingAssessment] PRIMARY KEY CLUSTERED (CasasFunctionalWritingAssessmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aCasasFunctionalWritingAssessment_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aCasasFunctionalWritingAssessment_LocationCd] ON [aCasasFunctionalWritingAssessment];
END

CREATE NONCLUSTERED INDEX [IX_aCasasFunctionalWritingAssessment_LocationCd_OffenderCd] ON [aCasasFunctionalWritingAssessment] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aCasasLifeSkills]

DROP CONSTRAINT [PK_aCASASLifeSkills];

ALTER TABLE [aCasasLifeSkills] ADD CONSTRAINT [PK_aCASASLifeSkills] PRIMARY KEY CLUSTERED (CasasLifeSkillId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aCasasLifeSkills_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aCasasLifeSkills_LocationCd] ON [aCasasLifeSkills];
END

CREATE NONCLUSTERED INDEX [IX_aCasasLifeSkills_LocationCd_OffenderCd] ON [aCasasLifeSkills] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aCmc]

DROP CONSTRAINT [PK_aCMC];

ALTER TABLE [aCmc] ADD CONSTRAINT [PK_aCMC] PRIMARY KEY CLUSTERED (CmcId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aCmc_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aCmc_LocationCd] ON [aCmc];
END

CREATE NONCLUSTERED INDEX [IX_aCmc_LocationCd_OffenderCd] ON [aCmc] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aCriminalSentimentsScale]

DROP CONSTRAINT [PK_aCriminalSentimentsScale];

ALTER TABLE [aCriminalSentimentsScale] ADD CONSTRAINT [PK_aCriminalSentimentsScale] PRIMARY KEY CLUSTERED (CriminalSentimentsScaleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aCriminalSentimentsScale_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aCriminalSentimentsScale_LocationCd] ON [aCriminalSentimentsScale];
END

CREATE NONCLUSTERED INDEX [IX_aCriminalSentimentsScale_LocationCd_OffenderCd] ON [aCriminalSentimentsScale] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aCustodyClassification]

DROP CONSTRAINT [PK_aCustodyClassification];

ALTER TABLE [aCustodyClassification] ADD CONSTRAINT [PK_aCustodyClassification] PRIMARY KEY CLUSTERED (CustodyClassificationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aCustodyClassification_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aCustodyClassification_LocationCd] ON [aCustodyClassification];
END

CREATE NONCLUSTERED INDEX [IX_aCustodyClassification_LocationCd_OffenderCd] ON [aCustodyClassification] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [AddressInformation]

DROP CONSTRAINT [PK_AddressInformation];

ALTER TABLE [AddressInformation] ADD CONSTRAINT [PK_AddressInformation] PRIMARY KEY CLUSTERED (AddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_AddressInformation_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_AddressInformation_LocationCd] ON [AddressInformation];
END

CREATE NONCLUSTERED INDEX [IX_AddressInformation_LocationCd_OffenderCd] ON [AddressInformation] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [AdministrativeSegregationNotices]

DROP CONSTRAINT [PK_AdministrativeSegregationNotices];

ALTER TABLE [AdministrativeSegregationNotices] ADD CONSTRAINT [PK_AdministrativeSegregationNotices] PRIMARY KEY CLUSTERED (AdministrativeSegregationNoticeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_AdministrativeSegregationNotices_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_AdministrativeSegregationNotices_LocationCd] ON [AdministrativeSegregationNotices];
END

CREATE NONCLUSTERED INDEX [IX_AdministrativeSegregationNotices_LocationCd_OffenderCd] ON [AdministrativeSegregationNotices] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aDraor]

DROP CONSTRAINT [PK_aDraor];

ALTER TABLE [aDraor] ADD CONSTRAINT [PK_aDraor] PRIMARY KEY CLUSTERED (DraorId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aDraor_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aDraor_LocationCd] ON [aDraor];
END

CREATE NONCLUSTERED INDEX [IX_aDraor_LocationCd_OffenderCd] ON [aDraor] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aDraorCbcRevised]

DROP CONSTRAINT [PK_aDraorCbcRevised];

ALTER TABLE [aDraorCbcRevised] ADD CONSTRAINT [PK_aDraorCbcRevised] PRIMARY KEY CLUSTERED (DraorCbcRevisedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aDraorCbcRevised_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aDraorCbcRevised_LocationCd] ON [aDraorCbcRevised];
END

CREATE NONCLUSTERED INDEX [IX_aDraorCbcRevised_LocationCd_OffenderCd] ON [aDraorCbcRevised] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aDraorCbcRevisedWorkTable]

DROP CONSTRAINT [PK_aDraorCbcRevisedWorkTable];

ALTER TABLE [aDraorCbcRevisedWorkTable] ADD CONSTRAINT [PK_aDraorCbcRevisedWorkTable] PRIMARY KEY CLUSTERED (DraorCbcRevisedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aDraorCbcRevisedWorkTable_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aDraorCbcRevisedWorkTable_LocationCd] ON [aDraorCbcRevisedWorkTable];
END

CREATE NONCLUSTERED INDEX [IX_aDraorCbcRevisedWorkTable_LocationCd_OffenderCd] ON [aDraorCbcRevisedWorkTable] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aDraorInstitution]

DROP CONSTRAINT [PK_aDraorInstitution];

ALTER TABLE [aDraorInstitution] ADD CONSTRAINT [PK_aDraorInstitution] PRIMARY KEY CLUSTERED (DraorInstitutionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aDraorInstitution_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aDraorInstitution_LocationCd] ON [aDraorInstitution];
END

CREATE NONCLUSTERED INDEX [IX_aDraorInstitution_LocationCd_OffenderCd] ON [aDraorInstitution] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aDraorInstitutionRevised]

DROP CONSTRAINT [PK_aDraorInstitutionRevised];

ALTER TABLE [aDraorInstitutionRevised] ADD CONSTRAINT [PK_aDraorInstitutionRevised] PRIMARY KEY CLUSTERED (DraorInstitutionRevisedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aDraorInstitutionRevised_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aDraorInstitutionRevised_LocationCd] ON [aDraorInstitutionRevised];
END

CREATE NONCLUSTERED INDEX [IX_aDraorInstitutionRevised_LocationCd_OffenderCd] ON [aDraorInstitutionRevised] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aDraorWorkTable]

DROP CONSTRAINT [PK_aDraorWorkTable];

ALTER TABLE [aDraorWorkTable] ADD CONSTRAINT [PK_aDraorWorkTable] PRIMARY KEY CLUSTERED (DraorId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aDraorWorkTable_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aDraorWorkTable_LocationCd] ON [aDraorWorkTable];
END

CREATE NONCLUSTERED INDEX [IX_aDraorWorkTable_LocationCd_OffenderCd] ON [aDraorWorkTable] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aHarePsychChecklist]

DROP CONSTRAINT [PK_aHarePsychChecklist];

ALTER TABLE [aHarePsychChecklist] ADD CONSTRAINT [PK_aHarePsychChecklist] PRIMARY KEY CLUSTERED (HarePsychChecklistId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aHarePsychChecklist_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aHarePsychChecklist_LocationCd] ON [aHarePsychChecklist];
END

CREATE NONCLUSTERED INDEX [IX_aHarePsychChecklist_LocationCd_OffenderCd] ON [aHarePsychChecklist] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aIaHeadInjuryScreeningInstrument]

DROP CONSTRAINT [PK_aIaHeadInjuryScreeningInstrument];

ALTER TABLE [aIaHeadInjuryScreeningInstrument] ADD CONSTRAINT [PK_aIaHeadInjuryScreeningInstrument] PRIMARY KEY CLUSTERED (IaHeadInjuryScreeningInstrumentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aIaHeadInjuryScreeningInstrument_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aIaHeadInjuryScreeningInstrument_LocationCd] ON [aIaHeadInjuryScreeningInstrument];
END

CREATE NONCLUSTERED INDEX [IX_aIaHeadInjuryScreeningInstrument_LocationCd_OffenderCd] ON [aIaHeadInjuryScreeningInstrument] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aIaRiskAssessmentRevised]

DROP CONSTRAINT [PK_aIaRiskAssessmentRevised];

ALTER TABLE [aIaRiskAssessmentRevised] ADD CONSTRAINT [PK_aIaRiskAssessmentRevised] PRIMARY KEY CLUSTERED (IaRiskAssessmentRevisedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aIaRiskAssessmentRevised_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aIaRiskAssessmentRevised_LocationCd] ON [aIaRiskAssessmentRevised];
END

CREATE NONCLUSTERED INDEX [IX_aIaRiskAssessmentRevised_LocationCd_OffenderCd] ON [aIaRiskAssessmentRevised] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aIaRiskAssessments]

DROP CONSTRAINT [PK_aIARiskAssessments];

ALTER TABLE [aIaRiskAssessments] ADD CONSTRAINT [PK_aIARiskAssessments] PRIMARY KEY CLUSTERED (IaRiskAssessmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aIaRiskAssessments_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aIaRiskAssessments_LocationCd] ON [aIaRiskAssessments];
END

CREATE NONCLUSTERED INDEX [IX_aIaRiskAssessments_LocationCd_OffenderCd] ON [aIaRiskAssessments] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aIaRiskReassessments]

DROP CONSTRAINT [PK_aIARiskReassessments];

ALTER TABLE [aIaRiskReassessments] ADD CONSTRAINT [PK_aIARiskReassessments] PRIMARY KEY CLUSTERED (IaRiskReassessmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aIaRiskReassessments_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aIaRiskReassessments_LocationCd] ON [aIaRiskReassessments];
END

CREATE NONCLUSTERED INDEX [IX_aIaRiskReassessments_LocationCd_OffenderCd] ON [aIaRiskReassessments] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aIASexOffenderRegistry]

DROP CONSTRAINT [PK_aIASexOffenderRegistry];

ALTER TABLE [aIASexOffenderRegistry] ADD CONSTRAINT [PK_aIASexOffenderRegistry] PRIMARY KEY CLUSTERED (IASexOffenderRegistryID ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aIASexOffenderRegistry_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aIASexOffenderRegistry_LocationCd] ON [aIASexOffenderRegistry];
END

CREATE NONCLUSTERED INDEX [IX_aIASexOffenderRegistry_LocationCd_OffenderCd] ON [aIASexOffenderRegistry] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aIsora]

DROP CONSTRAINT [PK_aIsora];

ALTER TABLE [aIsora] ADD CONSTRAINT [PK_aIsora] PRIMARY KEY CLUSTERED (IsoraId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aIsora_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aIsora_LocationCd] ON [aIsora];
END

CREATE NONCLUSTERED INDEX [IX_aIsora_LocationCd_OffenderCd] ON [aIsora] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aIsora8]

DROP CONSTRAINT [PK_aISORA8];

ALTER TABLE [aIsora8] ADD CONSTRAINT [PK_aISORA8] PRIMARY KEY CLUSTERED (Isora8Id ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aIsora8_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aIsora8_LocationCd] ON [aIsora8];
END

CREATE NONCLUSTERED INDEX [IX_aIsora8_LocationCd_OffenderCd] ON [aIsora8] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aIsoraStatic99RCombined]

DROP CONSTRAINT [PK_aIsoraStatic99RCombined];

ALTER TABLE [aIsoraStatic99RCombined] ADD CONSTRAINT [PK_aIsoraStatic99RCombined] PRIMARY KEY CLUSTERED (IsoraStatic99RCombinedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aIsoraStatic99RCombined_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aIsoraStatic99RCombined_LocationCd] ON [aIsoraStatic99RCombined];
END

CREATE NONCLUSTERED INDEX [IX_aIsoraStatic99RCombined_LocationCd_OffenderCd] ON [aIsoraStatic99RCombined] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aJesness]

DROP CONSTRAINT [PK_aJesness];

ALTER TABLE [aJesness] ADD CONSTRAINT [PK_aJesness] PRIMARY KEY CLUSTERED (JesnessId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aJesness_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aJesness_LocationCd] ON [aJesness];
END

CREATE NONCLUSTERED INDEX [IX_aJesness_LocationCd_OffenderCd] ON [aJesness] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aLsi_r]

DROP CONSTRAINT [PK_aLSI_R];

ALTER TABLE [aLsi_r] ADD CONSTRAINT [PK_aLSI_R] PRIMARY KEY CLUSTERED (Lsi_rId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aLsi_r_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aLsi_r_LocationCd] ON [aLsi_r];
END

CREATE NONCLUSTERED INDEX [IX_aLsi_r_LocationCd_OffenderCd] ON [aLsi_r] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aMaleCustodyClassification]

DROP CONSTRAINT [PK_aMaleCustodyClassification];

ALTER TABLE [aMaleCustodyClassification] ADD CONSTRAINT [PK_aMaleCustodyClassification] PRIMARY KEY CLUSTERED (MaleCustodyClassificationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aMaleCustodyClassification_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aMaleCustodyClassification_LocationCd] ON [aMaleCustodyClassification];
END

CREATE NONCLUSTERED INDEX [IX_aMaleCustodyClassification_LocationCd_OffenderCd] ON [aMaleCustodyClassification] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aMaleCustodyReclassification]

DROP CONSTRAINT [PK_aMaleCustodyReclassification];

ALTER TABLE [aMaleCustodyReclassification] ADD CONSTRAINT [PK_aMaleCustodyReclassification] PRIMARY KEY CLUSTERED (MaleCustodyReclassificationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aMaleCustodyReclassification_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aMaleCustodyReclassification_LocationCd] ON [aMaleCustodyReclassification];
END

CREATE NONCLUSTERED INDEX [IX_aMaleCustodyReclassification_LocationCd_OffenderCd] ON [aMaleCustodyReclassification] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aMast]

DROP CONSTRAINT [PK_aMAST];

ALTER TABLE [aMast] ADD CONSTRAINT [PK_aMAST] PRIMARY KEY CLUSTERED (MastId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aMast_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aMast_LocationCd] ON [aMast];
END

CREATE NONCLUSTERED INDEX [IX_aMast_LocationCd_OffenderCd] ON [aMast] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aMifvpp]

DROP CONSTRAINT [PK_aMIFVPP];

ALTER TABLE [aMifvpp] ADD CONSTRAINT [PK_aMIFVPP] PRIMARY KEY CLUSTERED (MifvppId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aMifvpp_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aMifvpp_LocationCd] ON [aMifvpp];
END

CREATE NONCLUSTERED INDEX [IX_aMifvpp_LocationCd_OffenderCd] ON [aMifvpp] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aMmpi]

DROP CONSTRAINT [PK_aMMPI];

ALTER TABLE [aMmpi] ADD CONSTRAINT [PK_aMMPI] PRIMARY KEY CLUSTERED (MmpiId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aMmpi_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aMmpi_LocationCd] ON [aMmpi];
END

CREATE NONCLUSTERED INDEX [IX_aMmpi_LocationCd_OffenderCd] ON [aMmpi] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aMultiDimAngerInventory]

DROP CONSTRAINT [PK_aMultiDimAngerInventory];

ALTER TABLE [aMultiDimAngerInventory] ADD CONSTRAINT [PK_aMultiDimAngerInventory] PRIMARY KEY CLUSTERED (MultiDimAngerInventoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aMultiDimAngerInventory_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aMultiDimAngerInventory_LocationCd] ON [aMultiDimAngerInventory];
END

CREATE NONCLUSTERED INDEX [IX_aMultiDimAngerInventory_LocationCd_OffenderCd] ON [aMultiDimAngerInventory] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aMultiphasicSexInventory]

DROP CONSTRAINT [PK_aMultiphasicSexInventory];

ALTER TABLE [aMultiphasicSexInventory] ADD CONSTRAINT [PK_aMultiphasicSexInventory] PRIMARY KEY CLUSTERED (MultiphasicSexInventoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aMultiphasicSexInventory_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aMultiphasicSexInventory_LocationCd] ON [aMultiphasicSexInventory];
END

CREATE NONCLUSTERED INDEX [IX_aMultiphasicSexInventory_LocationCd_OffenderCd] ON [aMultiphasicSexInventory] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aOwiContinuumWorksheet]

DROP CONSTRAINT [PK_aOWIContinuumWorksheet];

ALTER TABLE [aOwiContinuumWorksheet] ADD CONSTRAINT [PK_aOWIContinuumWorksheet] PRIMARY KEY CLUSTERED (OwiContinuumWorksheetId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aOwiContinuumWorksheet_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aOwiContinuumWorksheet_LocationCd] ON [aOwiContinuumWorksheet];
END

CREATE NONCLUSTERED INDEX [IX_aOwiContinuumWorksheet_LocationCd_OffenderCd] ON [aOwiContinuumWorksheet] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aOwiContinuumWorksheetII]

DROP CONSTRAINT [PK_aOWIContinuumWorksheetII];

ALTER TABLE [aOwiContinuumWorksheetII] ADD CONSTRAINT [PK_aOWIContinuumWorksheetII] PRIMARY KEY CLUSTERED (OwiContinuumWorksheetIIId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aOwiContinuumWorksheetII_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aOwiContinuumWorksheetII_LocationCd] ON [aOwiContinuumWorksheetII];
END

CREATE NONCLUSTERED INDEX [IX_aOwiContinuumWorksheetII_LocationCd_OffenderCd] ON [aOwiContinuumWorksheetII] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aParoleBoardRiskAssessment]

DROP CONSTRAINT [PK_aParoleBoardRiskAssessment];

ALTER TABLE [aParoleBoardRiskAssessment] ADD CONSTRAINT [PK_aParoleBoardRiskAssessment] PRIMARY KEY CLUSTERED (ParoleBoardRiskAssessmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aParoleBoardRiskAssessment_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aParoleBoardRiskAssessment_LocationCd] ON [aParoleBoardRiskAssessment];
END

CREATE NONCLUSTERED INDEX [IX_aParoleBoardRiskAssessment_LocationCd_OffenderCd] ON [aParoleBoardRiskAssessment] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aPsychDiagnosticImpressions]

DROP CONSTRAINT [PK_aPsychDiagnosticImpressions];

ALTER TABLE [aPsychDiagnosticImpressions] ADD CONSTRAINT [PK_aPsychDiagnosticImpressions] PRIMARY KEY CLUSTERED (PsychDiagnosticImpressionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aPsychDiagnosticImpressions_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aPsychDiagnosticImpressions_LocationCd] ON [aPsychDiagnosticImpressions];
END

CREATE NONCLUSTERED INDEX [IX_aPsychDiagnosticImpressions_LocationCd_OffenderCd] ON [aPsychDiagnosticImpressions] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aPsychosexualAssessment]

DROP CONSTRAINT [PK_aPsychosexualAssessment];

ALTER TABLE [aPsychosexualAssessment] ADD CONSTRAINT [PK_aPsychosexualAssessment] PRIMARY KEY CLUSTERED (PsychosexualAssessmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aPsychosexualAssessment_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aPsychosexualAssessment_LocationCd] ON [aPsychosexualAssessment];
END

CREATE NONCLUSTERED INDEX [IX_aPsychosexualAssessment_LocationCd_OffenderCd] ON [aPsychosexualAssessment] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aPublicSafetyAssessment]

DROP CONSTRAINT [PK_aPublicSafetyAssessment];

ALTER TABLE [aPublicSafetyAssessment] ADD CONSTRAINT [PK_aPublicSafetyAssessment] PRIMARY KEY CLUSTERED (PublicSafetyAssessmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aPublicSafetyAssessment_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aPublicSafetyAssessment_LocationCd] ON [aPublicSafetyAssessment];
END

CREATE NONCLUSTERED INDEX [IX_aPublicSafetyAssessment_LocationCd_OffenderCd] ON [aPublicSafetyAssessment] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aSassi]

DROP CONSTRAINT [PK_aSASSI];

ALTER TABLE [aSassi] ADD CONSTRAINT [PK_aSASSI] PRIMARY KEY CLUSTERED (SassiId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aSassi_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aSassi_LocationCd] ON [aSassi];
END

CREATE NONCLUSTERED INDEX [IX_aSassi_LocationCd_OffenderCd] ON [aSassi] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aSchlossenIq]

DROP CONSTRAINT [PK_aSchlossenIQ];

ALTER TABLE [aSchlossenIq] ADD CONSTRAINT [PK_aSchlossenIQ] PRIMARY KEY CLUSTERED (SchlossenIqId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aSchlossenIq_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aSchlossenIq_LocationCd] ON [aSchlossenIq];
END

CREATE NONCLUSTERED INDEX [IX_aSchlossenIq_LocationCd_OffenderCd] ON [aSchlossenIq] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aSexualViolencePropensityFemale]

DROP CONSTRAINT [PK_aSexualViolencePropensityFemale];

ALTER TABLE [aSexualViolencePropensityFemale] ADD CONSTRAINT [PK_aSexualViolencePropensityFemale] PRIMARY KEY CLUSTERED (SexualViolencePropensityFemaleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aSexualViolencePropensityFemale_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aSexualViolencePropensityFemale_LocationCd] ON [aSexualViolencePropensityFemale];
END

CREATE NONCLUSTERED INDEX [IX_aSexualViolencePropensityFemale_LocationCd_OffenderCd] ON [aSexualViolencePropensityFemale] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aSexualViolencePropensityMale]

DROP CONSTRAINT [PK_aSexualViolencePropensityMale];

ALTER TABLE [aSexualViolencePropensityMale] ADD CONSTRAINT [PK_aSexualViolencePropensityMale] PRIMARY KEY CLUSTERED (SexualViolencePropensityMaleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aSexualViolencePropensityMale_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aSexualViolencePropensityMale_LocationCd] ON [aSexualViolencePropensityMale];
END

CREATE NONCLUSTERED INDEX [IX_aSexualViolencePropensityMale_LocationCd_OffenderCd] ON [aSexualViolencePropensityMale] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aSexualViolencePropensityRevisedMale]

DROP CONSTRAINT [PK_aSexualViolencePropensityRevisedMale];

ALTER TABLE [aSexualViolencePropensityRevisedMale] ADD CONSTRAINT [PK_aSexualViolencePropensityRevisedMale] PRIMARY KEY CLUSTERED (SexualViolencePropensityRevisedMaleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aSexualViolencePropensityRevisedMale_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aSexualViolencePropensityRevisedMale_LocationCd] ON [aSexualViolencePropensityRevisedMale];
END

CREATE NONCLUSTERED INDEX [IX_aSexualViolencePropensityRevisedMale_LocationCd_OffenderCd] ON [aSexualViolencePropensityRevisedMale] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aShipleyIq]

DROP CONSTRAINT [PK_aShipleyIQ];

ALTER TABLE [aShipleyIq] ADD CONSTRAINT [PK_aShipleyIQ] PRIMARY KEY CLUSTERED (ShipleyIqId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aShipleyIq_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aShipleyIq_LocationCd] ON [aShipleyIq];
END

CREATE NONCLUSTERED INDEX [IX_aShipleyIq_LocationCd_OffenderCd] ON [aShipleyIq] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aSirAssessment]

DROP CONSTRAINT [PK_aSIRAssessment];

ALTER TABLE [aSirAssessment] ADD CONSTRAINT [PK_aSIRAssessment] PRIMARY KEY CLUSTERED (SirAssessmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aSirAssessment_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aSirAssessment_LocationCd] ON [aSirAssessment];
END

CREATE NONCLUSTERED INDEX [IX_aSirAssessment_LocationCd_OffenderCd] ON [aSirAssessment] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aSotips]

DROP CONSTRAINT [PK_aSotips];

ALTER TABLE [aSotips] ADD CONSTRAINT [PK_aSotips] PRIMARY KEY CLUSTERED (SotipsId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aSotips_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aSotips_LocationCd] ON [aSotips];
END

CREATE NONCLUSTERED INDEX [IX_aSotips_LocationCd_OffenderCd] ON [aSotips] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [AssetInformation]

DROP CONSTRAINT [PK_AssetInformation];

ALTER TABLE [AssetInformation] ADD CONSTRAINT [PK_AssetInformation] PRIMARY KEY CLUSTERED (AssetInfoId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_AssetInformation_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_AssetInformation_LocationCd] ON [AssetInformation];
END

CREATE NONCLUSTERED INDEX [IX_AssetInformation_LocationCd_OffenderCd] ON [AssetInformation] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aStable2007]

DROP CONSTRAINT [PK_aStable2007];

ALTER TABLE [aStable2007] ADD CONSTRAINT [PK_aStable2007] PRIMARY KEY CLUSTERED (Stable2007Id ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aStable2007_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aStable2007_LocationCd] ON [aStable2007];
END

CREATE NONCLUSTERED INDEX [IX_aStable2007_LocationCd_OffenderCd] ON [aStable2007] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aStatic99]

DROP CONSTRAINT [PK_aStatic99];

ALTER TABLE [aStatic99] ADD CONSTRAINT [PK_aStatic99] PRIMARY KEY CLUSTERED (Static99Id ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aStatic99_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aStatic99_LocationCd] ON [aStatic99];
END

CREATE NONCLUSTERED INDEX [IX_aStatic99_LocationCd_OffenderCd] ON [aStatic99] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aStatic99R]

DROP CONSTRAINT [PK_aStatic99R];

ALTER TABLE [aStatic99R] ADD CONSTRAINT [PK_aStatic99R] PRIMARY KEY CLUSTERED (Static99RId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aStatic99R_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aStatic99R_LocationCd] ON [aStatic99R];
END

CREATE NONCLUSTERED INDEX [IX_aStatic99R_LocationCd_OffenderCd] ON [aStatic99R] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aTabe]

DROP CONSTRAINT [PK_aTABE];

ALTER TABLE [aTabe] ADD CONSTRAINT [PK_aTABE] PRIMARY KEY CLUSTERED (TabeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aTabe_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aTabe_LocationCd] ON [aTabe];
END

CREATE NONCLUSTERED INDEX [IX_aTabe_LocationCd_OffenderCd] ON [aTabe] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aTabe1112]

DROP CONSTRAINT [PK_aTabe1112];

ALTER TABLE [aTabe1112] ADD CONSTRAINT [PK_aTabe1112] PRIMARY KEY CLUSTERED (Tabe1112Id ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aTabe1112_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aTabe1112_LocationCd] ON [aTabe1112];
END

CREATE NONCLUSTERED INDEX [IX_aTabe1112_LocationCd_OffenderCd] ON [aTabe1112] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aTabeMostRecent]

DROP CONSTRAINT [PK_aTabeMostRecent];

ALTER TABLE [aTabeMostRecent] ADD CONSTRAINT [PK_aTabeMostRecent] PRIMARY KEY CLUSTERED (TabeMostRecentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aTabeMostRecent_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aTabeMostRecent_LocationCd] ON [aTabeMostRecent];
END

CREATE NONCLUSTERED INDEX [IX_aTabeMostRecent_LocationCd_OffenderCd] ON [aTabeMostRecent] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aTcuDrug]

DROP CONSTRAINT [PK_aTCUDrug];

ALTER TABLE [aTcuDrug] ADD CONSTRAINT [PK_aTCUDrug] PRIMARY KEY CLUSTERED (TcuDrugId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aTcuDrug_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aTcuDrug_LocationCd] ON [aTcuDrug];
END

CREATE NONCLUSTERED INDEX [IX_aTcuDrug_LocationCd_OffenderCd] ON [aTcuDrug] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aUrica]

DROP CONSTRAINT [PK_aURICA];

ALTER TABLE [aUrica] ADD CONSTRAINT [PK_aURICA] PRIMARY KEY CLUSTERED (UricaId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aUrica_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aUrica_LocationCd] ON [aUrica];
END

CREATE NONCLUSTERED INDEX [IX_aUrica_LocationCd_OffenderCd] ON [aUrica] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aWais_rIq]

DROP CONSTRAINT [PK_aWais_RIQ];

ALTER TABLE [aWais_rIq] ADD CONSTRAINT [PK_aWais_RIQ] PRIMARY KEY CLUSTERED (Wais_rIqId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aWais_rIq_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aWais_rIq_LocationCd] ON [aWais_rIq];
END

CREATE NONCLUSTERED INDEX [IX_aWais_rIq_LocationCd_OffenderCd] ON [aWais_rIq] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [aWasiII]

DROP CONSTRAINT [PK_aWasiII];

ALTER TABLE [aWasiII] ADD CONSTRAINT [PK_aWasiII] PRIMARY KEY CLUSTERED (WasiIIId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aWasiII_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aWasiII_LocationCd] ON [aWasiII];
END

CREATE NONCLUSTERED INDEX [IX_aWasiII_LocationCd_OffenderCd] ON [aWasiII] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [BirthInformation]

DROP CONSTRAINT [PK_BirthInformation];

ALTER TABLE [BirthInformation] ADD CONSTRAINT [PK_BirthInformation] PRIMARY KEY CLUSTERED (BirthInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BirthInformation_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_BirthInformation_LocationCd] ON [BirthInformation];
END

CREATE NONCLUSTERED INDEX [IX_BirthInformation_LocationCd_OffenderCd] ON [BirthInformation] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [BirthInformation2]

DROP CONSTRAINT [PK_BirthInformation2];

ALTER TABLE [BirthInformation2] ADD CONSTRAINT [PK_BirthInformation2] PRIMARY KEY CLUSTERED (BirthInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BirthInformation2_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_BirthInformation2_LocationCd] ON [BirthInformation2];
END

CREATE NONCLUSTERED INDEX [IX_BirthInformation2_LocationCd_OffenderCd] ON [BirthInformation2] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [BodyMarkings]

DROP CONSTRAINT [PK_BodyMarkings];

ALTER TABLE [BodyMarkings] ADD CONSTRAINT [PK_BodyMarkings] PRIMARY KEY CLUSTERED (BodyMarkingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BodyMarkings_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_BodyMarkings_LocationCd] ON [BodyMarkings];
END

CREATE NONCLUSTERED INDEX [IX_BodyMarkings_LocationCd_OffenderCd] ON [BodyMarkings] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [BopCommutations]

DROP CONSTRAINT [PK_BopCommutations];

ALTER TABLE [BopCommutations] ADD CONSTRAINT [PK_BopCommutations] PRIMARY KEY CLUSTERED (BopCommutationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BopCommutations_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_BopCommutations_LocationCd] ON [BopCommutations];
END

CREATE NONCLUSTERED INDEX [IX_BopCommutations_LocationCd_OffenderCd] ON [BopCommutations] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [BopCorrespondence]

DROP CONSTRAINT [PK_BopCorrespondence];

ALTER TABLE [BopCorrespondence] ADD CONSTRAINT [PK_BopCorrespondence] PRIMARY KEY CLUSTERED (BopCorrespondenceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BopCorrespondence_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_BopCorrespondence_LocationCd] ON [BopCorrespondence];
END

CREATE NONCLUSTERED INDEX [IX_BopCorrespondence_LocationCd_OffenderCd] ON [BopCorrespondence] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [BopDecisions]

DROP CONSTRAINT [PK_BopDecisions];

ALTER TABLE [BopDecisions] ADD CONSTRAINT [PK_BopDecisions] PRIMARY KEY CLUSTERED (BopDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BopDecisions_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_BopDecisions_LocationCd] ON [BopDecisions];
END

CREATE NONCLUSTERED INDEX [IX_BopDecisions_LocationCd_OffenderCd] ON [BopDecisions] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [BopProgressReportExtras]

DROP CONSTRAINT [PK_BOPProgressReportExtras];

ALTER TABLE [BopProgressReportExtras] ADD CONSTRAINT [PK_BOPProgressReportExtras] PRIMARY KEY CLUSTERED (BopProgressReportExtraId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BopProgressReportExtras_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_BopProgressReportExtras_LocationCd] ON [BopProgressReportExtras];
END

CREATE NONCLUSTERED INDEX [IX_BopProgressReportExtras_LocationCd_OffenderCd] ON [BopProgressReportExtras] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [BopProgressReports]

DROP CONSTRAINT [PK_BOPProgressReports];

ALTER TABLE [BopProgressReports] ADD CONSTRAINT [PK_BOPProgressReports] PRIMARY KEY CLUSTERED (BopProgressReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BopProgressReports_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_BopProgressReports_LocationCd] ON [BopProgressReports];
END

CREATE NONCLUSTERED INDEX [IX_BopProgressReports_LocationCd_OffenderCd] ON [BopProgressReports] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [BopRecallDates]

DROP CONSTRAINT [PK_BopRecallDates];

ALTER TABLE [BopRecallDates] ADD CONSTRAINT [PK_BopRecallDates] PRIMARY KEY CLUSTERED (BopRecallDateId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BopRecallDates_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_BopRecallDates_LocationCd] ON [BopRecallDates];
END

CREATE NONCLUSTERED INDEX [IX_BopRecallDates_LocationCd_OffenderCd] ON [BopRecallDates] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [BopReleasePlans]

DROP CONSTRAINT [PK_BOPReleasePlans];

ALTER TABLE [BopReleasePlans] ADD CONSTRAINT [PK_BOPReleasePlans] PRIMARY KEY CLUSTERED (BopReleasePlanId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BopReleasePlans_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_BopReleasePlans_LocationCd] ON [BopReleasePlans];
END

CREATE NONCLUSTERED INDEX [IX_BopReleasePlans_LocationCd_OffenderCd] ON [BopReleasePlans] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [BopRevocationAppeals]

DROP CONSTRAINT [PK_BopRevocationAppeals];

ALTER TABLE [BopRevocationAppeals] ADD CONSTRAINT [PK_BopRevocationAppeals] PRIMARY KEY CLUSTERED (BopRevocationAppealId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BopRevocationAppeals_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_BopRevocationAppeals_LocationCd] ON [BopRevocationAppeals];
END

CREATE NONCLUSTERED INDEX [IX_BopRevocationAppeals_LocationCd_OffenderCd] ON [BopRevocationAppeals] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [BopRevocationHearings]

DROP CONSTRAINT [PK_BopRevocationHearings];

ALTER TABLE [BopRevocationHearings] ADD CONSTRAINT [PK_BopRevocationHearings] PRIMARY KEY CLUSTERED (BopRevocationHearingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BopRevocationHearings_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_BopRevocationHearings_LocationCd] ON [BopRevocationHearings];
END

CREATE NONCLUSTERED INDEX [IX_BopRevocationHearings_LocationCd_OffenderCd] ON [BopRevocationHearings] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ChargeLengthOfSentenceCalc]

DROP CONSTRAINT [PK_ChargeLengthOfSentenceCalc];

ALTER TABLE [ChargeLengthOfSentenceCalc] ADD CONSTRAINT [PK_ChargeLengthOfSentenceCalc] PRIMARY KEY CLUSTERED (ChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ChargeLengthOfSentenceCalc_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ChargeLengthOfSentenceCalc_LocationCd] ON [ChargeLengthOfSentenceCalc];
END

CREATE NONCLUSTERED INDEX [IX_ChargeLengthOfSentenceCalc_LocationCd_OffenderCd] ON [ChargeLengthOfSentenceCalc] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [Charges]

DROP CONSTRAINT [PK_Charges];

ALTER TABLE [Charges] ADD CONSTRAINT [PK_Charges] PRIMARY KEY CLUSTERED (ChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_Charges_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_Charges_LocationCd] ON [Charges];
END

CREATE NONCLUSTERED INDEX [IX_Charges_LocationCd_OffenderCd] ON [Charges] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [CitizenshipInformation]

DROP CONSTRAINT [PK_CitizenshipInformation];

ALTER TABLE [CitizenshipInformation] ADD CONSTRAINT [PK_CitizenshipInformation] PRIMARY KEY CLUSTERED (CitizenshipInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_CitizenshipInformation_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_CitizenshipInformation_LocationCd] ON [CitizenshipInformation];
END

CREATE NONCLUSTERED INDEX [IX_CitizenshipInformation_LocationCd_OffenderCd] ON [CitizenshipInformation] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [CjisSoeOffenders]

DROP CONSTRAINT [PK_CjisSoeOffenders];

ALTER TABLE [CjisSoeOffenders] ADD CONSTRAINT [PK_CjisSoeOffenders] PRIMARY KEY CLUSTERED (CjisSoeOffenderId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_CjisSoeOffenders_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_CjisSoeOffenders_LocationCd] ON [CjisSoeOffenders];
END

CREATE NONCLUSTERED INDEX [IX_CjisSoeOffenders_LocationCd_OffenderCd] ON [CjisSoeOffenders] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [CommunityServiceReportingObligations]

DROP CONSTRAINT [PK_CommunityServiceReportingObligations];

ALTER TABLE [CommunityServiceReportingObligations] ADD CONSTRAINT [PK_CommunityServiceReportingObligations] PRIMARY KEY CLUSTERED (CommunityServiceReportingObligationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_CommunityServiceReportingObligations_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_CommunityServiceReportingObligations_LocationCd] ON [CommunityServiceReportingObligations];
END

CREATE NONCLUSTERED INDEX [IX_CommunityServiceReportingObligations_LocationCd_OffenderCd] ON [CommunityServiceReportingObligations] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ContactInformation]

DROP CONSTRAINT [PK_ContactInformation];

ALTER TABLE [ContactInformation] ADD CONSTRAINT [PK_ContactInformation] PRIMARY KEY CLUSTERED (ContactInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ContactInformation_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ContactInformation_LocationCd] ON [ContactInformation];
END

CREATE NONCLUSTERED INDEX [IX_ContactInformation_LocationCd_OffenderCd] ON [ContactInformation] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [CorrectionIdentifiers]

DROP CONSTRAINT [PK_CorrectionIdentifiers];

ALTER TABLE [CorrectionIdentifiers] ADD CONSTRAINT [PK_CorrectionIdentifiers] PRIMARY KEY CLUSTERED (CorrectionIdentifierId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_CorrectionIdentifiers_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_CorrectionIdentifiers_LocationCd] ON [CorrectionIdentifiers];
END

CREATE NONCLUSTERED INDEX [IX_CorrectionIdentifiers_LocationCd_OffenderCd] ON [CorrectionIdentifiers] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [CourtProgressReportExtras]

DROP CONSTRAINT [PK_CourtProgressReportExtras];

ALTER TABLE [CourtProgressReportExtras] ADD CONSTRAINT [PK_CourtProgressReportExtras] PRIMARY KEY CLUSTERED (CourtProgressReportExtraId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_CourtProgressReportExtras_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_CourtProgressReportExtras_LocationCd] ON [CourtProgressReportExtras];
END

CREATE NONCLUSTERED INDEX [IX_CourtProgressReportExtras_LocationCd_OffenderCd] ON [CourtProgressReportExtras] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [CourtProgressReports]

DROP CONSTRAINT [PK_CourtProgressReports];

ALTER TABLE [CourtProgressReports] ADD CONSTRAINT [PK_CourtProgressReports] PRIMARY KEY CLUSTERED (CourtProgressReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_CourtProgressReports_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_CourtProgressReports_LocationCd] ON [CourtProgressReports];
END

CREATE NONCLUSTERED INDEX [IX_CourtProgressReports_LocationCd_OffenderCd] ON [CourtProgressReports] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [CulturalSpiritualPractices]

DROP CONSTRAINT [PK_CulturalSpiritualPractices];

ALTER TABLE [CulturalSpiritualPractices] ADD CONSTRAINT [PK_CulturalSpiritualPractices] PRIMARY KEY CLUSTERED (CulturalSpiritualPracticeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_CulturalSpiritualPractices_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_CulturalSpiritualPractices_LocationCd] ON [CulturalSpiritualPractices];
END

CREATE NONCLUSTERED INDEX [IX_CulturalSpiritualPractices_LocationCd_OffenderCd] ON [CulturalSpiritualPractices] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [DebtInformation]

DROP CONSTRAINT [PK_DebtInformation];

ALTER TABLE [DebtInformation] ADD CONSTRAINT [PK_DebtInformation] PRIMARY KEY CLUSTERED (DebtInfoId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_DebtInformation_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_DebtInformation_LocationCd] ON [DebtInformation];
END

CREATE NONCLUSTERED INDEX [IX_DebtInformation_LocationCd_OffenderCd] ON [DebtInformation] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [DeenaTrainingAddresses]

DROP CONSTRAINT [PK_DeenaTrainingAddresses];

ALTER TABLE [DeenaTrainingAddresses] ADD CONSTRAINT [PK_DeenaTrainingAddresses] PRIMARY KEY CLUSTERED (TrainingAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_DeenaTrainingAddresses_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_DeenaTrainingAddresses_LocationCd] ON [DeenaTrainingAddresses];
END

CREATE NONCLUSTERED INDEX [IX_DeenaTrainingAddresses_LocationCd_OffenderCd] ON [DeenaTrainingAddresses] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [DipeshTrainingAddresses]

DROP CONSTRAINT [PK_DipeshTrainingAddresses];

ALTER TABLE [DipeshTrainingAddresses] ADD CONSTRAINT [PK_DipeshTrainingAddresses] PRIMARY KEY CLUSTERED (TrainingAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_DipeshTrainingAddresses_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_DipeshTrainingAddresses_LocationCd] ON [DipeshTrainingAddresses];
END

CREATE NONCLUSTERED INDEX [IX_DipeshTrainingAddresses_LocationCd_OffenderCd] ON [DipeshTrainingAddresses] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [DischargeReportExtrasInst]

DROP CONSTRAINT [PK_DischargeReportExtrasInst];

ALTER TABLE [DischargeReportExtrasInst] ADD CONSTRAINT [PK_DischargeReportExtrasInst] PRIMARY KEY CLUSTERED (DischargeReportExtraInstId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_DischargeReportExtrasInst_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_DischargeReportExtrasInst_LocationCd] ON [DischargeReportExtrasInst];
END

CREATE NONCLUSTERED INDEX [IX_DischargeReportExtrasInst_LocationCd_OffenderCd] ON [DischargeReportExtrasInst] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [DischargeReports]

DROP CONSTRAINT [PK_DischargeReports];

ALTER TABLE [DischargeReports] ADD CONSTRAINT [PK_DischargeReports] PRIMARY KEY CLUSTERED (DischargeReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_DischargeReports_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_DischargeReports_LocationCd] ON [DischargeReports];
END

CREATE NONCLUSTERED INDEX [IX_DischargeReports_LocationCd_OffenderCd] ON [DischargeReports] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [DischargeReportsInst]

DROP CONSTRAINT [PK_DischargeReportsInst];

ALTER TABLE [DischargeReportsInst] ADD CONSTRAINT [PK_DischargeReportsInst] PRIMARY KEY CLUSTERED (DischargeReportInstId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_DischargeReportsInst_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_DischargeReportsInst_LocationCd] ON [DischargeReportsInst];
END

CREATE NONCLUSTERED INDEX [IX_DischargeReportsInst_LocationCd_OffenderCd] ON [DischargeReportsInst] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [Dna]

DROP CONSTRAINT [PK_DNA];

ALTER TABLE [Dna] ADD CONSTRAINT [PK_DNA] PRIMARY KEY CLUSTERED (DnaId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_Dna_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_Dna_LocationCd] ON [Dna];
END

CREATE NONCLUSTERED INDEX [IX_Dna_LocationCd_OffenderCd] ON [Dna] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [DocProjectedRecommendationDateProcessing]

DROP CONSTRAINT [PK_DocProjectedRecommendationDateProcessing];

ALTER TABLE [DocProjectedRecommendationDateProcessing] ADD CONSTRAINT [PK_DocProjectedRecommendationDateProcessing] PRIMARY KEY CLUSTERED (DocProjectedRecommendationDateProcessingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_DocProjectedRecommendationDateProcessing_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_DocProjectedRecommendationDateProcessing_LocationCd] ON [DocProjectedRecommendationDateProcessing];
END

CREATE NONCLUSTERED INDEX [IX_DocProjectedRecommendationDateProcessing_LocationCd_OffenderCd] ON [DocProjectedRecommendationDateProcessing] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [DocProjectedRecommendationDates]

DROP CONSTRAINT [PK_DOCProjectedRecommendationDates];

ALTER TABLE [DocProjectedRecommendationDates] ADD CONSTRAINT [PK_DOCProjectedRecommendationDates] PRIMARY KEY CLUSTERED (DocProjectedRecommendationDateId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_DocProjectedRecommendationDates_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_DocProjectedRecommendationDates_LocationCd] ON [DocProjectedRecommendationDates];
END

CREATE NONCLUSTERED INDEX [IX_DocProjectedRecommendationDates_LocationCd_OffenderCd] ON [DocProjectedRecommendationDates] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [DpsTrackingNumbers]

DROP CONSTRAINT [PK_DPSTrackingNumbers];

ALTER TABLE [DpsTrackingNumbers] ADD CONSTRAINT [PK_DPSTrackingNumbers] PRIMARY KEY CLUSTERED (DpsTrackingNumberId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_DpsTrackingNumbers_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_DpsTrackingNumbers_LocationCd] ON [DpsTrackingNumbers];
END

CREATE NONCLUSTERED INDEX [IX_DpsTrackingNumbers_LocationCd_OffenderCd] ON [DpsTrackingNumbers] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [DrcReviewProcess]

DROP CONSTRAINT [PK_DRCReviewProcess];

ALTER TABLE [DrcReviewProcess] ADD CONSTRAINT [PK_DRCReviewProcess] PRIMARY KEY CLUSTERED (DrcReviewProcessId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_DrcReviewProcess_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_DrcReviewProcess_LocationCd] ON [DrcReviewProcess];
END

CREATE NONCLUSTERED INDEX [IX_DrcReviewProcess_LocationCd_OffenderCd] ON [DrcReviewProcess] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [DriversLicenseInformation]

DROP CONSTRAINT [PK_DriversLicenseInformation];

ALTER TABLE [DriversLicenseInformation] ADD CONSTRAINT [PK_DriversLicenseInformation] PRIMARY KEY CLUSTERED (DriversLicenseInfoId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_DriversLicenseInformation_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_DriversLicenseInformation_LocationCd] ON [DriversLicenseInformation];
END

CREATE NONCLUSTERED INDEX [IX_DriversLicenseInformation_LocationCd_OffenderCd] ON [DriversLicenseInformation] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [EducationalDetails]

DROP CONSTRAINT [PK_EducationalDetails];

ALTER TABLE [EducationalDetails] ADD CONSTRAINT [PK_EducationalDetails] PRIMARY KEY CLUSTERED (EducationalDetailId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_EducationalDetails_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_EducationalDetails_LocationCd] ON [EducationalDetails];
END

CREATE NONCLUSTERED INDEX [IX_EducationalDetails_LocationCd_OffenderCd] ON [EducationalDetails] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [EducationalSummary]

DROP CONSTRAINT [PK_EducationalSummary];

ALTER TABLE [EducationalSummary] ADD CONSTRAINT [PK_EducationalSummary] PRIMARY KEY CLUSTERED (EducationalSummaryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_EducationalSummary_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_EducationalSummary_LocationCd] ON [EducationalSummary];
END

CREATE NONCLUSTERED INDEX [IX_EducationalSummary_LocationCd_OffenderCd] ON [EducationalSummary] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [EducationGed]

DROP CONSTRAINT [PK_EducationGED];

ALTER TABLE [EducationGed] ADD CONSTRAINT [PK_EducationGED] PRIMARY KEY CLUSTERED (EducationGedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_EducationGed_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_EducationGed_LocationCd] ON [EducationGed];
END

CREATE NONCLUSTERED INDEX [IX_EducationGed_LocationCd_OffenderCd] ON [EducationGed] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [EmailAddresses]

DROP CONSTRAINT [PK_EmailAddresses];

ALTER TABLE [EmailAddresses] ADD CONSTRAINT [PK_EmailAddresses] PRIMARY KEY CLUSTERED (EmailAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_EmailAddresses_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_EmailAddresses_LocationCd] ON [EmailAddresses];
END

CREATE NONCLUSTERED INDEX [IX_EmailAddresses_LocationCd_OffenderCd] ON [EmailAddresses] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [EmploymentInformation]

DROP CONSTRAINT [PK_EmploymentInformation];

ALTER TABLE [EmploymentInformation] ADD CONSTRAINT [PK_EmploymentInformation] PRIMARY KEY CLUSTERED (EmploymentInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_EmploymentInformation_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_EmploymentInformation_LocationCd] ON [EmploymentInformation];
END

CREATE NONCLUSTERED INDEX [IX_EmploymentInformation_LocationCd_OffenderCd] ON [EmploymentInformation] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [EnemyInformation]

DROP CONSTRAINT [PK_EnemyInformation];

ALTER TABLE [EnemyInformation] ADD CONSTRAINT [PK_EnemyInformation] PRIMARY KEY CLUSTERED (EnemyInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_EnemyInformation_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_EnemyInformation_LocationCd] ON [EnemyInformation];
END

CREATE NONCLUSTERED INDEX [IX_EnemyInformation_LocationCd_OffenderCd] ON [EnemyInformation] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [FederalOffenderStatuses]

DROP CONSTRAINT [PK_FederalOffenderStatuses];

ALTER TABLE [FederalOffenderStatuses] ADD CONSTRAINT [PK_FederalOffenderStatuses] PRIMARY KEY CLUSTERED (FederalOffenderStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_FederalOffenderStatuses_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_FederalOffenderStatuses_LocationCd] ON [FederalOffenderStatuses];
END

CREATE NONCLUSTERED INDEX [IX_FederalOffenderStatuses_LocationCd_OffenderCd] ON [FederalOffenderStatuses] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [FieldRuleViolationIncidents]

DROP CONSTRAINT [PK_FieldRuleViolationIncidents];

ALTER TABLE [FieldRuleViolationIncidents] ADD CONSTRAINT [PK_FieldRuleViolationIncidents] PRIMARY KEY CLUSTERED (FieldRuleViolationIncidentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_FieldRuleViolationIncidents_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_FieldRuleViolationIncidents_LocationCd] ON [FieldRuleViolationIncidents];
END

CREATE NONCLUSTERED INDEX [IX_FieldRuleViolationIncidents_LocationCd_OffenderCd] ON [FieldRuleViolationIncidents] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [FinancialInformation]

DROP CONSTRAINT [PK_FinancialInformation];

ALTER TABLE [FinancialInformation] ADD CONSTRAINT [PK_FinancialInformation] PRIMARY KEY CLUSTERED (FinancialInfoId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_FinancialInformation_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_FinancialInformation_LocationCd] ON [FinancialInformation];
END

CREATE NONCLUSTERED INDEX [IX_FinancialInformation_LocationCd_OffenderCd] ON [FinancialInformation] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [GenericNotes]

DROP CONSTRAINT [PK_GenericNotes];

ALTER TABLE [GenericNotes] ADD CONSTRAINT [PK_GenericNotes] PRIMARY KEY CLUSTERED (GenericNoteId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_GenericNotes_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_GenericNotes_LocationCd] ON [GenericNotes];
END

CREATE NONCLUSTERED INDEX [IX_GenericNotes_LocationCd_OffenderCd] ON [GenericNotes] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [GrievanceNoUnknown]

DROP CONSTRAINT [PK_GrievanceNoUnknown];

ALTER TABLE [GrievanceNoUnknown] ADD CONSTRAINT [PK_GrievanceNoUnknown] PRIMARY KEY CLUSTERED (GrievanceNoUnknownId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_GrievanceNoUnknown_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_GrievanceNoUnknown_LocationCd] ON [GrievanceNoUnknown];
END

CREATE NONCLUSTERED INDEX [IX_GrievanceNoUnknown_LocationCd_OffenderCd] ON [GrievanceNoUnknown] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [GrievanceRestrictions]

DROP CONSTRAINT [PK_GrievanceRestrictions];

ALTER TABLE [GrievanceRestrictions] ADD CONSTRAINT [PK_GrievanceRestrictions] PRIMARY KEY CLUSTERED (GrievanceRestrictionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_GrievanceRestrictions_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_GrievanceRestrictions_LocationCd] ON [GrievanceRestrictions];
END

CREATE NONCLUSTERED INDEX [IX_GrievanceRestrictions_LocationCd_OffenderCd] ON [GrievanceRestrictions] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [Grievances]

DROP CONSTRAINT [PK_Grievances];

ALTER TABLE [Grievances] ADD CONSTRAINT [PK_Grievances] PRIMARY KEY CLUSTERED (GrievanceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_Grievances_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_Grievances_LocationCd] ON [Grievances];
END

CREATE NONCLUSTERED INDEX [IX_Grievances_LocationCd_OffenderCd] ON [Grievances] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [HealthInformation]

DROP CONSTRAINT [PK_HealthInformation];

ALTER TABLE [HealthInformation] ADD CONSTRAINT [PK_HealthInformation] PRIMARY KEY CLUSTERED (HealthInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_HealthInformation_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_HealthInformation_LocationCd] ON [HealthInformation];
END

CREATE NONCLUSTERED INDEX [IX_HealthInformation_LocationCd_OffenderCd] ON [HealthInformation] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [Housing]

DROP CONSTRAINT [PK_Housing];

ALTER TABLE [Housing] ADD CONSTRAINT [PK_Housing] PRIMARY KEY CLUSTERED (HousingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_Housing_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_Housing_LocationCd] ON [Housing];
END

CREATE NONCLUSTERED INDEX [IX_Housing_LocationCd_OffenderCd] ON [Housing] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [HousingFromAcds]

DROP CONSTRAINT [PK_HousingFromACDS];

ALTER TABLE [HousingFromAcds] ADD CONSTRAINT [PK_HousingFromACDS] PRIMARY KEY CLUSTERED (HousingFromAcdsId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_HousingFromAcds_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_HousingFromAcds_LocationCd] ON [HousingFromAcds];
END

CREATE NONCLUSTERED INDEX [IX_HousingFromAcds_LocationCd_OffenderCd] ON [HousingFromAcds] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [Hruwt]

DROP CONSTRAINT [PK_Hruwt];

ALTER TABLE [Hruwt] ADD CONSTRAINT [PK_Hruwt] PRIMARY KEY CLUSTERED (HruwtId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_Hruwt_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_Hruwt_LocationCd] ON [Hruwt];
END

CREATE NONCLUSTERED INDEX [IX_Hruwt_LocationCd_OffenderCd] ON [Hruwt] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [IncomeReporting]

DROP CONSTRAINT [PK_IncomeReporting];

ALTER TABLE [IncomeReporting] ADD CONSTRAINT [PK_IncomeReporting] PRIMARY KEY CLUSTERED (IncomeReportingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_IncomeReporting_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_IncomeReporting_LocationCd] ON [IncomeReporting];
END

CREATE NONCLUSTERED INDEX [IX_IncomeReporting_LocationCd_OffenderCd] ON [IncomeReporting] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [InstitutionalInsOuts]

DROP CONSTRAINT [PK_InstitutionalInsOuts];

ALTER TABLE [InstitutionalInsOuts] ADD CONSTRAINT [PK_InstitutionalInsOuts] PRIMARY KEY CLUSTERED (InstitutionalInsOutsId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_InstitutionalInsOuts_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_InstitutionalInsOuts_LocationCd] ON [InstitutionalInsOuts];
END

CREATE NONCLUSTERED INDEX [IX_InstitutionalInsOuts_LocationCd_OffenderCd] ON [InstitutionalInsOuts] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [InstitutionCasePlans]

DROP CONSTRAINT [PK_InstitutionCasePlans];

ALTER TABLE [InstitutionCasePlans] ADD CONSTRAINT [PK_InstitutionCasePlans] PRIMARY KEY CLUSTERED (InstitutionCasePlanId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_InstitutionCasePlans_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_InstitutionCasePlans_LocationCd] ON [InstitutionCasePlans];
END

CREATE NONCLUSTERED INDEX [IX_InstitutionCasePlans_LocationCd_OffenderCd] ON [InstitutionCasePlans] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [InstitutionDisciplinaryNotices]

DROP CONSTRAINT [PK_InstitutionDisciplinaryNotices];

ALTER TABLE [InstitutionDisciplinaryNotices] ADD CONSTRAINT [PK_InstitutionDisciplinaryNotices] PRIMARY KEY CLUSTERED (InstitutionDisciplinaryNoticeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_InstitutionDisciplinaryNotices_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_InstitutionDisciplinaryNotices_LocationCd] ON [InstitutionDisciplinaryNotices];
END

CREATE NONCLUSTERED INDEX [IX_InstitutionDisciplinaryNotices_LocationCd_OffenderCd] ON [InstitutionDisciplinaryNotices] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [InstitutionHearings]

DROP CONSTRAINT [PK_InstitutionHearings];

ALTER TABLE [InstitutionHearings] ADD CONSTRAINT [PK_InstitutionHearings] PRIMARY KEY CLUSTERED (InstitutionHearingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_InstitutionHearings_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_InstitutionHearings_LocationCd] ON [InstitutionHearings];
END

CREATE NONCLUSTERED INDEX [IX_InstitutionHearings_LocationCd_OffenderCd] ON [InstitutionHearings] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [InterstateCompactIn]

DROP CONSTRAINT [PK_InterstateCompactIn];

ALTER TABLE [InterstateCompactIn] ADD CONSTRAINT [PK_InterstateCompactIn] PRIMARY KEY CLUSTERED (InterstateCompactInId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_InterstateCompactIn_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_InterstateCompactIn_LocationCd] ON [InterstateCompactIn];
END

CREATE NONCLUSTERED INDEX [IX_InterstateCompactIn_LocationCd_OffenderCd] ON [InterstateCompactIn] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [InterstateCompactOut]

DROP CONSTRAINT [PK_InterstateCompactOut];

ALTER TABLE [InterstateCompactOut] ADD CONSTRAINT [PK_InterstateCompactOut] PRIMARY KEY CLUSTERED (InterstateCompactOutId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_InterstateCompactOut_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_InterstateCompactOut_LocationCd] ON [InterstateCompactOut];
END

CREATE NONCLUSTERED INDEX [IX_InterstateCompactOut_LocationCd_OffenderCd] ON [InterstateCompactOut] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [IpiPickTicketReturns]

DROP CONSTRAINT [PK_IpiPickTicketReturns];

ALTER TABLE [IpiPickTicketReturns] ADD CONSTRAINT [PK_IpiPickTicketReturns] PRIMARY KEY CLUSTERED (IpiPickTicketReturnId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_IpiPickTicketReturns_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_IpiPickTicketReturns_LocationCd] ON [IpiPickTicketReturns];
END

CREATE NONCLUSTERED INDEX [IX_IpiPickTicketReturns_LocationCd_OffenderCd] ON [IpiPickTicketReturns] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [KeepSeparates]

DROP CONSTRAINT [PK_KeepSeparates];

ALTER TABLE [KeepSeparates] ADD CONSTRAINT [PK_KeepSeparates] PRIMARY KEY CLUSTERED (KeepSeparateId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_KeepSeparates_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_KeepSeparates_LocationCd] ON [KeepSeparates];
END

CREATE NONCLUSTERED INDEX [IX_KeepSeparates_LocationCd_OffenderCd] ON [KeepSeparates] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [KioskFurloughApplications]

DROP CONSTRAINT [PK_KioskFurloughApplications];

ALTER TABLE [KioskFurloughApplications] ADD CONSTRAINT [PK_KioskFurloughApplications] PRIMARY KEY CLUSTERED (KioskFurloughApplicationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_KioskFurloughApplications_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_KioskFurloughApplications_LocationCd] ON [KioskFurloughApplications];
END

CREATE NONCLUSTERED INDEX [IX_KioskFurloughApplications_LocationCd_OffenderCd] ON [KioskFurloughApplications] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [KioskMessageConversations]

DROP CONSTRAINT [PK_KioskMessageConversations];

ALTER TABLE [KioskMessageConversations] ADD CONSTRAINT [PK_KioskMessageConversations] PRIMARY KEY CLUSTERED (KioskMessageConversationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_KioskMessageConversations_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_KioskMessageConversations_LocationCd] ON [KioskMessageConversations];
END

CREATE NONCLUSTERED INDEX [IX_KioskMessageConversations_LocationCd_OffenderCd] ON [KioskMessageConversations] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [KioskMonthlyReports]

DROP CONSTRAINT [PK_KioskMonthlyReports];

ALTER TABLE [KioskMonthlyReports] ADD CONSTRAINT [PK_KioskMonthlyReports] PRIMARY KEY CLUSTERED (KioskMonthlyReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_KioskMonthlyReports_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_KioskMonthlyReports_LocationCd] ON [KioskMonthlyReports];
END

CREATE NONCLUSTERED INDEX [IX_KioskMonthlyReports_LocationCd_OffenderCd] ON [KioskMonthlyReports] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [KioskPassApplications]

DROP CONSTRAINT [PK_KioskPassApplications];

ALTER TABLE [KioskPassApplications] ADD CONSTRAINT [PK_KioskPassApplications] PRIMARY KEY CLUSTERED (KioskPassApplicationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_KioskPassApplications_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_KioskPassApplications_LocationCd] ON [KioskPassApplications];
END

CREATE NONCLUSTERED INDEX [IX_KioskPassApplications_LocationCd_OffenderCd] ON [KioskPassApplications] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [KioskTravelRequests]

DROP CONSTRAINT [PK_KioskTravelRequests];

ALTER TABLE [KioskTravelRequests] ADD CONSTRAINT [PK_KioskTravelRequests] PRIMARY KEY CLUSTERED (KioskTravelRequestId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_KioskTravelRequests_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_KioskTravelRequests_LocationCd] ON [KioskTravelRequests];
END

CREATE NONCLUSTERED INDEX [IX_KioskTravelRequests_LocationCd_OffenderCd] ON [KioskTravelRequests] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [LawEnforcementNotificationReports]

DROP CONSTRAINT [PK_LawEnforcementNotificationReports];

ALTER TABLE [LawEnforcementNotificationReports] ADD CONSTRAINT [PK_LawEnforcementNotificationReports] PRIMARY KEY CLUSTERED (LawEnforcementNotificationReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_LawEnforcementNotificationReports_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_LawEnforcementNotificationReports_LocationCd] ON [LawEnforcementNotificationReports];
END

CREATE NONCLUSTERED INDEX [IX_LawEnforcementNotificationReports_LocationCd_OffenderCd] ON [LawEnforcementNotificationReports] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [MagdyTrainingAddresses]

DROP CONSTRAINT [PK_MagdyTrainingAddresses];

ALTER TABLE [MagdyTrainingAddresses] ADD CONSTRAINT [PK_MagdyTrainingAddresses] PRIMARY KEY CLUSTERED (TrainingAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_MagdyTrainingAddresses_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_MagdyTrainingAddresses_LocationCd] ON [MagdyTrainingAddresses];
END

CREATE NONCLUSTERED INDEX [IX_MagdyTrainingAddresses_LocationCd_OffenderCd] ON [MagdyTrainingAddresses] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [MedicalMentalHealthStatus]

DROP CONSTRAINT [PK_MedicalMentalHealthStatus];

ALTER TABLE [MedicalMentalHealthStatus] ADD CONSTRAINT [PK_MedicalMentalHealthStatus] PRIMARY KEY CLUSTERED (MedicalMentalHealthStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_MedicalMentalHealthStatus_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_MedicalMentalHealthStatus_LocationCd] ON [MedicalMentalHealthStatus];
END

CREATE NONCLUSTERED INDEX [IX_MedicalMentalHealthStatus_LocationCd_OffenderCd] ON [MedicalMentalHealthStatus] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [MeganTrainingAddresses]

DROP CONSTRAINT [PK_MeganTrainingAddresses];

ALTER TABLE [MeganTrainingAddresses] ADD CONSTRAINT [PK_MeganTrainingAddresses] PRIMARY KEY CLUSTERED (TrainingAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_MeganTrainingAddresses_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_MeganTrainingAddresses_LocationCd] ON [MeganTrainingAddresses];
END

CREATE NONCLUSTERED INDEX [IX_MeganTrainingAddresses_LocationCd_OffenderCd] ON [MeganTrainingAddresses] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [MikeTrainingAddresses]

DROP CONSTRAINT [PK_MikeTrainingAddresses];

ALTER TABLE [MikeTrainingAddresses] ADD CONSTRAINT [PK_MikeTrainingAddresses] PRIMARY KEY CLUSTERED (TrainingAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_MikeTrainingAddresses_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_MikeTrainingAddresses_LocationCd] ON [MikeTrainingAddresses];
END

CREATE NONCLUSTERED INDEX [IX_MikeTrainingAddresses_LocationCd_OffenderCd] ON [MikeTrainingAddresses] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [MilitaryInformation]

DROP CONSTRAINT [PK_MilitaryInformation];

ALTER TABLE [MilitaryInformation] ADD CONSTRAINT [PK_MilitaryInformation] PRIMARY KEY CLUSTERED (MilitaryInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_MilitaryInformation_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_MilitaryInformation_LocationCd] ON [MilitaryInformation];
END

CREATE NONCLUSTERED INDEX [IX_MilitaryInformation_LocationCd_OffenderCd] ON [MilitaryInformation] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [MonitoringPrograms]

DROP CONSTRAINT [PK_MonitoringPrograms];

ALTER TABLE [MonitoringPrograms] ADD CONSTRAINT [PK_MonitoringPrograms] PRIMARY KEY CLUSTERED (MonitoringProgramId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_MonitoringPrograms_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_MonitoringPrograms_LocationCd] ON [MonitoringPrograms];
END

CREATE NONCLUSTERED INDEX [IX_MonitoringPrograms_LocationCd_OffenderCd] ON [MonitoringPrograms] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [Movements]

DROP CONSTRAINT [PK_Movements];

ALTER TABLE [Movements] ADD CONSTRAINT [PK_Movements] PRIMARY KEY CLUSTERED (MovementId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_Movements_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_Movements_LocationCd] ON [Movements];
END

CREATE NONCLUSTERED INDEX [IX_Movements_LocationCd_OffenderCd] ON [Movements] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [NameInformation]

DROP CONSTRAINT [PK_NameInformation];

ALTER TABLE [NameInformation] ADD CONSTRAINT [PK_NameInformation] PRIMARY KEY CLUSTERED (NameInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_NameInformation_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_NameInformation_LocationCd] ON [NameInformation];
END

CREATE NONCLUSTERED INDEX [IX_NameInformation_LocationCd_OffenderCd] ON [NameInformation] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [Nga_Ca_Releases]

DROP CONSTRAINT [PK_Nga_Ca_Releases];

ALTER TABLE [Nga_Ca_Releases] ADD CONSTRAINT [PK_Nga_Ca_Releases] PRIMARY KEY CLUSTERED (IconReleaseId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_Nga_Ca_Releases_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_Nga_Ca_Releases_LocationCd] ON [Nga_Ca_Releases];
END

CREATE NONCLUSTERED INDEX [IX_Nga_Ca_Releases_LocationCd_OffenderCd] ON [Nga_Ca_Releases] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [NonPhysicalIdentifiers]

DROP CONSTRAINT [PK_NonPhysicalIdentifiers];

ALTER TABLE [NonPhysicalIdentifiers] ADD CONSTRAINT [PK_NonPhysicalIdentifiers] PRIMARY KEY CLUSTERED (NonPhysicalIdentifierId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_NonPhysicalIdentifiers_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_NonPhysicalIdentifiers_LocationCd] ON [NonPhysicalIdentifiers];
END

CREATE NONCLUSTERED INDEX [IX_NonPhysicalIdentifiers_LocationCd_OffenderCd] ON [NonPhysicalIdentifiers] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [NPChargeHistoryLead]

DROP CONSTRAINT [PK_NPChargeHistoryLead];

ALTER TABLE [NPChargeHistoryLead] ADD CONSTRAINT [PK_NPChargeHistoryLead] PRIMARY KEY CLUSTERED (NPChargeHistoryLeadId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_NPChargeHistoryLead_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_NPChargeHistoryLead_LocationCd] ON [NPChargeHistoryLead];
END

CREATE NONCLUSTERED INDEX [IX_NPChargeHistoryLead_LocationCd_OffenderCd] ON [NPChargeHistoryLead] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [NPChargeHistoryMostSerious]

DROP CONSTRAINT [PK_NPChargeHistoryMostSerious];

ALTER TABLE [NPChargeHistoryMostSerious] ADD CONSTRAINT [PK_NPChargeHistoryMostSerious] PRIMARY KEY CLUSTERED (NPChargeHistoryMostSeriousId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_NPChargeHistoryMostSerious_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_NPChargeHistoryMostSerious_LocationCd] ON [NPChargeHistoryMostSerious];
END

CREATE NONCLUSTERED INDEX [IX_NPChargeHistoryMostSerious_LocationCd_OffenderCd] ON [NPChargeHistoryMostSerious] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [NPOffenderDailyHistory]

DROP CONSTRAINT [PK_NPOffenderDailyHistory];

ALTER TABLE [NPOffenderDailyHistory] ADD CONSTRAINT [PK_NPOffenderDailyHistory] PRIMARY KEY CLUSTERED (NPOffenderDailyHistoryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_NPOffenderDailyHistory_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_NPOffenderDailyHistory_LocationCd] ON [NPOffenderDailyHistory];
END

CREATE NONCLUSTERED INDEX [IX_NPOffenderDailyHistory_LocationCd_OffenderCd] ON [NPOffenderDailyHistory] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [Obligations]

DROP CONSTRAINT [PK_Obligations];

ALTER TABLE [Obligations] ADD CONSTRAINT [PK_Obligations] PRIMARY KEY CLUSTERED (ObligationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_Obligations_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_Obligations_LocationCd] ON [Obligations];
END

CREATE NONCLUSTERED INDEX [IX_Obligations_LocationCd_OffenderCd] ON [Obligations] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [OffenderAgreements]

DROP CONSTRAINT [PK_OffenderAgreements];

ALTER TABLE [OffenderAgreements] ADD CONSTRAINT [PK_OffenderAgreements] PRIMARY KEY CLUSTERED (OffenderAgreementId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderAgreements_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_OffenderAgreements_LocationCd] ON [OffenderAgreements];
END

CREATE NONCLUSTERED INDEX [IX_OffenderAgreements_LocationCd_OffenderCd] ON [OffenderAgreements] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [OffenderAlerts]

DROP CONSTRAINT [PK_OffenderAlerts];

ALTER TABLE [OffenderAlerts] ADD CONSTRAINT [PK_OffenderAlerts] PRIMARY KEY CLUSTERED (OffenderAlertId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderAlerts_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_OffenderAlerts_LocationCd] ON [OffenderAlerts];
END

CREATE NONCLUSTERED INDEX [IX_OffenderAlerts_LocationCd_OffenderCd] ON [OffenderAlerts] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [OffenderApprovedDestinations]

DROP CONSTRAINT [PK_OffenderApprovedDestinations];

ALTER TABLE [OffenderApprovedDestinations] ADD CONSTRAINT [PK_OffenderApprovedDestinations] PRIMARY KEY CLUSTERED (OffenderApprovedDestinationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderApprovedDestinations_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_OffenderApprovedDestinations_LocationCd] ON [OffenderApprovedDestinations];
END

CREATE NONCLUSTERED INDEX [IX_OffenderApprovedDestinations_LocationCd_OffenderCd] ON [OffenderApprovedDestinations] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [OffenderAssessments]

DROP CONSTRAINT [PK_OffenderAssessments];

ALTER TABLE [OffenderAssessments] ADD CONSTRAINT [PK_OffenderAssessments] PRIMARY KEY CLUSTERED (OffenderAssessmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderAssessments_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_OffenderAssessments_LocationCd] ON [OffenderAssessments];
END

CREATE NONCLUSTERED INDEX [IX_OffenderAssessments_LocationCd_OffenderCd] ON [OffenderAssessments] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [OffenderCustodyLevels]

DROP CONSTRAINT [PK_OffenderCustodyLevels];

ALTER TABLE [OffenderCustodyLevels] ADD CONSTRAINT [PK_OffenderCustodyLevels] PRIMARY KEY CLUSTERED (OffenderCustodyLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderCustodyLevels_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_OffenderCustodyLevels_LocationCd] ON [OffenderCustodyLevels];
END

CREATE NONCLUSTERED INDEX [IX_OffenderCustodyLevels_LocationCd_OffenderCd] ON [OffenderCustodyLevels] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [OffenderEventLog]

DROP CONSTRAINT [PK_OffenderEventLog];

ALTER TABLE [OffenderEventLog] ADD CONSTRAINT [PK_OffenderEventLog] PRIMARY KEY CLUSTERED (OffenderEventLogId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderEventLog_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_OffenderEventLog_LocationCd] ON [OffenderEventLog];
END

CREATE NONCLUSTERED INDEX [IX_OffenderEventLog_LocationCd_OffenderCd] ON [OffenderEventLog] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [OffenderFiles]

DROP CONSTRAINT [PK_OffenderFiles];

ALTER TABLE [OffenderFiles] ADD CONSTRAINT [PK_OffenderFiles] PRIMARY KEY CLUSTERED (OffenderFileId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderFiles_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_OffenderFiles_LocationCd] ON [OffenderFiles];
END

CREATE NONCLUSTERED INDEX [IX_OffenderFiles_LocationCd_OffenderCd] ON [OffenderFiles] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [OffenderHousingAssignmentRestrictions]

DROP CONSTRAINT [PK_OffenderAssignmentRestrictions];

ALTER TABLE [OffenderHousingAssignmentRestrictions] ADD CONSTRAINT [PK_OffenderAssignmentRestrictions] PRIMARY KEY CLUSTERED (OffenderHousingAssignmentRestrictionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderHousingAssignmentRestrictions_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_OffenderHousingAssignmentRestrictions_LocationCd] ON [OffenderHousingAssignmentRestrictions];
END

CREATE NONCLUSTERED INDEX [IX_OffenderHousingAssignmentRestrictions_LocationCd_OffenderCd] ON [OffenderHousingAssignmentRestrictions] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [OffenderHousingAssignmentRestrictions_OLD]

DROP CONSTRAINT [PK_OffenderHousingAssignmentRestrictions];

ALTER TABLE [OffenderHousingAssignmentRestrictions_OLD] ADD CONSTRAINT [PK_OffenderHousingAssignmentRestrictions] PRIMARY KEY CLUSTERED (OffenderHousingAssignmentRestrictionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderHousingAssignmentRestrictions_OLD_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_OffenderHousingAssignmentRestrictions_OLD_LocationCd] ON [OffenderHousingAssignmentRestrictions_OLD];
END

CREATE NONCLUSTERED INDEX [IX_OffenderHousingAssignmentRestrictions_OLD_LocationCd_OffenderCd] ON [OffenderHousingAssignmentRestrictions_OLD] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [OffenderInformation]

DROP CONSTRAINT [PK_OffenderInformation];

ALTER TABLE [OffenderInformation] ADD CONSTRAINT [PK_OffenderInformation] PRIMARY KEY CLUSTERED (OffenderInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderInformation_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_OffenderInformation_LocationCd] ON [OffenderInformation];
END

CREATE NONCLUSTERED INDEX [IX_OffenderInformation_LocationCd_OffenderCd] ON [OffenderInformation] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [OffenderInsOuts]

DROP CONSTRAINT [PK_OffenderInsOuts];

ALTER TABLE [OffenderInsOuts] ADD CONSTRAINT [PK_OffenderInsOuts] PRIMARY KEY CLUSTERED (OffenderInOutId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderInsOuts_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_OffenderInsOuts_LocationCd] ON [OffenderInsOuts];
END

CREATE NONCLUSTERED INDEX [IX_OffenderInsOuts_LocationCd_OffenderCd] ON [OffenderInsOuts] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [OffenderInterventionPrograms]

DROP CONSTRAINT [PK_OffenderInterventionPrograms];

ALTER TABLE [OffenderInterventionPrograms] ADD CONSTRAINT [PK_OffenderInterventionPrograms] PRIMARY KEY CLUSTERED (OffenderInterventionProgramId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderInterventionPrograms_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_OffenderInterventionPrograms_LocationCd] ON [OffenderInterventionPrograms];
END

CREATE NONCLUSTERED INDEX [IX_OffenderInterventionPrograms_LocationCd_OffenderCd] ON [OffenderInterventionPrograms] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [OffenderInterventions]

DROP CONSTRAINT [PK_OffenderInterventions];

ALTER TABLE [OffenderInterventions] ADD CONSTRAINT [PK_OffenderInterventions] PRIMARY KEY CLUSTERED (OffenderInterventionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderInterventions_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_OffenderInterventions_LocationCd] ON [OffenderInterventions];
END

CREATE NONCLUSTERED INDEX [IX_OffenderInterventions_LocationCd_OffenderCd] ON [OffenderInterventions] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [OffenderLevelOfSupervision]

DROP CONSTRAINT [PK_OffenderLevelOfSupervision];

ALTER TABLE [OffenderLevelOfSupervision] ADD CONSTRAINT [PK_OffenderLevelOfSupervision] PRIMARY KEY CLUSTERED (OffenderLevelOfSupervisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderLevelOfSupervision_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_OffenderLevelOfSupervision_LocationCd] ON [OffenderLevelOfSupervision];
END

CREATE NONCLUSTERED INDEX [IX_OffenderLevelOfSupervision_LocationCd_OffenderCd] ON [OffenderLevelOfSupervision] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [OffenderNeedGroups]

DROP CONSTRAINT [PK_OffenderNeedGroups];

ALTER TABLE [OffenderNeedGroups] ADD CONSTRAINT [PK_OffenderNeedGroups] PRIMARY KEY CLUSTERED (OffenderNeedGroupId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderNeedGroups_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_OffenderNeedGroups_LocationCd] ON [OffenderNeedGroups];
END

CREATE NONCLUSTERED INDEX [IX_OffenderNeedGroups_LocationCd_OffenderCd] ON [OffenderNeedGroups] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [OffenderNeeds]

DROP CONSTRAINT [PK_OffenderNeeds];

ALTER TABLE [OffenderNeeds] ADD CONSTRAINT [PK_OffenderNeeds] PRIMARY KEY CLUSTERED (OffenderNeedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderNeeds_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_OffenderNeeds_LocationCd] ON [OffenderNeeds];
END

CREATE NONCLUSTERED INDEX [IX_OffenderNeeds_LocationCd_OffenderCd] ON [OffenderNeeds] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [OffenderPrivilegeLevelsInstSw]

DROP CONSTRAINT [PK_OffenderPrivilegeLevelsInstSW];

ALTER TABLE [OffenderPrivilegeLevelsInstSw] ADD CONSTRAINT [PK_OffenderPrivilegeLevelsInstSW] PRIMARY KEY CLUSTERED (OffenderPrivilegeLevelInstSwId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderPrivilegeLevelsInstSw_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_OffenderPrivilegeLevelsInstSw_LocationCd] ON [OffenderPrivilegeLevelsInstSw];
END

CREATE NONCLUSTERED INDEX [IX_OffenderPrivilegeLevelsInstSw_LocationCd_OffenderCd] ON [OffenderPrivilegeLevelsInstSw] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [OffenderPrivilegeLevelsResi]

DROP CONSTRAINT [PK_OffenderPrivilegeLevelsResi];

ALTER TABLE [OffenderPrivilegeLevelsResi] ADD CONSTRAINT [PK_OffenderPrivilegeLevelsResi] PRIMARY KEY CLUSTERED (OffenderPrivilegeLevelResiId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderPrivilegeLevelsResi_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_OffenderPrivilegeLevelsResi_LocationCd] ON [OffenderPrivilegeLevelsResi];
END

CREATE NONCLUSTERED INDEX [IX_OffenderPrivilegeLevelsResi_LocationCd_OffenderCd] ON [OffenderPrivilegeLevelsResi] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [OffenderProcesses]

DROP CONSTRAINT [PK_OffenderProcesses];

ALTER TABLE [OffenderProcesses] ADD CONSTRAINT [PK_OffenderProcesses] PRIMARY KEY CLUSTERED (OffenderProcessId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderProcesses_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_OffenderProcesses_LocationCd] ON [OffenderProcesses];
END

CREATE NONCLUSTERED INDEX [IX_OffenderProcesses_LocationCd_OffenderCd] ON [OffenderProcesses] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [OffenderRules]

DROP CONSTRAINT [PK_OffenderRules];

ALTER TABLE [OffenderRules] ADD CONSTRAINT [PK_OffenderRules] PRIMARY KEY CLUSTERED (OffenderRuleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderRules_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_OffenderRules_LocationCd] ON [OffenderRules];
END

CREATE NONCLUSTERED INDEX [IX_OffenderRules_LocationCd_OffenderCd] ON [OffenderRules] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [OffenderScheduledEvents]

DROP CONSTRAINT [PK_OffenderScheduledEvents];

ALTER TABLE [OffenderScheduledEvents] ADD CONSTRAINT [PK_OffenderScheduledEvents] PRIMARY KEY CLUSTERED (OffenderScheduledEventId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderScheduledEvents_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_OffenderScheduledEvents_LocationCd] ON [OffenderScheduledEvents];
END

CREATE NONCLUSTERED INDEX [IX_OffenderScheduledEvents_LocationCd_OffenderCd] ON [OffenderScheduledEvents] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [OffenderSupervisionLevels]

DROP CONSTRAINT [PK_OffenderTierLevelsCbc];

ALTER TABLE [OffenderSupervisionLevels] ADD CONSTRAINT [PK_OffenderTierLevelsCbc] PRIMARY KEY CLUSTERED (OffenderSupervisionLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderSupervisionLevels_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_OffenderSupervisionLevels_LocationCd] ON [OffenderSupervisionLevels];
END

CREATE NONCLUSTERED INDEX [IX_OffenderSupervisionLevels_LocationCd_OffenderCd] ON [OffenderSupervisionLevels] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [OffenderTrips]

DROP CONSTRAINT [PK_OffenderTrips];

ALTER TABLE [OffenderTrips] ADD CONSTRAINT [PK_OffenderTrips] PRIMARY KEY CLUSTERED (OffenderTripId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderTrips_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_OffenderTrips_LocationCd] ON [OffenderTrips];
END

CREATE NONCLUSTERED INDEX [IX_OffenderTrips_LocationCd_OffenderCd] ON [OffenderTrips] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [OffenderUserRestrictions]

DROP CONSTRAINT [PK_OffenderUserRestrictions];

ALTER TABLE [OffenderUserRestrictions] ADD CONSTRAINT [PK_OffenderUserRestrictions] PRIMARY KEY CLUSTERED (OffenderUserRestrictionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderUserRestrictions_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_OffenderUserRestrictions_LocationCd] ON [OffenderUserRestrictions];
END

CREATE NONCLUSTERED INDEX [IX_OffenderUserRestrictions_LocationCd_OffenderCd] ON [OffenderUserRestrictions] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [OffenderVisitingPrivilegeLevels]

DROP CONSTRAINT [PK_OffenderVisitingPrivilegeLevels];

ALTER TABLE [OffenderVisitingPrivilegeLevels] ADD CONSTRAINT [PK_OffenderVisitingPrivilegeLevels] PRIMARY KEY CLUSTERED (OffenderVisitingPrivilegeLevelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderVisitingPrivilegeLevels_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_OffenderVisitingPrivilegeLevels_LocationCd] ON [OffenderVisitingPrivilegeLevels];
END

CREATE NONCLUSTERED INDEX [IX_OffenderVisitingPrivilegeLevels_LocationCd_OffenderCd] ON [OffenderVisitingPrivilegeLevels] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [OffenderWorkAssignments]

DROP CONSTRAINT [PK_OffenderWorkAssignments];

ALTER TABLE [OffenderWorkAssignments] ADD CONSTRAINT [PK_OffenderWorkAssignments] PRIMARY KEY CLUSTERED (OffenderWorkAssignmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderWorkAssignments_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_OffenderWorkAssignments_LocationCd] ON [OffenderWorkAssignments];
END

CREATE NONCLUSTERED INDEX [IX_OffenderWorkAssignments_LocationCd_OffenderCd] ON [OffenderWorkAssignments] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ParoleBoardInterviewProcesses]

DROP CONSTRAINT [PK_ParoleBoardInterviewProcesses];

ALTER TABLE [ParoleBoardInterviewProcesses] ADD CONSTRAINT [PK_ParoleBoardInterviewProcesses] PRIMARY KEY CLUSTERED (ParoleBoardInterviewProcessId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ParoleBoardInterviewProcesses_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ParoleBoardInterviewProcesses_LocationCd] ON [ParoleBoardInterviewProcesses];
END

CREATE NONCLUSTERED INDEX [IX_ParoleBoardInterviewProcesses_LocationCd_OffenderCd] ON [ParoleBoardInterviewProcesses] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ParoleBoardReviews]

DROP CONSTRAINT [PK_ParoleBoardReviews];

ALTER TABLE [ParoleBoardReviews] ADD CONSTRAINT [PK_ParoleBoardReviews] PRIMARY KEY CLUSTERED (ParoleBoardReviewId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ParoleBoardReviews_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ParoleBoardReviews_LocationCd] ON [ParoleBoardReviews];
END

CREATE NONCLUSTERED INDEX [IX_ParoleBoardReviews_LocationCd_OffenderCd] ON [ParoleBoardReviews] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ParoleEligibilityDateAdjustments]

DROP CONSTRAINT [PK_ParoleEligibilityDateAdjustments];

ALTER TABLE [ParoleEligibilityDateAdjustments] ADD CONSTRAINT [PK_ParoleEligibilityDateAdjustments] PRIMARY KEY CLUSTERED (ParoleEligibilityDateAdjustmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ParoleEligibilityDateAdjustments_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ParoleEligibilityDateAdjustments_LocationCd] ON [ParoleEligibilityDateAdjustments];
END

CREATE NONCLUSTERED INDEX [IX_ParoleEligibilityDateAdjustments_LocationCd_OffenderCd] ON [ParoleEligibilityDateAdjustments] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ParoleEligibilityDates]

DROP CONSTRAINT [PK_ParoleEligibilityDates];

ALTER TABLE [ParoleEligibilityDates] ADD CONSTRAINT [PK_ParoleEligibilityDates] PRIMARY KEY CLUSTERED (ParoleEligibilityDateId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ParoleEligibilityDates_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ParoleEligibilityDates_LocationCd] ON [ParoleEligibilityDates];
END

CREATE NONCLUSTERED INDEX [IX_ParoleEligibilityDates_LocationCd_OffenderCd] ON [ParoleEligibilityDates] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ParoleViolationReviews]

DROP CONSTRAINT [PK_ParoleViolationReviews];

ALTER TABLE [ParoleViolationReviews] ADD CONSTRAINT [PK_ParoleViolationReviews] PRIMARY KEY CLUSTERED (ParoleViolationReviewId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ParoleViolationReviews_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ParoleViolationReviews_LocationCd] ON [ParoleViolationReviews];
END

CREATE NONCLUSTERED INDEX [IX_ParoleViolationReviews_LocationCd_OffenderCd] ON [ParoleViolationReviews] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [PersonalProtectionOrders]

DROP CONSTRAINT [PK_PersonalProtectionOrders];

ALTER TABLE [PersonalProtectionOrders] ADD CONSTRAINT [PK_PersonalProtectionOrders] PRIMARY KEY CLUSTERED (PersonalProtectionOrderId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PersonalProtectionOrders_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_PersonalProtectionOrders_LocationCd] ON [PersonalProtectionOrders];
END

CREATE NONCLUSTERED INDEX [IX_PersonalProtectionOrders_LocationCd_OffenderCd] ON [PersonalProtectionOrders] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [PhysicalFileTrackings]

DROP CONSTRAINT [PK_PhysicalFileTrackings];

ALTER TABLE [PhysicalFileTrackings] ADD CONSTRAINT [PK_PhysicalFileTrackings] PRIMARY KEY CLUSTERED (PhysicalFileTrackingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PhysicalFileTrackings_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_PhysicalFileTrackings_LocationCd] ON [PhysicalFileTrackings];
END

CREATE NONCLUSTERED INDEX [IX_PhysicalFileTrackings_LocationCd_OffenderCd] ON [PhysicalFileTrackings] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [PhysicalIdentifiers]

DROP CONSTRAINT [PK_PhysicalIdentifiers];

ALTER TABLE [PhysicalIdentifiers] ADD CONSTRAINT [PK_PhysicalIdentifiers] PRIMARY KEY CLUSTERED (PhysicalIdentifierId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PhysicalIdentifiers_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_PhysicalIdentifiers_LocationCd] ON [PhysicalIdentifiers];
END

CREATE NONCLUSTERED INDEX [IX_PhysicalIdentifiers_LocationCd_OffenderCd] ON [PhysicalIdentifiers] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [PresentenceInvestigations]

DROP CONSTRAINT [PK_PreSentenceInvestigations];

ALTER TABLE [PresentenceInvestigations] ADD CONSTRAINT [PK_PreSentenceInvestigations] PRIMARY KEY CLUSTERED (PresentenceInvestigationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PresentenceInvestigations_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_PresentenceInvestigations_LocationCd] ON [PresentenceInvestigations];
END

CREATE NONCLUSTERED INDEX [IX_PresentenceInvestigations_LocationCd_OffenderCd] ON [PresentenceInvestigations] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [PretrialInterviews]

DROP CONSTRAINT [PK_PreTrialInterviews];

ALTER TABLE [PretrialInterviews] ADD CONSTRAINT [PK_PreTrialInterviews] PRIMARY KEY CLUSTERED (PretrialInterviewId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PretrialInterviews_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_PretrialInterviews_LocationCd] ON [PretrialInterviews];
END

CREATE NONCLUSTERED INDEX [IX_PretrialInterviews_LocationCd_OffenderCd] ON [PretrialInterviews] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ProbationAgreements]

DROP CONSTRAINT [PK_ProbationAgreements];

ALTER TABLE [ProbationAgreements] ADD CONSTRAINT [PK_ProbationAgreements] PRIMARY KEY CLUSTERED (ProbationAgreementId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ProbationAgreements_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ProbationAgreements_LocationCd] ON [ProbationAgreements];
END

CREATE NONCLUSTERED INDEX [IX_ProbationAgreements_LocationCd_OffenderCd] ON [ProbationAgreements] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ProbationReportOfViolation]

DROP CONSTRAINT [PK_ProbationReportOfViolation];

ALTER TABLE [ProbationReportOfViolation] ADD CONSTRAINT [PK_ProbationReportOfViolation] PRIMARY KEY CLUSTERED (ProbationReportOfViolationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ProbationReportOfViolation_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ProbationReportOfViolation_LocationCd] ON [ProbationReportOfViolation];
END

CREATE NONCLUSTERED INDEX [IX_ProbationReportOfViolation_LocationCd_OffenderCd] ON [ProbationReportOfViolation] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [Property]

DROP CONSTRAINT [PK_Property];

ALTER TABLE [Property] ADD CONSTRAINT [PK_Property] PRIMARY KEY CLUSTERED (PropertyId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_Property_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_Property_LocationCd] ON [Property];
END

CREATE NONCLUSTERED INDEX [IX_Property_LocationCd_OffenderCd] ON [Property] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [PropertyGroups]

DROP CONSTRAINT [PK_PropertyGroups];

ALTER TABLE [PropertyGroups] ADD CONSTRAINT [PK_PropertyGroups] PRIMARY KEY CLUSTERED (PropertyGroupId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PropertyGroups_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_PropertyGroups_LocationCd] ON [PropertyGroups];
END

CREATE NONCLUSTERED INDEX [IX_PropertyGroups_LocationCd_OffenderCd] ON [PropertyGroups] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [PropertyShipmentAddresses]

DROP CONSTRAINT [PK_PropertyShipmentAddresses];

ALTER TABLE [PropertyShipmentAddresses] ADD CONSTRAINT [PK_PropertyShipmentAddresses] PRIMARY KEY CLUSTERED (PropertyShipmentAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PropertyShipmentAddresses_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_PropertyShipmentAddresses_LocationCd] ON [PropertyShipmentAddresses];
END

CREATE NONCLUSTERED INDEX [IX_PropertyShipmentAddresses_LocationCd_OffenderCd] ON [PropertyShipmentAddresses] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [PsiExtras]

DROP CONSTRAINT [PK_PSIExtras];

ALTER TABLE [PsiExtras] ADD CONSTRAINT [PK_PSIExtras] PRIMARY KEY CLUSTERED (PsiExtraId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PsiExtras_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_PsiExtras_LocationCd] ON [PsiExtras];
END

CREATE NONCLUSTERED INDEX [IX_PsiExtras_LocationCd_OffenderCd] ON [PsiExtras] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [QuangTrainingAddresses]

DROP CONSTRAINT [PK_QuangTrainingAddresses];

ALTER TABLE [QuangTrainingAddresses] ADD CONSTRAINT [PK_QuangTrainingAddresses] PRIMARY KEY CLUSTERED (TrainingAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_QuangTrainingAddresses_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_QuangTrainingAddresses_LocationCd] ON [QuangTrainingAddresses];
END

CREATE NONCLUSTERED INDEX [IX_QuangTrainingAddresses_LocationCd_OffenderCd] ON [QuangTrainingAddresses] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ReceptionReportExtras]

DROP CONSTRAINT [PK_ReceptionReportExtras];

ALTER TABLE [ReceptionReportExtras] ADD CONSTRAINT [PK_ReceptionReportExtras] PRIMARY KEY CLUSTERED (ReceptionReportExtraId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ReceptionReportExtras_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ReceptionReportExtras_LocationCd] ON [ReceptionReportExtras];
END

CREATE NONCLUSTERED INDEX [IX_ReceptionReportExtras_LocationCd_OffenderCd] ON [ReceptionReportExtras] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ReceptionReports]

DROP CONSTRAINT [PK_ReceptionReports];

ALTER TABLE [ReceptionReports] ADD CONSTRAINT [PK_ReceptionReports] PRIMARY KEY CLUSTERED (ReceptionReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ReceptionReports_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ReceptionReports_LocationCd] ON [ReceptionReports];
END

CREATE NONCLUSTERED INDEX [IX_ReceptionReports_LocationCd_OffenderCd] ON [ReceptionReports] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ReceptionTracking]

DROP CONSTRAINT [PK_ReceptionTracking];

ALTER TABLE [ReceptionTracking] ADD CONSTRAINT [PK_ReceptionTracking] PRIMARY KEY CLUSTERED (ReceptionTrackingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ReceptionTracking_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ReceptionTracking_LocationCd] ON [ReceptionTracking];
END

CREATE NONCLUSTERED INDEX [IX_ReceptionTracking_LocationCd_OffenderCd] ON [ReceptionTracking] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ReconsiderSentenceWorksheet]

DROP CONSTRAINT [PK_ReconsiderSentenceWorksheet];

ALTER TABLE [ReconsiderSentenceWorksheet] ADD CONSTRAINT [PK_ReconsiderSentenceWorksheet] PRIMARY KEY CLUSTERED (ReconsiderSentenceWorksheetId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ReconsiderSentenceWorksheet_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ReconsiderSentenceWorksheet_LocationCd] ON [ReconsiderSentenceWorksheet];
END

CREATE NONCLUSTERED INDEX [IX_ReconsiderSentenceWorksheet_LocationCd_OffenderCd] ON [ReconsiderSentenceWorksheet] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [RecordsExtras]

DROP CONSTRAINT [PK_RecordsExtras];

ALTER TABLE [RecordsExtras] ADD CONSTRAINT [PK_RecordsExtras] PRIMARY KEY CLUSTERED (RecordsExtraId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_RecordsExtras_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_RecordsExtras_LocationCd] ON [RecordsExtras];
END

CREATE NONCLUSTERED INDEX [IX_RecordsExtras_LocationCd_OffenderCd] ON [RecordsExtras] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ReentryCasePlanActionSteps]

DROP CONSTRAINT [PK_ReentryCasePlanActionSteps];

ALTER TABLE [ReentryCasePlanActionSteps] ADD CONSTRAINT [PK_ReentryCasePlanActionSteps] PRIMARY KEY CLUSTERED (ReentryCasePlanActionStepId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ReentryCasePlanActionSteps_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ReentryCasePlanActionSteps_LocationCd] ON [ReentryCasePlanActionSteps];
END

CREATE NONCLUSTERED INDEX [IX_ReentryCasePlanActionSteps_LocationCd_OffenderCd] ON [ReentryCasePlanActionSteps] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ReentryCasePlanFaceSheet]

DROP CONSTRAINT [PK_ReentryCasePlanFaceSheet];

ALTER TABLE [ReentryCasePlanFaceSheet] ADD CONSTRAINT [PK_ReentryCasePlanFaceSheet] PRIMARY KEY CLUSTERED (ReentryCasePlanFaceSheetId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ReentryCasePlanFaceSheet_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ReentryCasePlanFaceSheet_LocationCd] ON [ReentryCasePlanFaceSheet];
END

CREATE NONCLUSTERED INDEX [IX_ReentryCasePlanFaceSheet_LocationCd_OffenderCd] ON [ReentryCasePlanFaceSheet] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ReentryCasePlans]

DROP CONSTRAINT [PK_ReentryCasePlans];

ALTER TABLE [ReentryCasePlans] ADD CONSTRAINT [PK_ReentryCasePlans] PRIMARY KEY CLUSTERED (ReentryCasePlanId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ReentryCasePlans_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ReentryCasePlans_LocationCd] ON [ReentryCasePlans];
END

CREATE NONCLUSTERED INDEX [IX_ReentryCasePlans_LocationCd_OffenderCd] ON [ReentryCasePlans] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ReleaseNotificationReportExtras]

DROP CONSTRAINT [PK_ReleaseNotificationReportExtras];

ALTER TABLE [ReleaseNotificationReportExtras] ADD CONSTRAINT [PK_ReleaseNotificationReportExtras] PRIMARY KEY CLUSTERED (ReleaseNotificationReportExtraId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ReleaseNotificationReportExtras_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ReleaseNotificationReportExtras_LocationCd] ON [ReleaseNotificationReportExtras];
END

CREATE NONCLUSTERED INDEX [IX_ReleaseNotificationReportExtras_LocationCd_OffenderCd] ON [ReleaseNotificationReportExtras] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ReleaseNotifications]

DROP CONSTRAINT [PK_ReleaseNotifications];

ALTER TABLE [ReleaseNotifications] ADD CONSTRAINT [PK_ReleaseNotifications] PRIMARY KEY CLUSTERED (ReleaseNotificationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ReleaseNotifications_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ReleaseNotifications_LocationCd] ON [ReleaseNotifications];
END

CREATE NONCLUSTERED INDEX [IX_ReleaseNotifications_LocationCd_OffenderCd] ON [ReleaseNotifications] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ReleasesOfInformation]

DROP CONSTRAINT [PK_ReleasesOfInformation];

ALTER TABLE [ReleasesOfInformation] ADD CONSTRAINT [PK_ReleasesOfInformation] PRIMARY KEY CLUSTERED (ReleaseOfInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ReleasesOfInformation_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ReleasesOfInformation_LocationCd] ON [ReleasesOfInformation];
END

CREATE NONCLUSTERED INDEX [IX_ReleasesOfInformation_LocationCd_OffenderCd] ON [ReleasesOfInformation] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ResidentialFormalDiscipline]

DROP CONSTRAINT [PK_ResidentialFormalDiscipline];

ALTER TABLE [ResidentialFormalDiscipline] ADD CONSTRAINT [PK_ResidentialFormalDiscipline] PRIMARY KEY CLUSTERED (ResidentialFormalDisciplineId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ResidentialFormalDiscipline_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ResidentialFormalDiscipline_LocationCd] ON [ResidentialFormalDiscipline];
END

CREATE NONCLUSTERED INDEX [IX_ResidentialFormalDiscipline_LocationCd_OffenderCd] ON [ResidentialFormalDiscipline] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ResidentialInformalDiscipline]

DROP CONSTRAINT [PK_ResidentialInformalDiscipline];

ALTER TABLE [ResidentialInformalDiscipline] ADD CONSTRAINT [PK_ResidentialInformalDiscipline] PRIMARY KEY CLUSTERED (ResidentialInformalDisciplineId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ResidentialInformalDiscipline_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ResidentialInformalDiscipline_LocationCd] ON [ResidentialInformalDiscipline];
END

CREATE NONCLUSTERED INDEX [IX_ResidentialInformalDiscipline_LocationCd_OffenderCd] ON [ResidentialInformalDiscipline] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [RestitutionInformation]

DROP CONSTRAINT [PK_RestitutionInformation];

ALTER TABLE [RestitutionInformation] ADD CONSTRAINT [PK_RestitutionInformation] PRIMARY KEY CLUSTERED (RestitutionInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_RestitutionInformation_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_RestitutionInformation_LocationCd] ON [RestitutionInformation];
END

CREATE NONCLUSTERED INDEX [IX_RestitutionInformation_LocationCd_OffenderCd] ON [RestitutionInformation] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [RpoDischargeReports]

DROP CONSTRAINT [PK_RpoDischargeReports];

ALTER TABLE [RpoDischargeReports] ADD CONSTRAINT [PK_RpoDischargeReports] PRIMARY KEY CLUSTERED (RpoDischargeReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_RpoDischargeReports_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_RpoDischargeReports_LocationCd] ON [RpoDischargeReports];
END

CREATE NONCLUSTERED INDEX [IX_RpoDischargeReports_LocationCd_OffenderCd] ON [RpoDischargeReports] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [RuleViolationIncidents]

DROP CONSTRAINT [PK_RuleViolationIncidents];

ALTER TABLE [RuleViolationIncidents] ADD CONSTRAINT [PK_RuleViolationIncidents] PRIMARY KEY CLUSTERED (RuleViolationIncidentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_RuleViolationIncidents_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_RuleViolationIncidents_LocationCd] ON [RuleViolationIncidents];
END

CREATE NONCLUSTERED INDEX [IX_RuleViolationIncidents_LocationCd_OffenderCd] ON [RuleViolationIncidents] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [RwsReportOfViolation]

DROP CONSTRAINT [PK_RWSReportOfViolation];

ALTER TABLE [RwsReportOfViolation] ADD CONSTRAINT [PK_RWSReportOfViolation] PRIMARY KEY CLUSTERED (RwsReportOfViolationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_RwsReportOfViolation_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_RwsReportOfViolation_LocationCd] ON [RwsReportOfViolation];
END

CREATE NONCLUSTERED INDEX [IX_RwsReportOfViolation_LocationCd_OffenderCd] ON [RwsReportOfViolation] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [SecurityStandards_OLD]

DROP CONSTRAINT [PK_SecurityStandards];

ALTER TABLE [SecurityStandards_OLD] ADD CONSTRAINT [PK_SecurityStandards] PRIMARY KEY CLUSTERED (SecurityStandardId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_SecurityStandards_OLD_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_SecurityStandards_OLD_LocationCd] ON [SecurityStandards_OLD];
END

CREATE NONCLUSTERED INDEX [IX_SecurityStandards_OLD_LocationCd_OffenderCd] ON [SecurityStandards_OLD] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [SecurityStandardsNonToxin]

DROP CONSTRAINT [PK_SecurityStandardsNonToxin];

ALTER TABLE [SecurityStandardsNonToxin] ADD CONSTRAINT [PK_SecurityStandardsNonToxin] PRIMARY KEY CLUSTERED (SecurityStandardsNonToxinId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_SecurityStandardsNonToxin_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_SecurityStandardsNonToxin_LocationCd] ON [SecurityStandardsNonToxin];
END

CREATE NONCLUSTERED INDEX [IX_SecurityStandardsNonToxin_LocationCd_OffenderCd] ON [SecurityStandardsNonToxin] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [SecurityStandardsToxin]

DROP CONSTRAINT [PK_SecurityStandardsToxin];

ALTER TABLE [SecurityStandardsToxin] ADD CONSTRAINT [PK_SecurityStandardsToxin] PRIMARY KEY CLUSTERED (SecurityStandardsToxinId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_SecurityStandardsToxin_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_SecurityStandardsToxin_LocationCd] ON [SecurityStandardsToxin];
END

CREATE NONCLUSTERED INDEX [IX_SecurityStandardsToxin_LocationCd_OffenderCd] ON [SecurityStandardsToxin] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [SexOffenderRegistry]

DROP CONSTRAINT [PK_SexOffenderRegistry];

ALTER TABLE [SexOffenderRegistry] ADD CONSTRAINT [PK_SexOffenderRegistry] PRIMARY KEY CLUSTERED (SexOffenderRegistryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_SexOffenderRegistry_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_SexOffenderRegistry_LocationCd] ON [SexOffenderRegistry];
END

CREATE NONCLUSTERED INDEX [IX_SexOffenderRegistry_LocationCd_OffenderCd] ON [SexOffenderRegistry] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ShikshyaTrainingAddresses]

DROP CONSTRAINT [PK_ShikshyaTrainingAddresses];

ALTER TABLE [ShikshyaTrainingAddresses] ADD CONSTRAINT [PK_ShikshyaTrainingAddresses] PRIMARY KEY CLUSTERED (TrainingAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ShikshyaTrainingAddresses_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ShikshyaTrainingAddresses_LocationCd] ON [ShikshyaTrainingAddresses];
END

CREATE NONCLUSTERED INDEX [IX_ShikshyaTrainingAddresses_LocationCd_OffenderCd] ON [ShikshyaTrainingAddresses] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ShrabyaTrainingAddresses]

DROP CONSTRAINT [PK_ShrabyaTrainingAddresses];

ALTER TABLE [ShrabyaTrainingAddresses] ADD CONSTRAINT [PK_ShrabyaTrainingAddresses] PRIMARY KEY CLUSTERED (TrainingAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ShrabyaTrainingAddresses_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ShrabyaTrainingAddresses_LocationCd] ON [ShrabyaTrainingAddresses];
END

CREATE NONCLUSTERED INDEX [IX_ShrabyaTrainingAddresses_LocationCd_OffenderCd] ON [ShrabyaTrainingAddresses] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [SocialSecurityNumbers]

DROP CONSTRAINT [PK_SocialSecurityNumbers];

ALTER TABLE [SocialSecurityNumbers] ADD CONSTRAINT [PK_SocialSecurityNumbers] PRIMARY KEY CLUSTERED (SsnId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_SocialSecurityNumbers_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_SocialSecurityNumbers_LocationCd] ON [SocialSecurityNumbers];
END

CREATE NONCLUSTERED INDEX [IX_SocialSecurityNumbers_LocationCd_OffenderCd] ON [SocialSecurityNumbers] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [SpecialEducation]

DROP CONSTRAINT [PK_SpecialEducation];

ALTER TABLE [SpecialEducation] ADD CONSTRAINT [PK_SpecialEducation] PRIMARY KEY CLUSTERED (SpecialEducationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_SpecialEducation_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_SpecialEducation_LocationCd] ON [SpecialEducation];
END

CREATE NONCLUSTERED INDEX [IX_SpecialEducation_LocationCd_OffenderCd] ON [SpecialEducation] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [StevenTrainingAddresses]

DROP CONSTRAINT [PK_StevenTrainingAddresses];

ALTER TABLE [StevenTrainingAddresses] ADD CONSTRAINT [PK_StevenTrainingAddresses] PRIMARY KEY CLUSTERED (TrainingAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_StevenTrainingAddresses_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_StevenTrainingAddresses_LocationCd] ON [StevenTrainingAddresses];
END

CREATE NONCLUSTERED INDEX [IX_StevenTrainingAddresses_LocationCd_OffenderCd] ON [StevenTrainingAddresses] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [SupervisionStatusInformation]

DROP CONSTRAINT [PK_SupervisionStatusInformation];

ALTER TABLE [SupervisionStatusInformation] ADD CONSTRAINT [PK_SupervisionStatusInformation] PRIMARY KEY CLUSTERED (SupervisionStatusInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_SupervisionStatusInformation_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_SupervisionStatusInformation_LocationCd] ON [SupervisionStatusInformation];
END

CREATE NONCLUSTERED INDEX [IX_SupervisionStatusInformation_LocationCd_OffenderCd] ON [SupervisionStatusInformation] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ThreatGroupInvolvement]

DROP CONSTRAINT [PK_ThreatGroupInvolvement];

ALTER TABLE [ThreatGroupInvolvement] ADD CONSTRAINT [PK_ThreatGroupInvolvement] PRIMARY KEY CLUSTERED (ThreatGroupInvolvementId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ThreatGroupInvolvement_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ThreatGroupInvolvement_LocationCd] ON [ThreatGroupInvolvement];
END

CREATE NONCLUSTERED INDEX [IX_ThreatGroupInvolvement_LocationCd_OffenderCd] ON [ThreatGroupInvolvement] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [TimeCompGroups]

DROP CONSTRAINT [PK_TimeCompGroups];

ALTER TABLE [TimeCompGroups] ADD CONSTRAINT [PK_TimeCompGroups] PRIMARY KEY CLUSTERED (TimeCompGroupId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_TimeCompGroups_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_TimeCompGroups_LocationCd] ON [TimeCompGroups];
END

CREATE NONCLUSTERED INDEX [IX_TimeCompGroups_LocationCd_OffenderCd] ON [TimeCompGroups] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [TransferInstancesToField]

DROP CONSTRAINT [PK_TransferInstancesToField];

ALTER TABLE [TransferInstancesToField] ADD CONSTRAINT [PK_TransferInstancesToField] PRIMARY KEY CLUSTERED (TransferInstanceToFieldId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_TransferInstancesToField_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_TransferInstancesToField_LocationCd] ON [TransferInstancesToField];
END

CREATE NONCLUSTERED INDEX [IX_TransferInstancesToField_LocationCd_OffenderCd] ON [TransferInstancesToField] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [TransferInstancesToInstitution]

DROP CONSTRAINT [PK_TransferInstancesToInstitution];

ALTER TABLE [TransferInstancesToInstitution] ADD CONSTRAINT [PK_TransferInstancesToInstitution] PRIMARY KEY CLUSTERED (TransferInstanceToInstitutionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_TransferInstancesToInstitution_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_TransferInstancesToInstitution_LocationCd] ON [TransferInstancesToInstitution];
END

CREATE NONCLUSTERED INDEX [IX_TransferInstancesToInstitution_LocationCd_OffenderCd] ON [TransferInstancesToInstitution] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [TransferInstancesToResidential]

DROP CONSTRAINT [PK_TransferInstancesToResidential];

ALTER TABLE [TransferInstancesToResidential] ADD CONSTRAINT [PK_TransferInstancesToResidential] PRIMARY KEY CLUSTERED (TransferInstanceToResidentialId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_TransferInstancesToResidential_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_TransferInstancesToResidential_LocationCd] ON [TransferInstancesToResidential];
END

CREATE NONCLUSTERED INDEX [IX_TransferInstancesToResidential_LocationCd_OffenderCd] ON [TransferInstancesToResidential] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [TransferReportExtras]

DROP CONSTRAINT [PK_TransferReportExtras];

ALTER TABLE [TransferReportExtras] ADD CONSTRAINT [PK_TransferReportExtras] PRIMARY KEY CLUSTERED (TransferReportExtraId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_TransferReportExtras_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_TransferReportExtras_LocationCd] ON [TransferReportExtras];
END

CREATE NONCLUSTERED INDEX [IX_TransferReportExtras_LocationCd_OffenderCd] ON [TransferReportExtras] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [TransferReports]

DROP CONSTRAINT [PK_TransferReports];

ALTER TABLE [TransferReports] ADD CONSTRAINT [PK_TransferReports] PRIMARY KEY CLUSTERED (TransferReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_TransferReports_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_TransferReports_LocationCd] ON [TransferReports];
END

CREATE NONCLUSTERED INDEX [IX_TransferReports_LocationCd_OffenderCd] ON [TransferReports] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [TravelPermits]

DROP CONSTRAINT [PK_TravelPermits];

ALTER TABLE [TravelPermits] ADD CONSTRAINT [PK_TravelPermits] PRIMARY KEY CLUSTERED (TravelPermitId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_TravelPermits_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_TravelPermits_LocationCd] ON [TravelPermits];
END

CREATE NONCLUSTERED INDEX [IX_TravelPermits_LocationCd_OffenderCd] ON [TravelPermits] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [VehicleInformation]

DROP CONSTRAINT [PK_VehicleInformation];

ALTER TABLE [VehicleInformation] ADD CONSTRAINT [PK_VehicleInformation] PRIMARY KEY CLUSTERED (VehicleInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_VehicleInformation_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_VehicleInformation_LocationCd] ON [VehicleInformation];
END

CREATE NONCLUSTERED INDEX [IX_VehicleInformation_LocationCd_OffenderCd] ON [VehicleInformation] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [VictimConfidentialComments]

DROP CONSTRAINT [PK_VictimConfidentialComments];

ALTER TABLE [VictimConfidentialComments] ADD CONSTRAINT [PK_VictimConfidentialComments] PRIMARY KEY CLUSTERED (VictimConfidentialCommentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_VictimConfidentialComments_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_VictimConfidentialComments_LocationCd] ON [VictimConfidentialComments];
END

CREATE NONCLUSTERED INDEX [IX_VictimConfidentialComments_LocationCd_OffenderCd] ON [VictimConfidentialComments] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [VictimDetailsMigration]

DROP CONSTRAINT [PK_VictimDetailsMergeMigration];

ALTER TABLE [VictimDetailsMigration] ADD CONSTRAINT [PK_VictimDetailsMergeMigration] PRIMARY KEY CLUSTERED (VictimDetailId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_VictimDetailsMigration_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_VictimDetailsMigration_LocationCd] ON [VictimDetailsMigration];
END

CREATE NONCLUSTERED INDEX [IX_VictimDetailsMigration_LocationCd_OffenderCd] ON [VictimDetailsMigration] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [VictimNotificationReportExtras]

DROP CONSTRAINT [PK_VictimNotificationReportExtras];

ALTER TABLE [VictimNotificationReportExtras] ADD CONSTRAINT [PK_VictimNotificationReportExtras] PRIMARY KEY CLUSTERED (VictimNotificationReportExtrasId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_VictimNotificationReportExtras_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_VictimNotificationReportExtras_LocationCd] ON [VictimNotificationReportExtras];
END

CREATE NONCLUSTERED INDEX [IX_VictimNotificationReportExtras_LocationCd_OffenderCd] ON [VictimNotificationReportExtras] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [Victims]

DROP CONSTRAINT [PK_Victims];

ALTER TABLE [Victims] ADD CONSTRAINT [PK_Victims] PRIMARY KEY CLUSTERED (VictimId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_Victims_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_Victims_LocationCd] ON [Victims];
END

CREATE NONCLUSTERED INDEX [IX_Victims_LocationCd_OffenderCd] ON [Victims] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ViolatorProgramContinuingCarePlans]

DROP CONSTRAINT [PK_ViolatorProgramContinuingCarePlans];

ALTER TABLE [ViolatorProgramContinuingCarePlans] ADD CONSTRAINT [PK_ViolatorProgramContinuingCarePlans] PRIMARY KEY CLUSTERED (ViolatorProgramContinuingCarePlanId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ViolatorProgramContinuingCarePlans_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ViolatorProgramContinuingCarePlans_LocationCd] ON [ViolatorProgramContinuingCarePlans];
END

CREATE NONCLUSTERED INDEX [IX_ViolatorProgramContinuingCarePlans_LocationCd_OffenderCd] ON [ViolatorProgramContinuingCarePlans] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ViolatorProgramDischargeSummary]

DROP CONSTRAINT [PK_ViolatorProgramDischargeSummary];

ALTER TABLE [ViolatorProgramDischargeSummary] ADD CONSTRAINT [PK_ViolatorProgramDischargeSummary] PRIMARY KEY CLUSTERED (ViolatorProgramDischargeSummaryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ViolatorProgramDischargeSummary_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ViolatorProgramDischargeSummary_LocationCd] ON [ViolatorProgramDischargeSummary];
END

CREATE NONCLUSTERED INDEX [IX_ViolatorProgramDischargeSummary_LocationCd_OffenderCd] ON [ViolatorProgramDischargeSummary] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ViolatorProgramProgressReport]

DROP CONSTRAINT [PK_ViolatorProgramProgressReport];

ALTER TABLE [ViolatorProgramProgressReport] ADD CONSTRAINT [PK_ViolatorProgramProgressReport] PRIMARY KEY CLUSTERED (ViolatorProgramProgressReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ViolatorProgramProgressReport_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ViolatorProgramProgressReport_LocationCd] ON [ViolatorProgramProgressReport];
END

CREATE NONCLUSTERED INDEX [IX_ViolatorProgramProgressReport_LocationCd_OffenderCd] ON [ViolatorProgramProgressReport] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [ViolatorProgramReferralForms]

DROP CONSTRAINT [PK_ViolatorProgramReferralForms];

ALTER TABLE [ViolatorProgramReferralForms] ADD CONSTRAINT [PK_ViolatorProgramReferralForms] PRIMARY KEY CLUSTERED (ViolatorProgramReferralFormId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ViolatorProgramReferralForms_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_ViolatorProgramReferralForms_LocationCd] ON [ViolatorProgramReferralForms];
END

CREATE NONCLUSTERED INDEX [IX_ViolatorProgramReferralForms_LocationCd_OffenderCd] ON [ViolatorProgramReferralForms] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [VisitingListsInstitution]

DROP CONSTRAINT [PK_VisitingListsInstitution];

ALTER TABLE [VisitingListsInstitution] ADD CONSTRAINT [PK_VisitingListsInstitution] PRIMARY KEY CLUSTERED (VisitingListInstitutionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_VisitingListsInstitution_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_VisitingListsInstitution_LocationCd] ON [VisitingListsInstitution];
END

CREATE NONCLUSTERED INDEX [IX_VisitingListsInstitution_LocationCd_OffenderCd] ON [VisitingListsInstitution] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [VisitingOffenderSuspensions]

DROP CONSTRAINT [PK_VisitingOffenderSuspensions];

ALTER TABLE [VisitingOffenderSuspensions] ADD CONSTRAINT [PK_VisitingOffenderSuspensions] PRIMARY KEY CLUSTERED (VisitingOffenderSuspensionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_VisitingOffenderSuspensions_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_VisitingOffenderSuspensions_LocationCd] ON [VisitingOffenderSuspensions];
END

CREATE NONCLUSTERED INDEX [IX_VisitingOffenderSuspensions_LocationCd_OffenderCd] ON [VisitingOffenderSuspensions] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [VisitorInsOutsInstitution]

DROP CONSTRAINT [PK_VisitorInsOutsInstitution];

ALTER TABLE [VisitorInsOutsInstitution] ADD CONSTRAINT [PK_VisitorInsOutsInstitution] PRIMARY KEY CLUSTERED (VisitorInsOutsInstitutionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_VisitorInsOutsInstitution_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_VisitorInsOutsInstitution_LocationCd] ON [VisitorInsOutsInstitution];
END

CREATE NONCLUSTERED INDEX [IX_VisitorInsOutsInstitution_LocationCd_OffenderCd] ON [VisitorInsOutsInstitution] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [WatchInformation]

DROP CONSTRAINT [PK_WatchInformation];

ALTER TABLE [WatchInformation] ADD CONSTRAINT [PK_WatchInformation] PRIMARY KEY CLUSTERED (WatchInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_WatchInformation_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_WatchInformation_LocationCd] ON [WatchInformation];
END

CREATE NONCLUSTERED INDEX [IX_WatchInformation_LocationCd_OffenderCd] ON [WatchInformation] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [WorkAssignmentsFromAcds]

DROP CONSTRAINT [PK_WorkAssignmentsFromACDS];

ALTER TABLE [WorkAssignmentsFromAcds] ADD CONSTRAINT [PK_WorkAssignmentsFromACDS] PRIMARY KEY CLUSTERED (WorkAssignmentFromAcdsId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_WorkAssignmentsFromAcds_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_WorkAssignmentsFromAcds_LocationCd] ON [WorkAssignmentsFromAcds];
END

CREATE NONCLUSTERED INDEX [IX_WorkAssignmentsFromAcds_LocationCd_OffenderCd] ON [WorkAssignmentsFromAcds] (LocationCd ASC, OffenderCd ASC)

ALTER TABLE [WrOwiTransferClassificationNotices]

DROP CONSTRAINT [PK_WROWITransferClassificationNotices];

ALTER TABLE [WrOwiTransferClassificationNotices] ADD CONSTRAINT [PK_WROWITransferClassificationNotices] PRIMARY KEY CLUSTERED (WrOwiTransferClassificationNoticeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_WrOwiTransferClassificationNotices_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_WrOwiTransferClassificationNotices_LocationCd] ON [WrOwiTransferClassificationNotices];
END

CREATE NONCLUSTERED INDEX [IX_WrOwiTransferClassificationNotices_LocationCd_OffenderCd] ON [WrOwiTransferClassificationNotices] (LocationCd ASC, OffenderCd ASC)


ALTER TABLE [aFemaleCustodyClassification]

DROP CONSTRAINT [PK_aFemaleCustodyClassification];

ALTER TABLE [aFemaleCustodyClassification] ADD CONSTRAINT [PK_aFemaleCustodyClassification] PRIMARY KEY CLUSTERED (FemaleCustodyClassificationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aFemaleCustodyClassification_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aFemaleCustodyClassification_LocationCd] ON [aFemaleCustodyClassification];
END

CREATE NONCLUSTERED INDEX [IX_aFemaleCustodyClassification_LocationCd_OffenderCd] ON [aFemaleCustodyClassification] (LocationCd  ASC, OffenderCd ASC)

ALTER TABLE [aFemaleCustodyReclassification]

DROP CONSTRAINT [PK_aFemaleCustodyReclassification];

ALTER TABLE [aFemaleCustodyReclassification] ADD CONSTRAINT [PK_aFemaleCustodyReclassification] PRIMARY KEY CLUSTERED (FemaleCustodyReclassificationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aFemaleCustodyReclassification_LocationCd_OffenderCd'
		)
BEGIN
	DROP INDEX [IX_aFemaleCustodyReclassification_LocationCd] ON [aFemaleCustodyReclassification];
END

CREATE NONCLUSTERED INDEX [IX_aFemaleCustodyReclassification_LocationCd_OffenderCd] ON [aFemaleCustodyReclassification] (LocationCd  ASC, OffenderCd ASC)