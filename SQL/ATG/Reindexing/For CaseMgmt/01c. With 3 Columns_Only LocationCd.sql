ALTER TABLE [AddressPhones]

DROP CONSTRAINT [PK_AddressPhones];

ALTER TABLE [AddressPhones] ADD CONSTRAINT [PK_AddressPhones] PRIMARY KEY CLUSTERED (AddressPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_AddressPhones_LocationCd'
		)
BEGIN
	DROP INDEX [IX_AddressPhones_LocationCd] ON [AddressPhones];
END

CREATE NONCLUSTERED INDEX [IX_AddressPhones_LocationCd] ON [AddressPhones] (LocationCd ASC, AddressInformationId ASC)

ALTER TABLE [AdministrativeSegregationReviews]

DROP CONSTRAINT [PK_AdministrativeSegregationReviews];

ALTER TABLE [AdministrativeSegregationReviews] ADD CONSTRAINT [PK_AdministrativeSegregationReviews] PRIMARY KEY CLUSTERED (AdministrativeSegregationReviewId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_AdministrativeSegregationReviews_LocationCd'
		)
BEGIN
	DROP INDEX [IX_AdministrativeSegregationReviews_LocationCd] ON [AdministrativeSegregationReviews];
END

CREATE NONCLUSTERED INDEX [IX_AdministrativeSegregationReviews_LocationCd] ON [AdministrativeSegregationReviews] (LocationCd ASC, AdministrativeSegregationNoticeId ASC)

ALTER TABLE [aIaHeadInjuryLoseConsciousnessOrInComa]

DROP CONSTRAINT [PK_aIaHeadInjuryLoseConsciousnessOrInComa];

ALTER TABLE [aIaHeadInjuryLoseConsciousnessOrInComa] ADD CONSTRAINT [PK_aIaHeadInjuryLoseConsciousnessOrInComa] PRIMARY KEY CLUSTERED (IaHeadInjuryLoseConsciousnessOrInComaId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aIaHeadInjuryLoseConsciousnessOrInComa_LocationCd'
		)
BEGIN
	DROP INDEX [IX_aIaHeadInjuryLoseConsciousnessOrInComa_LocationCd] ON [aIaHeadInjuryLoseConsciousnessOrInComa];
END

CREATE NONCLUSTERED INDEX [IX_aIaHeadInjuryLoseConsciousnessOrInComa_LocationCd] ON [aIaHeadInjuryLoseConsciousnessOrInComa] (LocationCd ASC, IaHeadInjuryScreeningInstrumentId ASC)

ALTER TABLE [aIaRiskAssessmentCharges]

DROP CONSTRAINT [PK_aIARiskAssessmentCharges];

ALTER TABLE [aIaRiskAssessmentCharges] ADD CONSTRAINT [PK_aIARiskAssessmentCharges] PRIMARY KEY CLUSTERED (IaRiskAssessmentChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aIaRiskAssessmentCharges_LocationCd'
		)
BEGIN
	DROP INDEX [IX_aIaRiskAssessmentCharges_LocationCd] ON [aIaRiskAssessmentCharges];
END

CREATE NONCLUSTERED INDEX [IX_aIaRiskAssessmentCharges_LocationCd] ON [aIaRiskAssessmentCharges] (LocationCd ASC, IaRiskAssessmentId ASC)

ALTER TABLE [aIaRiskReassessmentCharges]

DROP CONSTRAINT [PK_aIARiskReassessmentCharges];

ALTER TABLE [aIaRiskReassessmentCharges] ADD CONSTRAINT [PK_aIARiskReassessmentCharges] PRIMARY KEY CLUSTERED (IaRiskReassessmentChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aIaRiskReassessmentCharges_LocationCd'
		)
BEGIN
	DROP INDEX [IX_aIaRiskReassessmentCharges_LocationCd] ON [aIaRiskReassessmentCharges];
END

CREATE NONCLUSTERED INDEX [IX_aIaRiskReassessmentCharges_LocationCd] ON [aIaRiskReassessmentCharges] (LocationCd ASC, IaRiskReassessmentId ASC)

ALTER TABLE [aLsi_rCharges]

DROP CONSTRAINT [PK_aLSI_RCharges];

ALTER TABLE [aLsi_rCharges] ADD CONSTRAINT [PK_aLSI_RCharges] PRIMARY KEY CLUSTERED (Lsi_rChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aLsi_rCharges_LocationCd'
		)
BEGIN
	DROP INDEX [IX_aLsi_rCharges_LocationCd] ON [aLsi_rCharges];
END

CREATE NONCLUSTERED INDEX [IX_aLsi_rCharges_LocationCd] ON [aLsi_rCharges] (LocationCd ASC, Lsi_rId ASC)

ALTER TABLE [aLsi_rTrailerInstitution]

DROP CONSTRAINT [PK_aLsi_rTrailerInstitutional];

ALTER TABLE [aLsi_rTrailerInstitution] ADD CONSTRAINT [PK_aLsi_rTrailerInstitutional] PRIMARY KEY CLUSTERED (Lsi_rTrailerInstitutionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aLsi_rTrailerInstitution_LocationCd'
		)
BEGIN
	DROP INDEX [IX_aLsi_rTrailerInstitution_LocationCd] ON [aLsi_rTrailerInstitution];
END

CREATE NONCLUSTERED INDEX [IX_aLsi_rTrailerInstitution_LocationCd] ON [aLsi_rTrailerInstitution] (LocationCd ASC, Lsi_rId ASC)

ALTER TABLE [aLsi_rTrailerPreRelease]

DROP CONSTRAINT [PK_aLsi_rTrailerPreRelease];

ALTER TABLE [aLsi_rTrailerPreRelease] ADD CONSTRAINT [PK_aLsi_rTrailerPreRelease] PRIMARY KEY CLUSTERED (Lsi_rTrailerPreReleaseId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aLsi_rTrailerPreRelease_LocationCd'
		)
BEGIN
	DROP INDEX [IX_aLsi_rTrailerPreRelease_LocationCd] ON [aLsi_rTrailerPreRelease];
END

CREATE NONCLUSTERED INDEX [IX_aLsi_rTrailerPreRelease_LocationCd] ON [aLsi_rTrailerPreRelease] (LocationCd ASC, Lsi_rId ASC)

ALTER TABLE [aLsi_rTrailerProbationParole]

DROP CONSTRAINT [PK_aLsi_rTrailerProbationParole];

ALTER TABLE [aLsi_rTrailerProbationParole] ADD CONSTRAINT [PK_aLsi_rTrailerProbationParole] PRIMARY KEY CLUSTERED (Lsi_rTrailerProbationParoleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aLsi_rTrailerProbationParole_LocationCd'
		)
BEGIN
	DROP INDEX [IX_aLsi_rTrailerProbationParole_LocationCd] ON [aLsi_rTrailerProbationParole];
END

CREATE NONCLUSTERED INDEX [IX_aLsi_rTrailerProbationParole_LocationCd] ON [aLsi_rTrailerProbationParole] (LocationCd ASC, Lsi_rId ASC)

ALTER TABLE [aPsaBondReviewHearings]

DROP CONSTRAINT [PK_aPsaBondReviewHearings];

ALTER TABLE [aPsaBondReviewHearings] ADD CONSTRAINT [PK_aPsaBondReviewHearings] PRIMARY KEY CLUSTERED (PsaBondReviewHearingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aPsaBondReviewHearings_LocationCd'
		)
BEGIN
	DROP INDEX [IX_aPsaBondReviewHearings_LocationCd] ON [aPsaBondReviewHearings];
END

CREATE NONCLUSTERED INDEX [IX_aPsaBondReviewHearings_LocationCd] ON [aPsaBondReviewHearings] (LocationCd ASC, PublicSafetyAssessmentId ASC)

ALTER TABLE [aPsaBrhPretrialDecisions]

DROP CONSTRAINT [PK_aPsaBrhPretrialDecisions];

ALTER TABLE [aPsaBrhPretrialDecisions] ADD CONSTRAINT [PK_aPsaBrhPretrialDecisions] PRIMARY KEY CLUSTERED (PsaBrhPretrialDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aPsaBrhPretrialDecisions_LocationCd'
		)
BEGIN
	DROP INDEX [IX_aPsaBrhPretrialDecisions_LocationCd] ON [aPsaBrhPretrialDecisions];
END

CREATE NONCLUSTERED INDEX [IX_aPsaBrhPretrialDecisions_LocationCd] ON [aPsaBrhPretrialDecisions] (LocationCd ASC, PsaBondReviewHearingId ASC)

ALTER TABLE [aPsaCharges]

DROP CONSTRAINT [PK_aPsaCharges];

ALTER TABLE [aPsaCharges] ADD CONSTRAINT [PK_aPsaCharges] PRIMARY KEY CLUSTERED (PsaChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aPsaCharges_LocationCd'
		)
BEGIN
	DROP INDEX [IX_aPsaCharges_LocationCd] ON [aPsaCharges];
END

CREATE NONCLUSTERED INDEX [IX_aPsaCharges_LocationCd] ON [aPsaCharges] (LocationCd ASC, PublicSafetyAssessmentId ASC)

ALTER TABLE [aPsaPdPretrialDecisions]

DROP CONSTRAINT [PK_aPsaPdPretrialDecisions];

ALTER TABLE [aPsaPdPretrialDecisions] ADD CONSTRAINT [PK_aPsaPdPretrialDecisions] PRIMARY KEY CLUSTERED (PsaPdPretrialDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aPsaPdPretrialDecisions_LocationCd'
		)
BEGIN
	DROP INDEX [IX_aPsaPdPretrialDecisions_LocationCd] ON [aPsaPdPretrialDecisions];
END

CREATE NONCLUSTERED INDEX [IX_aPsaPdPretrialDecisions_LocationCd] ON [aPsaPdPretrialDecisions] (LocationCd ASC, PsaPretrialDecisionId ASC)

ALTER TABLE [aPsaPretrialDecisions]

DROP CONSTRAINT [PK_aPsaPretrialDecisions];

ALTER TABLE [aPsaPretrialDecisions] ADD CONSTRAINT [PK_aPsaPretrialDecisions] PRIMARY KEY CLUSTERED (PsaPretrialDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aPsaPretrialDecisions_LocationCd'
		)
BEGIN
	DROP INDEX [IX_aPsaPretrialDecisions_LocationCd] ON [aPsaPretrialDecisions];
END

CREATE NONCLUSTERED INDEX [IX_aPsaPretrialDecisions_LocationCd] ON [aPsaPretrialDecisions] (LocationCd ASC, PublicSafetyAssessmentId ASC)

ALTER TABLE [aPsychDiagnosticAxis1]

DROP CONSTRAINT [PK_aPsychDiagnosticAxis1];

ALTER TABLE [aPsychDiagnosticAxis1] ADD CONSTRAINT [PK_aPsychDiagnosticAxis1] PRIMARY KEY CLUSTERED (PsychDiagnosticAxis1Id ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aPsychDiagnosticAxis1_LocationCd'
		)
BEGIN
	DROP INDEX [IX_aPsychDiagnosticAxis1_LocationCd] ON [aPsychDiagnosticAxis1];
END

CREATE NONCLUSTERED INDEX [IX_aPsychDiagnosticAxis1_LocationCd] ON [aPsychDiagnosticAxis1] (LocationCd ASC, PsychDiagnosticImpressionId ASC)

ALTER TABLE [aPsychDiagnosticAxis2]

DROP CONSTRAINT [PK_aPsychDiagnosticAxis2];

ALTER TABLE [aPsychDiagnosticAxis2] ADD CONSTRAINT [PK_aPsychDiagnosticAxis2] PRIMARY KEY CLUSTERED (PsychDiagnosticAxis2Id ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aPsychDiagnosticAxis2_LocationCd'
		)
BEGIN
	DROP INDEX [IX_aPsychDiagnosticAxis2_LocationCd] ON [aPsychDiagnosticAxis2];
END

CREATE NONCLUSTERED INDEX [IX_aPsychDiagnosticAxis2_LocationCd] ON [aPsychDiagnosticAxis2] (LocationCd ASC, PsychDiagnosticImpressionId ASC)

ALTER TABLE [aSassiResultingRecommendations]

DROP CONSTRAINT [PK_aSASSIResultingRecommendations];

ALTER TABLE [aSassiResultingRecommendations] ADD CONSTRAINT [PK_aSASSIResultingRecommendations] PRIMARY KEY CLUSTERED (SassiResultingRecommendationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_aSassiResultingRecommendations_LocationCd'
		)
BEGIN
	DROP INDEX [IX_aSassiResultingRecommendations_LocationCd] ON [aSassiResultingRecommendations];
END

CREATE NONCLUSTERED INDEX [IX_aSassiResultingRecommendations_LocationCd] ON [aSassiResultingRecommendations] (LocationCd ASC, SassiId ASC)

ALTER TABLE [BodyMarkingThreatGroupValidation]

DROP CONSTRAINT [PK_BodyMarkingThreatGroupValidation];

ALTER TABLE [BodyMarkingThreatGroupValidation] ADD CONSTRAINT [PK_BodyMarkingThreatGroupValidation] PRIMARY KEY CLUSTERED (BodyMarkingTgValidationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BodyMarkingThreatGroupValidation_LocationCd'
		)
BEGIN
	DROP INDEX [IX_BodyMarkingThreatGroupValidation_LocationCd] ON [BodyMarkingThreatGroupValidation];
END

CREATE NONCLUSTERED INDEX [IX_BodyMarkingThreatGroupValidation_LocationCd] ON [BodyMarkingThreatGroupValidation] (LocationCd ASC, BodyMarkingId ASC)

ALTER TABLE [BondReviewHearingCharges]

DROP CONSTRAINT [PK_BondReviewHearingCharges];

ALTER TABLE [BondReviewHearingCharges] ADD CONSTRAINT [PK_BondReviewHearingCharges] PRIMARY KEY CLUSTERED (BondReviewHearingChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BondReviewHearingCharges_LocationCd'
		)
BEGIN
	DROP INDEX [IX_BondReviewHearingCharges_LocationCd] ON [BondReviewHearingCharges];
END

CREATE NONCLUSTERED INDEX [IX_BondReviewHearingCharges_LocationCd] ON [BondReviewHearingCharges] (LocationCd ASC, BondReviewHearingId ASC)

ALTER TABLE [BondReviewHearings]

DROP CONSTRAINT [PK_BondReviewHearings];

ALTER TABLE [BondReviewHearings] ADD CONSTRAINT [PK_BondReviewHearings] PRIMARY KEY CLUSTERED (BondReviewHearingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BondReviewHearings_LocationCd'
		)
BEGIN
	DROP INDEX [IX_BondReviewHearings_LocationCd] ON [BondReviewHearings];
END

CREATE NONCLUSTERED INDEX [IX_BondReviewHearings_LocationCd] ON [BondReviewHearings] (LocationCd ASC, PretrialInterviewId ASC)

ALTER TABLE [BopBoardMemberConditions]

DROP CONSTRAINT [PK_BopBoardMemberConditions];

ALTER TABLE [BopBoardMemberConditions] ADD CONSTRAINT [PK_BopBoardMemberConditions] PRIMARY KEY CLUSTERED (BopBoardMemberConditionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BopBoardMemberConditions_LocationCd'
		)
BEGIN
	DROP INDEX [IX_BopBoardMemberConditions_LocationCd] ON [BopBoardMemberConditions];
END

CREATE NONCLUSTERED INDEX [IX_BopBoardMemberConditions_LocationCd] ON [BopBoardMemberConditions] (LocationCd ASC, BopBoardMemberDecisionId ASC)

ALTER TABLE [BopBoardMemberDecisions]

DROP CONSTRAINT [PK_BopBoardMemberDecisions];

ALTER TABLE [BopBoardMemberDecisions] ADD CONSTRAINT [PK_BopBoardMemberDecisions] PRIMARY KEY CLUSTERED (BopBoardMemberDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BopBoardMemberDecisions_LocationCd'
		)
BEGIN
	DROP INDEX [IX_BopBoardMemberDecisions_LocationCd] ON [BopBoardMemberDecisions];
END

CREATE NONCLUSTERED INDEX [IX_BopBoardMemberDecisions_LocationCd] ON [BopBoardMemberDecisions] (LocationCd ASC, BopDecisionId ASC)

ALTER TABLE [BopBoardMemberReasons_OLD]

DROP CONSTRAINT [PK_BopBoardMemberReasons];

ALTER TABLE [BopBoardMemberReasons_OLD] ADD CONSTRAINT [PK_BopBoardMemberReasons] PRIMARY KEY CLUSTERED (BopBoardMemberReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BopBoardMemberReasons_OLD_LocationCd'
		)
BEGIN
	DROP INDEX [IX_BopBoardMemberReasons_OLD_LocationCd] ON [BopBoardMemberReasons_OLD];
END

CREATE NONCLUSTERED INDEX [IX_BopBoardMemberReasons_OLD_LocationCd] ON [BopBoardMemberReasons_OLD] (LocationCd ASC, BopBoardMemberDecisionId ASC)

ALTER TABLE [BopCommBoardMemberRecs]

DROP CONSTRAINT [PK_BopBoardMemberCommRecs];

ALTER TABLE [BopCommBoardMemberRecs] ADD CONSTRAINT [PK_BopBoardMemberCommRecs] PRIMARY KEY CLUSTERED (BopCommBoardMemberRecId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BopCommBoardMemberRecs_LocationCd'
		)
BEGIN
	DROP INDEX [IX_BopCommBoardMemberRecs_LocationCd] ON [BopCommBoardMemberRecs];
END

CREATE NONCLUSTERED INDEX [IX_BopCommBoardMemberRecs_LocationCd] ON [BopCommBoardMemberRecs] (LocationCd ASC, BopCommutationId ASC)

ALTER TABLE [BopCommGovernorDecisions]

DROP CONSTRAINT [PK_BopCommGovernorDecisions];

ALTER TABLE [BopCommGovernorDecisions] ADD CONSTRAINT [PK_BopCommGovernorDecisions] PRIMARY KEY CLUSTERED (BopCommGovernorDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BopCommGovernorDecisions_LocationCd'
		)
BEGIN
	DROP INDEX [IX_BopCommGovernorDecisions_LocationCd] ON [BopCommGovernorDecisions];
END

CREATE NONCLUSTERED INDEX [IX_BopCommGovernorDecisions_LocationCd] ON [BopCommGovernorDecisions] (LocationCd ASC, BopCommutationId ASC)

ALTER TABLE [BopDecisionCaseManagerConditions]

DROP CONSTRAINT [PK_BopDecisionCaseManagerConditions];

ALTER TABLE [BopDecisionCaseManagerConditions] ADD CONSTRAINT [PK_BopDecisionCaseManagerConditions] PRIMARY KEY CLUSTERED (BopDecisionCaseManagerConditionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BopDecisionCaseManagerConditions_LocationCd'
		)
BEGIN
	DROP INDEX [IX_BopDecisionCaseManagerConditions_LocationCd] ON [BopDecisionCaseManagerConditions];
END

CREATE NONCLUSTERED INDEX [IX_BopDecisionCaseManagerConditions_LocationCd] ON [BopDecisionCaseManagerConditions] (LocationCd ASC, BopDecisionCaseManagerDecisionId ASC)

ALTER TABLE [BopDecisionCaseManagerDecisions]

DROP CONSTRAINT [PK_BopDecisionCaseManagerDecisions];

ALTER TABLE [BopDecisionCaseManagerDecisions] ADD CONSTRAINT [PK_BopDecisionCaseManagerDecisions] PRIMARY KEY CLUSTERED (BopDecisionCaseManagerDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BopDecisionCaseManagerDecisions_LocationCd'
		)
BEGIN
	DROP INDEX [IX_BopDecisionCaseManagerDecisions_LocationCd] ON [BopDecisionCaseManagerDecisions];
END

CREATE NONCLUSTERED INDEX [IX_BopDecisionCaseManagerDecisions_LocationCd] ON [BopDecisionCaseManagerDecisions] (LocationCd ASC, BopDecisionId ASC)

ALTER TABLE [BopDecisionConditions]

DROP CONSTRAINT [PK_BopDecisionConditions];

ALTER TABLE [BopDecisionConditions] ADD CONSTRAINT [PK_BopDecisionConditions] PRIMARY KEY CLUSTERED (BopDecisionConditionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BopDecisionConditions_LocationCd'
		)
BEGIN
	DROP INDEX [IX_BopDecisionConditions_LocationCd] ON [BopDecisionConditions];
END

CREATE NONCLUSTERED INDEX [IX_BopDecisionConditions_LocationCd] ON [BopDecisionConditions] (LocationCd ASC, BopDecisionId ASC)

ALTER TABLE [BopDecisionReasons_OLD]

DROP CONSTRAINT [PK_BopDecisionReasons];

ALTER TABLE [BopDecisionReasons_OLD] ADD CONSTRAINT [PK_BopDecisionReasons] PRIMARY KEY CLUSTERED (BopDecisionReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BopDecisionReasons_OLD_LocationCd'
		)
BEGIN
	DROP INDEX [IX_BopDecisionReasons_OLD_LocationCd] ON [BopDecisionReasons_OLD];
END

CREATE NONCLUSTERED INDEX [IX_BopDecisionReasons_OLD_LocationCd] ON [BopDecisionReasons_OLD] (LocationCd ASC, BopDecisionId ASC)

ALTER TABLE [BopEmployabilityCertificates]

DROP CONSTRAINT [PK_BopEmployabilityCertificates];

ALTER TABLE [BopEmployabilityCertificates] ADD CONSTRAINT [PK_BopEmployabilityCertificates] PRIMARY KEY CLUSTERED (BopEmployabilityCertificateId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BopEmployabilityCertificates_LocationCd'
		)
BEGIN
	DROP INDEX [IX_BopEmployabilityCertificates_LocationCd] ON [BopEmployabilityCertificates];
END

CREATE NONCLUSTERED INDEX [IX_BopEmployabilityCertificates_LocationCd] ON [BopEmployabilityCertificates] (LocationCd ASC, BopDecisionId ASC)

ALTER TABLE [BopExecutiveClemencyAttachments]

DROP CONSTRAINT [PK_BopExecutiveClemencyAttachments];

ALTER TABLE [BopExecutiveClemencyAttachments] ADD CONSTRAINT [PK_BopExecutiveClemencyAttachments] PRIMARY KEY CLUSTERED (BopExecutiveClemencyAttachmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BopExecutiveClemencyAttachments_LocationCd'
		)
BEGIN
	DROP INDEX [IX_BopExecutiveClemencyAttachments_LocationCd] ON [BopExecutiveClemencyAttachments];
END

CREATE NONCLUSTERED INDEX [IX_BopExecutiveClemencyAttachments_LocationCd] ON [BopExecutiveClemencyAttachments] (LocationCd ASC, BopExecutiveClemencyId ASC)

ALTER TABLE [BopExecutiveClemencyBoardMemberRecs]

DROP CONSTRAINT [PK_ClemencyBoardMemberRecommendations];

ALTER TABLE [BopExecutiveClemencyBoardMemberRecs] ADD CONSTRAINT [PK_ClemencyBoardMemberRecommendations] PRIMARY KEY CLUSTERED (BopExecutiveClemencyBoardMemberRecId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BopExecutiveClemencyBoardMemberRecs_LocationCd'
		)
BEGIN
	DROP INDEX [IX_BopExecutiveClemencyBoardMemberRecs_LocationCd] ON [BopExecutiveClemencyBoardMemberRecs];
END

CREATE NONCLUSTERED INDEX [IX_BopExecutiveClemencyBoardMemberRecs_LocationCd] ON [BopExecutiveClemencyBoardMemberRecs] (LocationCd ASC, BopExecutiveClemencyId ASC)

ALTER TABLE [BopExecutiveClemencyGovernorDecisions]

DROP CONSTRAINT [PK_BopExecutiveClemencyGovernorDecisions];

ALTER TABLE [BopExecutiveClemencyGovernorDecisions] ADD CONSTRAINT [PK_BopExecutiveClemencyGovernorDecisions] PRIMARY KEY CLUSTERED (BopExecutiveClemencyGovernorDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BopExecutiveClemencyGovernorDecisions_LocationCd'
		)
BEGIN
	DROP INDEX [IX_BopExecutiveClemencyGovernorDecisions_LocationCd] ON [BopExecutiveClemencyGovernorDecisions];
END

CREATE NONCLUSTERED INDEX [IX_BopExecutiveClemencyGovernorDecisions_LocationCd] ON [BopExecutiveClemencyGovernorDecisions] (LocationCd ASC, BopExecutiveClemencyId ASC)

ALTER TABLE [BopExecutiveClemencyPhones]

DROP CONSTRAINT [PK_BopExecutiveClemencyPhones];

ALTER TABLE [BopExecutiveClemencyPhones] ADD CONSTRAINT [PK_BopExecutiveClemencyPhones] PRIMARY KEY CLUSTERED (BopExecutiveClemencyPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BopExecutiveClemencyPhones_LocationCd'
		)
BEGIN
	DROP INDEX [IX_BopExecutiveClemencyPhones_LocationCd] ON [BopExecutiveClemencyPhones];
END

CREATE NONCLUSTERED INDEX [IX_BopExecutiveClemencyPhones_LocationCd] ON [BopExecutiveClemencyPhones] (LocationCd ASC, BopExecutiveClemencyId ASC)

ALTER TABLE [BopRevocationHearingImposedConditions]

DROP CONSTRAINT [PK_BopRevocationHearingImposedConditions];

ALTER TABLE [BopRevocationHearingImposedConditions] ADD CONSTRAINT [PK_BopRevocationHearingImposedConditions] PRIMARY KEY CLUSTERED (BopRevocationHearingImposedConditionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BopRevocationHearingImposedConditions_LocationCd'
		)
BEGIN
	DROP INDEX [IX_BopRevocationHearingImposedConditions_LocationCd] ON [BopRevocationHearingImposedConditions];
END

CREATE NONCLUSTERED INDEX [IX_BopRevocationHearingImposedConditions_LocationCd] ON [BopRevocationHearingImposedConditions] (LocationCd ASC, BopRevocationHearingId ASC)

ALTER TABLE [BopRevocationHearingNotices]

DROP CONSTRAINT [PK_BopRevocationHearingNotices];

ALTER TABLE [BopRevocationHearingNotices] ADD CONSTRAINT [PK_BopRevocationHearingNotices] PRIMARY KEY CLUSTERED (BopRevocationHearingNoticeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BopRevocationHearingNotices_LocationCd'
		)
BEGIN
	DROP INDEX [IX_BopRevocationHearingNotices_LocationCd] ON [BopRevocationHearingNotices];
END

CREATE NONCLUSTERED INDEX [IX_BopRevocationHearingNotices_LocationCd] ON [BopRevocationHearingNotices] (LocationCd ASC, BopRevocationHearingId ASC)

ALTER TABLE [BopRevocationHearingViolatedConditions]

DROP CONSTRAINT [PK_BopRevocationHearingViolatedConditions];

ALTER TABLE [BopRevocationHearingViolatedConditions] ADD CONSTRAINT [PK_BopRevocationHearingViolatedConditions] PRIMARY KEY CLUSTERED (BopRevocationHearingViolatedConditionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BopRevocationHearingViolatedConditions_LocationCd'
		)
BEGIN
	DROP INDEX [IX_BopRevocationHearingViolatedConditions_LocationCd] ON [BopRevocationHearingViolatedConditions];
END

CREATE NONCLUSTERED INDEX [IX_BopRevocationHearingViolatedConditions_LocationCd] ON [BopRevocationHearingViolatedConditions] (LocationCd ASC, BopRevocationHearingId ASC)

ALTER TABLE [BopRevocationHearingWitnessSubpoenas]

DROP CONSTRAINT [PK_BopRevocationHearingWitnessSubpoenas_1];

ALTER TABLE [BopRevocationHearingWitnessSubpoenas] ADD CONSTRAINT [PK_BopRevocationHearingWitnessSubpoenas_1] PRIMARY KEY CLUSTERED (BopRevocationHearingWitnessSubpoenaId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_BopRevocationHearingWitnessSubpoenas_LocationCd'
		)
BEGIN
	DROP INDEX [IX_BopRevocationHearingWitnessSubpoenas_LocationCd] ON [BopRevocationHearingWitnessSubpoenas];
END

CREATE NONCLUSTERED INDEX [IX_BopRevocationHearingWitnessSubpoenas_LocationCd] ON [BopRevocationHearingWitnessSubpoenas] (LocationCd ASC, BopRevocationHearingId ASC)

ALTER TABLE [CjisSoeDciToIconMessages]

DROP CONSTRAINT [PK_CjisSoeDciToIconMessages];

ALTER TABLE [CjisSoeDciToIconMessages] ADD CONSTRAINT [PK_CjisSoeDciToIconMessages] PRIMARY KEY CLUSTERED (CjisSoeDciToIconMessageId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_CjisSoeDciToIconMessages_LocationCd'
		)
BEGIN
	DROP INDEX [IX_CjisSoeDciToIconMessages_LocationCd] ON [CjisSoeDciToIconMessages];
END

CREATE NONCLUSTERED INDEX [IX_CjisSoeDciToIconMessages_LocationCd] ON [CjisSoeDciToIconMessages] (LocationCd ASC, MessageId ASC)

ALTER TABLE [CjisSoeEmployers]

DROP CONSTRAINT [PK_CjisSoeEmployers];

ALTER TABLE [CjisSoeEmployers] ADD CONSTRAINT [PK_CjisSoeEmployers] PRIMARY KEY CLUSTERED (CjisSoeEmployerId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_CjisSoeEmployers_LocationCd'
		)
BEGIN
	DROP INDEX [IX_CjisSoeEmployers_LocationCd] ON [CjisSoeEmployers];
END

CREATE NONCLUSTERED INDEX [IX_CjisSoeEmployers_LocationCd] ON [CjisSoeEmployers] (LocationCd ASC, CjisSoeOffenderId ASC)

ALTER TABLE [CjisSoeIconToDciMessages]

DROP CONSTRAINT [PK_CjisSoeIconToDciMessages];

ALTER TABLE [CjisSoeIconToDciMessages] ADD CONSTRAINT [PK_CjisSoeIconToDciMessages] PRIMARY KEY CLUSTERED (CjisSoeIconToDciMessageId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_CjisSoeIconToDciMessages_LocationCd'
		)
BEGIN
	DROP INDEX [IX_CjisSoeIconToDciMessages_LocationCd] ON [CjisSoeIconToDciMessages];
END

CREATE NONCLUSTERED INDEX [IX_CjisSoeIconToDciMessages_LocationCd] ON [CjisSoeIconToDciMessages] (LocationCd ASC, MessageId ASC)

ALTER TABLE [CjisSoeOffenderAddresses]

DROP CONSTRAINT [PK_CjisSoeOffenderAddresses];

ALTER TABLE [CjisSoeOffenderAddresses] ADD CONSTRAINT [PK_CjisSoeOffenderAddresses] PRIMARY KEY CLUSTERED (CjisSoeOffenderAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_CjisSoeOffenderAddresses_LocationCd'
		)
BEGIN
	DROP INDEX [IX_CjisSoeOffenderAddresses_LocationCd] ON [CjisSoeOffenderAddresses];
END

CREATE NONCLUSTERED INDEX [IX_CjisSoeOffenderAddresses_LocationCd] ON [CjisSoeOffenderAddresses] (LocationCd ASC, CjisSoeOffenderId ASC)

ALTER TABLE [CjisSoeOffenses]

DROP CONSTRAINT [PK_CjisSoeOffenses];

ALTER TABLE [CjisSoeOffenses] ADD CONSTRAINT [PK_CjisSoeOffenses] PRIMARY KEY CLUSTERED (CjisSoeOffenseId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_CjisSoeOffenses_LocationCd'
		)
BEGIN
	DROP INDEX [IX_CjisSoeOffenses_LocationCd] ON [CjisSoeOffenses];
END

CREATE NONCLUSTERED INDEX [IX_CjisSoeOffenses_LocationCd] ON [CjisSoeOffenses] (LocationCd ASC, CjisSoeOffenderId ASC)

ALTER TABLE [CjisSoeParentAddresses]

DROP CONSTRAINT [PK_CjisSoeParentAddresses];

ALTER TABLE [CjisSoeParentAddresses] ADD CONSTRAINT [PK_CjisSoeParentAddresses] PRIMARY KEY CLUSTERED (CjisSoeParentAddressId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_CjisSoeParentAddresses_LocationCd'
		)
BEGIN
	DROP INDEX [IX_CjisSoeParentAddresses_LocationCd] ON [CjisSoeParentAddresses];
END

CREATE NONCLUSTERED INDEX [IX_CjisSoeParentAddresses_LocationCd] ON [CjisSoeParentAddresses] (LocationCd ASC, CjisSoeOffenderId ASC)

ALTER TABLE [CjisSoeSchools]

DROP CONSTRAINT [PK_CjisSoeSchools];

ALTER TABLE [CjisSoeSchools] ADD CONSTRAINT [PK_CjisSoeSchools] PRIMARY KEY CLUSTERED (CjisSoeSchoolId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_CjisSoeSchools_LocationCd'
		)
BEGIN
	DROP INDEX [IX_CjisSoeSchools_LocationCd] ON [CjisSoeSchools];
END

CREATE NONCLUSTERED INDEX [IX_CjisSoeSchools_LocationCd] ON [CjisSoeSchools] (LocationCd ASC, CjisSoeOffenderId ASC)

ALTER TABLE [CjisSoeVictims]

DROP CONSTRAINT [PK_CjisSoeVictims];

ALTER TABLE [CjisSoeVictims] ADD CONSTRAINT [PK_CjisSoeVictims] PRIMARY KEY CLUSTERED (CjisSoeVictimId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_CjisSoeVictims_LocationCd'
		)
BEGIN
	DROP INDEX [IX_CjisSoeVictims_LocationCd] ON [CjisSoeVictims];
END

CREATE NONCLUSTERED INDEX [IX_CjisSoeVictims_LocationCd] ON [CjisSoeVictims] (LocationCd ASC, CjisSoeOffenseId ASC)

ALTER TABLE [ClOffenseBehaviorCodes]

DROP CONSTRAINT [PK_CLOffenseBehaviorCodes];

ALTER TABLE [ClOffenseBehaviorCodes] ADD CONSTRAINT [PK_CLOffenseBehaviorCodes] PRIMARY KEY CLUSTERED (ClOffenseBehaviorCodeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ClOffenseBehaviorCodes_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ClOffenseBehaviorCodes_LocationCd] ON [ClOffenseBehaviorCodes];
END

CREATE NONCLUSTERED INDEX [IX_ClOffenseBehaviorCodes_LocationCd] ON [ClOffenseBehaviorCodes] (LocationCd ASC, ChargeId ASC)

ALTER TABLE [CommunityServiceReporting]

DROP CONSTRAINT [PK_CommunityServiceReporting];

ALTER TABLE [CommunityServiceReporting] ADD CONSTRAINT [PK_CommunityServiceReporting] PRIMARY KEY CLUSTERED (CommunityServiceReportingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_CommunityServiceReporting_LocationCd'
		)
BEGIN
	DROP INDEX [IX_CommunityServiceReporting_LocationCd] ON [CommunityServiceReporting];
END

CREATE NONCLUSTERED INDEX [IX_CommunityServiceReporting_LocationCd] ON [CommunityServiceReporting] (LocationCd ASC, CommunityServiceReportingObligationId ASC)

ALTER TABLE [ContactPhones]

DROP CONSTRAINT [PK_ContactPhones];

ALTER TABLE [ContactPhones] ADD CONSTRAINT [PK_ContactPhones] PRIMARY KEY CLUSTERED (ContactPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ContactPhones_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ContactPhones_LocationCd] ON [ContactPhones];
END

CREATE NONCLUSTERED INDEX [IX_ContactPhones_LocationCd] ON [ContactPhones] (LocationCd ASC, ContactInformationId ASC)

ALTER TABLE [DeenaTrainingAddressPhones]

DROP CONSTRAINT [PK_DeenaTrainingAddressPhones];

ALTER TABLE [DeenaTrainingAddressPhones] ADD CONSTRAINT [PK_DeenaTrainingAddressPhones] PRIMARY KEY CLUSTERED (TrainingAddressPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_DeenaTrainingAddressPhones_LocationCd'
		)
BEGIN
	DROP INDEX [IX_DeenaTrainingAddressPhones_LocationCd] ON [DeenaTrainingAddressPhones];
END

CREATE NONCLUSTERED INDEX [IX_DeenaTrainingAddressPhones_LocationCd] ON [DeenaTrainingAddressPhones] (LocationCd ASC, TrainingAddressId ASC)

ALTER TABLE [DetainerNotificationRequests]

DROP CONSTRAINT [PK_DetainerNotificationRequests];

ALTER TABLE [DetainerNotificationRequests] ADD CONSTRAINT [PK_DetainerNotificationRequests] PRIMARY KEY CLUSTERED (DetainerNotificationRequestId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_DetainerNotificationRequests_LocationCd'
		)
BEGIN
	DROP INDEX [IX_DetainerNotificationRequests_LocationCd] ON [DetainerNotificationRequests];
END

CREATE NONCLUSTERED INDEX [IX_DetainerNotificationRequests_LocationCd] ON [DetainerNotificationRequests] (LocationCd ASC, ReleaseNotificationId ASC)

ALTER TABLE [DipeshTrainingAddressPhones]

DROP CONSTRAINT [PK_DipeshTrainingAddressPhones];

ALTER TABLE [DipeshTrainingAddressPhones] ADD CONSTRAINT [PK_DipeshTrainingAddressPhones] PRIMARY KEY CLUSTERED (TrainingAddressPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_DipeshTrainingAddressPhones_LocationCd'
		)
BEGIN
	DROP INDEX [IX_DipeshTrainingAddressPhones_LocationCd] ON [DipeshTrainingAddressPhones];
END

CREATE NONCLUSTERED INDEX [IX_DipeshTrainingAddressPhones_LocationCd] ON [DipeshTrainingAddressPhones] (LocationCd ASC, TrainingAddressId ASC)

ALTER TABLE [DischargeReportCharges]

DROP CONSTRAINT [PK_DischargeReportCharges];

ALTER TABLE [DischargeReportCharges] ADD CONSTRAINT [PK_DischargeReportCharges] PRIMARY KEY CLUSTERED (DischargeReportChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_DischargeReportCharges_LocationCd'
		)
BEGIN
	DROP INDEX [IX_DischargeReportCharges_LocationCd] ON [DischargeReportCharges];
END

CREATE NONCLUSTERED INDEX [IX_DischargeReportCharges_LocationCd] ON [DischargeReportCharges] (LocationCd ASC, DischargeReportId ASC)

ALTER TABLE [dmActivities]

DROP CONSTRAINT [PK_dmActivities];

ALTER TABLE [dmActivities] ADD CONSTRAINT [PK_dmActivities] PRIMARY KEY CLUSTERED (ActivityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmActivities_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmActivities_LocationCd] ON [dmActivities];
END

CREATE NONCLUSTERED INDEX [IX_dmActivities_LocationCd] ON [dmActivities] (LocationCd ASC, ActivityTypeId ASC)

ALTER TABLE [dmBeds]

DROP CONSTRAINT [PK_dmBeds];

ALTER TABLE [dmBeds] ADD CONSTRAINT [PK_dmBeds] PRIMARY KEY CLUSTERED (BedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmBeds_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmBeds_LocationCd] ON [dmBeds];
END

CREATE NONCLUSTERED INDEX [IX_dmBeds_LocationCd] ON [dmBeds] (LocationCd ASC, RoomId ASC)

ALTER TABLE [dmBopConditionPackageConditions]

DROP CONSTRAINT [PK_dmBopConditionPackageConditions];

ALTER TABLE [dmBopConditionPackageConditions] ADD CONSTRAINT [PK_dmBopConditionPackageConditions] PRIMARY KEY CLUSTERED (BopConditionPackageConditionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmBopConditionPackageConditions_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmBopConditionPackageConditions_LocationCd] ON [dmBopConditionPackageConditions];
END

CREATE NONCLUSTERED INDEX [IX_dmBopConditionPackageConditions_LocationCd] ON [dmBopConditionPackageConditions] (LocationCd ASC, BopConditionPackageId ASC)

ALTER TABLE [dmBopLocationFacilities]

DROP CONSTRAINT [PK_dmBopParoleInterviewLocationFacilities];

ALTER TABLE [dmBopLocationFacilities] ADD CONSTRAINT [PK_dmBopParoleInterviewLocationFacilities] PRIMARY KEY CLUSTERED (BopLocationFacilityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmBopLocationFacilities_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmBopLocationFacilities_LocationCd] ON [dmBopLocationFacilities];
END

CREATE NONCLUSTERED INDEX [IX_dmBopLocationFacilities_LocationCd] ON [dmBopLocationFacilities] (LocationCd ASC, BopLocationId ASC)

ALTER TABLE [dmBopReleasePlanReviewReasonRecommendations]

DROP CONSTRAINT [PK_dmBOPReleasePlanReviewReasonRecommendations];

ALTER TABLE [dmBopReleasePlanReviewReasonRecommendations] ADD CONSTRAINT [PK_dmBOPReleasePlanReviewReasonRecommendations] PRIMARY KEY CLUSTERED (BopReleasePlanReviewReasonRecommendationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmBopReleasePlanReviewReasonRecommendations_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmBopReleasePlanReviewReasonRecommendations_LocationCd] ON [dmBopReleasePlanReviewReasonRecommendations];
END

CREATE NONCLUSTERED INDEX [IX_dmBopReleasePlanReviewReasonRecommendations_LocationCd] ON [dmBopReleasePlanReviewReasonRecommendations] (LocationCd ASC, BopReleasePlanReviewReasonId ASC)

ALTER TABLE [dmBopRevocationCountyGroupCounties]

DROP CONSTRAINT [PK_dmBopRevocationCountyGroupCounties];

ALTER TABLE [dmBopRevocationCountyGroupCounties] ADD CONSTRAINT [PK_dmBopRevocationCountyGroupCounties] PRIMARY KEY CLUSTERED (BopRevocationCountyGroupCountyId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmBopRevocationCountyGroupCounties_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmBopRevocationCountyGroupCounties_LocationCd] ON [dmBopRevocationCountyGroupCounties];
END

CREATE NONCLUSTERED INDEX [IX_dmBopRevocationCountyGroupCounties_LocationCd] ON [dmBopRevocationCountyGroupCounties] (LocationCd ASC, BopRevocationCountyGroupId ASC)

ALTER TABLE [dmCrimeCodeOffenseSubTypes]

DROP CONSTRAINT [PK_dmCrimeCodeOffenseSubTypes];

ALTER TABLE [dmCrimeCodeOffenseSubTypes] ADD CONSTRAINT [PK_dmCrimeCodeOffenseSubTypes] PRIMARY KEY CLUSTERED (CrimeCdOffenseSubTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmCrimeCodeOffenseSubTypes_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmCrimeCodeOffenseSubTypes_LocationCd] ON [dmCrimeCodeOffenseSubTypes];
END

CREATE NONCLUSTERED INDEX [IX_dmCrimeCodeOffenseSubTypes_LocationCd] ON [dmCrimeCodeOffenseSubTypes] (LocationCd ASC, CrimeCdOffenseTypeId ASC)

ALTER TABLE [dmEthnicOrigins]

DROP CONSTRAINT [PK_dmEthnicOrigins];

ALTER TABLE [dmEthnicOrigins] ADD CONSTRAINT [PK_dmEthnicOrigins] PRIMARY KEY CLUSTERED (EthnicOriginId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmEthnicOrigins_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmEthnicOrigins_LocationCd] ON [dmEthnicOrigins];
END

CREATE NONCLUSTERED INDEX [IX_dmEthnicOrigins_LocationCd] ON [dmEthnicOrigins] (LocationCd ASC, RaceId ASC)

ALTER TABLE [dmFacilities]

DROP CONSTRAINT [PK_dmFacilities];

ALTER TABLE [dmFacilities] ADD CONSTRAINT [PK_dmFacilities] PRIMARY KEY CLUSTERED (FacilityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmFacilities_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmFacilities_LocationCd] ON [dmFacilities];
END

CREATE NONCLUSTERED INDEX [IX_dmFacilities_LocationCd] ON [dmFacilities] (LocationCd ASC, RegionId ASC)

ALTER TABLE [dmFlMaintenanceIssueItemProblems]

DROP CONSTRAINT [PK_dmFlMaintenanceIssueItemProblems];

ALTER TABLE [dmFlMaintenanceIssueItemProblems] ADD CONSTRAINT [PK_dmFlMaintenanceIssueItemProblems] PRIMARY KEY CLUSTERED (FlMaintenanceIssueItemProblemId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmFlMaintenanceIssueItemProblems_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmFlMaintenanceIssueItemProblems_LocationCd] ON [dmFlMaintenanceIssueItemProblems];
END

CREATE NONCLUSTERED INDEX [IX_dmFlMaintenanceIssueItemProblems_LocationCd] ON [dmFlMaintenanceIssueItemProblems] (LocationCd ASC, FlMaintenanceIssueItemId ASC)

ALTER TABLE [dmFlMaintenanceIssueItems]

DROP CONSTRAINT [PK_dmFlMaintenanceIssueItems];

ALTER TABLE [dmFlMaintenanceIssueItems] ADD CONSTRAINT [PK_dmFlMaintenanceIssueItems] PRIMARY KEY CLUSTERED (FlMaintenanceIssueItemId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmFlMaintenanceIssueItems_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmFlMaintenanceIssueItems_LocationCd] ON [dmFlMaintenanceIssueItems];
END

CREATE NONCLUSTERED INDEX [IX_dmFlMaintenanceIssueItems_LocationCd] ON [dmFlMaintenanceIssueItems] (LocationCd ASC, FlMaintenanceIssueId ASC)

ALTER TABLE [dmGrievanceProcessTypeReasons]

DROP CONSTRAINT [PK_dmGrievanceProcessTypeReasons];

ALTER TABLE [dmGrievanceProcessTypeReasons] ADD CONSTRAINT [PK_dmGrievanceProcessTypeReasons] PRIMARY KEY CLUSTERED (GrievanceProcessTypeReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmGrievanceProcessTypeReasons_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmGrievanceProcessTypeReasons_LocationCd] ON [dmGrievanceProcessTypeReasons];
END

CREATE NONCLUSTERED INDEX [IX_dmGrievanceProcessTypeReasons_LocationCd] ON [dmGrievanceProcessTypeReasons] (LocationCd ASC, GrievanceProcessTypeId ASC)

ALTER TABLE [dmHousingUnits]

DROP CONSTRAINT [PK_dmHousingUnits];

ALTER TABLE [dmHousingUnits] ADD CONSTRAINT [PK_dmHousingUnits] PRIMARY KEY CLUSTERED (HousingUnitId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmHousingUnits_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmHousingUnits_LocationCd] ON [dmHousingUnits];
END

CREATE NONCLUSTERED INDEX [IX_dmHousingUnits_LocationCd] ON [dmHousingUnits] (LocationCd ASC, FacilityId ASC)

ALTER TABLE [dmInstitutionDestinations]

DROP CONSTRAINT [PK_dmInstitutionDestinations];

ALTER TABLE [dmInstitutionDestinations] ADD CONSTRAINT [PK_dmInstitutionDestinations] PRIMARY KEY CLUSTERED (InstitutionDestinationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmInstitutionDestinations_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmInstitutionDestinations_LocationCd] ON [dmInstitutionDestinations];
END

CREATE NONCLUSTERED INDEX [IX_dmInstitutionDestinations_LocationCd] ON [dmInstitutionDestinations] (LocationCd ASC, FacilityId ASC)

ALTER TABLE [dmInstitutionTransportationTypes]

DROP CONSTRAINT [PK_dmInstitutionTransportationTypes];

ALTER TABLE [dmInstitutionTransportationTypes] ADD CONSTRAINT [PK_dmInstitutionTransportationTypes] PRIMARY KEY CLUSTERED (InstitutionTransportationTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmInstitutionTransportationTypes_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmInstitutionTransportationTypes_LocationCd] ON [dmInstitutionTransportationTypes];
END

CREATE NONCLUSTERED INDEX [IX_dmInstitutionTransportationTypes_LocationCd] ON [dmInstitutionTransportationTypes] (LocationCd ASC, FacilityId ASC)

ALTER TABLE [dmInterventionClasses]

DROP CONSTRAINT [PK_dmInterventionClasses];

ALTER TABLE [dmInterventionClasses] ADD CONSTRAINT [PK_dmInterventionClasses] PRIMARY KEY CLUSTERED (InterventionClassId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmInterventionClasses_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmInterventionClasses_LocationCd] ON [dmInterventionClasses];
END

CREATE NONCLUSTERED INDEX [IX_dmInterventionClasses_LocationCd] ON [dmInterventionClasses] (LocationCd ASC, InterventionId ASC)

ALTER TABLE [dmInterventionClassFacilitators]

DROP CONSTRAINT [PK_dmInterventionClassFacilitators];

ALTER TABLE [dmInterventionClassFacilitators] ADD CONSTRAINT [PK_dmInterventionClassFacilitators] PRIMARY KEY CLUSTERED (InterventionClassFacilitatorId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmInterventionClassFacilitators_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmInterventionClassFacilitators_LocationCd] ON [dmInterventionClassFacilitators];
END

CREATE NONCLUSTERED INDEX [IX_dmInterventionClassFacilitators_LocationCd] ON [dmInterventionClassFacilitators] (LocationCd ASC, InterventionClassId ASC)

ALTER TABLE [dmInterventionContactPhones]

DROP CONSTRAINT [PK_dmInterventionContactPhones];

ALTER TABLE [dmInterventionContactPhones] ADD CONSTRAINT [PK_dmInterventionContactPhones] PRIMARY KEY CLUSTERED (InterventionContactPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmInterventionContactPhones_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmInterventionContactPhones_LocationCd] ON [dmInterventionContactPhones];
END

CREATE NONCLUSTERED INDEX [IX_dmInterventionContactPhones_LocationCd] ON [dmInterventionContactPhones] (LocationCd ASC, InterventionContactId ASC)

ALTER TABLE [dmInterventionContacts]

DROP CONSTRAINT [PK_dmInterventionContacts];

ALTER TABLE [dmInterventionContacts] ADD CONSTRAINT [PK_dmInterventionContacts] PRIMARY KEY CLUSTERED (InterventionContactId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmInterventionContacts_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmInterventionContacts_LocationCd] ON [dmInterventionContacts];
END

CREATE NONCLUSTERED INDEX [IX_dmInterventionContacts_LocationCd] ON [dmInterventionContacts] (LocationCd ASC, InterventionProviderId ASC)

ALTER TABLE [dmInterventionEbpStatuses]

DROP CONSTRAINT [PK_dmInterventionEBPStatuses];

ALTER TABLE [dmInterventionEbpStatuses] ADD CONSTRAINT [PK_dmInterventionEBPStatuses] PRIMARY KEY CLUSTERED (InterventionEbpStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmInterventionEbpStatuses_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmInterventionEbpStatuses_LocationCd] ON [dmInterventionEbpStatuses];
END

CREATE NONCLUSTERED INDEX [IX_dmInterventionEbpStatuses_LocationCd] ON [dmInterventionEbpStatuses] (LocationCd ASC, InterventionId ASC)

ALTER TABLE [dmInterventionMethods]

DROP CONSTRAINT [PK_dmInterventionMethods];

ALTER TABLE [dmInterventionMethods] ADD CONSTRAINT [PK_dmInterventionMethods] PRIMARY KEY CLUSTERED (InterventionMethodId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmInterventionMethods_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmInterventionMethods_LocationCd] ON [dmInterventionMethods];
END

CREATE NONCLUSTERED INDEX [IX_dmInterventionMethods_LocationCd] ON [dmInterventionMethods] (LocationCd ASC, InterventionId ASC)

ALTER TABLE [dmInterventionModalities]

DROP CONSTRAINT [PK_dmInterventionModalities];

ALTER TABLE [dmInterventionModalities] ADD CONSTRAINT [PK_dmInterventionModalities] PRIMARY KEY CLUSTERED (InterventionModalityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmInterventionModalities_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmInterventionModalities_LocationCd] ON [dmInterventionModalities];
END

CREATE NONCLUSTERED INDEX [IX_dmInterventionModalities_LocationCd] ON [dmInterventionModalities] (LocationCd ASC, InterventionId ASC)

ALTER TABLE [dmInterventionProgramLocationEbpStatuses]

DROP CONSTRAINT [PK_dmInterventionProgramLocationEBPStatuses];

ALTER TABLE [dmInterventionProgramLocationEbpStatuses] ADD CONSTRAINT [PK_dmInterventionProgramLocationEBPStatuses] PRIMARY KEY CLUSTERED (InterventionProgramLocationEbpStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmInterventionProgramLocationEbpStatuses_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmInterventionProgramLocationEbpStatuses_LocationCd] ON [dmInterventionProgramLocationEbpStatuses];
END

CREATE NONCLUSTERED INDEX [IX_dmInterventionProgramLocationEbpStatuses_LocationCd] ON [dmInterventionProgramLocationEbpStatuses] (LocationCd ASC, InterventionProgramLocationId ASC)

ALTER TABLE [dmInterventionProgramLocationInterventions]

DROP CONSTRAINT [PK_dmInterventionProgramLocationInterventions];

ALTER TABLE [dmInterventionProgramLocationInterventions] ADD CONSTRAINT [PK_dmInterventionProgramLocationInterventions] PRIMARY KEY CLUSTERED (InterventionProgramLocationInterventionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmInterventionProgramLocationInterventions_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmInterventionProgramLocationInterventions_LocationCd] ON [dmInterventionProgramLocationInterventions];
END

CREATE NONCLUSTERED INDEX [IX_dmInterventionProgramLocationInterventions_LocationCd] ON [dmInterventionProgramLocationInterventions] (LocationCd ASC, InterventionProgramLocationId ASC)

ALTER TABLE [dmInterventionProgramLocations]

DROP CONSTRAINT [PK_dmInterventionProgramLocations];

ALTER TABLE [dmInterventionProgramLocations] ADD CONSTRAINT [PK_dmInterventionProgramLocations] PRIMARY KEY CLUSTERED (InterventionProgramLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmInterventionProgramLocations_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmInterventionProgramLocations_LocationCd] ON [dmInterventionProgramLocations];
END

CREATE NONCLUSTERED INDEX [IX_dmInterventionProgramLocations_LocationCd] ON [dmInterventionProgramLocations] (LocationCd ASC, InterventionProgramId ASC)

ALTER TABLE [dmInterventionProviderPhones]

DROP CONSTRAINT [PK_dmInterventionProviderPhones];

ALTER TABLE [dmInterventionProviderPhones] ADD CONSTRAINT [PK_dmInterventionProviderPhones] PRIMARY KEY CLUSTERED (InterventionProviderPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmInterventionProviderPhones_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmInterventionProviderPhones_LocationCd] ON [dmInterventionProviderPhones];
END

CREATE NONCLUSTERED INDEX [IX_dmInterventionProviderPhones_LocationCd] ON [dmInterventionProviderPhones] (LocationCd ASC, InterventionProviderId ASC)

ALTER TABLE [dmInterventionProvidersAssn]

DROP CONSTRAINT [PK_dmInterventionProvidersAssn];

ALTER TABLE [dmInterventionProvidersAssn] ADD CONSTRAINT [PK_dmInterventionProvidersAssn] PRIMARY KEY CLUSTERED (InterventionProviderAssnId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmInterventionProvidersAssn_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmInterventionProvidersAssn_LocationCd] ON [dmInterventionProvidersAssn];
END

CREATE NONCLUSTERED INDEX [IX_dmInterventionProvidersAssn_LocationCd] ON [dmInterventionProvidersAssn] (LocationCd ASC, InterventionId ASC)

ALTER TABLE [dmInterventionSessionTopics]

DROP CONSTRAINT [PK_dmInterventionSessionTopics];

ALTER TABLE [dmInterventionSessionTopics] ADD CONSTRAINT [PK_dmInterventionSessionTopics] PRIMARY KEY CLUSTERED (InterventionSessionTopicId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmInterventionSessionTopics_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmInterventionSessionTopics_LocationCd] ON [dmInterventionSessionTopics];
END

CREATE NONCLUSTERED INDEX [IX_dmInterventionSessionTopics_LocationCd] ON [dmInterventionSessionTopics] (LocationCd ASC, InterventionId ASC)

ALTER TABLE [dmKioskLocations]

DROP CONSTRAINT [PK_dmKioskLocations];

ALTER TABLE [dmKioskLocations] ADD CONSTRAINT [PK_dmKioskLocations] PRIMARY KEY CLUSTERED (KioskLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmKioskLocations_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmKioskLocations_LocationCd] ON [dmKioskLocations];
END

CREATE NONCLUSTERED INDEX [IX_dmKioskLocations_LocationCd] ON [dmKioskLocations] (LocationCd ASC, RegionId ASC)

ALTER TABLE [dmKioskMailboxStaff]

DROP CONSTRAINT [PK_dmKioskMailboxStaff];

ALTER TABLE [dmKioskMailboxStaff] ADD CONSTRAINT [PK_dmKioskMailboxStaff] PRIMARY KEY CLUSTERED (KioskMailboxStaffId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmKioskMailboxStaff_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmKioskMailboxStaff_LocationCd] ON [dmKioskMailboxStaff];
END

CREATE NONCLUSTERED INDEX [IX_dmKioskMailboxStaff_LocationCd] ON [dmKioskMailboxStaff] (LocationCd ASC, KioskMailboxId ASC)

ALTER TABLE [dmKioskWorkstations]

DROP CONSTRAINT [PK_dmKioskWorkstations];

ALTER TABLE [dmKioskWorkstations] ADD CONSTRAINT [PK_dmKioskWorkstations] PRIMARY KEY CLUSTERED (KioskWorkstationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmKioskWorkstations_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmKioskWorkstations_LocationCd] ON [dmKioskWorkstations];
END

CREATE NONCLUSTERED INDEX [IX_dmKioskWorkstations_LocationCd] ON [dmKioskWorkstations] (LocationCd ASC, KioskLocationId ASC)

ALTER TABLE [dmLegalPeoplePhones]

DROP CONSTRAINT [PK_dmLegalPeoplePhones];

ALTER TABLE [dmLegalPeoplePhones] ADD CONSTRAINT [PK_dmLegalPeoplePhones] PRIMARY KEY CLUSTERED (LegalPeoplePhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmLegalPeoplePhones_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmLegalPeoplePhones_LocationCd] ON [dmLegalPeoplePhones];
END

CREATE NONCLUSTERED INDEX [IX_dmLegalPeoplePhones_LocationCd] ON [dmLegalPeoplePhones] (LocationCd ASC, LegalPeopleInformationId ASC)

ALTER TABLE [dmOverrideReasons]

DROP CONSTRAINT [PK_dmOverrideReasons];

ALTER TABLE [dmOverrideReasons] ADD CONSTRAINT [PK_dmOverrideReasons] PRIMARY KEY CLUSTERED (OverrideReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmOverrideReasons_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmOverrideReasons_LocationCd] ON [dmOverrideReasons];
END

CREATE NONCLUSTERED INDEX [IX_dmOverrideReasons_LocationCd] ON [dmOverrideReasons] (LocationCd ASC, OverrideCategoryId ASC)

ALTER TABLE [dmParoleBoardLocationFacilities]

DROP CONSTRAINT [PK_dmParoleBoardLocationFacilities];

ALTER TABLE [dmParoleBoardLocationFacilities] ADD CONSTRAINT [PK_dmParoleBoardLocationFacilities] PRIMARY KEY CLUSTERED ( ParoleBoardLocationFacilityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmParoleBoardLocationFacilities_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmParoleBoardLocationFacilities_LocationCd] ON [dmParoleBoardLocationFacilities];
END

CREATE NONCLUSTERED INDEX [IX_dmParoleBoardLocationFacilities_LocationCd] ON [dmParoleBoardLocationFacilities] (LocationCd ASC,  ParoleBoardLocationId ASC)

ALTER TABLE [dmParoleBoardScreeningResponseConditions] 

DROP CONSTRAINT [PK_dmParoleBoardScreeningResponseConditions];

ALTER TABLE [dmParoleBoardScreeningResponseConditions] ADD CONSTRAINT [PK_dmParoleBoardScreeningResponseConditions] PRIMARY KEY CLUSTERED (ParoleBoardScreeningResponseConditionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmParoleBoardScreeningResponseConditions_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmParoleBoardScreeningResponseConditions_LocationCd] ON [dmParoleBoardScreeningResponseConditions];
END

CREATE NONCLUSTERED INDEX [IX_dmParoleBoardScreeningResponseConditions_LocationCd] ON [dmParoleBoardScreeningResponseConditions] (LocationCd ASC, ParoleBoardScreeningResponseId ASC)

ALTER TABLE [dmParoleViolationReviewRequestRecommendations]

DROP CONSTRAINT [PK_dmParoleViolationReviewRequestRecommendations];

ALTER TABLE [dmParoleViolationReviewRequestRecommendations] ADD CONSTRAINT [PK_dmParoleViolationReviewRequestRecommendations] PRIMARY KEY CLUSTERED (ParoleViolationReviewRequestRecommendationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmParoleViolationReviewRequestRecommendations_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmParoleViolationReviewRequestRecommendations_LocationCd] ON [dmParoleViolationReviewRequestRecommendations];
END

CREATE NONCLUSTERED INDEX [IX_dmParoleViolationReviewRequestRecommendations_LocationCd] ON [dmParoleViolationReviewRequestRecommendations] (LocationCd ASC, ParoleViolationReviewRequestId ASC)

ALTER TABLE [dmProcessTaskAssignedNotificationGroups]

DROP CONSTRAINT [PK_dmProcessTaskAssignedNotificationGroups];

ALTER TABLE [dmProcessTaskAssignedNotificationGroups] ADD CONSTRAINT [PK_dmProcessTaskAssignedNotificationGroups] PRIMARY KEY CLUSTERED (ProcessTaskAssignedNotificationGroupId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmProcessTaskAssignedNotificationGroups_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmProcessTaskAssignedNotificationGroups_LocationCd] ON [dmProcessTaskAssignedNotificationGroups];
END

CREATE NONCLUSTERED INDEX [IX_dmProcessTaskAssignedNotificationGroups_LocationCd] ON [dmProcessTaskAssignedNotificationGroups] (LocationCd ASC, ProcessTaskId ASC)

ALTER TABLE [dmProcessTaskClosingSecurityEntities]

DROP CONSTRAINT [PK_dmProcessTaskClosingSecurityEntities];

ALTER TABLE [dmProcessTaskClosingSecurityEntities] ADD CONSTRAINT [PK_dmProcessTaskClosingSecurityEntities] PRIMARY KEY CLUSTERED (ProcessTaskClosingSecurityEntityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmProcessTaskClosingSecurityEntities_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmProcessTaskClosingSecurityEntities_LocationCd] ON [dmProcessTaskClosingSecurityEntities];
END

CREATE NONCLUSTERED INDEX [IX_dmProcessTaskClosingSecurityEntities_LocationCd] ON [dmProcessTaskClosingSecurityEntities] (LocationCd ASC, ProcessTaskId ASC)

ALTER TABLE [dmProcessTaskGroupDependencies]

DROP CONSTRAINT [PK_dmProcessTaskGroupDependencies];

ALTER TABLE [dmProcessTaskGroupDependencies] ADD CONSTRAINT [PK_dmProcessTaskGroupDependencies] PRIMARY KEY CLUSTERED (ProcessTaskGroupDependencyId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmProcessTaskGroupDependencies_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmProcessTaskGroupDependencies_LocationCd] ON [dmProcessTaskGroupDependencies];
END

CREATE NONCLUSTERED INDEX [IX_dmProcessTaskGroupDependencies_LocationCd] ON [dmProcessTaskGroupDependencies] (LocationCd ASC, ProcessTaskGroupId ASC)

ALTER TABLE [dmProcessTaskGroups]

DROP CONSTRAINT [PK_dmProcessTaskGroups];

ALTER TABLE [dmProcessTaskGroups] ADD CONSTRAINT [PK_dmProcessTaskGroups] PRIMARY KEY CLUSTERED (ProcessTaskGroupId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmProcessTaskGroups_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmProcessTaskGroups_LocationCd] ON [dmProcessTaskGroups];
END

CREATE NONCLUSTERED INDEX [IX_dmProcessTaskGroups_LocationCd] ON [dmProcessTaskGroups] (LocationCd ASC, ProcessId ASC)

ALTER TABLE [dmProcessTasks]

DROP CONSTRAINT [PK_dmProcessTasks];

ALTER TABLE [dmProcessTasks] ADD CONSTRAINT [PK_dmProcessTasks] PRIMARY KEY CLUSTERED (ProcessTaskId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmProcessTasks_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmProcessTasks_LocationCd] ON [dmProcessTasks];
END

CREATE NONCLUSTERED INDEX [IX_dmProcessTasks_LocationCd] ON [dmProcessTasks] (LocationCd ASC, ProcessTaskGroupId ASC)

ALTER TABLE [dmProcessTaskStaffGroupStaff]

DROP CONSTRAINT [PK_dmProcessTaskStaffGroupStaff];

ALTER TABLE [dmProcessTaskStaffGroupStaff] ADD CONSTRAINT [PK_dmProcessTaskStaffGroupStaff] PRIMARY KEY CLUSTERED (ProcessTaskStaffGroupStaffId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmProcessTaskStaffGroupStaff_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmProcessTaskStaffGroupStaff_LocationCd] ON [dmProcessTaskStaffGroupStaff];
END

CREATE NONCLUSTERED INDEX [IX_dmProcessTaskStaffGroupStaff_LocationCd] ON [dmProcessTaskStaffGroupStaff] (LocationCd ASC, ProcessTaskStaffGroupId ASC)

ALTER TABLE [dmPropertyGroupTypeReasons]

DROP CONSTRAINT [PK_dmPropertyGroupTypeReasons];

ALTER TABLE [dmPropertyGroupTypeReasons] ADD CONSTRAINT [PK_dmPropertyGroupTypeReasons] PRIMARY KEY CLUSTERED (PropertyGroupTypeReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmPropertyGroupTypeReasons_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmPropertyGroupTypeReasons_LocationCd] ON [dmPropertyGroupTypeReasons];
END

CREATE NONCLUSTERED INDEX [IX_dmPropertyGroupTypeReasons_LocationCd] ON [dmPropertyGroupTypeReasons] (LocationCd ASC, PropertyGroupTypeId ASC)

ALTER TABLE [dmPropertyItemFacilityLimits]

DROP CONSTRAINT [PK_dmPropertyItemFacilityLimits];

ALTER TABLE [dmPropertyItemFacilityLimits] ADD CONSTRAINT [PK_dmPropertyItemFacilityLimits] PRIMARY KEY CLUSTERED (PropertyItemFacilityLimitId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmPropertyItemFacilityLimits_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmPropertyItemFacilityLimits_LocationCd] ON [dmPropertyItemFacilityLimits];
END

CREATE NONCLUSTERED INDEX [IX_dmPropertyItemFacilityLimits_LocationCd] ON [dmPropertyItemFacilityLimits] (LocationCd ASC, PropertyItemId ASC)

ALTER TABLE [dmPropertyItemFlStorageLocations]

DROP CONSTRAINT [PK_dmPropertyItemStorageLocations];

ALTER TABLE [dmPropertyItemFlStorageLocations] ADD CONSTRAINT [PK_dmPropertyItemStorageLocations] PRIMARY KEY CLUSTERED (PropertyItemFlStorageLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmPropertyItemFlStorageLocations_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmPropertyItemFlStorageLocations_LocationCd] ON [dmPropertyItemFlStorageLocations];
END

CREATE NONCLUSTERED INDEX [IX_dmPropertyItemFlStorageLocations_LocationCd] ON [dmPropertyItemFlStorageLocations] (LocationCd ASC, FacilityId ASC)

ALTER TABLE [dmPropertySetSubItems]

DROP CONSTRAINT [PK_dmPropertySetSubItems];

ALTER TABLE [dmPropertySetSubItems] ADD CONSTRAINT [PK_dmPropertySetSubItems] PRIMARY KEY CLUSTERED (PropertySetSubItemId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmPropertySetSubItems_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmPropertySetSubItems_LocationCd] ON [dmPropertySetSubItems];
END

CREATE NONCLUSTERED INDEX [IX_dmPropertySetSubItems_LocationCd] ON [dmPropertySetSubItems] (LocationCd ASC, PropertySetId ASC)

ALTER TABLE [dmPropertySubItems]

DROP CONSTRAINT [PK_dmPropertySubItems];

ALTER TABLE [dmPropertySubItems] ADD CONSTRAINT [PK_dmPropertySubItems] PRIMARY KEY CLUSTERED (PropertySubItemId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmPropertySubItems_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmPropertySubItems_LocationCd] ON [dmPropertySubItems];
END

CREATE NONCLUSTERED INDEX [IX_dmPropertySubItems_LocationCd] ON [dmPropertySubItems] (LocationCd ASC, PropertyItemId ASC)

ALTER TABLE [dmPropertySubItemsIpi]

DROP CONSTRAINT [PK_dmPropertySubItemsIpi];

ALTER TABLE [dmPropertySubItemsIpi] ADD CONSTRAINT [PK_dmPropertySubItemsIpi] PRIMARY KEY CLUSTERED (PropertySubItemIpiId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmPropertySubItemsIpi_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmPropertySubItemsIpi_LocationCd] ON [dmPropertySubItemsIpi];
END

CREATE NONCLUSTERED INDEX [IX_dmPropertySubItemsIpi_LocationCd] ON [dmPropertySubItemsIpi] (LocationCd ASC, PropertySubItemId ASC)

ALTER TABLE [dmPropertySubItemsIpiAssociatedItems]

DROP CONSTRAINT [PK_dmPropertySubItemsIpiAssociatedItems];

ALTER TABLE [dmPropertySubItemsIpiAssociatedItems] ADD CONSTRAINT [PK_dmPropertySubItemsIpiAssociatedItems] PRIMARY KEY CLUSTERED (PropertySubItemIpiAssociatedItemId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmPropertySubItemsIpiAssociatedItems_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmPropertySubItemsIpiAssociatedItems_LocationCd] ON [dmPropertySubItemsIpiAssociatedItems];
END

CREATE NONCLUSTERED INDEX [IX_dmPropertySubItemsIpiAssociatedItems_LocationCd] ON [dmPropertySubItemsIpiAssociatedItems] (LocationCd ASC, PropertySubItemIpiId ASC)

ALTER TABLE [dmRooms]

DROP CONSTRAINT [PK_dmRooms];

ALTER TABLE [dmRooms] ADD CONSTRAINT [PK_dmRooms] PRIMARY KEY CLUSTERED (RoomId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmRooms_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmRooms_LocationCd] ON [dmRooms];
END

CREATE NONCLUSTERED INDEX [IX_dmRooms_LocationCd] ON [dmRooms] (LocationCd ASC, HousingUnitId ASC)

ALTER TABLE [dmRuleFilterRules]

DROP CONSTRAINT [PK_dmRuleFilterRules];

ALTER TABLE [dmRuleFilterRules] ADD CONSTRAINT [PK_dmRuleFilterRules] PRIMARY KEY CLUSTERED (RuleFilterRuleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmRuleFilterRules_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmRuleFilterRules_LocationCd] ON [dmRuleFilterRules];
END

CREATE NONCLUSTERED INDEX [IX_dmRuleFilterRules_LocationCd] ON [dmRuleFilterRules] (LocationCd ASC, RuleFilterId ASC)

ALTER TABLE [dmRuleFilterSupervisionStatuses]

DROP CONSTRAINT [PK_dmRuleFilterSupervisionStatuses];

ALTER TABLE [dmRuleFilterSupervisionStatuses] ADD CONSTRAINT [PK_dmRuleFilterSupervisionStatuses] PRIMARY KEY CLUSTERED (RuleFilterSupervisionStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmRuleFilterSupervisionStatuses_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmRuleFilterSupervisionStatuses_LocationCd] ON [dmRuleFilterSupervisionStatuses];
END

CREATE NONCLUSTERED INDEX [IX_dmRuleFilterSupervisionStatuses_LocationCd] ON [dmRuleFilterSupervisionStatuses] (LocationCd ASC, RuleFilterId ASC)

ALTER TABLE [dmRuleFilterWorkUnits]

DROP CONSTRAINT [PK_dmRuleFilterWorkUnits];

ALTER TABLE [dmRuleFilterWorkUnits] ADD CONSTRAINT [PK_dmRuleFilterWorkUnits] PRIMARY KEY CLUSTERED (RuleFilterWorkUnitId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmRuleFilterWorkUnits_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmRuleFilterWorkUnits_LocationCd] ON [dmRuleFilterWorkUnits];
END

CREATE NONCLUSTERED INDEX [IX_dmRuleFilterWorkUnits_LocationCd] ON [dmRuleFilterWorkUnits] (LocationCd ASC, RuleFilterId ASC)

ALTER TABLE [dmRulePackageRules]

DROP CONSTRAINT [PK_dmRulePackageRules];

ALTER TABLE [dmRulePackageRules] ADD CONSTRAINT [PK_dmRulePackageRules] PRIMARY KEY CLUSTERED (RulePackageRuleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmRulePackageRules_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmRulePackageRules_LocationCd] ON [dmRulePackageRules];
END

CREATE NONCLUSTERED INDEX [IX_dmRulePackageRules_LocationCd] ON [dmRulePackageRules] (LocationCd ASC, RulePackageId ASC)

ALTER TABLE [dmRulePackageSupervisionStatuses]

DROP CONSTRAINT [PK_dmRulePackageSupervisionStatuses];

ALTER TABLE [dmRulePackageSupervisionStatuses] ADD CONSTRAINT [PK_dmRulePackageSupervisionStatuses] PRIMARY KEY CLUSTERED (RulePackageSupervisionStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmRulePackageSupervisionStatuses_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmRulePackageSupervisionStatuses_LocationCd] ON [dmRulePackageSupervisionStatuses];
END

CREATE NONCLUSTERED INDEX [IX_dmRulePackageSupervisionStatuses_LocationCd] ON [dmRulePackageSupervisionStatuses] (LocationCd ASC, RulePackageId ASC)

ALTER TABLE [dmRulePackageWorkUnits]

DROP CONSTRAINT [PK_dmRulePackageWorkUnits];

ALTER TABLE [dmRulePackageWorkUnits] ADD CONSTRAINT [PK_dmRulePackageWorkUnits] PRIMARY KEY CLUSTERED (RulePackageWorkUnitId  ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmRulePackageWorkUnits_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmRulePackageWorkUnits_LocationCd] ON [dmRulePackageWorkUnits];
END

CREATE NONCLUSTERED INDEX [IX_dmRulePackageWorkUnits_LocationCd] ON [dmRulePackageWorkUnits] (LocationCd ASC, RulePackageId ASC)

ALTER TABLE [dmRuleSupervisionStatuses]

DROP CONSTRAINT [PK_dmRuleSupervisionStatuses];

ALTER TABLE [dmRuleSupervisionStatuses] ADD CONSTRAINT [PK_dmRuleSupervisionStatuses] PRIMARY KEY CLUSTERED (RuleSupervisionStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmRuleSupervisionStatuses_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmRuleSupervisionStatuses_LocationCd] ON [dmRuleSupervisionStatuses];
END

CREATE NONCLUSTERED INDEX [IX_dmRuleSupervisionStatuses_LocationCd] ON [dmRuleSupervisionStatuses] (LocationCd ASC, RuleId ASC)

ALTER TABLE [dmRuleWorkUnits]

DROP CONSTRAINT [PK_dmRuleWorkUnits];

ALTER TABLE [dmRuleWorkUnits] ADD CONSTRAINT [PK_dmRuleWorkUnits] PRIMARY KEY CLUSTERED (RuleWorkUnitId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmRuleWorkUnits_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmRuleWorkUnits_LocationCd] ON [dmRuleWorkUnits];
END

CREATE NONCLUSTERED INDEX [IX_dmRuleWorkUnits_LocationCd] ON [dmRuleWorkUnits] (LocationCd ASC, RuleId ASC)

ALTER TABLE [dmSecurityStandardAssociatedSubstances_OLD]

DROP CONSTRAINT [PK_dmSecurityStandardAssociatedSubstances];

ALTER TABLE [dmSecurityStandardAssociatedSubstances_OLD] ADD CONSTRAINT [PK_dmSecurityStandardAssociatedSubstances] PRIMARY KEY CLUSTERED (SecurityStandardAssociatedSubstanceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmSecurityStandardAssociatedSubstances_OLD_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmSecurityStandardAssociatedSubstances_OLD_LocationCd] ON [dmSecurityStandardAssociatedSubstances_OLD];
END

CREATE NONCLUSTERED INDEX [IX_dmSecurityStandardAssociatedSubstances_OLD_LocationCd] ON [dmSecurityStandardAssociatedSubstances_OLD] (LocationCd ASC, SecurityStandardTypeId ASC)

ALTER TABLE [dmSecurityStandardNonToxinSubtypes]

DROP CONSTRAINT [PK_dmSecurityStandardNonToxinSubtypes];

ALTER TABLE [dmSecurityStandardNonToxinSubtypes] ADD CONSTRAINT [PK_dmSecurityStandardNonToxinSubtypes] PRIMARY KEY CLUSTERED (SecurityStandardNonToxinSubtypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmSecurityStandardNonToxinSubtypes_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmSecurityStandardNonToxinSubtypes_LocationCd] ON [dmSecurityStandardNonToxinSubtypes];
END

CREATE NONCLUSTERED INDEX [IX_dmSecurityStandardNonToxinSubtypes_LocationCd] ON [dmSecurityStandardNonToxinSubtypes] (LocationCd ASC, SecurityStandardNonToxinTypeId ASC)

ALTER TABLE [dmSecurityStandardSubstancePanelSubstances]

DROP CONSTRAINT [PK_dmSecurityStandardSubstancePanelSubstances];

ALTER TABLE [dmSecurityStandardSubstancePanelSubstances] ADD CONSTRAINT [PK_dmSecurityStandardSubstancePanelSubstances] PRIMARY KEY CLUSTERED (SecurityStandardSubstancePanelSubstanceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmSecurityStandardSubstancePanelSubstances_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmSecurityStandardSubstancePanelSubstances_LocationCd] ON [dmSecurityStandardSubstancePanelSubstances];
END

CREATE NONCLUSTERED INDEX [IX_dmSecurityStandardSubstancePanelSubstances_LocationCd] ON [dmSecurityStandardSubstancePanelSubstances] (LocationCd ASC, SecurityStandardSubstancePanelId ASC)

ALTER TABLE [dmSentencePenaltyTypePenaltyModifiers]

DROP CONSTRAINT [PK_dmSentencePenaltyTypePenaltyModifiers];

ALTER TABLE [dmSentencePenaltyTypePenaltyModifiers] ADD CONSTRAINT [PK_dmSentencePenaltyTypePenaltyModifiers] PRIMARY KEY CLUSTERED (PenaltyTypePenaltyModifierId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmSentencePenaltyTypePenaltyModifiers_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmSentencePenaltyTypePenaltyModifiers_LocationCd] ON [dmSentencePenaltyTypePenaltyModifiers];
END

CREATE NONCLUSTERED INDEX [IX_dmSentencePenaltyTypePenaltyModifiers_LocationCd] ON [dmSentencePenaltyTypePenaltyModifiers] (LocationCd ASC, PenaltyTypeId ASC)

ALTER TABLE [dmStaffIdentifiers]

DROP CONSTRAINT [PK_dmStaffIdentifiers];

ALTER TABLE [dmStaffIdentifiers] ADD CONSTRAINT [PK_dmStaffIdentifiers] PRIMARY KEY CLUSTERED (StaffIdentifierId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmStaffIdentifiers_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmStaffIdentifiers_LocationCd] ON [dmStaffIdentifiers];
END

CREATE NONCLUSTERED INDEX [IX_dmStaffIdentifiers_LocationCd] ON [dmStaffIdentifiers] (LocationCd ASC, StaffInformationId ASC)

ALTER TABLE [dmStaffPhones]

DROP CONSTRAINT [PK_dmStaffPhones];

ALTER TABLE [dmStaffPhones] ADD CONSTRAINT [PK_dmStaffPhones] PRIMARY KEY CLUSTERED (StaffPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmStaffPhones_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmStaffPhones_LocationCd] ON [dmStaffPhones];
END

CREATE NONCLUSTERED INDEX [IX_dmStaffPhones_LocationCd] ON [dmStaffPhones] (LocationCd ASC, StaffInformationId ASC)

ALTER TABLE [dmStaffSignatures]

DROP CONSTRAINT [PK_dmStaffSignatures];

ALTER TABLE [dmStaffSignatures] ADD CONSTRAINT [PK_dmStaffSignatures] PRIMARY KEY CLUSTERED (StaffSignatureId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmStaffSignatures_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmStaffSignatures_LocationCd] ON [dmStaffSignatures];
END

CREATE NONCLUSTERED INDEX [IX_dmStaffSignatures_LocationCd] ON [dmStaffSignatures] (LocationCd ASC, StaffInformationId ASC)

ALTER TABLE [dmStaffWorkUnits]

DROP CONSTRAINT [PK_dmStaffWorkUnits];

ALTER TABLE [dmStaffWorkUnits] ADD CONSTRAINT [PK_dmStaffWorkUnits] PRIMARY KEY CLUSTERED (StaffWorkUnitId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmStaffWorkUnits_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmStaffWorkUnits_LocationCd] ON [dmStaffWorkUnits];
END

CREATE NONCLUSTERED INDEX [IX_dmStaffWorkUnits_LocationCd] ON [dmStaffWorkUnits] (LocationCd ASC, StaffInformationId ASC)

ALTER TABLE [dmThreatGroupSubFactions]

DROP CONSTRAINT [PK_dmThreatGroupSubFactions];

ALTER TABLE [dmThreatGroupSubFactions] ADD CONSTRAINT [PK_dmThreatGroupSubFactions] PRIMARY KEY CLUSTERED (ThreatGroupSubFactionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmThreatGroupSubFactions_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmThreatGroupSubFactions_LocationCd] ON [dmThreatGroupSubFactions];
END

CREATE NONCLUSTERED INDEX [IX_dmThreatGroupSubFactions_LocationCd] ON [dmThreatGroupSubFactions] (LocationCd ASC, ThreatGroupFactionId ASC)

ALTER TABLE [dmVehicleModels]

DROP CONSTRAINT [PK_dmVehicleModels];

ALTER TABLE [dmVehicleModels] ADD CONSTRAINT [PK_dmVehicleModels] PRIMARY KEY CLUSTERED (VehicleModelId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmVehicleModels_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmVehicleModels_LocationCd] ON [dmVehicleModels];
END

CREATE NONCLUSTERED INDEX [IX_dmVehicleModels_LocationCd] ON [dmVehicleModels] (LocationCd ASC, VehicleMakeId ASC)

ALTER TABLE [dmWorkAssignmentsFl]

DROP CONSTRAINT [PK_dmWorkAssignmentsFL];

ALTER TABLE [dmWorkAssignmentsFl] ADD CONSTRAINT [PK_dmWorkAssignmentsFL] PRIMARY KEY CLUSTERED (WorkAssignmentFlId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmWorkAssignmentsFl_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmWorkAssignmentsFl_LocationCd] ON [dmWorkAssignmentsFl];
END

CREATE NONCLUSTERED INDEX [IX_dmWorkAssignmentsFl_LocationCd] ON [dmWorkAssignmentsFl] (LocationCd ASC, FacilityId ASC)

ALTER TABLE [dmWorkAssignmentShifts]

DROP CONSTRAINT [PK_dmWorkAssignmentShifts];

ALTER TABLE [dmWorkAssignmentShifts] ADD CONSTRAINT [PK_dmWorkAssignmentShifts] PRIMARY KEY CLUSTERED (WorkAssignmentShiftId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmWorkAssignmentShifts_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmWorkAssignmentShifts_LocationCd] ON [dmWorkAssignmentShifts];
END

CREATE NONCLUSTERED INDEX [IX_dmWorkAssignmentShifts_LocationCd] ON [dmWorkAssignmentShifts] (LocationCd ASC, WorkAssignmentFlId ASC)

ALTER TABLE [dmWorkUnits]

DROP CONSTRAINT [PK_dmWorkUnits];

ALTER TABLE [dmWorkUnits] ADD CONSTRAINT [PK_dmWorkUnits] PRIMARY KEY CLUSTERED (WorkUnitId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_dmWorkUnits_LocationCd'
		)
BEGIN
	DROP INDEX [IX_dmWorkUnits_LocationCd] ON [dmWorkUnits];
END

CREATE NONCLUSTERED INDEX [IX_dmWorkUnits_LocationCd] ON [dmWorkUnits] (LocationCd ASC, RegionId ASC)

ALTER TABLE [EducationalDetailRecordRequests]

DROP CONSTRAINT [PK_EducationalDetailRecordRequests];

ALTER TABLE [EducationalDetailRecordRequests] ADD CONSTRAINT [PK_EducationalDetailRecordRequests] PRIMARY KEY CLUSTERED (EducationalDetailRecordRequestId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_EducationalDetailRecordRequests_LocationCd'
		)
BEGIN
	DROP INDEX [IX_EducationalDetailRecordRequests_LocationCd] ON [EducationalDetailRecordRequests];
END

CREATE NONCLUSTERED INDEX [IX_EducationalDetailRecordRequests_LocationCd] ON [EducationalDetailRecordRequests] (LocationCd ASC, EducationalDetailId ASC)

ALTER TABLE [EducationGedAccommodations]

DROP CONSTRAINT [PK_EducationGEDAccommodations];

ALTER TABLE [EducationGedAccommodations] ADD CONSTRAINT [PK_EducationGEDAccommodations] PRIMARY KEY CLUSTERED (EducationGedAccommodationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_EducationGedAccommodations_LocationCd'
		)
BEGIN
	DROP INDEX [IX_EducationGedAccommodations_LocationCd] ON [EducationGedAccommodations];
END

CREATE NONCLUSTERED INDEX [IX_EducationGedAccommodations_LocationCd] ON [EducationGedAccommodations] (LocationCd ASC, EducationGedId ASC)

ALTER TABLE [EmploymentPhones]

DROP CONSTRAINT [PK_EmploymentPhones];

ALTER TABLE [EmploymentPhones] ADD CONSTRAINT [PK_EmploymentPhones] PRIMARY KEY CLUSTERED (EmploymentPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_EmploymentPhones_LocationCd'
		)
BEGIN
	DROP INDEX [IX_EmploymentPhones_LocationCd] ON [EmploymentPhones];
END

CREATE NONCLUSTERED INDEX [IX_EmploymentPhones_LocationCd] ON [EmploymentPhones] (LocationCd ASC, EmploymentInformationId ASC)

ALTER TABLE [EndKeepSeparates]

DROP CONSTRAINT [PK_EndKeepSeparates];

ALTER TABLE [EndKeepSeparates] ADD CONSTRAINT [PK_EndKeepSeparates] PRIMARY KEY CLUSTERED (EndKeepSeparateId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_EndKeepSeparates_LocationCd'
		)
BEGIN
	DROP INDEX [IX_EndKeepSeparates_LocationCd] ON [EndKeepSeparates];
END

CREATE NONCLUSTERED INDEX [IX_EndKeepSeparates_LocationCd] ON [EndKeepSeparates] (LocationCd ASC, KeepSeparateId ASC)

ALTER TABLE [EnemyEndingInformation]

DROP CONSTRAINT [PK_EnemyEndingInformation];

ALTER TABLE [EnemyEndingInformation] ADD CONSTRAINT [PK_EnemyEndingInformation] PRIMARY KEY CLUSTERED (EnemyEndingInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_EnemyEndingInformation_LocationCd'
		)
BEGIN
	DROP INDEX [IX_EnemyEndingInformation_LocationCd] ON [EnemyEndingInformation];
END

CREATE NONCLUSTERED INDEX [IX_EnemyEndingInformation_LocationCd] ON [EnemyEndingInformation] (LocationCd ASC, EnemyInformationId ASC)

ALTER TABLE [FieldRuleViolationBehaviorCodes]

DROP CONSTRAINT [PK_FieldRuleViolationBehaviorCodes];

ALTER TABLE [FieldRuleViolationBehaviorCodes] ADD CONSTRAINT [PK_FieldRuleViolationBehaviorCodes] PRIMARY KEY CLUSTERED (FieldRuleViolationBehaviorCodeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_FieldRuleViolationBehaviorCodes_LocationCd'
		)
BEGIN
	DROP INDEX [IX_FieldRuleViolationBehaviorCodes_LocationCd] ON [FieldRuleViolationBehaviorCodes];
END

CREATE NONCLUSTERED INDEX [IX_FieldRuleViolationBehaviorCodes_LocationCd] ON [FieldRuleViolationBehaviorCodes] (LocationCd ASC, FieldRuleViolationIncidentId ASC)

ALTER TABLE [FieldRuleViolations]

DROP CONSTRAINT [PK_FieldRuleViolations];

ALTER TABLE [FieldRuleViolations] ADD CONSTRAINT [PK_FieldRuleViolations] PRIMARY KEY CLUSTERED (FieldRuleViolationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_FieldRuleViolations_LocationCd'
		)
BEGIN
	DROP INDEX [IX_FieldRuleViolations_LocationCd] ON [FieldRuleViolations];
END

CREATE NONCLUSTERED INDEX [IX_FieldRuleViolations_LocationCd] ON [FieldRuleViolations] (LocationCd ASC, FieldRuleViolationIncidentId ASC)

ALTER TABLE [GrievanceAppeals]

DROP CONSTRAINT [PK_GrievanceAppeals];

ALTER TABLE [GrievanceAppeals] ADD CONSTRAINT [PK_GrievanceAppeals] PRIMARY KEY CLUSTERED (GrievanceAppealId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_GrievanceAppeals_LocationCd'
		)
BEGIN
	DROP INDEX [IX_GrievanceAppeals_LocationCd] ON [GrievanceAppeals];
END

CREATE NONCLUSTERED INDEX [IX_GrievanceAppeals_LocationCd] ON [GrievanceAppeals] (LocationCd ASC, GrievanceId ASC)

ALTER TABLE [GrievanceNotifications]

DROP CONSTRAINT [PK_GrievanceNotifications];

ALTER TABLE [GrievanceNotifications] ADD CONSTRAINT [PK_GrievanceNotifications] PRIMARY KEY CLUSTERED (GrievanceNotificationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_GrievanceNotifications_LocationCd'
		)
BEGIN
	DROP INDEX [IX_GrievanceNotifications_LocationCd] ON [GrievanceNotifications];
END

CREATE NONCLUSTERED INDEX [IX_GrievanceNotifications_LocationCd] ON [GrievanceNotifications] (LocationCd ASC, GrievanceId ASC)

ALTER TABLE [GrievanceNoUnknownStaffNamed]

DROP CONSTRAINT [PK_GrievanceNoUnknownStaffNamed];

ALTER TABLE [GrievanceNoUnknownStaffNamed] ADD CONSTRAINT [PK_GrievanceNoUnknownStaffNamed] PRIMARY KEY CLUSTERED (GrievanceNoUnknownStaffNamedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_GrievanceNoUnknownStaffNamed_LocationCd'
		)
BEGIN
	DROP INDEX [IX_GrievanceNoUnknownStaffNamed_LocationCd] ON [GrievanceNoUnknownStaffNamed];
END

CREATE NONCLUSTERED INDEX [IX_GrievanceNoUnknownStaffNamed_LocationCd] ON [GrievanceNoUnknownStaffNamed] (LocationCd ASC, GrievanceNoUnknownId ASC)

ALTER TABLE [GrievanceReceipts]

DROP CONSTRAINT [PK_GrievanceReceipts];

ALTER TABLE [GrievanceReceipts] ADD CONSTRAINT [PK_GrievanceReceipts] PRIMARY KEY CLUSTERED (GrievanceReceiptId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_GrievanceReceipts_LocationCd'
		)
BEGIN
	DROP INDEX [IX_GrievanceReceipts_LocationCd] ON [GrievanceReceipts];
END

CREATE NONCLUSTERED INDEX [IX_GrievanceReceipts_LocationCd] ON [GrievanceReceipts] (LocationCd ASC, GrievanceId ASC)

ALTER TABLE [GrievanceResponses]

DROP CONSTRAINT [PK_GrievanceResponses];

ALTER TABLE [GrievanceResponses] ADD CONSTRAINT [PK_GrievanceResponses] PRIMARY KEY CLUSTERED (GrievanceResponseId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_GrievanceResponses_LocationCd'
		)
BEGIN
	DROP INDEX [IX_GrievanceResponses_LocationCd] ON [GrievanceResponses];
END

CREATE NONCLUSTERED INDEX [IX_GrievanceResponses_LocationCd] ON [GrievanceResponses] (LocationCd ASC, GrievanceId ASC)

ALTER TABLE [GrievanceRestrictionReviews]

DROP CONSTRAINT [PK_GrievanceRestrictionReviews];

ALTER TABLE [GrievanceRestrictionReviews] ADD CONSTRAINT [PK_GrievanceRestrictionReviews] PRIMARY KEY CLUSTERED (GrievanceRestrictionReviewId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_GrievanceRestrictionReviews_LocationCd'
		)
BEGIN
	DROP INDEX [IX_GrievanceRestrictionReviews_LocationCd] ON [GrievanceRestrictionReviews];
END

CREATE NONCLUSTERED INDEX [IX_GrievanceRestrictionReviews_LocationCd] ON [GrievanceRestrictionReviews] (LocationCd ASC, GrievanceRestrictionId ASC)

ALTER TABLE [GrievanceStaffNamed]

DROP CONSTRAINT [PK_GrievanceStaffNamed];

ALTER TABLE [GrievanceStaffNamed] ADD CONSTRAINT [PK_GrievanceStaffNamed] PRIMARY KEY CLUSTERED (GrievanceStaffNamedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_GrievanceStaffNamed_LocationCd'
		)
BEGIN
	DROP INDEX [IX_GrievanceStaffNamed_LocationCd] ON [GrievanceStaffNamed];
END

CREATE NONCLUSTERED INDEX [IX_GrievanceStaffNamed_LocationCd] ON [GrievanceStaffNamed] (LocationCd ASC, GrievanceId ASC)

ALTER TABLE [H_dmBopExecutiveClemencyAppTypes]

DROP CONSTRAINT [PK_H_dmClemencyTypes];

ALTER TABLE [H_dmBopExecutiveClemencyAppTypes] ADD CONSTRAINT [PK_H_dmClemencyTypes] PRIMARY KEY CLUSTERED (H_BopExecutiveClemencyAppTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_H_dmBopExecutiveClemencyAppTypes_LocationCd'
		)
BEGIN
	DROP INDEX [IX_H_dmBopExecutiveClemencyAppTypes_LocationCd] ON [H_dmBopExecutiveClemencyAppTypes];
END

CREATE NONCLUSTERED INDEX [IX_H_dmBopExecutiveClemencyAppTypes_LocationCd] ON [H_dmBopExecutiveClemencyAppTypes] (LocationCd ASC, AppType  ASC)

ALTER TABLE [H_NonOffenderFileWordTemplateRegionFileNames]

DROP CONSTRAINT [PK_H_NonOffenderFileWordTemplateRegionFileNames];

ALTER TABLE [H_NonOffenderFileWordTemplateRegionFileNames] ADD CONSTRAINT [PK_H_NonOffenderFileWordTemplateRegionFileNames] PRIMARY KEY CLUSTERED (H_NonOffenderFileWordTemplateRegionFileNameId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_H_NonOffenderFileWordTemplateRegionFileNames_LocationCd'
		)
BEGIN
	DROP INDEX [IX_H_NonOffenderFileWordTemplateRegionFileNames_LocationCd] ON [H_NonOffenderFileWordTemplateRegionFileNames];
END

CREATE NONCLUSTERED INDEX [IX_H_NonOffenderFileWordTemplateRegionFileNames_LocationCd] ON [H_NonOffenderFileWordTemplateRegionFileNames] (LocationCd ASC, NonOffenderFileId ASC)

ALTER TABLE [HelpFileSecurityEntities] where HelpFileSecurityEntityId=20000587

DROP CONSTRAINT [PK_HelpFileSecurityEntities];

--ALTER TABLE [HelpFileSecurityEntities] ADD CONSTRAINT [PK_HelpFileSecurityEntities] PRIMARY KEY CLUSTERED (HelpFileSecurityEntityId ASC)
--	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_HelpFileSecurityEntities_LocationCd'
		)
BEGIN
	DROP INDEX [IX_HelpFileSecurityEntities_LocationCd] ON [HelpFileSecurityEntities];
END

CREATE NONCLUSTERED INDEX [IX_HelpFileSecurityEntities_LocationCd] ON [HelpFileSecurityEntities] (LocationCd ASC, HelpFileId ASC)

ALTER TABLE [HousingCountLocations]

DROP CONSTRAINT [PK_HousingCountLocations];

ALTER TABLE [HousingCountLocations] ADD CONSTRAINT [PK_HousingCountLocations] PRIMARY KEY CLUSTERED (HousingCountLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_HousingCountLocations_LocationCd'
		)
BEGIN
	DROP INDEX [IX_HousingCountLocations_LocationCd] ON [HousingCountLocations];
END

CREATE NONCLUSTERED INDEX [IX_HousingCountLocations_LocationCd] ON [HousingCountLocations] (LocationCd ASC, HousingCountId ASC)

ALTER TABLE [HousingCountOffenders]

DROP CONSTRAINT [PK_HousingCountOffenders];

ALTER TABLE [HousingCountOffenders] ADD CONSTRAINT [PK_HousingCountOffenders] PRIMARY KEY CLUSTERED (HousingCountOffenderId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_HousingCountOffenders_LocationCd'
		)
BEGIN
	DROP INDEX [IX_HousingCountOffenders_LocationCd] ON [HousingCountOffenders];
END

CREATE NONCLUSTERED INDEX [IX_HousingCountOffenders_LocationCd] ON [HousingCountOffenders] (LocationCd ASC, HousingCountId ASC)

ALTER TABLE [HousingCountOffendersWorkTable]

DROP CONSTRAINT [PK_HousingCountOffendersWorkTable];

ALTER TABLE [HousingCountOffendersWorkTable] ADD CONSTRAINT [PK_HousingCountOffendersWorkTable] PRIMARY KEY CLUSTERED (HousingCountOffenderId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_HousingCountOffendersWorkTable_LocationCd'
		)
BEGIN
	DROP INDEX [IX_HousingCountOffendersWorkTable_LocationCd] ON [HousingCountOffendersWorkTable];
END

CREATE NONCLUSTERED INDEX [IX_HousingCountOffendersWorkTable_LocationCd] ON [HousingCountOffendersWorkTable] (LocationCd ASC, HousingCountId ASC)

ALTER TABLE [HruwtCurfews]

DROP CONSTRAINT [PK_HruwtCurfews];

ALTER TABLE [HruwtCurfews] ADD CONSTRAINT [PK_HruwtCurfews] PRIMARY KEY CLUSTERED (HruwtCurfewId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_HruwtCurfews_LocationCd'
		)
BEGIN
	DROP INDEX [IX_HruwtCurfews_LocationCd] ON [HruwtCurfews];
END

CREATE NONCLUSTERED INDEX [IX_HruwtCurfews_LocationCd] ON [HruwtCurfews] (LocationCd ASC, HruwtId ASC)

ALTER TABLE [HruwtProgramManagers]

DROP CONSTRAINT [PK_HruwtProgramManagers];

ALTER TABLE [HruwtProgramManagers] ADD CONSTRAINT [PK_HruwtProgramManagers] PRIMARY KEY CLUSTERED (HruwtProgramManagerId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_HruwtProgramManagers_LocationCd'
		)
BEGIN
	DROP INDEX [IX_HruwtProgramManagers_LocationCd] ON [HruwtProgramManagers];
END

CREATE NONCLUSTERED INDEX [IX_HruwtProgramManagers_LocationCd] ON [HruwtProgramManagers] (LocationCd ASC, HruwtId ASC)

ALTER TABLE [IcssConfidentialityReasons]

DROP CONSTRAINT [PK_IcssConfidentialityReasons];

ALTER TABLE [IcssConfidentialityReasons] ADD CONSTRAINT [PK_IcssConfidentialityReasons] PRIMARY KEY CLUSTERED (IcssConfidentialityReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_IcssConfidentialityReasons_LocationCd'
		)
BEGIN
	DROP INDEX [IX_IcssConfidentialityReasons_LocationCd] ON [IcssConfidentialityReasons];
END

CREATE NONCLUSTERED INDEX [IX_IcssConfidentialityReasons_LocationCd] ON [IcssConfidentialityReasons] (LocationCd ASC, InstitutionConfidentialStatementSummaryId ASC)

ALTER TABLE [IcssCorroboratingTypes]

DROP CONSTRAINT [PK_IcssCorroboratingTypess];

ALTER TABLE [IcssCorroboratingTypes] ADD CONSTRAINT [PK_IcssCorroboratingTypess] PRIMARY KEY CLUSTERED (IcssCorroboratingTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_IcssCorroboratingTypes_LocationCd'
		)
BEGIN
	DROP INDEX [IX_IcssCorroboratingTypes_LocationCd] ON [IcssCorroboratingTypes];
END

CREATE NONCLUSTERED INDEX [IX_IcssCorroboratingTypes_LocationCd] ON [IcssCorroboratingTypes] (LocationCd ASC, InstitutionConfidentialStatementSummaryId ASC)

ALTER TABLE [IcssReliableReasons]

DROP CONSTRAINT [PK_IcssReliableReasons];

ALTER TABLE [IcssReliableReasons] ADD CONSTRAINT [PK_IcssReliableReasons] PRIMARY KEY CLUSTERED (IcssReliableReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_IcssReliableReasons_LocationCd'
		)
BEGIN
	DROP INDEX [IX_IcssReliableReasons_LocationCd] ON [IcssReliableReasons];
END

CREATE NONCLUSTERED INDEX [IX_IcssReliableReasons_LocationCd] ON [IcssReliableReasons] (LocationCd ASC, InstitutionConfidentialStatementSummaryId ASC)

ALTER TABLE [InstitutionAllegedRuleViolations]

DROP CONSTRAINT [PK_InstitutionAllegedRuleViolations];

ALTER TABLE [InstitutionAllegedRuleViolations] ADD CONSTRAINT [PK_InstitutionAllegedRuleViolations] PRIMARY KEY CLUSTERED (InstitutionAllegedRuleViolationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_InstitutionAllegedRuleViolations_LocationCd'
		)
BEGIN
	DROP INDEX [IX_InstitutionAllegedRuleViolations_LocationCd] ON [InstitutionAllegedRuleViolations];
END

CREATE NONCLUSTERED INDEX [IX_InstitutionAllegedRuleViolations_LocationCd] ON [InstitutionAllegedRuleViolations] (LocationCd ASC, InstitutionDisciplinaryNoticeId ASC)

ALTER TABLE [InstitutionAppealReasons]

DROP CONSTRAINT [PK_InstitutionAppealReasons];

ALTER TABLE [InstitutionAppealReasons] ADD CONSTRAINT [PK_InstitutionAppealReasons] PRIMARY KEY CLUSTERED (InstitutionAppealReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_InstitutionAppealReasons_LocationCd'
		)
BEGIN
	DROP INDEX [IX_InstitutionAppealReasons_LocationCd] ON [InstitutionAppealReasons];
END

CREATE NONCLUSTERED INDEX [IX_InstitutionAppealReasons_LocationCd] ON [InstitutionAppealReasons] (LocationCd ASC, InstitutionAppealId ASC)

ALTER TABLE [InstitutionAppealReports]

DROP CONSTRAINT [PK_InstitutionAppealReports];

ALTER TABLE [InstitutionAppealReports] ADD CONSTRAINT [PK_InstitutionAppealReports] PRIMARY KEY CLUSTERED (InstitutionAppealReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_InstitutionAppealReports_LocationCd'
		)
BEGIN
	DROP INDEX [IX_InstitutionAppealReports_LocationCd] ON [InstitutionAppealReports];
END

CREATE NONCLUSTERED INDEX [IX_InstitutionAppealReports_LocationCd] ON [InstitutionAppealReports] (LocationCd ASC, InstitutionAppealId ASC)

ALTER TABLE [InstitutionAppeals]

DROP CONSTRAINT [PK_InstitutionAppeals];

ALTER TABLE [InstitutionAppeals] ADD CONSTRAINT [PK_InstitutionAppeals] PRIMARY KEY CLUSTERED (InstitutionAppealId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_InstitutionAppeals_LocationCd'
		)
BEGIN
	DROP INDEX [IX_InstitutionAppeals_LocationCd] ON [InstitutionAppeals];
END

CREATE NONCLUSTERED INDEX [IX_InstitutionAppeals_LocationCd] ON [InstitutionAppeals] (LocationCd ASC, InstitutionHearingId ASC)

ALTER TABLE [InstitutionConfidentialStatementSummaries]

DROP CONSTRAINT [PK_InstitutionConfidentialStatementSummaries];

ALTER TABLE [InstitutionConfidentialStatementSummaries] ADD CONSTRAINT [PK_InstitutionConfidentialStatementSummaries] PRIMARY KEY CLUSTERED (InstitutionConfidentialStatementSummaryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_InstitutionConfidentialStatementSummaries_LocationCd'
		)
BEGIN
	DROP INDEX [IX_InstitutionConfidentialStatementSummaries_LocationCd] ON [InstitutionConfidentialStatementSummaries];
END

CREATE NONCLUSTERED INDEX [IX_InstitutionConfidentialStatementSummaries_LocationCd] ON [InstitutionConfidentialStatementSummaries] (LocationCd ASC, InstitutionHearingId ASC)

ALTER TABLE [InstitutionDisciplinaryNoticeReports]

DROP CONSTRAINT [PK_InstitutionDisciplinaryNoticeReports];

ALTER TABLE [InstitutionDisciplinaryNoticeReports] ADD CONSTRAINT [PK_InstitutionDisciplinaryNoticeReports] PRIMARY KEY CLUSTERED (InstitutionDisciplinaryNoticeReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_InstitutionDisciplinaryNoticeReports_LocationCd'
		)
BEGIN
	DROP INDEX [IX_InstitutionDisciplinaryNoticeReports_LocationCd] ON [InstitutionDisciplinaryNoticeReports];
END

CREATE NONCLUSTERED INDEX [IX_InstitutionDisciplinaryNoticeReports_LocationCd] ON [InstitutionDisciplinaryNoticeReports] (LocationCd ASC, InstitutionDisciplinaryNoticeId ASC)

ALTER TABLE [InstitutionHearingDisciplinaryNotices]

DROP CONSTRAINT [PK_InstitutionHearingDisciplinaryNotices];

ALTER TABLE [InstitutionHearingDisciplinaryNotices] ADD CONSTRAINT [PK_InstitutionHearingDisciplinaryNotices] PRIMARY KEY CLUSTERED (InstitutionHearingDisciplinaryNoticeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_InstitutionHearingDisciplinaryNotices_LocationCd'
		)
BEGIN
	DROP INDEX [IX_InstitutionHearingDisciplinaryNotices_LocationCd] ON [InstitutionHearingDisciplinaryNotices];
END

CREATE NONCLUSTERED INDEX [IX_InstitutionHearingDisciplinaryNotices_LocationCd] ON [InstitutionHearingDisciplinaryNotices] (LocationCd ASC, InstitutionHearingId ASC)

ALTER TABLE [InstitutionHearingReports]

DROP CONSTRAINT [PK_InstitutionHearingReports];

ALTER TABLE [InstitutionHearingReports] ADD CONSTRAINT [PK_InstitutionHearingReports] PRIMARY KEY CLUSTERED (InstitutionHearingReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_InstitutionHearingReports_LocationCd'
		)
BEGIN
	DROP INDEX [IX_InstitutionHearingReports_LocationCd] ON [InstitutionHearingReports];
END

CREATE NONCLUSTERED INDEX [IX_InstitutionHearingReports_LocationCd] ON [InstitutionHearingReports] (LocationCd ASC, InstitutionHearingId ASC)

ALTER TABLE [InstitutionInvestigationReports]

DROP CONSTRAINT [PK_InstitutionInvestigationReports];

ALTER TABLE [InstitutionInvestigationReports] ADD CONSTRAINT [PK_InstitutionInvestigationReports] PRIMARY KEY CLUSTERED (InstitutionInvestigationReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_InstitutionInvestigationReports_LocationCd'
		)
BEGIN
	DROP INDEX [IX_InstitutionInvestigationReports_LocationCd] ON [InstitutionInvestigationReports];
END

CREATE NONCLUSTERED INDEX [IX_InstitutionInvestigationReports_LocationCd] ON [InstitutionInvestigationReports] (LocationCd ASC, InstitutionInvestigationId ASC)

ALTER TABLE [InstitutionInvestigations]

DROP CONSTRAINT [PK_InstitutionInvestigations];

ALTER TABLE [InstitutionInvestigations] ADD CONSTRAINT [PK_InstitutionInvestigations] PRIMARY KEY CLUSTERED (InstitutionInvestigationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_InstitutionInvestigations_LocationCd'
		)
BEGIN
	DROP INDEX [IX_InstitutionInvestigations_LocationCd] ON [InstitutionInvestigations];
END

CREATE NONCLUSTERED INDEX [IX_InstitutionInvestigations_LocationCd] ON [InstitutionInvestigations] (LocationCd ASC, InstitutionDisciplinaryNoticeId ASC)

ALTER TABLE [InstitutionRuleViolations]

DROP CONSTRAINT [PK_InstitutionRuleViolations];

ALTER TABLE [InstitutionRuleViolations] ADD CONSTRAINT [PK_InstitutionRuleViolations] PRIMARY KEY CLUSTERED (InstitutionRuleViolationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_InstitutionRuleViolations_LocationCd'
		)
BEGIN
	DROP INDEX [IX_InstitutionRuleViolations_LocationCd] ON [InstitutionRuleViolations];
END

CREATE NONCLUSTERED INDEX [IX_InstitutionRuleViolations_LocationCd] ON [InstitutionRuleViolations] (LocationCd ASC, ParentId ASC)

ALTER TABLE [InstitutionSanctions]

DROP CONSTRAINT [PK_InstitutionSanctions];

ALTER TABLE [InstitutionSanctions] ADD CONSTRAINT [PK_InstitutionSanctions] PRIMARY KEY CLUSTERED (InstitutionSanctionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_InstitutionSanctions_LocationCd'
		)
BEGIN
	DROP INDEX [IX_InstitutionSanctions_LocationCd] ON [InstitutionSanctions];
END

CREATE NONCLUSTERED INDEX [IX_InstitutionSanctions_LocationCd] ON [InstitutionSanctions] (LocationCd ASC, ParentId ASC)

ALTER TABLE [InterventionAssessments]

DROP CONSTRAINT [PK_InterventionAssessments];

ALTER TABLE [InterventionAssessments] ADD CONSTRAINT [PK_InterventionAssessments] PRIMARY KEY CLUSTERED (InterventionAssessmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_InterventionAssessments_LocationCd'
		)
BEGIN
	DROP INDEX [IX_InterventionAssessments_LocationCd] ON [InterventionAssessments];
END

CREATE NONCLUSTERED INDEX [IX_InterventionAssessments_LocationCd] ON [InterventionAssessments] (LocationCd ASC, OffenderInterventionId ASC)

ALTER TABLE [InterventionsInitiatedReasons]

DROP CONSTRAINT [PK_InterventionsInitiatedReasons];

ALTER TABLE [InterventionsInitiatedReasons] ADD CONSTRAINT [PK_InterventionsInitiatedReasons] PRIMARY KEY CLUSTERED (InterventionsInitiatedReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_InterventionsInitiatedReasons_LocationCd'
		)
BEGIN
	DROP INDEX [IX_InterventionsInitiatedReasons_LocationCd] ON [InterventionsInitiatedReasons];
END

CREATE NONCLUSTERED INDEX [IX_InterventionsInitiatedReasons_LocationCd] ON [InterventionsInitiatedReasons] (LocationCd ASC, OffenderInterventionId ASC)

ALTER TABLE [KioskFurloughApplicationPlans]

DROP CONSTRAINT [PK_KioskFurloughApplicationPlans];

ALTER TABLE [KioskFurloughApplicationPlans] ADD CONSTRAINT [PK_KioskFurloughApplicationPlans] PRIMARY KEY CLUSTERED (KioskFurloughApplicationPlanId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_KioskFurloughApplicationPlans_LocationCd'
		)
BEGIN
	DROP INDEX [IX_KioskFurloughApplicationPlans_LocationCd] ON [KioskFurloughApplicationPlans];
END

CREATE NONCLUSTERED INDEX [IX_KioskFurloughApplicationPlans_LocationCd] ON [KioskFurloughApplicationPlans] (LocationCd ASC, KioskFurloughApplicationId ASC)

ALTER TABLE [KioskFurloughApplicationProcessing]

DROP CONSTRAINT [PK_KioskFurloughApplicationProcessing];

ALTER TABLE [KioskFurloughApplicationProcessing] ADD CONSTRAINT [PK_KioskFurloughApplicationProcessing] PRIMARY KEY CLUSTERED (KioskFurloughApplicationProcessingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_KioskFurloughApplicationProcessing_LocationCd'
		)
BEGIN
	DROP INDEX [IX_KioskFurloughApplicationProcessing_LocationCd] ON [KioskFurloughApplicationProcessing];
END

CREATE NONCLUSTERED INDEX [IX_KioskFurloughApplicationProcessing_LocationCd] ON [KioskFurloughApplicationProcessing] (LocationCd ASC, KioskFurloughApplicationId ASC)

ALTER TABLE [KioskMessages]

DROP CONSTRAINT [PK_KioskMessages];

ALTER TABLE [KioskMessages] ADD CONSTRAINT [PK_KioskMessages] PRIMARY KEY CLUSTERED (KioskMessageId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_KioskMessages_LocationCd'
		)
BEGIN
	DROP INDEX [IX_KioskMessages_LocationCd] ON [KioskMessages];
END

CREATE NONCLUSTERED INDEX [IX_KioskMessages_LocationCd] ON [KioskMessages] (LocationCd ASC, KioskMessageConversationId ASC)

ALTER TABLE [KioskMonthlyReportEmployment]

DROP CONSTRAINT [PK_KioskMonthlyReportEmployment];

ALTER TABLE [KioskMonthlyReportEmployment] ADD CONSTRAINT [PK_KioskMonthlyReportEmployment] PRIMARY KEY CLUSTERED (KioskMonthlyReportEmploymentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_KioskMonthlyReportEmployment_LocationCd'
		)
BEGIN
	DROP INDEX [IX_KioskMonthlyReportEmployment_LocationCd] ON [KioskMonthlyReportEmployment];
END

CREATE NONCLUSTERED INDEX [IX_KioskMonthlyReportEmployment_LocationCd] ON [KioskMonthlyReportEmployment] (LocationCd ASC, KioskMonthlyReportId ASC)

ALTER TABLE [KioskMonthlyReportProcessing]

DROP CONSTRAINT [PK_KioskMonthlyReportProcessing];

ALTER TABLE [KioskMonthlyReportProcessing] ADD CONSTRAINT [PK_KioskMonthlyReportProcessing] PRIMARY KEY CLUSTERED (KioskMonthlyReportProcessingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_KioskMonthlyReportProcessing_LocationCd'
		)
BEGIN
	DROP INDEX [IX_KioskMonthlyReportProcessing_LocationCd] ON [KioskMonthlyReportProcessing];
END

CREATE NONCLUSTERED INDEX [IX_KioskMonthlyReportProcessing_LocationCd] ON [KioskMonthlyReportProcessing] (LocationCd ASC, KioskMonthlyReportId ASC)

ALTER TABLE [KioskPassApplicationPlans]

DROP CONSTRAINT [PK_KioskPassApplicationPlans];

ALTER TABLE [KioskPassApplicationPlans] ADD CONSTRAINT [PK_KioskPassApplicationPlans] PRIMARY KEY CLUSTERED (KioskPassApplicationPlanId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_KioskPassApplicationPlans_LocationCd'
		)
BEGIN
	DROP INDEX [IX_KioskPassApplicationPlans_LocationCd] ON [KioskPassApplicationPlans];
END

CREATE NONCLUSTERED INDEX [IX_KioskPassApplicationPlans_LocationCd] ON [KioskPassApplicationPlans] (LocationCd ASC, KioskPassApplicationId ASC)

ALTER TABLE [KioskPassApplicationProcessing]

DROP CONSTRAINT [PK_KioskPassApplicationProcessing];

ALTER TABLE [KioskPassApplicationProcessing] ADD CONSTRAINT [PK_KioskPassApplicationProcessing] PRIMARY KEY CLUSTERED (KioskPassApplicationProcessingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_KioskPassApplicationProcessing_LocationCd'
		)
BEGIN
	DROP INDEX [IX_KioskPassApplicationProcessing_LocationCd] ON [KioskPassApplicationProcessing];
END

CREATE NONCLUSTERED INDEX [IX_KioskPassApplicationProcessing_LocationCd] ON [KioskPassApplicationProcessing] (LocationCd ASC, KioskPassApplicationId ASC)

ALTER TABLE [KioskTravelRequestProcessing]

DROP CONSTRAINT [PK_KioskTravelRequestProcessing];

ALTER TABLE [KioskTravelRequestProcessing] ADD CONSTRAINT [PK_KioskTravelRequestProcessing] PRIMARY KEY CLUSTERED (KioskTravelRequestProcessingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_KioskTravelRequestProcessing_LocationCd'
		)
BEGIN
	DROP INDEX [IX_KioskTravelRequestProcessing_LocationCd] ON [KioskTravelRequestProcessing];
END

CREATE NONCLUSTERED INDEX [IX_KioskTravelRequestProcessing_LocationCd] ON [KioskTravelRequestProcessing] (LocationCd ASC, KioskTravelRequestId ASC)

ALTER TABLE [MagdyTrainingAddressPhones]

DROP CONSTRAINT [PK_MagdyTrainingAddressPhones];

ALTER TABLE [MagdyTrainingAddressPhones] ADD CONSTRAINT [PK_MagdyTrainingAddressPhones] PRIMARY KEY CLUSTERED (TrainingAddressPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_MagdyTrainingAddressPhones_LocationCd'
		)
BEGIN
	DROP INDEX [IX_MagdyTrainingAddressPhones_LocationCd] ON [MagdyTrainingAddressPhones];
END

CREATE NONCLUSTERED INDEX [IX_MagdyTrainingAddressPhones_LocationCd] ON [MagdyTrainingAddressPhones] (LocationCd ASC, TrainingAddressId ASC)

ALTER TABLE [MeganTrainingAddressPhones]

DROP CONSTRAINT [PK_MeganTrainingAddressPhones];

ALTER TABLE [MeganTrainingAddressPhones] ADD CONSTRAINT [PK_MeganTrainingAddressPhones] PRIMARY KEY CLUSTERED (TrainingAddressPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_MeganTrainingAddressPhones_LocationCd'
		)
BEGIN
	DROP INDEX [IX_MeganTrainingAddressPhones_LocationCd] ON [MeganTrainingAddressPhones];
END

CREATE NONCLUSTERED INDEX [IX_MeganTrainingAddressPhones_LocationCd] ON [MeganTrainingAddressPhones] (LocationCd ASC, TrainingAddressId ASC)

ALTER TABLE [MikeTrainingAddressPhones]

DROP CONSTRAINT [PK_MikeTrainingAddressPhones];

ALTER TABLE [MikeTrainingAddressPhones] ADD CONSTRAINT [PK_MikeTrainingAddressPhones] PRIMARY KEY CLUSTERED (TrainingAddressPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_MikeTrainingAddressPhones_LocationCd'
		)
BEGIN
	DROP INDEX [IX_MikeTrainingAddressPhones_LocationCd] ON [MikeTrainingAddressPhones];
END

CREATE NONCLUSTERED INDEX [IX_MikeTrainingAddressPhones_LocationCd] ON [MikeTrainingAddressPhones] (LocationCd ASC, TrainingAddressId ASC)

ALTER TABLE [MpCaseManagers]

DROP CONSTRAINT [PK_MpCaseManagers];

ALTER TABLE [MpCaseManagers] ADD CONSTRAINT [PK_MpCaseManagers] PRIMARY KEY CLUSTERED (MpCaseManagerId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_MpCaseManagers_LocationCd'
		)
BEGIN
	DROP INDEX [IX_MpCaseManagers_LocationCd] ON [MpCaseManagers];
END

CREATE NONCLUSTERED INDEX [IX_MpCaseManagers_LocationCd] ON [MpCaseManagers] (LocationCd ASC, MonitoringProgramId ASC)

ALTER TABLE [MpCharges]

DROP CONSTRAINT [PK_MpCharges];

ALTER TABLE [MpCharges] ADD CONSTRAINT [PK_MpCharges] PRIMARY KEY CLUSTERED (MpChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_MpCharges_LocationCd'
		)
BEGIN
	DROP INDEX [IX_MpCharges_LocationCd] ON [MpCharges];
END

CREATE NONCLUSTERED INDEX [IX_MpCharges_LocationCd] ON [MpCharges] (LocationCd ASC, MonitoringProgramId ASC)

ALTER TABLE [MpOffenderInterventionPrograms]

DROP CONSTRAINT [PK_MpOffenderInterventionPrograms];

ALTER TABLE [MpOffenderInterventionPrograms] ADD CONSTRAINT [PK_MpOffenderInterventionPrograms] PRIMARY KEY CLUSTERED (MpOffenderInterventionProgramId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_MpOffenderInterventionPrograms_LocationCd'
		)
BEGIN
	DROP INDEX [IX_MpOffenderInterventionPrograms_LocationCd] ON [MpOffenderInterventionPrograms];
END

CREATE NONCLUSTERED INDEX [IX_MpOffenderInterventionPrograms_LocationCd] ON [MpOffenderInterventionPrograms] (LocationCd ASC, MonitoringProgramId ASC)

ALTER TABLE [MpOffenderWorkUnits]

DROP CONSTRAINT [PK_MpOffenderWorkUnits];

ALTER TABLE [MpOffenderWorkUnits] ADD CONSTRAINT [PK_MpOffenderWorkUnits] PRIMARY KEY CLUSTERED (MpOffenderWorkUnitId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_MpOffenderWorkUnits_LocationCd'
		)
BEGIN
	DROP INDEX [IX_MpOffenderWorkUnits_LocationCd] ON [MpOffenderWorkUnits];
END

CREATE NONCLUSTERED INDEX [IX_MpOffenderWorkUnits_LocationCd] ON [MpOffenderWorkUnits] (LocationCd ASC, MonitoringProgramId ASC)

ALTER TABLE [MpSecondaryManagement]

DROP CONSTRAINT [PK_MpSecondaryManagement];

ALTER TABLE [MpSecondaryManagement] ADD CONSTRAINT [PK_MpSecondaryManagement] PRIMARY KEY CLUSTERED (MpSecondaryManagementId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_MpSecondaryManagement_LocationCd'
		)
BEGIN
	DROP INDEX [IX_MpSecondaryManagement_LocationCd] ON [MpSecondaryManagement];
END

CREATE NONCLUSTERED INDEX [IX_MpSecondaryManagement_LocationCd] ON [MpSecondaryManagement] (LocationCd ASC, MonitoringProgramId ASC)

ALTER TABLE [MpTrackedItems]

DROP CONSTRAINT [PK_MpTrackedItems];

ALTER TABLE [MpTrackedItems] ADD CONSTRAINT [PK_MpTrackedItems] PRIMARY KEY CLUSTERED (MpTrackedItemId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_MpTrackedItems_LocationCd'
		)
BEGIN
	DROP INDEX [IX_MpTrackedItems_LocationCd] ON [MpTrackedItems];
END

CREATE NONCLUSTERED INDEX [IX_MpTrackedItems_LocationCd] ON [MpTrackedItems] (LocationCd ASC, MonitoringProgramId ASC)

ALTER TABLE [MpTransferNotifications]

DROP CONSTRAINT [PK_MpTransferNotifications];

ALTER TABLE [MpTransferNotifications] ADD CONSTRAINT [PK_MpTransferNotifications] PRIMARY KEY CLUSTERED (MpTransferNotificationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_MpTransferNotifications_LocationCd'
		)
BEGIN
	DROP INDEX [IX_MpTransferNotifications_LocationCd] ON [MpTransferNotifications];
END

CREATE NONCLUSTERED INDEX [IX_MpTransferNotifications_LocationCd] ON [MpTransferNotifications] (LocationCd ASC, MonitoringProgramId ASC)

ALTER TABLE [NameTypes]

DROP CONSTRAINT [PK_NameTypes];

ALTER TABLE [NameTypes] ADD CONSTRAINT [PK_NameTypes] PRIMARY KEY CLUSTERED (OffenderNameTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_NameTypes_LocationCd'
		)
BEGIN
	DROP INDEX [IX_NameTypes_LocationCd] ON [NameTypes];
END

CREATE NONCLUSTERED INDEX [IX_NameTypes_LocationCd] ON [NameTypes] (LocationCd ASC, NameInformationId ASC)

ALTER TABLE [NeedsEndedReasons]

DROP CONSTRAINT [PK_NeedsEndedReasons];

ALTER TABLE [NeedsEndedReasons] ADD CONSTRAINT [PK_NeedsEndedReasons] PRIMARY KEY CLUSTERED (NeedsEndedReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_NeedsEndedReasons_LocationCd'
		)
BEGIN
	DROP INDEX [IX_NeedsEndedReasons_LocationCd] ON [NeedsEndedReasons];
END

CREATE NONCLUSTERED INDEX [IX_NeedsEndedReasons_LocationCd] ON [NeedsEndedReasons] (LocationCd ASC, OffenderNeedId ASC)

ALTER TABLE [NeedsIdentifiedReasons]

DROP CONSTRAINT [PK_NeedsIdentifiedReasons];

ALTER TABLE [NeedsIdentifiedReasons] ADD CONSTRAINT [PK_NeedsIdentifiedReasons] PRIMARY KEY CLUSTERED (NeedsIdentifiedReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_NeedsIdentifiedReasons_LocationCd'
		)
BEGIN
	DROP INDEX [IX_NeedsIdentifiedReasons_LocationCd] ON [NeedsIdentifiedReasons];
END

CREATE NONCLUSTERED INDEX [IX_NeedsIdentifiedReasons_LocationCd] ON [NeedsIdentifiedReasons] (LocationCd ASC, OffenderNeedId ASC)

ALTER TABLE [Nga_Ca_CaseMessages]

DROP CONSTRAINT [PK_Nga_Ca_CaseMessages];

ALTER TABLE [Nga_Ca_CaseMessages] ADD CONSTRAINT [PK_Nga_Ca_CaseMessages] PRIMARY KEY CLUSTERED (CaseMessageId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_Nga_Ca_CaseMessages_LocationCd'
		)
BEGIN
	DROP INDEX [IX_Nga_Ca_CaseMessages_LocationCd] ON [Nga_Ca_CaseMessages];
END

CREATE NONCLUSTERED INDEX [IX_Nga_Ca_CaseMessages_LocationCd] ON [Nga_Ca_CaseMessages] (LocationCd ASC, MessageId ASC)

ALTER TABLE [Nga_Ca_Charges]

DROP CONSTRAINT [PK_NGA_CA_Charges];

ALTER TABLE [Nga_Ca_Charges] ADD CONSTRAINT [PK_NGA_CA_Charges] PRIMARY KEY CLUSTERED (IconChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_Nga_Ca_Charges_LocationCd'
		)
BEGIN
	DROP INDEX [IX_Nga_Ca_Charges_LocationCd] ON [Nga_Ca_Charges];
END

CREATE NONCLUSTERED INDEX [IX_Nga_Ca_Charges_LocationCd] ON [Nga_Ca_Charges] (LocationCd ASC, IconCaseId ASC)

ALTER TABLE [Nga_Ca_Defendants]

DROP CONSTRAINT [PK_NGA_CA_Defendants];

ALTER TABLE [Nga_Ca_Defendants] ADD CONSTRAINT [PK_NGA_CA_Defendants] PRIMARY KEY CLUSTERED (IconDefendantId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_Nga_Ca_Defendants_LocationCd'
		)
BEGIN
	DROP INDEX [IX_Nga_Ca_Defendants_LocationCd] ON [Nga_Ca_Defendants];
END

CREATE NONCLUSTERED INDEX [IX_Nga_Ca_Defendants_LocationCd] ON [Nga_Ca_Defendants] (LocationCd ASC, IconCaseId ASC)

ALTER TABLE [Nga_Ca_ReleaseMessages]

DROP CONSTRAINT [PK_Nga_Ca_ReleaseMessages];

ALTER TABLE [Nga_Ca_ReleaseMessages] ADD CONSTRAINT [PK_Nga_Ca_ReleaseMessages] PRIMARY KEY CLUSTERED (ReleaseMessageId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_Nga_Ca_ReleaseMessages_LocationCd'
		)
BEGIN
	DROP INDEX [IX_Nga_Ca_ReleaseMessages_LocationCd] ON [Nga_Ca_ReleaseMessages];
END

CREATE NONCLUSTERED INDEX [IX_Nga_Ca_ReleaseMessages_LocationCd] ON [Nga_Ca_ReleaseMessages] (LocationCd ASC, MessageId ASC)

ALTER TABLE [Nga_Ca_Victims]

DROP CONSTRAINT [PK_NGA_CA_Victims];

ALTER TABLE [Nga_Ca_Victims] ADD CONSTRAINT [PK_NGA_CA_Victims] PRIMARY KEY CLUSTERED (IconVictimId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_Nga_Ca_Victims_LocationCd'
		)
BEGIN
	DROP INDEX [IX_Nga_Ca_Victims_LocationCd] ON [Nga_Ca_Victims];
END

CREATE NONCLUSTERED INDEX [IX_Nga_Ca_Victims_LocationCd] ON [Nga_Ca_Victims] (LocationCd ASC, IconCaseId ASC)

ALTER TABLE [NonOffenderFileBusinessRuleSecurityEntities]

DROP CONSTRAINT [PK_NonOffenderFileBusinessRuleSecurityEntities];

ALTER TABLE [NonOffenderFileBusinessRuleSecurityEntities] ADD CONSTRAINT [PK_NonOffenderFileBusinessRuleSecurityEntities] PRIMARY KEY CLUSTERED (NonOffenderFileBusinessRuleSecurityEntityId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_NonOffenderFileBusinessRuleSecurityEntities_LocationCd'
		)
BEGIN
	DROP INDEX [IX_NonOffenderFileBusinessRuleSecurityEntities_LocationCd] ON [NonOffenderFileBusinessRuleSecurityEntities];
END

CREATE NONCLUSTERED INDEX [IX_NonOffenderFileBusinessRuleSecurityEntities_LocationCd] ON [NonOffenderFileBusinessRuleSecurityEntities] (LocationCd ASC, NonOffenderFileId ASC)

ALTER TABLE [NonOffenderFileWordTemplateRegionFileNames]

DROP CONSTRAINT [PK_NonOffenderFileWordTemplateRegionFileNames];

ALTER TABLE [NonOffenderFileWordTemplateRegionFileNames] ADD CONSTRAINT [PK_NonOffenderFileWordTemplateRegionFileNames] PRIMARY KEY CLUSTERED (NonOffenderFileWordTemplateRegionFileNameId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_NonOffenderFileWordTemplateRegionFileNames_LocationCd'
		)
BEGIN
	DROP INDEX [IX_NonOffenderFileWordTemplateRegionFileNames_LocationCd] ON [NonOffenderFileWordTemplateRegionFileNames];
END

CREATE NONCLUSTERED INDEX [IX_NonOffenderFileWordTemplateRegionFileNames_LocationCd] ON [NonOffenderFileWordTemplateRegionFileNames] (LocationCd ASC, NonOffenderFileId ASC)

ALTER TABLE [OffenderFileBopCommutationDetails]

DROP CONSTRAINT [PK_OffenderFileBopCommutationDetails];

ALTER TABLE [OffenderFileBopCommutationDetails] ADD CONSTRAINT [PK_OffenderFileBopCommutationDetails] PRIMARY KEY CLUSTERED (OffenderFileBopCommutationDetailId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderFileBopCommutationDetails_LocationCd'
		)
BEGIN
	DROP INDEX [IX_OffenderFileBopCommutationDetails_LocationCd] ON [OffenderFileBopCommutationDetails];
END

CREATE NONCLUSTERED INDEX [IX_OffenderFileBopCommutationDetails_LocationCd] ON [OffenderFileBopCommutationDetails] (LocationCd ASC, BopCommutationId ASC)

ALTER TABLE [OffenderFileParoleViolationReviewDetails]

DROP CONSTRAINT [PK_OffenderFileParoleViolationReviewDetails];

ALTER TABLE [OffenderFileParoleViolationReviewDetails] ADD CONSTRAINT [PK_OffenderFileParoleViolationReviewDetails] PRIMARY KEY CLUSTERED (OffenderFileParoleViolationReviewDetailId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderFileParoleViolationReviewDetails_LocationCd'
		)
BEGIN
	DROP INDEX [IX_OffenderFileParoleViolationReviewDetails_LocationCd] ON [OffenderFileParoleViolationReviewDetails];
END

CREATE NONCLUSTERED INDEX [IX_OffenderFileParoleViolationReviewDetails_LocationCd] ON [OffenderFileParoleViolationReviewDetails] (LocationCd ASC, OffenderFileId ASC)

ALTER TABLE [OffenderFilesCauseNumber]

DROP CONSTRAINT [PK_OffenderFilesCauseNumber];

ALTER TABLE [OffenderFilesCauseNumber] ADD CONSTRAINT [PK_OffenderFilesCauseNumber] PRIMARY KEY CLUSTERED (OffenderFilesCauseNumberId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderFilesCauseNumber_LocationCd'
		)
BEGIN
	DROP INDEX [IX_OffenderFilesCauseNumber_LocationCd] ON [OffenderFilesCauseNumber];
END

CREATE NONCLUSTERED INDEX [IX_OffenderFilesCauseNumber_LocationCd] ON [OffenderFilesCauseNumber] (LocationCd ASC, OffenderFileId ASC)

ALTER TABLE [OffenderGrievanceProcessTypeReasons]

DROP CONSTRAINT [PK_OffenderGrievanceProcessTypeReasons];

ALTER TABLE [OffenderGrievanceProcessTypeReasons] ADD CONSTRAINT [PK_OffenderGrievanceProcessTypeReasons] PRIMARY KEY CLUSTERED (OffenderGrievanceProcessTypeReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderGrievanceProcessTypeReasons_LocationCd'
		)
BEGIN
	DROP INDEX [IX_OffenderGrievanceProcessTypeReasons_LocationCd] ON [OffenderGrievanceProcessTypeReasons];
END

CREATE NONCLUSTERED INDEX [IX_OffenderGrievanceProcessTypeReasons_LocationCd] ON [OffenderGrievanceProcessTypeReasons] (LocationCd ASC, GrievanceReceiptId ASC)

ALTER TABLE [OffenderGroupLockExclusions]

DROP CONSTRAINT [PK_OffenderGroupLockExclusions];

ALTER TABLE [OffenderGroupLockExclusions] ADD CONSTRAINT [PK_OffenderGroupLockExclusions] PRIMARY KEY CLUSTERED (OffenderGroupLockExclusionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderGroupLockExclusions_LocationCd'
		)
BEGIN
	DROP INDEX [IX_OffenderGroupLockExclusions_LocationCd] ON [OffenderGroupLockExclusions];
END

CREATE NONCLUSTERED INDEX [IX_OffenderGroupLockExclusions_LocationCd] ON [OffenderGroupLockExclusions] (LocationCd ASC, OffenderGroupLockId ASC)

ALTER TABLE [OffenderInsOutsDestinations]

DROP CONSTRAINT [PK_OffenderInsOutsDestinations];

ALTER TABLE [OffenderInsOutsDestinations] ADD CONSTRAINT [PK_OffenderInsOutsDestinations] PRIMARY KEY CLUSTERED (OffenderInsOutsDestinationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderInsOutsDestinations_LocationCd'
		)
BEGIN
	DROP INDEX [IX_OffenderInsOutsDestinations_LocationCd] ON [OffenderInsOutsDestinations];
END

CREATE NONCLUSTERED INDEX [IX_OffenderInsOutsDestinations_LocationCd] ON [OffenderInsOutsDestinations] (LocationCd ASC, OffenderInOutId ASC)

ALTER TABLE [OffenderNeedGroupNeeds]

DROP CONSTRAINT [PK_OffenderNeedGroupNeeds];

ALTER TABLE [OffenderNeedGroupNeeds] ADD CONSTRAINT [PK_OffenderNeedGroupNeeds] PRIMARY KEY CLUSTERED (OffenderNeedGroupNeedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderNeedGroupNeeds_LocationCd'
		)
BEGIN
	DROP INDEX [IX_OffenderNeedGroupNeeds_LocationCd] ON [OffenderNeedGroupNeeds];
END

CREATE NONCLUSTERED INDEX [IX_OffenderNeedGroupNeeds_LocationCd] ON [OffenderNeedGroupNeeds] (LocationCd ASC, OffenderNeedGroupId ASC)

ALTER TABLE [OffenderPrivilegeLevelsInstFl]

DROP CONSTRAINT [PK_OffenderPrivilegeLevelsInstFL];

ALTER TABLE [OffenderPrivilegeLevelsInstFl] ADD CONSTRAINT [PK_OffenderPrivilegeLevelsInstFL] PRIMARY KEY CLUSTERED (OffenderPrivilegeLevelInstFlId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderPrivilegeLevelsInstFl_LocationCd'
		)
BEGIN
	DROP INDEX [IX_OffenderPrivilegeLevelsInstFl_LocationCd] ON [OffenderPrivilegeLevelsInstFl];
END

CREATE NONCLUSTERED INDEX [IX_OffenderPrivilegeLevelsInstFl_LocationCd] ON [OffenderPrivilegeLevelsInstFl] (LocationCd ASC, OffenderPrivilegeLevelInstSwId ASC)

ALTER TABLE [OffenderProcessTaskGroupDependencies]

DROP CONSTRAINT [PK_OffenderProcessTaskGroupDependencies];

ALTER TABLE [OffenderProcessTaskGroupDependencies] ADD CONSTRAINT [PK_OffenderProcessTaskGroupDependencies] PRIMARY KEY CLUSTERED (OffenderProcessTaskGroupDependencyId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderProcessTaskGroupDependencies_LocationCd'
		)
BEGIN
	DROP INDEX [IX_OffenderProcessTaskGroupDependencies_LocationCd] ON [OffenderProcessTaskGroupDependencies];
END

CREATE NONCLUSTERED INDEX [IX_OffenderProcessTaskGroupDependencies_LocationCd] ON [OffenderProcessTaskGroupDependencies] (LocationCd ASC, OffenderProcessTaskGroupId ASC)

ALTER TABLE [OffenderProcessTaskGroups]

DROP CONSTRAINT [PK_OffenderProcessTaskGroups];

ALTER TABLE [OffenderProcessTaskGroups] ADD CONSTRAINT [PK_OffenderProcessTaskGroups] PRIMARY KEY CLUSTERED (OffenderProcessTaskGroupId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderProcessTaskGroups_LocationCd'
		)
BEGIN
	DROP INDEX [IX_OffenderProcessTaskGroups_LocationCd] ON [OffenderProcessTaskGroups];
END

CREATE NONCLUSTERED INDEX [IX_OffenderProcessTaskGroups_LocationCd] ON [OffenderProcessTaskGroups] (LocationCd ASC, OffenderProcessId ASC)

ALTER TABLE [OffenderProcessTasks]

DROP CONSTRAINT [PK_OffenderProcessTasks];

ALTER TABLE [OffenderProcessTasks] ADD CONSTRAINT [PK_OffenderProcessTasks] PRIMARY KEY CLUSTERED (OffenderProcessTaskId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderProcessTasks_LocationCd'
		)
BEGIN
	DROP INDEX [IX_OffenderProcessTasks_LocationCd] ON [OffenderProcessTasks];
END

CREATE NONCLUSTERED INDEX [IX_OffenderProcessTasks_LocationCd] ON [OffenderProcessTasks] (LocationCd ASC, OffenderProcessTaskGroupId ASC)

ALTER TABLE [OffenderRuleAssignments]

DROP CONSTRAINT [PK_OffenderRuleAssignments];

ALTER TABLE [OffenderRuleAssignments] ADD CONSTRAINT [PK_OffenderRuleAssignments] PRIMARY KEY CLUSTERED (OffenderRuleAssignmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderRuleAssignments_LocationCd'
		)
BEGIN
	DROP INDEX [IX_OffenderRuleAssignments_LocationCd] ON [OffenderRuleAssignments];
END

CREATE NONCLUSTERED INDEX [IX_OffenderRuleAssignments_LocationCd] ON [OffenderRuleAssignments] (LocationCd ASC, UserKey ASC)

ALTER TABLE [OffenderRuleCharges]

DROP CONSTRAINT [PK_OffenderRuleCharges];

ALTER TABLE [OffenderRuleCharges] ADD CONSTRAINT [PK_OffenderRuleCharges] PRIMARY KEY CLUSTERED (OffenderRuleChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderRuleCharges_LocationCd'
		)
BEGIN
	DROP INDEX [IX_OffenderRuleCharges_LocationCd] ON [OffenderRuleCharges];
END

CREATE NONCLUSTERED INDEX [IX_OffenderRuleCharges_LocationCd] ON [OffenderRuleCharges] (LocationCd ASC, OffenderRuleId ASC)

ALTER TABLE [OffenderSessionClassFacilitators]

DROP CONSTRAINT [PK_OffenderSessionClassFacilitators];

ALTER TABLE [OffenderSessionClassFacilitators] ADD CONSTRAINT [PK_OffenderSessionClassFacilitators] PRIMARY KEY CLUSTERED (OffenderSessionClassFacilitatorId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderSessionClassFacilitators_LocationCd'
		)
BEGIN
	DROP INDEX [IX_OffenderSessionClassFacilitators_LocationCd] ON [OffenderSessionClassFacilitators];
END

CREATE NONCLUSTERED INDEX [IX_OffenderSessionClassFacilitators_LocationCd] ON [OffenderSessionClassFacilitators] (LocationCd ASC, OffenderSessionId ASC)

ALTER TABLE [OffenderSessions]

DROP CONSTRAINT [PK_OffenderSessions];

ALTER TABLE [OffenderSessions] ADD CONSTRAINT [PK_OffenderSessions] PRIMARY KEY CLUSTERED (OffenderSessionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderSessions_LocationCd'
		)
BEGIN
	DROP INDEX [IX_OffenderSessions_LocationCd] ON [OffenderSessions];
END

CREATE NONCLUSTERED INDEX [IX_OffenderSessions_LocationCd] ON [OffenderSessions] (LocationCd ASC, OffenderInterventionId ASC)

ALTER TABLE [OffenderSessionSummaries]

DROP CONSTRAINT [PK_OffenderSessionSummaries];

ALTER TABLE [OffenderSessionSummaries] ADD CONSTRAINT [PK_OffenderSessionSummaries] PRIMARY KEY CLUSTERED (OffenderSessionSummaryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderSessionSummaries_LocationCd'
		)
BEGIN
	DROP INDEX [IX_OffenderSessionSummaries_LocationCd] ON [OffenderSessionSummaries];
END

CREATE NONCLUSTERED INDEX [IX_OffenderSessionSummaries_LocationCd] ON [OffenderSessionSummaries] (LocationCd ASC, OffenderSessionId ASC)

ALTER TABLE [OffenderSessionTopics]

DROP CONSTRAINT [PK_OffenderSessionTopics];

ALTER TABLE [OffenderSessionTopics] ADD CONSTRAINT [PK_OffenderSessionTopics] PRIMARY KEY CLUSTERED (OffenderSessionTopicId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_OffenderSessionTopics_LocationCd'
		)
BEGIN
	DROP INDEX [IX_OffenderSessionTopics_LocationCd] ON [OffenderSessionTopics];
END

CREATE NONCLUSTERED INDEX [IX_OffenderSessionTopics_LocationCd] ON [OffenderSessionTopics] (LocationCd ASC, OffenderSessionId ASC)

ALTER TABLE [ParoleBoardInterviewEventOffenders]

DROP CONSTRAINT [PK_ParoleBoardInterviewEventOffenders];

ALTER TABLE [ParoleBoardInterviewEventOffenders] ADD CONSTRAINT [PK_ParoleBoardInterviewEventOffenders] PRIMARY KEY CLUSTERED (ParoleBoardInterviewEventOffenderId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ParoleBoardInterviewEventOffenders_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ParoleBoardInterviewEventOffenders_LocationCd] ON [ParoleBoardInterviewEventOffenders];
END

CREATE NONCLUSTERED INDEX [IX_ParoleBoardInterviewEventOffenders_LocationCd] ON [ParoleBoardInterviewEventOffenders] (LocationCd ASC, ParoleBoardInterviewEventId ASC)

ALTER TABLE [ParoleGuidelineScoresheets]

DROP CONSTRAINT [PK_ParoleGuidelineScoresheets];

ALTER TABLE [ParoleGuidelineScoresheets] ADD CONSTRAINT [PK_ParoleGuidelineScoresheets] PRIMARY KEY CLUSTERED (ParoleGuidelineScoresheetId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ParoleGuidelineScoresheets_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ParoleGuidelineScoresheets_LocationCd] ON [ParoleGuidelineScoresheets];
END

CREATE NONCLUSTERED INDEX [IX_ParoleGuidelineScoresheets_LocationCd] ON [ParoleGuidelineScoresheets] (LocationCd ASC, ParoleBoardReviewId ASC)

ALTER TABLE [ParoleRovFieldRuleViolationIncidents_OLD]

DROP CONSTRAINT [PK_ParoleROVFieldRuleViolationIncidents];

ALTER TABLE [ParoleRovFieldRuleViolationIncidents_OLD] ADD CONSTRAINT [PK_ParoleROVFieldRuleViolationIncidents] PRIMARY KEY CLUSTERED (ParoleRovFieldRuleViolationIncidentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ParoleRovFieldRuleViolationIncidents_OLD_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ParoleRovFieldRuleViolationIncidents_OLD_LocationCd] ON [ParoleRovFieldRuleViolationIncidents_OLD];
END

CREATE NONCLUSTERED INDEX [IX_ParoleRovFieldRuleViolationIncidents_OLD_LocationCd] ON [ParoleRovFieldRuleViolationIncidents_OLD] (LocationCd ASC, ParoleReportOfViolationId ASC)

ALTER TABLE [ParoleRovHearingResponseDecisions_OLD]

DROP CONSTRAINT [PK_ParoleROVHearingResponseDecisions];

ALTER TABLE [ParoleRovHearingResponseDecisions_OLD] ADD CONSTRAINT [PK_ParoleROVHearingResponseDecisions] PRIMARY KEY CLUSTERED (ParoleRovHearingResponseDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ParoleRovHearingResponseDecisions_OLD_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ParoleRovHearingResponseDecisions_OLD_LocationCd] ON [ParoleRovHearingResponseDecisions_OLD];
END

CREATE NONCLUSTERED INDEX [IX_ParoleRovHearingResponseDecisions_OLD_LocationCd] ON [ParoleRovHearingResponseDecisions_OLD] (LocationCd ASC, ParoleRovHearingResponseId ASC)

ALTER TABLE [ParoleRovHearingResponseRecommendations_OLD]

DROP CONSTRAINT [PK_ParoleROVHearingResponseRecommendations];

ALTER TABLE [ParoleRovHearingResponseRecommendations_OLD] ADD CONSTRAINT [PK_ParoleROVHearingResponseRecommendations] PRIMARY KEY CLUSTERED (ParoleRovHearingResponseRecommendationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ParoleRovHearingResponseRecommendations_OLD_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ParoleRovHearingResponseRecommendations_OLD_LocationCd] ON [ParoleRovHearingResponseRecommendations_OLD];
END

CREATE NONCLUSTERED INDEX [IX_ParoleRovHearingResponseRecommendations_OLD_LocationCd] ON [ParoleRovHearingResponseRecommendations_OLD] (LocationCd ASC, ParoleRovHearingResponseId ASC)

ALTER TABLE [ParoleRovResidentialFormalDisciplines_OLD]

DROP CONSTRAINT [PK_ParoleROVResidentialFormalDisciplines];

ALTER TABLE [ParoleRovResidentialFormalDisciplines_OLD] ADD CONSTRAINT [PK_ParoleROVResidentialFormalDisciplines] PRIMARY KEY CLUSTERED (ParoleRovResidentialFormalDisciplineId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ParoleRovResidentialFormalDisciplines_OLD_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ParoleRovResidentialFormalDisciplines_OLD_LocationCd] ON [ParoleRovResidentialFormalDisciplines_OLD];
END

CREATE NONCLUSTERED INDEX [IX_ParoleRovResidentialFormalDisciplines_OLD_LocationCd] ON [ParoleRovResidentialFormalDisciplines_OLD] (LocationCd ASC, ParoleReportOfViolationId ASC)

ALTER TABLE [ParoleRovResiFormalDisciplineRuleViolations_OLD]

DROP CONSTRAINT [PK_ParoleROVResiFormalDisciplineRuleViolations];

ALTER TABLE [ParoleRovResiFormalDisciplineRuleViolations_OLD] ADD CONSTRAINT [PK_ParoleROVResiFormalDisciplineRuleViolations] PRIMARY KEY CLUSTERED (ParoleRovResiFormalDisciplineRuleViolationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ParoleRovResiFormalDisciplineRuleViolations_OLD_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ParoleRovResiFormalDisciplineRuleViolations_OLD_LocationCd] ON [ParoleRovResiFormalDisciplineRuleViolations_OLD];
END

CREATE NONCLUSTERED INDEX [IX_ParoleRovResiFormalDisciplineRuleViolations_OLD_LocationCd] ON [ParoleRovResiFormalDisciplineRuleViolations_OLD] (LocationCd ASC, ParoleRovResidentialFormalDisciplineId ASC)

ALTER TABLE [ParoleViolationReviewCharges]

DROP CONSTRAINT [PK_ParoleViolationReviewCharges];

ALTER TABLE [ParoleViolationReviewCharges] ADD CONSTRAINT [PK_ParoleViolationReviewCharges] PRIMARY KEY CLUSTERED (ParoleViolationReviewChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ParoleViolationReviewCharges_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ParoleViolationReviewCharges_LocationCd] ON [ParoleViolationReviewCharges];
END

CREATE NONCLUSTERED INDEX [IX_ParoleViolationReviewCharges_LocationCd] ON [ParoleViolationReviewCharges] (LocationCd ASC, ParoleViolationReviewId ASC)

ALTER TABLE [ParoleViolationReviewFrvi]

DROP CONSTRAINT [PK_ParoleViolationReviewFrvi];

ALTER TABLE [ParoleViolationReviewFrvi] ADD CONSTRAINT [PK_ParoleViolationReviewFrvi] PRIMARY KEY CLUSTERED (ParoleViolationReviewFrviId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ParoleViolationReviewFrvi_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ParoleViolationReviewFrvi_LocationCd] ON [ParoleViolationReviewFrvi];
END

CREATE NONCLUSTERED INDEX [IX_ParoleViolationReviewFrvi_LocationCd] ON [ParoleViolationReviewFrvi] (LocationCd ASC, ParoleViolationReviewId ASC)

ALTER TABLE [ParoleViolationReviewPpvi]

DROP CONSTRAINT [PK_ParoleViolationReviewPpvi];

ALTER TABLE [ParoleViolationReviewPpvi] ADD CONSTRAINT [PK_ParoleViolationReviewPpvi] PRIMARY KEY CLUSTERED (ParoleViolationReviewPpviId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ParoleViolationReviewPpvi_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ParoleViolationReviewPpvi_LocationCd] ON [ParoleViolationReviewPpvi];
END

CREATE NONCLUSTERED INDEX [IX_ParoleViolationReviewPpvi_LocationCd] ON [ParoleViolationReviewPpvi] (LocationCd ASC, ParoleViolationReviewId ASC)

ALTER TABLE [ParoleViolationReviewPriorRevocationHearings]

DROP CONSTRAINT [PK_ParoleViolationReviewPriorRevocationHearings];

ALTER TABLE [ParoleViolationReviewPriorRevocationHearings] ADD CONSTRAINT [PK_ParoleViolationReviewPriorRevocationHearings] PRIMARY KEY CLUSTERED (ParoleViolationReviewPriorRevocationHearingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ParoleViolationReviewPriorRevocationHearings_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ParoleViolationReviewPriorRevocationHearings_LocationCd] ON [ParoleViolationReviewPriorRevocationHearings];
END

CREATE NONCLUSTERED INDEX [IX_ParoleViolationReviewPriorRevocationHearings_LocationCd] ON [ParoleViolationReviewPriorRevocationHearings] (LocationCd ASC, ParoleViolationReviewId ASC)

ALTER TABLE [ParoleViolationReviewReportPpviCaseNumbers]

DROP CONSTRAINT [PK_ParoleViolationReviewReportPpviCaseNumbers];

ALTER TABLE [ParoleViolationReviewReportPpviCaseNumbers] ADD CONSTRAINT [PK_ParoleViolationReviewReportPpviCaseNumbers] PRIMARY KEY CLUSTERED (ParoleViolationReviewReportPpviCaseNumberId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ParoleViolationReviewReportPpviCaseNumbers_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ParoleViolationReviewReportPpviCaseNumbers_LocationCd] ON [ParoleViolationReviewReportPpviCaseNumbers];
END

CREATE NONCLUSTERED INDEX [IX_ParoleViolationReviewReportPpviCaseNumbers_LocationCd] ON [ParoleViolationReviewReportPpviCaseNumbers] (LocationCd ASC, ParoleViolationReviewReportId ASC)

ALTER TABLE [ParoleViolationReviewReports]

DROP CONSTRAINT [PK_ParoleViolationReviewReports];

ALTER TABLE [ParoleViolationReviewReports] ADD CONSTRAINT [PK_ParoleViolationReviewReports] PRIMARY KEY CLUSTERED (ParoleViolationReviewReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ParoleViolationReviewReports_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ParoleViolationReviewReports_LocationCd] ON [ParoleViolationReviewReports];
END

CREATE NONCLUSTERED INDEX [IX_ParoleViolationReviewReports_LocationCd] ON [ParoleViolationReviewReports] (LocationCd ASC, ParoleViolationReviewId ASC)

ALTER TABLE [ParoleViolationReviewResiFormalDiscipline]

DROP CONSTRAINT [PK_ParoleViolationReviewResiFormalDiscipline];

ALTER TABLE [ParoleViolationReviewResiFormalDiscipline] ADD CONSTRAINT [PK_ParoleViolationReviewResiFormalDiscipline] PRIMARY KEY CLUSTERED (ParoleViolationReviewResiFormalDisciplineId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ParoleViolationReviewResiFormalDiscipline_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ParoleViolationReviewResiFormalDiscipline_LocationCd] ON [ParoleViolationReviewResiFormalDiscipline];
END

CREATE NONCLUSTERED INDEX [IX_ParoleViolationReviewResiFormalDiscipline_LocationCd] ON [ParoleViolationReviewResiFormalDiscipline] (LocationCd ASC, ParoleViolationReviewId ASC)

ALTER TABLE [ParoleViolationReviewRfdRuleViolations]

DROP CONSTRAINT [PK_ParoleViolationReviewRfdRuleViolations];

ALTER TABLE [ParoleViolationReviewRfdRuleViolations] ADD CONSTRAINT [PK_ParoleViolationReviewRfdRuleViolations] PRIMARY KEY CLUSTERED (ParoleViolationReviewRfdRuleViolationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ParoleViolationReviewRfdRuleViolations_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ParoleViolationReviewRfdRuleViolations_LocationCd] ON [ParoleViolationReviewRfdRuleViolations];
END

CREATE NONCLUSTERED INDEX [IX_ParoleViolationReviewRfdRuleViolations_LocationCd] ON [ParoleViolationReviewRfdRuleViolations] (LocationCd ASC, ParoleViolationReviewResiFormalDisciplineId ASC)

ALTER TABLE [ParoleViolationReviewWitnesses]

DROP CONSTRAINT [PK_ParoleViolationReviewWitnesses];

ALTER TABLE [ParoleViolationReviewWitnesses] ADD CONSTRAINT [PK_ParoleViolationReviewWitnesses] PRIMARY KEY CLUSTERED (ParoleViolationReviewWitnessId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ParoleViolationReviewWitnesses_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ParoleViolationReviewWitnesses_LocationCd] ON [ParoleViolationReviewWitnesses];
END

CREATE NONCLUSTERED INDEX [IX_ParoleViolationReviewWitnesses_LocationCd] ON [ParoleViolationReviewWitnesses] (LocationCd ASC, ParoleViolationReviewId ASC)

ALTER TABLE [Phase1InterviewEventOffenders]

DROP CONSTRAINT [PK_Phase1InterviewEventOffenders];

ALTER TABLE [Phase1InterviewEventOffenders] ADD CONSTRAINT [PK_Phase1InterviewEventOffenders] PRIMARY KEY CLUSTERED (Phase1InterviewEventOffenderId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_Phase1InterviewEventOffenders_LocationCd'
		)
BEGIN
	DROP INDEX [IX_Phase1InterviewEventOffenders_LocationCd] ON [Phase1InterviewEventOffenders];
END

CREATE NONCLUSTERED INDEX [IX_Phase1InterviewEventOffenders_LocationCd] ON [Phase1InterviewEventOffenders] (LocationCd ASC,Phase1InterviewEventId ASC )

ALTER TABLE [PhysicalFileTrackingTransfers]

DROP CONSTRAINT [PK_PhysicalFileTrackingTransfers];

ALTER TABLE [PhysicalFileTrackingTransfers] ADD CONSTRAINT [PK_PhysicalFileTrackingTransfers] PRIMARY KEY CLUSTERED (PhysicalFileTrackingTransferId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PhysicalFileTrackingTransfers_LocationCd'
		)
BEGIN
	DROP INDEX [IX_PhysicalFileTrackingTransfers_LocationCd] ON [PhysicalFileTrackingTransfers];
END

CREATE NONCLUSTERED INDEX [IX_PhysicalFileTrackingTransfers_LocationCd] ON [PhysicalFileTrackingTransfers] (LocationCd ASC, PhysicalFileTrackingId ASC)

ALTER TABLE [PreaReportingForceTypes]

DROP CONSTRAINT [PK_PreaReportingForceTypes];

ALTER TABLE [PreaReportingForceTypes] ADD CONSTRAINT [PK_PreaReportingForceTypes] PRIMARY KEY CLUSTERED (PreaReportingForceTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PreaReportingForceTypes_LocationCd'
		)
BEGIN
	DROP INDEX [IX_PreaReportingForceTypes_LocationCd] ON [PreaReportingForceTypes];
END

CREATE NONCLUSTERED INDEX [IX_PreaReportingForceTypes_LocationCd] ON [PreaReportingForceTypes] (LocationCd ASC, PreaReportingId ASC)

ALTER TABLE [PreaReportingIncidentNatures]

DROP CONSTRAINT [PK_PreaReportingIncidentNatures];

ALTER TABLE [PreaReportingIncidentNatures] ADD CONSTRAINT [PK_PreaReportingIncidentNatures] PRIMARY KEY CLUSTERED (PreaReportingIncidentNatureId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PreaReportingIncidentNatures_LocationCd'
		)
BEGIN
	DROP INDEX [IX_PreaReportingIncidentNatures_LocationCd] ON [PreaReportingIncidentNatures];
END

CREATE NONCLUSTERED INDEX [IX_PreaReportingIncidentNatures_LocationCd] ON [PreaReportingIncidentNatures] (LocationCd ASC, PreaReportingId ASC)

ALTER TABLE [PreaReportingInstDiscNotices]

DROP CONSTRAINT [PK_PreaReportingInstDiscNotices];

ALTER TABLE [PreaReportingInstDiscNotices] ADD CONSTRAINT [PK_PreaReportingInstDiscNotices] PRIMARY KEY CLUSTERED (PreaReportingInstDiscNoticeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PreaReportingInstDiscNotices_LocationCd'
		)
BEGIN
	DROP INDEX [IX_PreaReportingInstDiscNotices_LocationCd] ON [PreaReportingInstDiscNotices];
END

CREATE NONCLUSTERED INDEX [IX_PreaReportingInstDiscNotices_LocationCd] ON [PreaReportingInstDiscNotices] (LocationCd ASC, PreaReportingId ASC)

ALTER TABLE [PreaReportingLocations]

DROP CONSTRAINT [PK_PreaReportingLocations];

ALTER TABLE [PreaReportingLocations] ADD CONSTRAINT [PK_PreaReportingLocations] PRIMARY KEY CLUSTERED (PreaReportingLocationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PreaReportingLocations_LocationCd'
		)
BEGIN
	DROP INDEX [IX_PreaReportingLocations_LocationCd] ON [PreaReportingLocations];
END

CREATE NONCLUSTERED INDEX [IX_PreaReportingLocations_LocationCd] ON [PreaReportingLocations] (LocationCd ASC, PreaReportingId ASC)

ALTER TABLE [PreaReportingPostReportHousingActions]

DROP CONSTRAINT [PK_PreaReportingPostReportHousingActions];

ALTER TABLE [PreaReportingPostReportHousingActions] ADD CONSTRAINT [PK_PreaReportingPostReportHousingActions] PRIMARY KEY CLUSTERED (PreaReportingPostReportHousingActionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PreaReportingPostReportHousingActions_LocationCd'
		)
BEGIN
	DROP INDEX [IX_PreaReportingPostReportHousingActions_LocationCd] ON [PreaReportingPostReportHousingActions];
END

CREATE NONCLUSTERED INDEX [IX_PreaReportingPostReportHousingActions_LocationCd] ON [PreaReportingPostReportHousingActions] (LocationCd ASC, PreaReportingId ASC)

ALTER TABLE [PreaReportingPostReportMedicalActions]

DROP CONSTRAINT [PK_PreaReportingPostReportMedicalActions];

ALTER TABLE [PreaReportingPostReportMedicalActions] ADD CONSTRAINT [PK_PreaReportingPostReportMedicalActions] PRIMARY KEY CLUSTERED (PreaReportingPostReportMedicalActionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PreaReportingPostReportMedicalActions_LocationCd'
		)
BEGIN
	DROP INDEX [IX_PreaReportingPostReportMedicalActions_LocationCd] ON [PreaReportingPostReportMedicalActions];
END

CREATE NONCLUSTERED INDEX [IX_PreaReportingPostReportMedicalActions_LocationCd] ON [PreaReportingPostReportMedicalActions] (LocationCd ASC, PreaReportingId ASC)

ALTER TABLE [PreaReportingRaces]

DROP CONSTRAINT [PK_PreaReportingRaces];

ALTER TABLE [PreaReportingRaces] ADD CONSTRAINT [PK_PreaReportingRaces] PRIMARY KEY CLUSTERED (PreaReportingRaceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PreaReportingRaces_LocationCd'
		)
BEGIN
	DROP INDEX [IX_PreaReportingRaces_LocationCd] ON [PreaReportingRaces];
END

CREATE NONCLUSTERED INDEX [IX_PreaReportingRaces_LocationCd] ON [PreaReportingRaces] (LocationCd ASC, PreaReportingId ASC)

ALTER TABLE [PreaReportingReporters]

DROP CONSTRAINT [PK_PreaReportingReporters];

ALTER TABLE [PreaReportingReporters] ADD CONSTRAINT [PK_PreaReportingReporters] PRIMARY KEY CLUSTERED (PreaReportingReporterId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PreaReportingReporters_LocationCd'
		)
BEGIN
	DROP INDEX [IX_PreaReportingReporters_LocationCd] ON [PreaReportingReporters];
END

CREATE NONCLUSTERED INDEX [IX_PreaReportingReporters_LocationCd] ON [PreaReportingReporters] (LocationCd ASC, PreaReportingId ASC)

ALTER TABLE [PreaReportingSanctions]

DROP CONSTRAINT [PK_PreaReportingSanctions];

ALTER TABLE [PreaReportingSanctions] ADD CONSTRAINT [PK_PreaReportingSanctions] PRIMARY KEY CLUSTERED (PreaReportingSanctionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PreaReportingSanctions_LocationCd'
		)
BEGIN
	DROP INDEX [IX_PreaReportingSanctions_LocationCd] ON [PreaReportingSanctions];
END

CREATE NONCLUSTERED INDEX [IX_PreaReportingSanctions_LocationCd] ON [PreaReportingSanctions] (LocationCd ASC, PreaReportingId ASC)

ALTER TABLE [PreaReportingTimes]

DROP CONSTRAINT [PK_PreaReportingTimes];

ALTER TABLE [PreaReportingTimes] ADD CONSTRAINT [PK_PreaReportingTimes] PRIMARY KEY CLUSTERED (PreaReportingTimeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PreaReportingTimes_LocationCd'
		)
BEGIN
	DROP INDEX [IX_PreaReportingTimes_LocationCd] ON [PreaReportingTimes];
END

CREATE NONCLUSTERED INDEX [IX_PreaReportingTimes_LocationCd] ON [PreaReportingTimes] (LocationCd ASC, PreaReportingId ASC)

ALTER TABLE [PreaReportingVictimInjuries]

DROP CONSTRAINT [PK_PreaReportingVictimInjuries];

ALTER TABLE [PreaReportingVictimInjuries] ADD CONSTRAINT [PK_PreaReportingVictimInjuries] PRIMARY KEY CLUSTERED (PreaReportingVictimInjuryId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PreaReportingVictimInjuries_LocationCd'
		)
BEGIN
	DROP INDEX [IX_PreaReportingVictimInjuries_LocationCd] ON [PreaReportingVictimInjuries];
END

CREATE NONCLUSTERED INDEX [IX_PreaReportingVictimInjuries_LocationCd] ON [PreaReportingVictimInjuries] (LocationCd ASC, PreaReportingId ASC)

ALTER TABLE [PrescreeningScreeningResponses]

DROP CONSTRAINT [PK_PrescreeningScreeningResponses];

ALTER TABLE [PrescreeningScreeningResponses] ADD CONSTRAINT [PK_PrescreeningScreeningResponses] PRIMARY KEY CLUSTERED (PrescreeningScreeningResponseId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PrescreeningScreeningResponses_LocationCd'
		)
BEGIN
	DROP INDEX [IX_PrescreeningScreeningResponses_LocationCd] ON [PrescreeningScreeningResponses];
END

CREATE NONCLUSTERED INDEX [IX_PrescreeningScreeningResponses_LocationCd] ON [PrescreeningScreeningResponses] (LocationCd ASC, PrescreeningId ASC)

ALTER TABLE [PresentenceAddendumCharges]

DROP CONSTRAINT [PK_PreSentenceAddendumCharges];

ALTER TABLE [PresentenceAddendumCharges] ADD CONSTRAINT [PK_PreSentenceAddendumCharges] PRIMARY KEY CLUSTERED (PresentenceAddendumChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PresentenceAddendumCharges_LocationCd'
		)
BEGIN
	DROP INDEX [IX_PresentenceAddendumCharges_LocationCd] ON [PresentenceAddendumCharges];
END

CREATE NONCLUSTERED INDEX [IX_PresentenceAddendumCharges_LocationCd] ON [PresentenceAddendumCharges] (LocationCd ASC, PresentenceAddendumId ASC)

ALTER TABLE [PresentenceAddendums]

DROP CONSTRAINT [PK_PreSentenceAddendums];

ALTER TABLE [PresentenceAddendums] ADD CONSTRAINT [PK_PreSentenceAddendums] PRIMARY KEY CLUSTERED (PresentenceAddendumId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PresentenceAddendums_LocationCd'
		)
BEGIN
	DROP INDEX [IX_PresentenceAddendums_LocationCd] ON [PresentenceAddendums];
END

CREATE NONCLUSTERED INDEX [IX_PresentenceAddendums_LocationCd] ON [PresentenceAddendums] (LocationCd ASC, PresentenceInvestigationId ASC)

ALTER TABLE [PresentenceInvestigationCharges]

DROP CONSTRAINT [PK_PreSentenceInvestigationCharges];

ALTER TABLE [PresentenceInvestigationCharges] ADD CONSTRAINT [PK_PreSentenceInvestigationCharges] PRIMARY KEY CLUSTERED (PresentenceInvestigationChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PresentenceInvestigationCharges_LocationCd'
		)
BEGIN
	DROP INDEX [IX_PresentenceInvestigationCharges_LocationCd] ON [PresentenceInvestigationCharges];
END

CREATE NONCLUSTERED INDEX [IX_PresentenceInvestigationCharges_LocationCd] ON [PresentenceInvestigationCharges] (LocationCd ASC, PresentenceInvestigationId ASC)

ALTER TABLE [PretrialInterviewCharges]

DROP CONSTRAINT [PK_PretrialInterviewCharges];

ALTER TABLE [PretrialInterviewCharges] ADD CONSTRAINT [PK_PretrialInterviewCharges] PRIMARY KEY CLUSTERED (PretrialInterviewChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PretrialInterviewCharges_LocationCd'
		)
BEGIN
	DROP INDEX [IX_PretrialInterviewCharges_LocationCd] ON [PretrialInterviewCharges];
END

CREATE NONCLUSTERED INDEX [IX_PretrialInterviewCharges_LocationCd] ON [PretrialInterviewCharges] (LocationCd ASC, PretrialInterviewId ASC)

ALTER TABLE [ProbationAgreementAssocRules]

DROP CONSTRAINT [PK_ProbationAgreementAssocRules];

ALTER TABLE [ProbationAgreementAssocRules] ADD CONSTRAINT [PK_ProbationAgreementAssocRules] PRIMARY KEY CLUSTERED (ProbationAgreementAssocRuleId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ProbationAgreementAssocRules_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ProbationAgreementAssocRules_LocationCd] ON [ProbationAgreementAssocRules];
END

CREATE NONCLUSTERED INDEX [IX_ProbationAgreementAssocRules_LocationCd] ON [ProbationAgreementAssocRules] (LocationCd ASC, ProbationAgreementId ASC)

ALTER TABLE [ProbationAgreementCharges]

DROP CONSTRAINT [PK_ProbationAgreementCharges];

ALTER TABLE [ProbationAgreementCharges] ADD CONSTRAINT [PK_ProbationAgreementCharges] PRIMARY KEY CLUSTERED (ProbationAgreementChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ProbationAgreementCharges_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ProbationAgreementCharges_LocationCd] ON [ProbationAgreementCharges];
END

CREATE NONCLUSTERED INDEX [IX_ProbationAgreementCharges_LocationCd] ON [ProbationAgreementCharges] (LocationCd ASC, ProbationAgreementId ASC)

ALTER TABLE [ProbationRovCharges]

DROP CONSTRAINT [PK_ProbationROVCharges];

ALTER TABLE [ProbationRovCharges] ADD CONSTRAINT [PK_ProbationROVCharges] PRIMARY KEY CLUSTERED (ProbationRovChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ProbationRovCharges_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ProbationRovCharges_LocationCd] ON [ProbationRovCharges];
END

CREATE NONCLUSTERED INDEX [IX_ProbationRovCharges_LocationCd] ON [ProbationRovCharges] (LocationCd ASC, ProbationReportOfViolationId ASC)

ALTER TABLE [ProbationRovFieldRuleViolationIncidents]

DROP CONSTRAINT [PK_ProbationROVFieldRuleViolationIncidents];

ALTER TABLE [ProbationRovFieldRuleViolationIncidents] ADD CONSTRAINT [PK_ProbationROVFieldRuleViolationIncidents] PRIMARY KEY CLUSTERED (ProbationRovFieldRuleViolationIncidentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ProbationRovFieldRuleViolationIncidents_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ProbationRovFieldRuleViolationIncidents_LocationCd] ON [ProbationRovFieldRuleViolationIncidents];
END

CREATE NONCLUSTERED INDEX [IX_ProbationRovFieldRuleViolationIncidents_LocationCd] ON [ProbationRovFieldRuleViolationIncidents] (LocationCd ASC, ProbationReportOfViolationId ASC)

ALTER TABLE [ProbationRovHearingResponseDecisions]

DROP CONSTRAINT [PK_ProbationROVHearingResponseDecisions];

ALTER TABLE [ProbationRovHearingResponseDecisions] ADD CONSTRAINT [PK_ProbationROVHearingResponseDecisions] PRIMARY KEY CLUSTERED (ProbationRovHearingResponseDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ProbationRovHearingResponseDecisions_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ProbationRovHearingResponseDecisions_LocationCd] ON [ProbationRovHearingResponseDecisions];
END

CREATE NONCLUSTERED INDEX [IX_ProbationRovHearingResponseDecisions_LocationCd] ON [ProbationRovHearingResponseDecisions] (LocationCd ASC, ProbationRovHearingResponseId ASC)

ALTER TABLE [ProbationRovHearingResponseRecommendations]

DROP CONSTRAINT [PK_ProbationROVHearingResponseRecommendations];

ALTER TABLE [ProbationRovHearingResponseRecommendations] ADD CONSTRAINT [PK_ProbationROVHearingResponseRecommendations] PRIMARY KEY CLUSTERED (ProbationRovHearingResponseRecommendationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ProbationRovHearingResponseRecommendations_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ProbationRovHearingResponseRecommendations_LocationCd] ON [ProbationRovHearingResponseRecommendations];
END

CREATE NONCLUSTERED INDEX [IX_ProbationRovHearingResponseRecommendations_LocationCd] ON [ProbationRovHearingResponseRecommendations] (LocationCd ASC, ProbationRovHearingResponseId ASC)

ALTER TABLE [ProbationRovHearingResponses]

DROP CONSTRAINT [PK_ProbationROVHearingResponses];

ALTER TABLE [ProbationRovHearingResponses] ADD CONSTRAINT [PK_ProbationROVHearingResponses] PRIMARY KEY CLUSTERED (ProbationRovHearingResponseId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ProbationRovHearingResponses_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ProbationRovHearingResponses_LocationCd] ON [ProbationRovHearingResponses];
END

CREATE NONCLUSTERED INDEX [IX_ProbationRovHearingResponses_LocationCd] ON [ProbationRovHearingResponses] (LocationCd ASC, ProbationReportOfViolationId ASC)

ALTER TABLE [ProbationRovResidentialFormalDisciplines]

DROP CONSTRAINT [PK_ProbationROVResidentialFormalDisciplines];

ALTER TABLE [ProbationRovResidentialFormalDisciplines] ADD CONSTRAINT [PK_ProbationROVResidentialFormalDisciplines] PRIMARY KEY CLUSTERED (ProbationRovResidentialFormalDisciplineId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ProbationRovResidentialFormalDisciplines_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ProbationRovResidentialFormalDisciplines_LocationCd] ON [ProbationRovResidentialFormalDisciplines];
END

CREATE NONCLUSTERED INDEX [IX_ProbationRovResidentialFormalDisciplines_LocationCd] ON [ProbationRovResidentialFormalDisciplines] (LocationCd ASC, ProbationReportOfViolationId ASC)

ALTER TABLE [ProbationRovResiFormalDisciplineRuleViolations]

DROP CONSTRAINT [PK_ProbationROVResiFormalDisciplineRuleViolations];

ALTER TABLE [ProbationRovResiFormalDisciplineRuleViolations] ADD CONSTRAINT [PK_ProbationROVResiFormalDisciplineRuleViolations] PRIMARY KEY CLUSTERED (ProbationRovResiFormalDisciplineRuleViolationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ProbationRovResiFormalDisciplineRuleViolations_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ProbationRovResiFormalDisciplineRuleViolations_LocationCd] ON [ProbationRovResiFormalDisciplineRuleViolations];
END

CREATE NONCLUSTERED INDEX [IX_ProbationRovResiFormalDisciplineRuleViolations_LocationCd] ON [ProbationRovResiFormalDisciplineRuleViolations] (LocationCd ASC, ProbationRovResidentialFormalDisciplineId ASC)

ALTER TABLE [PropertyGroupShipmentDetails]

DROP CONSTRAINT [PK_PropertyGroupShipmentDetails];

ALTER TABLE [PropertyGroupShipmentDetails] ADD CONSTRAINT [PK_PropertyGroupShipmentDetails] PRIMARY KEY CLUSTERED (PropertyGroupShipmentDetailId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PropertyGroupShipmentDetails_LocationCd'
		)
BEGIN
	DROP INDEX [IX_PropertyGroupShipmentDetails_LocationCd] ON [PropertyGroupShipmentDetails];
END

CREATE NONCLUSTERED INDEX [IX_PropertyGroupShipmentDetails_LocationCd] ON [PropertyGroupShipmentDetails] (LocationCd ASC, PropertyGroupId ASC)

ALTER TABLE [PropertyStatuses]

DROP CONSTRAINT [PK_PropertyStatuses];

ALTER TABLE [PropertyStatuses] ADD CONSTRAINT [PK_PropertyStatuses] PRIMARY KEY CLUSTERED (PropertyStatusId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PropertyStatuses_LocationCd'
		)
BEGIN
	DROP INDEX [IX_PropertyStatuses_LocationCd] ON [PropertyStatuses];
END

CREATE NONCLUSTERED INDEX [IX_PropertyStatuses_LocationCd] ON [PropertyStatuses] (LocationCd ASC, PropertyId ASC)

ALTER TABLE [PsiAddendumChargeRecommendations]

DROP CONSTRAINT [PK_PSIAddendumChargeRecommendations];

ALTER TABLE [PsiAddendumChargeRecommendations] ADD CONSTRAINT [PK_PSIAddendumChargeRecommendations] PRIMARY KEY CLUSTERED (PsiAddendumChargeRecommendationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PsiAddendumChargeRecommendations_LocationCd'
		)
BEGIN
	DROP INDEX [IX_PsiAddendumChargeRecommendations_LocationCd] ON [PsiAddendumChargeRecommendations];
END

CREATE NONCLUSTERED INDEX [IX_PsiAddendumChargeRecommendations_LocationCd] ON [PsiAddendumChargeRecommendations] (LocationCd ASC, PresentenceAddendumChargeId ASC)

ALTER TABLE [PsiChargeRecommendations]

DROP CONSTRAINT [PK_PSIChargeRecommendations];

ALTER TABLE [PsiChargeRecommendations] ADD CONSTRAINT [PK_PSIChargeRecommendations] PRIMARY KEY CLUSTERED (PsiChargeRecommendationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PsiChargeRecommendations_LocationCd'
		)
BEGIN
	DROP INDEX [IX_PsiChargeRecommendations_LocationCd] ON [PsiChargeRecommendations];
END

CREATE NONCLUSTERED INDEX [IX_PsiChargeRecommendations_LocationCd] ON [PsiChargeRecommendations] (LocationCd ASC, PresentenceInvestigationChargeId ASC)

ALTER TABLE [PsiExtraOffenderNeeds]

DROP CONSTRAINT [PK_PsiExtraOffenderNeeds];

ALTER TABLE [PsiExtraOffenderNeeds] ADD CONSTRAINT [PK_PsiExtraOffenderNeeds] PRIMARY KEY CLUSTERED (PsiExtraOffenderNeedId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_PsiExtraOffenderNeeds_LocationCd'
		)
BEGIN
	DROP INDEX [IX_PsiExtraOffenderNeeds_LocationCd] ON [PsiExtraOffenderNeeds];
END

CREATE NONCLUSTERED INDEX [IX_PsiExtraOffenderNeeds_LocationCd] ON [PsiExtraOffenderNeeds] (LocationCd ASC, PsiExtraId ASC)

ALTER TABLE [QuangTrainingAddressPhones]

DROP CONSTRAINT [PK_QuangTrainingAddressPhones];

ALTER TABLE [QuangTrainingAddressPhones] ADD CONSTRAINT [PK_QuangTrainingAddressPhones] PRIMARY KEY CLUSTERED (TrainingAddressPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_QuangTrainingAddressPhones_LocationCd'
		)
BEGIN
	DROP INDEX [IX_QuangTrainingAddressPhones_LocationCd] ON [QuangTrainingAddressPhones];
END

CREATE NONCLUSTERED INDEX [IX_QuangTrainingAddressPhones_LocationCd] ON [QuangTrainingAddressPhones] (LocationCd ASC, TrainingAddressId ASC)

ALTER TABLE [RcpnAccomodationsDetails]

DROP CONSTRAINT [PK_RCPNAccomodationsDetails];

ALTER TABLE [RcpnAccomodationsDetails] ADD CONSTRAINT [PK_RCPNAccomodationsDetails] PRIMARY KEY CLUSTERED (RcpnAccomodationsDetailId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_RcpnAccomodationsDetails_LocationCd'
		)
BEGIN
	DROP INDEX [IX_RcpnAccomodationsDetails_LocationCd] ON [RcpnAccomodationsDetails];
END

CREATE NONCLUSTERED INDEX [IX_RcpnAccomodationsDetails_LocationCd] ON [RcpnAccomodationsDetails] (LocationCd ASC, ReentryCasePlanId ASC)

ALTER TABLE [RcpnAlcoholDrugProblemDetails]

DROP CONSTRAINT [PK_RCPNAlcoholDrugProblemDetails];

ALTER TABLE [RcpnAlcoholDrugProblemDetails] ADD CONSTRAINT [PK_RCPNAlcoholDrugProblemDetails] PRIMARY KEY CLUSTERED (RcpnAlcoholDrugProblemDetailId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_RcpnAlcoholDrugProblemDetails_LocationCd'
		)
BEGIN
	DROP INDEX [IX_RcpnAlcoholDrugProblemDetails_LocationCd] ON [RcpnAlcoholDrugProblemDetails];
END

CREATE NONCLUSTERED INDEX [IX_RcpnAlcoholDrugProblemDetails_LocationCd] ON [RcpnAlcoholDrugProblemDetails] (LocationCd ASC, ReentryCasePlanId ASC)

ALTER TABLE [RcpnAttitudesOrientationDetails]

DROP CONSTRAINT [PK_RCPNAttitudesOrientationDetails];

ALTER TABLE [RcpnAttitudesOrientationDetails] ADD CONSTRAINT [PK_RCPNAttitudesOrientationDetails] PRIMARY KEY CLUSTERED (RcpnAttitudesOrientationDetailId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_RcpnAttitudesOrientationDetails_LocationCd'
		)
BEGIN
	DROP INDEX [IX_RcpnAttitudesOrientationDetails_LocationCd] ON [RcpnAttitudesOrientationDetails];
END

CREATE NONCLUSTERED INDEX [IX_RcpnAttitudesOrientationDetails_LocationCd] ON [RcpnAttitudesOrientationDetails] (LocationCd ASC, ReentryCasePlanId ASC)

ALTER TABLE [RcpnCompanionsDetails]

DROP CONSTRAINT [PK_RCPNCompanionsDetails];

ALTER TABLE [RcpnCompanionsDetails] ADD CONSTRAINT [PK_RCPNCompanionsDetails] PRIMARY KEY CLUSTERED (RcpnCompanionsDetailId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_RcpnCompanionsDetails_LocationCd'
		)
BEGIN
	DROP INDEX [IX_RcpnCompanionsDetails_LocationCd] ON [RcpnCompanionsDetails];
END

CREATE NONCLUSTERED INDEX [IX_RcpnCompanionsDetails_LocationCd] ON [RcpnCompanionsDetails] (LocationCd ASC, ReentryCasePlanId ASC)

ALTER TABLE [RcpnEducationDetails]

DROP CONSTRAINT [PK_RCPNEducationDetails];

ALTER TABLE [RcpnEducationDetails] ADD CONSTRAINT [PK_RCPNEducationDetails] PRIMARY KEY CLUSTERED (RcpnEducationDetailId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_RcpnEducationDetails_LocationCd'
		)
BEGIN
	DROP INDEX [IX_RcpnEducationDetails_LocationCd] ON [RcpnEducationDetails];
END

CREATE NONCLUSTERED INDEX [IX_RcpnEducationDetails_LocationCd] ON [RcpnEducationDetails] (LocationCd ASC, ReentryCasePlanId ASC)

ALTER TABLE [RcpnEmotionalPersonalDetails]

DROP CONSTRAINT [PK_RCPNEmotionalPersonalDetails];

ALTER TABLE [RcpnEmotionalPersonalDetails] ADD CONSTRAINT [PK_RCPNEmotionalPersonalDetails] PRIMARY KEY CLUSTERED (RcpnEmotionalPersonalDetailId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_RcpnEmotionalPersonalDetails_LocationCd'
		)
BEGIN
	DROP INDEX [IX_RcpnEmotionalPersonalDetails_LocationCd] ON [RcpnEmotionalPersonalDetails];
END

CREATE NONCLUSTERED INDEX [IX_RcpnEmotionalPersonalDetails_LocationCd] ON [RcpnEmotionalPersonalDetails] (LocationCd ASC, ReentryCasePlanId ASC)

ALTER TABLE [RcpnEmploymentDetails]

DROP CONSTRAINT [PK_RCPNEmploymentDetails];

ALTER TABLE [RcpnEmploymentDetails] ADD CONSTRAINT [PK_RCPNEmploymentDetails] PRIMARY KEY CLUSTERED (RcpnEmploymentDetailId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_RcpnEmploymentDetails_LocationCd'
		)
BEGIN
	DROP INDEX [IX_RcpnEmploymentDetails_LocationCd] ON [RcpnEmploymentDetails];
END

CREATE NONCLUSTERED INDEX [IX_RcpnEmploymentDetails_LocationCd] ON [RcpnEmploymentDetails] (LocationCd ASC, ReentryCasePlanId ASC)

ALTER TABLE [RcpnFamilyMaritalDetails]

DROP CONSTRAINT [PK_RCPNFamilyMaritalDetails];

ALTER TABLE [RcpnFamilyMaritalDetails] ADD CONSTRAINT [PK_RCPNFamilyMaritalDetails] PRIMARY KEY CLUSTERED (RcpnFamilyMaritalDetailId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_RcpnFamilyMaritalDetails_LocationCd'
		)
BEGIN
	DROP INDEX [IX_RcpnFamilyMaritalDetails_LocationCd] ON [RcpnFamilyMaritalDetails];
END

CREATE NONCLUSTERED INDEX [IX_RcpnFamilyMaritalDetails_LocationCd] ON [RcpnFamilyMaritalDetails] (LocationCd ASC, ReentryCasePlanId ASC)

ALTER TABLE [RcpnFinancialDetails]

DROP CONSTRAINT [PK_RCPNFinancialDetails];

ALTER TABLE [RcpnFinancialDetails] ADD CONSTRAINT [PK_RCPNFinancialDetails] PRIMARY KEY CLUSTERED (RcpnFinancialDetailId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_RcpnFinancialDetails_LocationCd'
		)
BEGIN
	DROP INDEX [IX_RcpnFinancialDetails_LocationCd] ON [RcpnFinancialDetails];
END

CREATE NONCLUSTERED INDEX [IX_RcpnFinancialDetails_LocationCd] ON [RcpnFinancialDetails] (LocationCd ASC, ReentryCasePlanId ASC)

ALTER TABLE [RcpnLeisureRecreationDetails]

DROP CONSTRAINT [PK_RCPNLeisureRecreationDetails];

ALTER TABLE [RcpnLeisureRecreationDetails] ADD CONSTRAINT [PK_RCPNLeisureRecreationDetails] PRIMARY KEY CLUSTERED (RcpnLeisureRecreationDetailId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_RcpnLeisureRecreationDetails_LocationCd'
		)
BEGIN
	DROP INDEX [IX_RcpnLeisureRecreationDetails_LocationCd] ON [RcpnLeisureRecreationDetails];
END

CREATE NONCLUSTERED INDEX [IX_RcpnLeisureRecreationDetails_LocationCd] ON [RcpnLeisureRecreationDetails] (LocationCd ASC, ReentryCasePlanId ASC)

ALTER TABLE [ReconsiderSentenceWorksheetCharges]

DROP CONSTRAINT [PK_ReconsiderSentenceWorksheetCharges];

ALTER TABLE [ReconsiderSentenceWorksheetCharges] ADD CONSTRAINT [PK_ReconsiderSentenceWorksheetCharges] PRIMARY KEY CLUSTERED (ReconsiderSentenceWorksheetChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ReconsiderSentenceWorksheetCharges_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ReconsiderSentenceWorksheetCharges_LocationCd] ON [ReconsiderSentenceWorksheetCharges];
END

CREATE NONCLUSTERED INDEX [IX_ReconsiderSentenceWorksheetCharges_LocationCd] ON [ReconsiderSentenceWorksheetCharges] (LocationCd ASC, ReconsiderSentenceWorksheetId ASC)

ALTER TABLE [ReleaseNotificationContacts]

DROP CONSTRAINT [PK_ReleaseNotificationContacts];

ALTER TABLE [ReleaseNotificationContacts] ADD CONSTRAINT [PK_ReleaseNotificationContacts] PRIMARY KEY CLUSTERED (ReleaseNotificationContactId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ReleaseNotificationContacts_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ReleaseNotificationContacts_LocationCd] ON [ReleaseNotificationContacts];
END

CREATE NONCLUSTERED INDEX [IX_ReleaseNotificationContacts_LocationCd] ON [ReleaseNotificationContacts] (LocationCd ASC, ReleaseNotificationId ASC)

ALTER TABLE [ReleaseNotificationReports]

DROP CONSTRAINT [PK_ReleaseNotificationReports];

ALTER TABLE [ReleaseNotificationReports] ADD CONSTRAINT [PK_ReleaseNotificationReports] PRIMARY KEY CLUSTERED (ReleaseNotificationReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ReleaseNotificationReports_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ReleaseNotificationReports_LocationCd] ON [ReleaseNotificationReports];
END

CREATE NONCLUSTERED INDEX [IX_ReleaseNotificationReports_LocationCd] ON [ReleaseNotificationReports] (LocationCd ASC, ReleaseNotificationId ASC)

ALTER TABLE [ReportsOrderByOld]

DROP CONSTRAINT [PK_ReportsOrderByOld];

ALTER TABLE [ReportsOrderByOld] ADD CONSTRAINT [PK_ReportsOrderByOld] PRIMARY KEY CLUSTERED (ReportsOrderById ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ReportsOrderByOld_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ReportsOrderByOld_LocationCd] ON [ReportsOrderByOld];
END

CREATE NONCLUSTERED INDEX [IX_ReportsOrderByOld_LocationCd] ON [ReportsOrderByOld] (LocationCd ASC, ReportId ASC)

ALTER TABLE [ResidentialAllegedRuleViolations]

DROP CONSTRAINT [PK_ResidentialAllegedRuleViolations];

ALTER TABLE [ResidentialAllegedRuleViolations] ADD CONSTRAINT [PK_ResidentialAllegedRuleViolations] PRIMARY KEY CLUSTERED (ResidentialAllegedRuleViolationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ResidentialAllegedRuleViolations_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ResidentialAllegedRuleViolations_LocationCd] ON [ResidentialAllegedRuleViolations];
END

CREATE NONCLUSTERED INDEX [IX_ResidentialAllegedRuleViolations_LocationCd] ON [ResidentialAllegedRuleViolations] (LocationCd ASC, ResidentialFormalDisciplineId ASC)

ALTER TABLE [ResidentialAppealReasons]

DROP CONSTRAINT [PK_ResidentialAppealReasons];

ALTER TABLE [ResidentialAppealReasons] ADD CONSTRAINT [PK_ResidentialAppealReasons] PRIMARY KEY CLUSTERED (ResidentialAppealReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ResidentialAppealReasons_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ResidentialAppealReasons_LocationCd] ON [ResidentialAppealReasons];
END

CREATE NONCLUSTERED INDEX [IX_ResidentialAppealReasons_LocationCd] ON [ResidentialAppealReasons] (LocationCd ASC, ResidentialAppealId ASC)

ALTER TABLE [ResidentialAppealReports]

DROP CONSTRAINT [PK_ResidentialAppealReports];

ALTER TABLE [ResidentialAppealReports] ADD CONSTRAINT [PK_ResidentialAppealReports] PRIMARY KEY CLUSTERED (ResidentialAppealReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ResidentialAppealReports_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ResidentialAppealReports_LocationCd] ON [ResidentialAppealReports];
END

CREATE NONCLUSTERED INDEX [IX_ResidentialAppealReports_LocationCd] ON [ResidentialAppealReports] (LocationCd ASC, ResidentialAppealId ASC)

ALTER TABLE [ResidentialFormalDisciplineReports]

DROP CONSTRAINT [PK_ResidentialFormalDisciplineReports];

ALTER TABLE [ResidentialFormalDisciplineReports] ADD CONSTRAINT [PK_ResidentialFormalDisciplineReports] PRIMARY KEY CLUSTERED (ResidentialFormalDisciplineReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ResidentialFormalDisciplineReports_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ResidentialFormalDisciplineReports_LocationCd] ON [ResidentialFormalDisciplineReports];
END

CREATE NONCLUSTERED INDEX [IX_ResidentialFormalDisciplineReports_LocationCd] ON [ResidentialFormalDisciplineReports] (LocationCd ASC, ResidentialFormalDisciplineId ASC)

ALTER TABLE [ResidentialHearingReports]

DROP CONSTRAINT [PK_ResidentialHearingReports];

ALTER TABLE [ResidentialHearingReports] ADD CONSTRAINT [PK_ResidentialHearingReports] PRIMARY KEY CLUSTERED (ResidentialHearingReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ResidentialHearingReports_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ResidentialHearingReports_LocationCd] ON [ResidentialHearingReports];
END

CREATE NONCLUSTERED INDEX [IX_ResidentialHearingReports_LocationCd] ON [ResidentialHearingReports] (LocationCd ASC, ResidentialHearingId ASC)

ALTER TABLE [ResidentialHearings]

DROP CONSTRAINT [PK_ResidentialHearings];

ALTER TABLE [ResidentialHearings] ADD CONSTRAINT [PK_ResidentialHearings] PRIMARY KEY CLUSTERED (ResidentialHearingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ResidentialHearings_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ResidentialHearings_LocationCd] ON [ResidentialHearings];
END

CREATE NONCLUSTERED INDEX [IX_ResidentialHearings_LocationCd] ON [ResidentialHearings] (LocationCd ASC, ResidentialFormalDisciplineId ASC)

ALTER TABLE [ResidentialInformalDisciplineReports]

DROP CONSTRAINT [PK_ResidentialInformalDisciplineReports];

ALTER TABLE [ResidentialInformalDisciplineReports] ADD CONSTRAINT [PK_ResidentialInformalDisciplineReports] PRIMARY KEY CLUSTERED (ResidentialInformalDisciplineReportId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ResidentialInformalDisciplineReports_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ResidentialInformalDisciplineReports_LocationCd] ON [ResidentialInformalDisciplineReports];
END

CREATE NONCLUSTERED INDEX [IX_ResidentialInformalDisciplineReports_LocationCd] ON [ResidentialInformalDisciplineReports] (LocationCd ASC, ResidentialInformalDisciplineId ASC)

ALTER TABLE [ResidentialTimeLossSanctionAppeals]

DROP CONSTRAINT [PK_ResidentialTimeLossSanctionAppeals];

ALTER TABLE [ResidentialTimeLossSanctionAppeals] ADD CONSTRAINT [PK_ResidentialTimeLossSanctionAppeals] PRIMARY KEY CLUSTERED (ResidentialTimeLossSanctionAppealId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ResidentialTimeLossSanctionAppeals_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ResidentialTimeLossSanctionAppeals_LocationCd] ON [ResidentialTimeLossSanctionAppeals];
END

CREATE NONCLUSTERED INDEX [IX_ResidentialTimeLossSanctionAppeals_LocationCd] ON [ResidentialTimeLossSanctionAppeals] (LocationCd ASC, ResidentialTimeLossSanctionId ASC)

ALTER TABLE [ResidentialTimeLossSanctions]

DROP CONSTRAINT [PK_ResidentialTimeLossSanctions];

ALTER TABLE [ResidentialTimeLossSanctions] ADD CONSTRAINT [PK_ResidentialTimeLossSanctions] PRIMARY KEY CLUSTERED (ResidentialTimeLossSanctionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ResidentialTimeLossSanctions_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ResidentialTimeLossSanctions_LocationCd] ON [ResidentialTimeLossSanctions];
END

CREATE NONCLUSTERED INDEX [IX_ResidentialTimeLossSanctions_LocationCd] ON [ResidentialTimeLossSanctions] (LocationCd ASC, ResidentialFormalDisciplineId ASC)

ALTER TABLE [ResidentialViolationBehaviorCodes]

DROP CONSTRAINT [PK_ResidentialViolationBehaviorCodes];

ALTER TABLE [ResidentialViolationBehaviorCodes] ADD CONSTRAINT [PK_ResidentialViolationBehaviorCodes] PRIMARY KEY CLUSTERED (ResidentialViolationBehaviorCodeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ResidentialViolationBehaviorCodes_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ResidentialViolationBehaviorCodes_LocationCd] ON [ResidentialViolationBehaviorCodes];
END

CREATE NONCLUSTERED INDEX [IX_ResidentialViolationBehaviorCodes_LocationCd] ON [ResidentialViolationBehaviorCodes] (LocationCd ASC, ResidentialHearingId ASC)

ALTER TABLE [RestitutionPlans]

DROP CONSTRAINT [PK_RestitutionPlans];

ALTER TABLE [RestitutionPlans] ADD CONSTRAINT [PK_RestitutionPlans] PRIMARY KEY CLUSTERED (RestitutionPlanId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_RestitutionPlans_LocationCd'
		)
BEGIN
	DROP INDEX [IX_RestitutionPlans_LocationCd] ON [RestitutionPlans];
END

CREATE NONCLUSTERED INDEX [IX_RestitutionPlans_LocationCd] ON [RestitutionPlans] (LocationCd ASC, RestitutionInformationId ASC)

ALTER TABLE [RestorationOfRightsOffenses]

DROP CONSTRAINT [PK_RestorationOfRightsOffenses];

ALTER TABLE [RestorationOfRightsOffenses] ADD CONSTRAINT [PK_RestorationOfRightsOffenses] PRIMARY KEY CLUSTERED (RestorationOfRightsOffenseId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_RestorationOfRightsOffenses_LocationCd'
		)
BEGIN
	DROP INDEX [IX_RestorationOfRightsOffenses_LocationCd] ON [RestorationOfRightsOffenses];
END

CREATE NONCLUSTERED INDEX [IX_RestorationOfRightsOffenses_LocationCd] ON [RestorationOfRightsOffenses] (LocationCd ASC, RestorationOfRightsId ASC)

ALTER TABLE [RevocationDetailImposedConditions_OLD]

DROP CONSTRAINT [PK_RevocationDetailImposedConditions];

ALTER TABLE [RevocationDetailImposedConditions_OLD] ADD CONSTRAINT [PK_RevocationDetailImposedConditions] PRIMARY KEY CLUSTERED (RevocationDetailImposedConditionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_RevocationDetailImposedConditions_OLD_LocationCd'
		)
BEGIN
	DROP INDEX [IX_RevocationDetailImposedConditions_OLD_LocationCd] ON [RevocationDetailImposedConditions_OLD];
END

CREATE NONCLUSTERED INDEX [IX_RevocationDetailImposedConditions_OLD_LocationCd] ON [RevocationDetailImposedConditions_OLD] (LocationCd ASC, RevocationDetailId ASC)

ALTER TABLE [RevocationDetailViolatedConditions_OLD]

DROP CONSTRAINT [PK_RevocationDetailViolatedConditions];

ALTER TABLE [RevocationDetailViolatedConditions_OLD] ADD CONSTRAINT [PK_RevocationDetailViolatedConditions] PRIMARY KEY CLUSTERED (RevocationDetailViolatedConditionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_RevocationDetailViolatedConditions_OLD_LocationCd'
		)
BEGIN
	DROP INDEX [IX_RevocationDetailViolatedConditions_OLD_LocationCd] ON [RevocationDetailViolatedConditions_OLD];
END

CREATE NONCLUSTERED INDEX [IX_RevocationDetailViolatedConditions_OLD_LocationCd] ON [RevocationDetailViolatedConditions_OLD] (LocationCd ASC, RevocationDetailId ASC)

ALTER TABLE [RlRestitutionPaymentTypes]

DROP CONSTRAINT [PK_RLRestitutionPaymentTypes];

ALTER TABLE [RlRestitutionPaymentTypes] ADD CONSTRAINT [PK_RLRestitutionPaymentTypes] PRIMARY KEY CLUSTERED (RlRestitutionPaymentTypeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_RlRestitutionPaymentTypes_LocationCd'
		)
BEGIN
	DROP INDEX [IX_RlRestitutionPaymentTypes_LocationCd] ON [RlRestitutionPaymentTypes];
END

CREATE NONCLUSTERED INDEX [IX_RlRestitutionPaymentTypes_LocationCd] ON [RlRestitutionPaymentTypes] (LocationCd ASC, RestitutionInformationId ASC)

ALTER TABLE [RwsRovCharges]

DROP CONSTRAINT [PK_RWSROVCharges];

ALTER TABLE [RwsRovCharges] ADD CONSTRAINT [PK_RWSROVCharges] PRIMARY KEY CLUSTERED (RwsRovChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_RwsRovCharges_LocationCd'
		)
BEGIN
	DROP INDEX [IX_RwsRovCharges_LocationCd] ON [RwsRovCharges];
END

CREATE NONCLUSTERED INDEX [IX_RwsRovCharges_LocationCd] ON [RwsRovCharges] (LocationCd ASC, RwsReportOfViolationId ASC)

ALTER TABLE [RwsRovFieldRuleViolationIncidents]

DROP CONSTRAINT [PK_RWSROVFieldRuleViolationIncidents];

ALTER TABLE [RwsRovFieldRuleViolationIncidents] ADD CONSTRAINT [PK_RWSROVFieldRuleViolationIncidents] PRIMARY KEY CLUSTERED (RwsRovFieldRuleViolationIncidentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_RwsRovFieldRuleViolationIncidents_LocationCd'
		)
BEGIN
	DROP INDEX [IX_RwsRovFieldRuleViolationIncidents_LocationCd] ON [RwsRovFieldRuleViolationIncidents];
END

CREATE NONCLUSTERED INDEX [IX_RwsRovFieldRuleViolationIncidents_LocationCd] ON [RwsRovFieldRuleViolationIncidents] (LocationCd ASC, RwsReportOfViolationId ASC)

ALTER TABLE [RwsRovHearingResponseDecisions]

DROP CONSTRAINT [PK_RWSROVHearingResponseDecisions];

ALTER TABLE [RwsRovHearingResponseDecisions] ADD CONSTRAINT [PK_RWSROVHearingResponseDecisions] PRIMARY KEY CLUSTERED (RwsRovHearingResponseDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_RwsRovHearingResponseDecisions_LocationCd'
		)
BEGIN
	DROP INDEX [IX_RwsRovHearingResponseDecisions_LocationCd] ON [RwsRovHearingResponseDecisions];
END

CREATE NONCLUSTERED INDEX [IX_RwsRovHearingResponseDecisions_LocationCd] ON [RwsRovHearingResponseDecisions] (LocationCd ASC, RwsRovHearingResponseId ASC)

ALTER TABLE [RwsRovHearingResponseRecommendations]

DROP CONSTRAINT [PK_RWSROVHearingResponseRecommendations];

ALTER TABLE [RwsRovHearingResponseRecommendations] ADD CONSTRAINT [PK_RWSROVHearingResponseRecommendations] PRIMARY KEY CLUSTERED (RwsRovHearingResponseRecommendationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_RwsRovHearingResponseRecommendations_LocationCd'
		)
BEGIN
	DROP INDEX [IX_RwsRovHearingResponseRecommendations_LocationCd] ON [RwsRovHearingResponseRecommendations];
END

CREATE NONCLUSTERED INDEX [IX_RwsRovHearingResponseRecommendations_LocationCd] ON [RwsRovHearingResponseRecommendations] (LocationCd ASC, RwsRovHearingResponseId ASC)

ALTER TABLE [RwsRovHearingResponses]

DROP CONSTRAINT [PK_RWSROVHearingResponses];

ALTER TABLE [RwsRovHearingResponses] ADD CONSTRAINT [PK_RWSROVHearingResponses] PRIMARY KEY CLUSTERED (RwsRovHearingResponseId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_RwsRovHearingResponses_LocationCd'
		)
BEGIN
	DROP INDEX [IX_RwsRovHearingResponses_LocationCd] ON [RwsRovHearingResponses];
END

CREATE NONCLUSTERED INDEX [IX_RwsRovHearingResponses_LocationCd] ON [RwsRovHearingResponses] (LocationCd ASC, RwsReportOfViolationId ASC)

ALTER TABLE [SecurityStandardDetails_OLD]

DROP CONSTRAINT [PK_SecurityStandardDetails];

ALTER TABLE [SecurityStandardDetails_OLD] ADD CONSTRAINT [PK_SecurityStandardDetails] PRIMARY KEY CLUSTERED (SecurityStandardDetailId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_SecurityStandardDetails_OLD_LocationCd'
		)
BEGIN
	DROP INDEX [IX_SecurityStandardDetails_OLD_LocationCd] ON [SecurityStandardDetails_OLD];
END

CREATE NONCLUSTERED INDEX [IX_SecurityStandardDetails_OLD_LocationCd] ON [SecurityStandardDetails_OLD] (LocationCd ASC, SecurityStandardId ASC)

ALTER TABLE [SecurityStandardsNonToxinStaff]

DROP CONSTRAINT [PK_SecurityStandardsNonToxinStaff];

ALTER TABLE [SecurityStandardsNonToxinStaff] ADD CONSTRAINT [PK_SecurityStandardsNonToxinStaff] PRIMARY KEY CLUSTERED (SecurityStandardsNonToxinStaffId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_SecurityStandardsNonToxinStaff_LocationCd'
		)
BEGIN
	DROP INDEX [IX_SecurityStandardsNonToxinStaff_LocationCd] ON [SecurityStandardsNonToxinStaff];
END

CREATE NONCLUSTERED INDEX [IX_SecurityStandardsNonToxinStaff_LocationCd] ON [SecurityStandardsNonToxinStaff] (LocationCd ASC, SecurityStandardsNonToxinId ASC)

ALTER TABLE [SecurityStandardsNonToxinUnsatisfactoryReasons]

DROP CONSTRAINT [PK_SecurityStandardsNonToxinContraband];

ALTER TABLE [SecurityStandardsNonToxinUnsatisfactoryReasons] ADD CONSTRAINT [PK_SecurityStandardsNonToxinContraband] PRIMARY KEY CLUSTERED (SecurityStandardsNonToxinUnsatisfactoryReasonId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_SecurityStandardsNonToxinUnsatisfactoryReasons_LocationCd'
		)
BEGIN
	DROP INDEX [IX_SecurityStandardsNonToxinUnsatisfactoryReasons_LocationCd] ON [SecurityStandardsNonToxinUnsatisfactoryReasons];
END

CREATE NONCLUSTERED INDEX [IX_SecurityStandardsNonToxinUnsatisfactoryReasons_LocationCd] ON [SecurityStandardsNonToxinUnsatisfactoryReasons] (LocationCd ASC, SecurityStandardsNonToxinId ASC)

ALTER TABLE [SecurityStandardsToxinStaff]

DROP CONSTRAINT [PK_SecurityStandardsToxinStaff];

ALTER TABLE [SecurityStandardsToxinStaff] ADD CONSTRAINT [PK_SecurityStandardsToxinStaff] PRIMARY KEY CLUSTERED (SecurityStandardsToxinStaffId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_SecurityStandardsToxinStaff_LocationCd'
		)
BEGIN
	DROP INDEX [IX_SecurityStandardsToxinStaff_LocationCd] ON [SecurityStandardsToxinStaff];
END

CREATE NONCLUSTERED INDEX [IX_SecurityStandardsToxinStaff_LocationCd] ON [SecurityStandardsToxinStaff] (LocationCd ASC, SecurityStandardsToxinId ASC)

ALTER TABLE [SecurityStandardsToxinSubstances]

DROP CONSTRAINT [PK_SecurityStandardsToxinSubstances];

ALTER TABLE [SecurityStandardsToxinSubstances] ADD CONSTRAINT [PK_SecurityStandardsToxinSubstances] PRIMARY KEY CLUSTERED (SecurityStandardsToxinSubstanceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_SecurityStandardsToxinSubstances_LocationCd'
		)
BEGIN
	DROP INDEX [IX_SecurityStandardsToxinSubstances_LocationCd] ON [SecurityStandardsToxinSubstances];
END

CREATE NONCLUSTERED INDEX [IX_SecurityStandardsToxinSubstances_LocationCd] ON [SecurityStandardsToxinSubstances] (LocationCd ASC, SecurityStandardsToxinId ASC)

ALTER TABLE [SentencePenalties]

DROP CONSTRAINT [PK_SentencePenalties];

ALTER TABLE [SentencePenalties] ADD CONSTRAINT [PK_SentencePenalties] PRIMARY KEY CLUSTERED (SentencePenaltyId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_SentencePenalties_LocationCd'
		)
BEGIN
	DROP INDEX [IX_SentencePenalties_LocationCd] ON [SentencePenalties];
END

CREATE NONCLUSTERED INDEX [IX_SentencePenalties_LocationCd] ON [SentencePenalties] (LocationCd ASC, SentenceId ASC)

ALTER TABLE [Sentences]

DROP CONSTRAINT [PK_Sentences];

ALTER TABLE [Sentences] ADD CONSTRAINT [PK_Sentences] PRIMARY KEY CLUSTERED (SentenceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_Sentences_LocationCd'
		)
BEGIN
	DROP INDEX [IX_Sentences_LocationCd] ON [Sentences];
END

CREATE NONCLUSTERED INDEX [IX_Sentences_LocationCd] ON [Sentences] (LocationCd ASC, ChargeId ASC)

ALTER TABLE [ShikshyaTrainingAddressPhones]

DROP CONSTRAINT [PK_ShikshyaTrainingAddressPhones];

ALTER TABLE [ShikshyaTrainingAddressPhones] ADD CONSTRAINT [PK_ShikshyaTrainingAddressPhones] PRIMARY KEY CLUSTERED (TrainingAddressPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ShikshyaTrainingAddressPhones_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ShikshyaTrainingAddressPhones_LocationCd] ON [ShikshyaTrainingAddressPhones];
END

CREATE NONCLUSTERED INDEX [IX_ShikshyaTrainingAddressPhones_LocationCd] ON [ShikshyaTrainingAddressPhones] (LocationCd ASC, TrainingAddressId ASC)

ALTER TABLE [ShrabyaTrainingAddressPhones]

DROP CONSTRAINT [PK_ShrabyaTrainingAddressPhones];

ALTER TABLE [ShrabyaTrainingAddressPhones] ADD CONSTRAINT [PK_ShrabyaTrainingAddressPhones] PRIMARY KEY CLUSTERED (TrainingAddressPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ShrabyaTrainingAddressPhones_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ShrabyaTrainingAddressPhones_LocationCd] ON [ShrabyaTrainingAddressPhones];
END

CREATE NONCLUSTERED INDEX [IX_ShrabyaTrainingAddressPhones_LocationCd] ON [ShrabyaTrainingAddressPhones] (LocationCd ASC, TrainingAddressId ASC)

ALTER TABLE [SlCaseManagers]

DROP CONSTRAINT [PK_SLCaseManagers];

ALTER TABLE [SlCaseManagers] ADD CONSTRAINT [PK_SLCaseManagers] PRIMARY KEY CLUSTERED (SlCaseManagerId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_SlCaseManagers_LocationCd'
		)
BEGIN
	DROP INDEX [IX_SlCaseManagers_LocationCd] ON [SlCaseManagers];
END

CREATE NONCLUSTERED INDEX [IX_SlCaseManagers_LocationCd] ON [SlCaseManagers] (LocationCd ASC, SupervisionStatusInformationId ASC)

ALTER TABLE [SlOffenderWorkUnits]

DROP CONSTRAINT [PK_SLOffenderWorkUnits];

ALTER TABLE [SlOffenderWorkUnits] ADD CONSTRAINT [PK_SLOffenderWorkUnits] PRIMARY KEY CLUSTERED (SlOffenderWorkUnitId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_SlOffenderWorkUnits_LocationCd'
		)
BEGIN
	DROP INDEX [IX_SlOffenderWorkUnits_LocationCd] ON [SlOffenderWorkUnits];
END

CREATE NONCLUSTERED INDEX [IX_SlOffenderWorkUnits_LocationCd] ON [SlOffenderWorkUnits] (LocationCd ASC, SupervisionStatusInformationId ASC)

ALTER TABLE [SlSecondaryManagement]

DROP CONSTRAINT [PK_SLSecondaryManagement];

ALTER TABLE [SlSecondaryManagement] ADD CONSTRAINT [PK_SLSecondaryManagement] PRIMARY KEY CLUSTERED (SlSecondaryManagementId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_SlSecondaryManagement_LocationCd'
		)
BEGIN
	DROP INDEX [IX_SlSecondaryManagement_LocationCd] ON [SlSecondaryManagement];
END

CREATE NONCLUSTERED INDEX [IX_SlSecondaryManagement_LocationCd] ON [SlSecondaryManagement] (LocationCd ASC, SupervisionStatusInformationId ASC)

ALTER TABLE [SlSpecialties]

DROP CONSTRAINT [PK_SLSpecialties];

ALTER TABLE [SlSpecialties] ADD CONSTRAINT [PK_SLSpecialties] PRIMARY KEY CLUSTERED (SlSpecialtyId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_SlSpecialties_LocationCd'
		)
BEGIN
	DROP INDEX [IX_SlSpecialties_LocationCd] ON [SlSpecialties];
END

CREATE NONCLUSTERED INDEX [IX_SlSpecialties_LocationCd] ON [SlSpecialties] (LocationCd ASC, SupervisionStatusInformationId ASC)

ALTER TABLE [SlSupervisionModifiers]

DROP CONSTRAINT [PK_SLSupervisionModifiers];

ALTER TABLE [SlSupervisionModifiers] ADD CONSTRAINT [PK_SLSupervisionModifiers] PRIMARY KEY CLUSTERED (SlSupervisionModifierId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_SlSupervisionModifiers_LocationCd'
		)
BEGIN
	DROP INDEX [IX_SlSupervisionModifiers_LocationCd] ON [SlSupervisionModifiers];
END

CREATE NONCLUSTERED INDEX [IX_SlSupervisionModifiers_LocationCd] ON [SlSupervisionModifiers] (LocationCd ASC, SupervisionStatusInformationId ASC)

ALTER TABLE [SocialSecurityCardTrackings]

DROP CONSTRAINT [PK_SocialSecurityCardTrackings];

ALTER TABLE [SocialSecurityCardTrackings] ADD CONSTRAINT [PK_SocialSecurityCardTrackings] PRIMARY KEY CLUSTERED (SocialSecurityCardTrackingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_SocialSecurityCardTrackings_LocationCd'
		)
BEGIN
	DROP INDEX [IX_SocialSecurityCardTrackings_LocationCd] ON [SocialSecurityCardTrackings];
END

CREATE NONCLUSTERED INDEX [IX_SocialSecurityCardTrackings_LocationCd] ON [SocialSecurityCardTrackings] (LocationCd ASC, SsnId ASC)

ALTER TABLE [SSCardInstTransferred]

DROP CONSTRAINT [PK_SSCardInstTransferred];

ALTER TABLE [SSCardInstTransferred] ADD CONSTRAINT [PK_SSCardInstTransferred] PRIMARY KEY CLUSTERED (SSCardInstTransferredId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_SSCardInstTransferred_LocationCd'
		)
BEGIN
	DROP INDEX [IX_SSCardInstTransferred_LocationCd] ON [SSCardInstTransferred];
END

CREATE NONCLUSTERED INDEX [IX_SSCardInstTransferred_LocationCd] ON [SSCardInstTransferred] (LocationCd ASC, SocialSecurityCardTrackingId ASC)

ALTER TABLE [StevenTrainingAddressPhones]

DROP CONSTRAINT [PK_StevenTrainingAddressPhones];

ALTER TABLE [StevenTrainingAddressPhones] ADD CONSTRAINT [PK_StevenTrainingAddressPhones] PRIMARY KEY CLUSTERED (TrainingAddressPhoneId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_StevenTrainingAddressPhones_LocationCd'
		)
BEGIN
	DROP INDEX [IX_StevenTrainingAddressPhones_LocationCd] ON [StevenTrainingAddressPhones];
END

CREATE NONCLUSTERED INDEX [IX_StevenTrainingAddressPhones_LocationCd] ON [StevenTrainingAddressPhones] (LocationCd ASC, TrainingAddressId ASC)

ALTER TABLE [SupervisionStatusCharges]

DROP CONSTRAINT [PK_SupervisionStatusCharges];

ALTER TABLE [SupervisionStatusCharges] ADD CONSTRAINT [PK_SupervisionStatusCharges] PRIMARY KEY CLUSTERED (SupervisionStatusChargeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_SupervisionStatusCharges_LocationCd'
		)
BEGIN
	DROP INDEX [IX_SupervisionStatusCharges_LocationCd] ON [SupervisionStatusCharges];
END

CREATE NONCLUSTERED INDEX [IX_SupervisionStatusCharges_LocationCd] ON [SupervisionStatusCharges] (LocationCd ASC, SupervisionStatusInformationId ASC)

ALTER TABLE [SupportMeans]

DROP CONSTRAINT [PK_SupportMeans];

ALTER TABLE [SupportMeans] ADD CONSTRAINT [PK_SupportMeans] PRIMARY KEY CLUSTERED (FinancialSupportMeanId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_SupportMeans_LocationCd'
		)
BEGIN
	DROP INDEX [IX_SupportMeans_LocationCd] ON [SupportMeans];
END

CREATE NONCLUSTERED INDEX [IX_SupportMeans_LocationCd] ON [SupportMeans] (LocationCd ASC, FinancialInfoId ASC)

ALTER TABLE [ThreatGroupIdentifiers]

DROP CONSTRAINT [PK_ThreatGroupIdentifiers];

ALTER TABLE [ThreatGroupIdentifiers] ADD CONSTRAINT [PK_ThreatGroupIdentifiers] PRIMARY KEY CLUSTERED (ThreatGroupIdentifierId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ThreatGroupIdentifiers_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ThreatGroupIdentifiers_LocationCd] ON [ThreatGroupIdentifiers];
END

CREATE NONCLUSTERED INDEX [IX_ThreatGroupIdentifiers_LocationCd] ON [ThreatGroupIdentifiers] (LocationCd ASC, ThreatGroupInvolvementId ASC)

ALTER TABLE [ThreatGroupInvolvementEndings]

DROP CONSTRAINT [PK_ThreatGroupInvolvementEndings];

ALTER TABLE [ThreatGroupInvolvementEndings] ADD CONSTRAINT [PK_ThreatGroupInvolvementEndings] PRIMARY KEY CLUSTERED (ThreatGroupInvolvementEndingId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_ThreatGroupInvolvementEndings_LocationCd'
		)
BEGIN
	DROP INDEX [IX_ThreatGroupInvolvementEndings_LocationCd] ON [ThreatGroupInvolvementEndings];
END

CREATE NONCLUSTERED INDEX [IX_ThreatGroupInvolvementEndings_LocationCd] ON [ThreatGroupInvolvementEndings] (LocationCd ASC, ThreatGroupInvolvementId ASC)

ALTER TABLE [TimeCompGroupAdjustments]

DROP CONSTRAINT [PK_TimeCompGroupAdjustments];

ALTER TABLE [TimeCompGroupAdjustments] ADD CONSTRAINT [PK_TimeCompGroupAdjustments] PRIMARY KEY CLUSTERED (TimeCompGroupAdjustmentId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_TimeCompGroupAdjustments_LocationCd'
		)
BEGIN
	DROP INDEX [IX_TimeCompGroupAdjustments_LocationCd] ON [TimeCompGroupAdjustments];
END

CREATE NONCLUSTERED INDEX [IX_TimeCompGroupAdjustments_LocationCd] ON [TimeCompGroupAdjustments] (LocationCd ASC, TimeCompGroupId ASC)

ALTER TABLE [TimeCompGroupEvents]

DROP CONSTRAINT [PK_TimeCompGroupEvents];

ALTER TABLE [TimeCompGroupEvents] ADD CONSTRAINT [PK_TimeCompGroupEvents] PRIMARY KEY CLUSTERED (TimeCompGroupEventId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_TimeCompGroupEvents_LocationCd'
		)
BEGIN
	DROP INDEX [IX_TimeCompGroupEvents_LocationCd] ON [TimeCompGroupEvents];
END

CREATE NONCLUSTERED INDEX [IX_TimeCompGroupEvents_LocationCd] ON [TimeCompGroupEvents] (LocationCd ASC, TimeCompGroupId ASC)

ALTER TABLE [TimeCompGroupPenalties]

DROP CONSTRAINT [PK_TimeCompGroupPenalties];

ALTER TABLE [TimeCompGroupPenalties] ADD CONSTRAINT [PK_TimeCompGroupPenalties] PRIMARY KEY CLUSTERED (TimeCompGroupPenaltyId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_TimeCompGroupPenalties_LocationCd'
		)
BEGIN
	DROP INDEX [IX_TimeCompGroupPenalties_LocationCd] ON [TimeCompGroupPenalties];
END

CREATE NONCLUSTERED INDEX [IX_TimeCompGroupPenalties_LocationCd] ON [TimeCompGroupPenalties] (LocationCd ASC, TimeCompGroupId ASC)

ALTER TABLE [TransportInformation]

DROP CONSTRAINT [PK_TransportInformation];

ALTER TABLE [TransportInformation] ADD CONSTRAINT [PK_TransportInformation] PRIMARY KEY CLUSTERED (TransportInformationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_TransportInformation_LocationCd'
		)
BEGIN
	DROP INDEX [IX_TransportInformation_LocationCd] ON [TransportInformation];
END

CREATE NONCLUSTERED INDEX [IX_TransportInformation_LocationCd] ON [TransportInformation] (LocationCd ASC, TransferInstanceToInstitutionId ASC)

ALTER TABLE [TripScheduleTrips]

DROP CONSTRAINT [PK_TripScheduleTrips];

ALTER TABLE [TripScheduleTrips] ADD CONSTRAINT [PK_TripScheduleTrips] PRIMARY KEY CLUSTERED (TripScheduleTripId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_TripScheduleTrips_LocationCd'
		)
BEGIN
	DROP INDEX [IX_TripScheduleTrips_LocationCd] ON [TripScheduleTrips];
END

CREATE NONCLUSTERED INDEX [IX_TripScheduleTrips_LocationCd] ON [TripScheduleTrips] (LocationCd ASC, TripScheduleId ASC)

ALTER TABLE [UserOffenders]

DROP CONSTRAINT [PK_UserOffenders];

ALTER TABLE [UserOffenders] ADD CONSTRAINT [PK_UserOffenders] PRIMARY KEY CLUSTERED (UserOffenderId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_UserOffenders_LocationCd'
		)
BEGIN
	DROP INDEX [IX_UserOffenders_LocationCd] ON [UserOffenders];
END

CREATE NONCLUSTERED INDEX [IX_UserOffenders_LocationCd] ON [UserOffenders] (LocationCd ASC, UserId ASC)

ALTER TABLE [UserPasswords]

DROP CONSTRAINT [PK_UserPasswords];

ALTER TABLE [UserPasswords] ADD CONSTRAINT [PK_UserPasswords] PRIMARY KEY CLUSTERED (UserPasswordId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_UserPasswords_LocationCd'
		)
BEGIN
	DROP INDEX [IX_UserPasswords_LocationCd] ON [UserPasswords];
END

CREATE NONCLUSTERED INDEX [IX_UserPasswords_LocationCd] ON [UserPasswords] (LocationCd ASC, UserId ASC)

ALTER TABLE [UserPreferences]

DROP CONSTRAINT [PK_UserPreferences];

ALTER TABLE [UserPreferences] ADD CONSTRAINT [PK_UserPreferences] PRIMARY KEY CLUSTERED (UserPreferenceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_UserPreferences_LocationCd'
		)
BEGIN
	DROP INDEX [IX_UserPreferences_LocationCd] ON [UserPreferences];
END

CREATE NONCLUSTERED INDEX [IX_UserPreferences_LocationCd] ON [UserPreferences] (LocationCd ASC, UserId ASC)

ALTER TABLE [UserPreferences_New]

DROP CONSTRAINT [PK_UserPreferences_New];

ALTER TABLE [UserPreferences_New] ADD CONSTRAINT [PK_UserPreferences_New] PRIMARY KEY CLUSTERED (UserPreferenceId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_UserPreferences_New_LocationCd'
		)
BEGIN
	DROP INDEX [IX_UserPreferences_New_LocationCd] ON [UserPreferences_New];
END

CREATE NONCLUSTERED INDEX [IX_UserPreferences_New_LocationCd] ON [UserPreferences_New] (LocationCd ASC, UserId ASC)

ALTER TABLE [VictimCases]

DROP CONSTRAINT [PK_VictimCases];

ALTER TABLE [VictimCases] ADD CONSTRAINT [PK_VictimCases] PRIMARY KEY CLUSTERED (VictimCaseId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_VictimCases_LocationCd'
		)
BEGIN
	DROP INDEX [IX_VictimCases_LocationCd] ON [VictimCases];
END

CREATE NONCLUSTERED INDEX [IX_VictimCases_LocationCd] ON [VictimCases] (LocationCd ASC, VictimId ASC)

ALTER TABLE [VictimCauseNumbers]

DROP CONSTRAINT [PK_VictimCauseNumbers];

ALTER TABLE [VictimCauseNumbers] ADD CONSTRAINT [PK_VictimCauseNumbers] PRIMARY KEY CLUSTERED (VictimCauseNumberId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_VictimCauseNumbers_LocationCd'
		)
BEGIN
	DROP INDEX [IX_VictimCauseNumbers_LocationCd] ON [VictimCauseNumbers];
END

CREATE NONCLUSTERED INDEX [IX_VictimCauseNumbers_LocationCd] ON [VictimCauseNumbers] (LocationCd ASC, VictimCaseId ASC)

ALTER TABLE [VictimEmsNotificationLetters]

DROP CONSTRAINT [PK_VictimEmsNotificationReports];

ALTER TABLE [VictimEmsNotificationLetters] ADD CONSTRAINT [PK_VictimEmsNotificationReports] PRIMARY KEY CLUSTERED (VictimEmsNotificationLetterId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_VictimEmsNotificationLetters_LocationCd'
		)
BEGIN
	DROP INDEX [IX_VictimEmsNotificationLetters_LocationCd] ON [VictimEmsNotificationLetters];
END

CREATE NONCLUSTERED INDEX [IX_VictimEmsNotificationLetters_LocationCd] ON [VictimEmsNotificationLetters] (LocationCd ASC, VictimId ASC)

ALTER TABLE [VictimNotificationLetters]

DROP CONSTRAINT [PK_VictimNotificationReports];

ALTER TABLE [VictimNotificationLetters] ADD CONSTRAINT [PK_VictimNotificationReports] PRIMARY KEY CLUSTERED (VictimNotificationLetterId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_VictimNotificationLetters_LocationCd'
		)
BEGIN
	DROP INDEX [IX_VictimNotificationLetters_LocationCd] ON [VictimNotificationLetters];
END

CREATE NONCLUSTERED INDEX [IX_VictimNotificationLetters_LocationCd] ON [VictimNotificationLetters] (LocationCd ASC, VictimId ASC)

ALTER TABLE [VictimRegistrationLetters]

DROP CONSTRAINT [PK_VictimRegistrationReports];

ALTER TABLE [VictimRegistrationLetters] ADD CONSTRAINT [PK_VictimRegistrationReports] PRIMARY KEY CLUSTERED (VictimRegistrationLetterId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_VictimRegistrationLetters_LocationCd'
		)
BEGIN
	DROP INDEX [IX_VictimRegistrationLetters_LocationCd] ON [VictimRegistrationLetters];
END

CREATE NONCLUSTERED INDEX [IX_VictimRegistrationLetters_LocationCd] ON [VictimRegistrationLetters] (LocationCd ASC, VictimCaseId ASC)

ALTER TABLE [VliVisitingGroupsInstitution]

DROP CONSTRAINT [PK_VLIVisitingGroupsInstitution];

ALTER TABLE [VliVisitingGroupsInstitution] ADD CONSTRAINT [PK_VLIVisitingGroupsInstitution] PRIMARY KEY CLUSTERED (VliVisitingGroupInstitutionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_VliVisitingGroupsInstitution_LocationCd'
		)
BEGIN
	DROP INDEX [IX_VliVisitingGroupsInstitution_LocationCd] ON [VliVisitingGroupsInstitution];
END

CREATE NONCLUSTERED INDEX [IX_VliVisitingGroupsInstitution_LocationCd] ON [VliVisitingGroupsInstitution] (LocationCd ASC, VisitingListInstitutionId ASC)

ALTER TABLE [VliVisitingStatusesInstitution]

DROP CONSTRAINT [PK_VLIVisitingStatusesInstitution];

ALTER TABLE [VliVisitingStatusesInstitution] ADD CONSTRAINT [PK_VLIVisitingStatusesInstitution] PRIMARY KEY CLUSTERED (VliVisitingStatusInstitutionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_VliVisitingStatusesInstitution_LocationCd'
		)
BEGIN
	DROP INDEX [IX_VliVisitingStatusesInstitution_LocationCd] ON [VliVisitingStatusesInstitution];
END

CREATE NONCLUSTERED INDEX [IX_VliVisitingStatusesInstitution_LocationCd] ON [VliVisitingStatusesInstitution] (LocationCd ASC, VisitingListInstitutionId ASC)

ALTER TABLE [WrOwiTcnResidentialFormalDisciplines]

DROP CONSTRAINT [PK_WROWITCNResidentialFormalDisciplines];

ALTER TABLE [WrOwiTcnResidentialFormalDisciplines] ADD CONSTRAINT [PK_WROWITCNResidentialFormalDisciplines] PRIMARY KEY CLUSTERED (WrOwiTcnResidentialFormalDisciplineId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_WrOwiTcnResidentialFormalDisciplines_LocationCd'
		)
BEGIN
	DROP INDEX [IX_WrOwiTcnResidentialFormalDisciplines_LocationCd] ON [WrOwiTcnResidentialFormalDisciplines];
END

CREATE NONCLUSTERED INDEX [IX_WrOwiTcnResidentialFormalDisciplines_LocationCd] ON [WrOwiTcnResidentialFormalDisciplines] (LocationCd ASC, WrOwiTransferClassificationNoticeId ASC)

ALTER TABLE [WrOwiTcnResiFormalDisciplineRuleViolations]

DROP CONSTRAINT [PK_WROWITCNResiFormalDisciplineRuleViolations];

ALTER TABLE [WrOwiTcnResiFormalDisciplineRuleViolations] ADD CONSTRAINT [PK_WROWITCNResiFormalDisciplineRuleViolations] PRIMARY KEY CLUSTERED (WrOwiTcnResiFormalDisciplineRuleViolationId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_WrOwiTcnResiFormalDisciplineRuleViolations_LocationCd'
		)
BEGIN
	DROP INDEX [IX_WrOwiTcnResiFormalDisciplineRuleViolations_LocationCd] ON [WrOwiTcnResiFormalDisciplineRuleViolations];
END

CREATE NONCLUSTERED INDEX [IX_WrOwiTcnResiFormalDisciplineRuleViolations_LocationCd] ON [WrOwiTcnResiFormalDisciplineRuleViolations] (LocationCd ASC, WrOwiTcnResidentialFormalDisciplineId ASC)

ALTER TABLE [WrOwiTransferClassificationAppealDecisionNotices]

DROP CONSTRAINT [PK_WROWITransferClassificationAppealDecisionNotices];

ALTER TABLE [WrOwiTransferClassificationAppealDecisionNotices] ADD CONSTRAINT [PK_WROWITransferClassificationAppealDecisionNotices] PRIMARY KEY CLUSTERED (WrOwiTransferClassificationAppealDecisionNoticeId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_WrOwiTransferClassificationAppealDecisionNotices_LocationCd'
		)
BEGIN
	DROP INDEX [IX_WrOwiTransferClassificationAppealDecisionNotices_LocationCd] ON [WrOwiTransferClassificationAppealDecisionNotices];
END

CREATE NONCLUSTERED INDEX [IX_WrOwiTransferClassificationAppealDecisionNotices_LocationCd] ON [WrOwiTransferClassificationAppealDecisionNotices] (LocationCd ASC, WrOwiTransferClassificationNoticeId ASC)

ALTER TABLE [WrOwiTransferClassificationDecisions]

DROP CONSTRAINT [PK_WROWITransferClassificationDecisions];

ALTER TABLE [WrOwiTransferClassificationDecisions] ADD CONSTRAINT [PK_WROWITransferClassificationDecisions] PRIMARY KEY CLUSTERED (WrOwiTransferClassificationDecisionId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);

IF EXISTS (
		SELECT NAME
		FROM SYS.INDEXES
		WHERE NAME = 'IX_WrOwiTransferClassificationDecisions_LocationCd'
		)
BEGIN
	DROP INDEX [IX_WrOwiTransferClassificationDecisions_LocationCd] ON [WrOwiTransferClassificationDecisions];
END

CREATE NONCLUSTERED INDEX [IX_WrOwiTransferClassificationDecisions_LocationCd] ON [WrOwiTransferClassificationDecisions] (LocationCd ASC, WrOwiTransferClassificationNoticeId ASC)

