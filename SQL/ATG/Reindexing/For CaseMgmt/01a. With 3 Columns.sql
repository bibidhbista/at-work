-- Both LocationCd and OffenderCd
;WITH Columnsqry
AS (
	SELECT NAME, ic.object_id, ic.index_id, is_included_column, ic.key_ordinal
	FROM sys.index_columns IC, sys.columns c
	WHERE ic.object_id = c.object_id
		AND ic.column_id = c.column_id
	), IndexQry
AS (
	SELECT I.object_id, I.index_id, (
			SELECT stuff((
						SELECT ',' + NAME AS [text()]
						FROM Columnsqry q
						WHERE q.object_id = I.object_id
							AND q.index_id = i.index_id
							AND q.is_included_column = 0
						ORDER BY q.key_ordinal
						FOR XML path('')
						), 1, 1, '')
			) Keys, (
			SELECT stuff((
						SELECT ',' + NAME AS [text()]
						FROM Columnsqry q
						WHERE q.object_id = I.object_id
							AND q.index_id = i.index_id
							AND q.is_included_column = 1
						FOR XML path('')
						), 1, 1, '')
			) Included
	FROM Columnsqry q, sys.indexes I, sys.objects o
	WHERE q.object_id = I.object_id
		AND q.index_id = i.index_id
		AND o.object_id = I.object_id
		AND O.type NOT IN (
			'S'
			, 'IT'
			)
	GROUP BY I.object_id, I.index_id
	)

SELECT 'Alter Table [' + o.NAME + '] Drop Constraint [' + I.NAME + ']; Alter Table [' + o.NAME + '] Add Constraint [' + I.NAME + '] PRIMARY KEY CLUSTERED (' + SUBSTRING(keys, LEN(keys) - CHARINDEX(',', REVERSE(keys)) + 2, LEN(Keys)) + ' ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100); IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = ''IX_' + o.NAME + '_LocationCd_OffenderCd'') BEGIN  Drop INDEX [IX_' + o.NAME + '_LocationCd_OffenderCd] on [' + o.NAME + ']; END ' + 'Create NONCLUSTERED INDEX [IX_' + o.NAME + '_LocationCd_OffenderCd] on [' + o.NAME + '] ( ' + replace((substring(keys, 0, len(keys) - CHARINDEX(',', reverse(keys)) + 1)), ',', ' ASC,') + ' ASC)' --+']('
	--+replace(replace(keys,',',' ASC,'),(o.name+'ID'),'')+'ASC)'
	, o.NAME AS [Table], I.NAME AS [Index], SUBSTRING(keys, LEN(keys) - CHARINDEX(',', REVERSE(keys)) + 2, LEN(Keys)) AS KeyCol, (LEN(keys) - LEN(REPLACE(keys, ',', '')) + 1) AS [NumOfColsinIndex], keys, I.type_desc, is_unique, fill_factor, is_padded, --included,
	has_filter, filter_definition
FROM IndexQry IQ, Sys.objects o, sys.indexes I
WHERE IQ.object_id = o.object_id
	AND IQ.object_id = I.object_id
	AND IQ.Index_id = I.index_id
	--and (i.name not like '%locationcd%' and  i.name not like '%offendercd%')
	--AND keys  LIKE '%locationCd%Offendercd%'
	--AND (keys NOT LIKE '%Locationcd%' AND keys NOT LIKE '%Offendercd%') -- To see if there are indexes with 3 columns with neither loc or off cd
	AND i.NAME LIKE 'pk%'
	--AND i.NAME LIKE 'cnstr%'
	AND (LEN(keys) - LEN(REPLACE(keys, ',', '')) + 1) = 3 -- change to >1 to fix other indexes
ORDER BY o.NAME ASC, keys DESC, type_desc ASC








-- Only LocationCd (check with query below this to make sure PK is on key column and not any other col)
	;

WITH Columnsqry
AS (
	SELECT NAME, ic.object_id, ic.index_id, is_included_column, ic.key_ordinal
	FROM sys.index_columns IC, sys.columns c
	WHERE ic.object_id = c.object_id
		AND ic.column_id = c.column_id
	), IndexQry
AS (
	SELECT I.object_id, I.index_id, (
			SELECT stuff((
						SELECT ',' + NAME AS [text()]
						FROM Columnsqry q
						WHERE q.object_id = I.object_id
							AND q.index_id = i.index_id
							AND q.is_included_column = 0
						ORDER BY q.key_ordinal
						FOR XML path('')
						), 1, 1, '')
			) Keys, (
			SELECT stuff((
						SELECT ',' + NAME AS [text()]
						FROM Columnsqry q
						WHERE q.object_id = I.object_id
							AND q.index_id = i.index_id
							AND q.is_included_column = 1
						FOR XML path('')
						), 1, 1, '')
			) Included
	FROM Columnsqry q, sys.indexes I, sys.objects o
	WHERE q.object_id = I.object_id
		AND q.index_id = i.index_id
		AND o.object_id = I.object_id
		AND O.type NOT IN (
			'S'
			, 'IT'
			)
	GROUP BY I.object_id, I.index_id
	)
SELECT 'Alter Table [' + o.NAME + '] Drop Constraint [' + I.NAME + ']; Alter Table [' + o.NAME + '] Add Constraint [' + I.NAME + '] PRIMARY KEY CLUSTERED (' + SUBSTRING(keys, LEN(keys) - CHARINDEX(',', REVERSE(keys)) + 2, LEN(Keys)) + ' ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100); IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = ''IX_' + o.NAME + '_LocationCd'') BEGIN  Drop INDEX [IX_' + o.NAME + '_LocationCd] on [' + o.NAME + ']; END ' + 'Create NONCLUSTERED INDEX [IX_' + o.NAME + '_LocationCd] on [' + o.NAME + '] ( ' + replace((substring(keys, 0, len(keys) - CHARINDEX(',', reverse(keys)) + 1)), ',', ' ASC,') + ' ASC)' --+']('
	--+replace(replace(keys,',',' ASC,'),(o.name+'ID'),'')+'ASC)'
	, o.NAME AS [Table], I.NAME AS [Index],
	 SUBSTRING(keys, LEN(keys) - CHARINDEX(',', REVERSE(keys)) + 2, LEN(Keys)) AS KeyCol,
	(LEN(keys) - LEN(REPLACE(keys, ',', '')) + 1) AS [NumOfColsinIndex],
	 keys,
	  I.type_desc,
	   is_unique,
		 fill_factor,
		  is_padded,
		   --included,
	has_filter, filter_definition
FROM IndexQry IQ, Sys.objects o, sys.indexes I
WHERE IQ.object_id = o.object_id
	AND IQ.object_id = I.object_id
	AND IQ.Index_id = I.index_id
	AND keys LIKE '%locationCd%'
	AND keys NOT LIKE '%Offendercd%'
	AND i.NAME LIKE 'pk%'
	AND (LEN(keys) - LEN(REPLACE(keys, ',', '')) + 1) = 3 -- change to >1 to fix other indexes
	ORDER BY o.NAME ASC, keys DESC, type_desc ASC





-- for checking if the above generated scripts will have the right key column in PK
-- Only LocationCd 
	;

WITH Columnsqry
AS (
	SELECT NAME, ic.object_id, ic.index_id, is_included_column, ic.key_ordinal
	FROM sys.index_columns IC, sys.columns c
	WHERE ic.object_id = c.object_id
		AND ic.column_id = c.column_id
	), IndexQry
AS (
	SELECT I.object_id, I.index_id, (
			SELECT stuff((
						SELECT ',' + NAME AS [text()]
						FROM Columnsqry q
						WHERE q.object_id = I.object_id
							AND q.index_id = i.index_id
							AND q.is_included_column = 0
						ORDER BY q.key_ordinal
						FOR XML path('')
						), 1, 1, '')
			) Keys, (
			SELECT stuff((
						SELECT ',' + NAME AS [text()]
						FROM Columnsqry q
						WHERE q.object_id = I.object_id
							AND q.index_id = i.index_id
							AND q.is_included_column = 1
						FOR XML path('')
						), 1, 1, '')
			) Included
	FROM Columnsqry q, sys.indexes I, sys.objects o
	WHERE q.object_id = I.object_id
		AND q.index_id = i.index_id
		AND o.object_id = I.object_id
		AND O.type NOT IN (
			'S'
			, 'IT'
			)
	GROUP BY I.object_id, I.index_id
	)
SELECT --'Alter Table [' + o.NAME + '] Drop Constraint [' + I.NAME + ']; Alter Table [' + o.NAME + '] Add Constraint [' + I.NAME + '] PRIMARY KEY CLUSTERED (' + SUBSTRING(keys, LEN(keys) - CHARINDEX(',', REVERSE(keys)) + 2, LEN(Keys)) + ' ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100); IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = ''IX_' + o.NAME + '_LocationCd'') BEGIN  Drop INDEX [IX_' + o.NAME + '_LocationCd] on [' + o.NAME + ']; END ' + 'Create NONCLUSTERED INDEX [IX_' + o.NAME + '_LocationCd] on [' + o.NAME + '] ( ' + replace((substring(keys, 0, len(keys) - CHARINDEX(',', reverse(keys)) + 1)), ',', ' ASC,') + ' ASC)' --+']('
	--+replace(replace(keys,',',' ASC,'),(o.name+'ID'),'')+'ASC)'
	 o.NAME AS [Table], I.NAME AS [Index],
	 SUBSTRING(keys, LEN(keys) - CHARINDEX(',', REVERSE(keys)) + 2, LEN(Keys)) AS KeyCol
	--(LEN(keys) - LEN(REPLACE(keys, ',', '')) + 1) AS [NumOfColsinIndex],
	-- keys,
	--  I.type_desc,
	--   is_unique,
	--	 fill_factor,
	--	  is_padded,
		   --included,
	--has_filter, filter_definition
FROM IndexQry IQ, Sys.objects o, sys.indexes I
WHERE IQ.object_id = o.object_id
	AND IQ.object_id = I.object_id
	AND IQ.Index_id = I.index_id
	AND keys LIKE '%locationCd%'
	AND keys NOT LIKE '%Offendercd%'
	AND i.NAME LIKE 'pk%'
	AND (LEN(keys) - LEN(REPLACE(keys, ',', '')) + 1) = 3 -- change to >1 to fix other indexes
	AND  replace(SUBSTRING(keys, LEN(keys) - CHARINDEX(',', REVERSE(keys)) + 2, LEN(Keys)), 'id','') not LIKE left(o.name,len(o.name)-1)
ORDER BY o.NAME ASC--, keys DESC, --type_desc ASC



























--aAsam
--aAsamPpc2r
--aAsi
--aBetaIIIq
--aBopRiskAssessments
--aBrownAdhdScreen
--aCasasEmployabilityCompetencySystem
--aCasasFunctionalWritingAssessment
--aCasasLifeSkills
--aCmc
--aCriminalSentimentsScale
--aCustodyClassification
--AddressInformation
--AddressPhones
--AdministrativeSegregationNotices
--AdministrativeSegregationReviews
--aDraorCbcRevised
--aDraorCbcRevisedWorkTable
--aDraorInstitutionRevised
--aFemaleCustodyClassification
--aFemaleCustodyReclassification
--aHarePsychChecklist
--aIaHeadInjuryLoseConsciousnessOrInComa
--aIaHeadInjuryScreeningInstrument
--aIaRiskAssessmentCharges
--aIaRiskAssessments
--aIaRiskReassessmentCharges
--aIaRiskReassessments
--aIASexOffenderRegistry
--aIsora
--aIsora8
--aIsoraStatic99RCombined
--aJesness
--aLsi_r
--aLsi_rCharges
--aLsi_rTrailerInstitution
--aLsi_rTrailerPreRelease
--aLsi_rTrailerProbationParole
--aMaleCustodyClassification
--aMaleCustodyReclassification
--aMast
--aMifvpp
--aMmpi
--aMultiDimAngerInventory
--aMultiphasicSexInventory
--aOwiContinuumWorksheet
--aOwiContinuumWorksheetII
--aParoleBoardRiskAssessment
--aPsaBondReviewHearings
--aPsaBrhPretrialDecisions
--aPsaCharges
--aPsaPdPretrialDecisions
--aPsaPretrialDecisions
--aPsychDiagnosticAxis1
--aPsychDiagnosticAxis2
--aPsychDiagnosticImpressions
--aPsychosexualAssessment
--aPublicSafetyAssessment
--aSassi
--aSassiResultingRecommendations
--aSchlossenIq
--aSexualViolencePropensityFemale
--aSexualViolencePropensityMale
--aSexualViolencePropensityRevisedMale
--aShipleyIq
--aSirAssessment
--AssetInformation
--aStable2007
--aStatic99
--aStatic99R
--aTabe
--aTabeMostRecent
--aTcuDrug
--aUrica
--aWais_rIq
--BarcodeInstanceFailures
--BirthInformation
--BirthInformation2
--BodyMarkings
--BodyMarkingThreatGroupValidation
--BondReviewHearingCharges
--BondReviewHearings
--BopBoardMemberDecisions
--BopCorrespondence
--BopDecisionCaseManagerDecisions
--BopDecisions
--BopExecutiveClemency
--BopExecutiveClemencyBoardMemberRecs
--BopInterviews
--BopProgressReportExtras
--BopProgressReports
--BopRecallDates
--BopReleasePlans
--BroadcastMessages
--Charges
--Charges_ProdFix
--CitizenshipInformation
--CjisSoeDciToIconMessages
--CjisSoeEmployers
--CjisSoeIconToDciMessages
--CjisSoeOffenderAddresses
--CjisSoeOffenders
--CjisSoeOffenses
--CjisSoeParentAddresses
--CjisSoeSchools
--CjisSoeVictims
--ClOffenseBehaviorCodes
--ConsolidatedSupervisionStatuses
--ContactInformation
--ContactPhones
--CorrectionIdentifiers
--CourtProgressReportExtras
--CourtProgressReports
--DatabaseInfo
--DebtInformation
--DetainerNotificationRequests
--DischargeReportCharges
--DischargeReportExtrasInst
--DischargeReports
--DischargeReportsInst
--dmActivities
--dmActivityFrequencies
--dmActivityPriorities
--dmActivityProviderRoles
--dmActivityTypes
--dmAppealDecisions
--dmAppealLevels
--dmAppealModifications
--dmAppealReasons
--dmAsamCareLevels
--dmAsamSeverityIndex
--dmAssessmentReasons
--dmAssessmentTools
--dmBankLocations
--dmBeds
--dmBodyMarkingColors
--dmBodyMarkingLocations
--dmBodyMarkingQualities
--dmBodyMarkingTypes
--dmBopActionTypes
--dmBopContentTypes
--dmBopDecisionCodes
--dmBopExecutiveClemencyAppTypes
--dmBopLocations
--dmBopProgressReportReasons
--dmBopRecommendationReasons
--dmBopReleasePlanRecommendations
--dmBopReleasePlanReviewReasonRecommendations
--dmBopReleasePlanReviewReasons
--dmBopSenderTypes
--dmBopStaffInformation
--dmCasasEmployabilityCompetencySystemForms
--dmCasasEmployabilityCompetencySystemLevels
--dmCasasFunctionalWritingAssessmentForms
--dmCasasFunctionalWritingAssessmentLevels
--dmCasasLifeSkillsForms
--dmCasasLifeSkillsLevels
--dmChargeEndReasons
--dmChargeProcessChangeReasons
--dmChargeStatuses
--dmConfidentialStatementConfidentialityReasons
--dmConfidentialStatementCorroboratingTypes
--dmConfidentialStatementReliableReasons
--dmCounties
--dmCountries
--dmCrimeCodeClasses
--dmCrimeCodeOffenseSubTypes
--dmCrimeCodeOffenseTypes
--dmCrimeCodes
--dmCulturalSpiritualPracticeApproved
--dmCustodyClassificationAuditors
--dmCustodyClassificationOverrideReasons
--dmCustodyLevels
--dmCustodyWorkOutReasons
--dmEarningIntervals
--dmEdEducationalLevels
--dmEmploymentLeavingReasons
--dmEnemyCodes
--dmEsHighestGradeCompleted
--dmEthnicOrigins
--dmEyeColor
--dmFacilities
--dmFieldResidentialViolationBehaviorCodes
--dmFlMaintenanceIssueItems
--dmFlMaintenanceIssues
--dmGedAccommodations
--dmGedSites
--dmGrievanceActions
--dmGrievanceProcessTypeReasons
--dmGrievanceProcessTypes
--dmGrievanceResolutionTypes
--dmGrievanceSubtypes
--dmGrievanceTypes
--dmHairColor
--dmHairQuality
--dmHealthIssueTypes
--dmHearingDecisions
--dmHearingResponseStatuses
--dmHearingRoles
--dmHearingStatuses
--dmHousingAssignmentRestrictions_OLD
--dmHousingPrivilegeLevelsInstFl
--dmHousingPrivilegeLevelsInstSw
--dmHousingPrivilegeLevelsResi
--dmHousingSecurityTypes
--dmHousingUnits
--dmHousingUnitUses
--dmHousingVisitingPrivilegeLevels
--dmIASexOffenderRiskCategories
--dmInOutTypes
--dmInstitutionDestinations
--dmInstitutionDisciplinaryNumbers
--dmInstitutionRules
--dmInstitutionTransportationTypes
--dmInterventionCategories
--dmInterventionClasses
--dmInterventionClosureTypes
--dmInterventionContactPhones
--dmInterventionContacts
--dmInterventionEbpStatuses
--dmInterventionLocations
--dmInterventionMethods
--dmInterventionModalities
--dmInterventionNotCompletedReasons
--dmInterventionProgramLocationEbpStatuses
--dmInterventionProgramLocationInterventions
--dmInterventionProgramLocations
--dmInterventionPrograms
--dmInterventionProviderPhones
--dmInterventionProviders
--dmInterventionProvidersAssn
--dmInterventions
--dmInterventionServiceTypes
--dmInterventionSessionSummaries
--dmInterventionSessionTopics
--dmInterventionSettings
--dmIsoraDepartureReasons
--dmJobStatuses
--dmJurisdictionTypes
--dmKioskFurloughPurposes
--dmKioskLocations
--dmKioskMailboxes
--dmKioskWorkstations
--dmLegalPeopleInformation
--dmLegalPeoplePhones
--dmLevelOfSupervision
--dmLevyModifiers
--dmLevyTypes
--dmLivingWith
--dmLov
--dmLsi_rAuditors
--dmLsi_rDispositions
--dmMaritalStatuses
--dmMessages
--dmMethods
--dmMilitaryBranches
--dmMilitaryDischargeTypes
--dmModalities
--dmMonitoringTrackedItems
--dmMovementCodes
--dmNameTypes
--dmNbmtgIdentifierTypes
--dmNeedEndReasons
--dmNeedResponses
--dmNeeds
--dmNoteCategories
--dmNoticeDecisions
--dmOffenderEventTypes
--dmOffenderScheduledEventTypes
--dmOffenderSpecialty
--dmOffenderSpecialtyChangeReasons
--dmOffenseBehaviorCodes
--dmOffenseBehaviorVerifications
--dmOffenseClasses
--dmOffenseLevels
--dmOptions
--dmOverrideCategories
--dmOverrideReasons
--dmOwiContinuumResults
--dmPaymentIntervals
--dmPhoneTypes
--dmPleas
--dmPreferences
--dmPretrialDecisions
--dmPretrialDecisionTypes
--dmPretrialTypes
--dmPrimaryLanguages
--dmPropertyGroupTypeReasons
--dmPropertyGroupTypes
--dmPropertyItemCategories
--dmPropertyItemFacilityLimits
--dmPropertyItemFlDonationLocations
--dmPropertyItemFlStorageLocations
--dmPropertyItems
--dmPropertyItemSeizedReasons
--dmPropertyItemSeizedReasons
--dmPropertyItemStatuses
--dmPropertyItemStorageReasons
--dmPropertySetSubItems
--dmPropertySubItems
--dmPropertySubItemsIpi
--dmPropertyTypes
--dmPropertyVendorInformation
--dmPsychDiagnosticAxisTypes
--dmRaces
--dmReadingLevels
--dmReentryCasePlanAuditors
--dmRegions
--dmRelationships
--dmReleaseNotificationTypes
--dmReligiousIdentifiers
--dmResidentialSanctions
--dmRestitutionPaymentTypes
--dmRiskAssessmentOverrideReasons
--dmRooms
--dmRoundLocations
--dmRuleCategories
--dmRuleFilterRules
--dmRuleFilters
--dmRuleFilterSupervisionStatuses
--dmRuleFilterWorkUnits
--dmRulePackageOrigins
--dmRulePackageRules
--dmRulePackages
--dmRulePackageSupervisionStatuses
--dmRulePackageWorkUnits
--dmRules
--dmRuleSupervisionStatuses
--dmRuleViolationBehaviorCodeCategories
--dmRuleViolationBehaviorCodes
--dmRuleWorkUnits
--dmSanctions
--dmSassiRecommendations
--dmSecurityStandardNonToxinSubtypes
--dmSecurityStandardNonToxinTypes
--dmSecurityStandardReasons
--dmSecurityStandardSubstancePanels
--dmSecurityStandardSubstancePanelSubstances
--dmSecurityStandardSubstances
--dmSecurityStandardToxinTypes
--dmSecurityStandardToxinUaSamples
--dmSecurityStandardUnsatisfactoryReasons
--dmSentenceDispositionStatus
--dmSentencePenaltyModifiers
--dmSentencePenaltyStatuses
--dmSentencePenaltyTypePenaltyModifiers
--dmSentencePenaltyTypes
--dmStaffInformation
--dmStaffPhones
--dmStaffSignatures
--dmStateJobTitles
--dmStates
--dmSupervisionLevels
--dmSupervisionModifiers
--dmSupervisionStatuses
--dmSupportMeans
--dmTestingWaivedReasons
--dmTGLevelsOfInvolvement
--dmThreatGroupFactions
--dmThreatGroupSubFactions
--dmTimeCompAdjustments
--dmTimeCompAdjustments_ProdFix
--dmTimeCompEvents
--dmTimeCompMethods
--dmTimeCompMethods_ProdFix
--dmTransferHoldTypes
--dmTransferInitiators
--dmTransferLocationReasons
--dmTransferReasons
--dmTransferStatuses
--dmTransportationTypes
--dmTransportHolds
--dmTribes
--dmTypesOfWork
--dmUricaStages
--dmUsCitizenshipStatuses
--dmUserOffenderRestrictions
--dmVehicleMakes
--dmVehicleModels
--dmViolatorProgramCancelledReason
--dmViolatorProgramDeniedReason
--dmViolatorProgramPlacementLocations
--dmViolatorProgramReferralStatuses
--dmVisitingRelationships
--dmVisitingStatuses
--dmVisitingStatusReasons
--dmWatchActivities
--dmWorkAssignmentLeavingReasons
--dmWorkAssignmentsFl
--dmWorkAssignmentShifts
--dmWorkAssignmentsSw
--dmWorkUnits
--dmWorkUnitServiceTypes
--dmZipCodes
--Dna
--DNAImport
--DOC_ApplicableCharges
--DocProjectedRecommendationDateProcessing
--DocProjectedRecommendationDates
--DpsTrackingNumbers
--DrcReviewProcess
--DriversLicenseInformation
--EducationalDetailRecordRequests
--EducationalDetails
--EducationalSummary
--EducationGed
--EducationGedAccommodations
--EmploymentInformation
--EmploymentPhones
--EndKeepSeparates
--EnemyEndingInformation
--EnemyInformation
--EnhancedModuleSecurity
--FacilityMaintenanceIssues
--FederalOffenderStatuses
--FieldRuleViolationBehaviorCodes
--FieldRuleViolationIncidents
--FieldRuleViolations
--FinancialInformation
--GenericNotes
--GrievanceAppeals
--GrievanceNotifications
--GrievanceNoUnknown
--GrievanceNoUnknownStaffNamed
--GrievanceReceipts
--GrievanceResponses
--GrievanceRestrictionReviews
--GrievanceRestrictions
--Grievances
--GrievanceStaffNamed
--Groups
--GroupUsers
--H_aAsam
--H_aAsamPpc2r
--H_aAsi
--H_aBetaIIIq
--H_aBrownAdhdScreen
--H_aCasasEmployabilityCompetencySystem
--H_aCasasFunctionalWritingAssessment
--H_aCasasLifeSkills
--H_aCmc
--H_aCriminalSentimentsScale
--H_aCustodyClassification
--H_AddressInformation
--H_AddressPhones
--H_AdministrativeSegregationNotices
--H_AdministrativeSegregationReviews
--H_aHarePsychChecklist
--H_aIaRiskAssessmentCharges
--H_aIaRiskAssessments
--H_aIaRiskReassessmentCharges
--H_aIaRiskReassessments
--H_aIASexOffenderRegistry
--H_aIsora8
--H_aJesness
--H_aLsi_r
--H_aLsi_rCharges
--H_aMast
--H_aMifvpp
--H_aMmpi
--H_aMultiDimAngerInventory
--H_aMultiphasicSexInventory
--H_aOwiContinuumWorksheet
--H_aOwiContinuumWorksheetII
--H_aParoleBoardRiskAssessment
--H_aPsychDiagnosticAxis1
--H_aPsychDiagnosticAxis2
--H_aPsychDiagnosticImpressions
--H_aPsychosexualAssessment
--H_aSassi
--H_aSassiResultingRecommendations
--H_aSchlossenIq
--H_aShipleyIq
--H_aSirAssessment
--H_AssetInformation
--H_aStatic99
--H_aTabe
--H_aTcuDrug
--H_aUrica
--H_aWais_rIq
--H_BirthInformation
--H_BodyMarkings
--H_BodyMarkingThreatGroupValidation
--H_BondReviewHearingCharges
--H_BondReviewHearings
--H_BopProgressReports
--H_BopReleasePlans
--H_BroadcastMessages
--H_Charges
--H_Charges_ProdFix
--H_CitizenshipInformation
--H_ClOffenseBehaviorCodes
--H_ContactInformation
--H_ContactPhones
--H_CorrectionIdentifiers
--H_CourtProgressReports
--H_DebtInformation
--H_DischargeReportCharges
--H_DischargeReports
--H_DischargeReportsInst
--H_dmAppealDecisions
--H_dmAppealLevels
--H_dmAppealModifications
--H_dmAppealReasons
--H_dmAsamCareLevels
--H_dmAsamSeverityIndex
--H_dmAssessmentReasons
--H_dmAssessmentTools
--H_dmBankLocations
--H_dmBeds
--H_dmBodyMarkingColors
--H_dmBodyMarkingLocations
--H_dmBodyMarkingQualities
--H_dmBodyMarkingTypes
--H_dmBopProgressReportReasons
--H_dmBopRecommendationReasons
--H_dmBopReleasePlanRecommendations
--H_dmBopReleasePlanReviewReasonRecommendations
--H_dmBopReleasePlanReviewReasons
--H_dmCasasEmployabilityCompetencySystemForms
--H_dmCasasEmployabilityCompetencySystemLevels
--H_dmCasasFunctionalWritingAssessmentForms
--H_dmCasasFunctionalWritingAssessmentLevels
--H_dmCasasLifeSkillsForms
--H_dmCasasLifeSkillsLevels
--H_dmChargeEndReasons
--H_dmChargeProcessChangeReasons
--H_dmChargeStatuses
--H_dmCounties
--H_dmCountries
--H_dmCrimeCodeClasses
--H_dmCrimeCodeOffenseSubTypes
--H_dmCrimeCodeOffenseTypes
--H_dmCrimeCodes
--H_dmCustodyClassificationOverrideReasons
--H_dmCustodyLevels
--H_dmEarningIntervals
--H_dmEdEducationalLevels
--H_dmEmploymentLeavingReasons
--H_dmEnemyCodes
--H_dmEsHighestGradeCompleted
--H_dmEthnicOrigins
--H_dmEyeColor
--H_dmFacilities
--H_dmFieldResidentialViolationBehaviorCodes
--H_dmGedAccommodations
--H_dmGedSites
--H_dmHairColor
--H_dmHairQuality
--H_dmHealthIssueTypes
--H_dmHearingDecisions
--H_dmHearingResponseStatuses
--H_dmHearingRoles
--H_dmHearingStatuses
--H_dmHousingAssignmentRestrictions_OLD
--H_dmHousingPrivilegeLevelsInstFl
--H_dmHousingPrivilegeLevelsInstSw
--H_dmHousingPrivilegeLevelsResi
--H_dmHousingSecurityTypes
--H_dmHousingUnits
--H_dmHousingUnitUses
--H_dmHousingVisitingPrivilegeLevels
--H_dmIASexOffenderRiskCategories
--H_dmInOutTypes
--H_dmInstitutionDestinations
--H_dmInstitutionRules
--H_dmInstitutionTransportationTypes
--H_dmInterventionCategories
--H_dmInterventionClasses
--H_dmInterventionClosureTypes
--H_dmInterventionContactPhones
--H_dmInterventionContacts
--H_dmInterventionEbpStatuses
--H_dmInterventionLocations
--H_dmInterventionMethods
--H_dmInterventionModalities
--H_dmInterventionNotCompletedReasons
--H_dmInterventionProgramLocationEbpStatuses
--H_dmInterventionProgramLocationInterventions
--H_dmInterventionProgramLocations
--H_dmInterventionPrograms
--H_dmInterventionProviderPhones
--H_dmInterventionProviders
--H_dmInterventionProvidersAssn
--H_dmInterventions
--H_dmInterventionServiceTypes
--H_dmInterventionSessionSummaries
--H_dmInterventionSessionTopics
--H_dmInterventionSettings
--H_dmIsoraDepartureReasons
--H_dmJobStatuses
--H_dmJurisdictionTypes
--H_dmLegalPeopleInformation
--H_dmLegalPeoplePhones
--H_dmLevelOfSupervision
--H_dmLevyModifiers
--H_dmLevyTypes
--H_dmLov
--H_dmLsi_rAuditors
--H_dmLsi_RDispositions
--H_dmMaritalStatuses
--H_dmMessages
--H_dmMethods
--H_dmMilitaryBranches
--H_dmMilitaryDischargeTypes
--H_dmModalities
--H_dmMovementCodes
--H_dmNameTypes
--H_dmNbmtgIdentifierTypes
--H_dmNeedEndReasons
--H_dmNeedResponses
--H_dmNeeds
--H_dmNoteCategories
--H_dmNoticeDecisions
--H_dmOffenderScheduledEventTypes
--H_dmOffenderSpecialty
--H_dmOffenderSpecialtyChangeReasons
--H_dmOffenseBehaviorCodes
--H_dmOffenseBehaviorVerifications
--H_dmoffenseclasses
--H_dmOffenseLevels
--H_dmOwiContinuumResults
--H_dmPaymentIntervals
--H_dmPhoneTypes
--H_dmPleas
--H_dmPretrialDecisionTypes
--H_dmPretrialTypes
--H_dmPrimaryLanguages
--H_dmPropertyTypes
--H_dmPsychDiagnosticAxisTypes
--H_dmRaces
--H_dmReadingLevels
--H_dmReentryCasePlanAuditors
--H_dmRegions
--H_dmRelationships
--H_dmReleaseNotificationTypes
--H_dmReligiousIdentifiers
--H_dmResidentialSanctions
--H_dmRestitutionPaymentTypes
--H_dmRiskAssessmentOverrideReasons
--H_dmRooms
--H_dmRuleCategories
--H_dmRuleFilterRules
--H_dmRuleFilters
--H_dmRuleFilterSupervisionStatuses
--H_dmRuleFilterWorkUnits
--H_dmRulePackageOrigins
--H_dmRulePackageRules
--H_dmRulePackages
--H_dmRulePackageSupervisionStatuses
--H_dmRulePackageWorkUnits
--H_dmRules
--H_dmRuleSupervisionStatuses
--H_dmRuleViolationBehaviorCodeCategories
--H_dmRuleViolationBehaviorCodes
--H_dmRuleWorkUnits
--H_dmSanctions
--H_dmSassiRecommendations
--H_dmSecurityStandardReasons
--H_dmSecurityStandardSubstances
--H_dmSentenceDispositionStatus
--H_dmSentencePenaltyModifiers
--H_dmSentencePenaltyStatuses
--H_dmSentencePenaltyTypePenaltyModifiers
--H_dmSentencePenaltyTypes
--H_dmStaffInformation
--H_dmStaffPhones
--H_dmStaffSignatures
--H_dmStaffWorkUnits
--H_dmStateJobTitles
--H_dmStates
--H_dmSupervisionModifiers
--H_dmSupervisionStatuses
--H_dmSupportMeans
--H_dmTGLevelsOfInvolvement
--H_dmThreatGroupFactions
--H_dmThreatGroupSubFactions
--H_dmTimeCompAdjustments
--H_dmTimeCompAdjustments_ProdFix
--H_dmTimeCompEvents
--H_dmTimeCompEvents
--H_dmTimeCompMethods
--H_dmTimeCompMethods_ProdFix
--H_dmTransferHoldTypes
--H_dmTransferInitiators
--H_dmTransferLocationReasons
--H_dmTransferReasons
--H_dmTransferStatuses
--H_dmTransportationTypes
--H_dmTypesOfWork
--H_dmUricaStages
--H_dmUsCitizenshipStatuses
--H_dmUserOffenderRestrictions
--H_dmVehicleMakes
--H_dmVehicleModels
--H_dmViolatorProgramCancelledReason
--H_dmViolatorProgramDeniedReason
--H_dmViolatorProgramPlacementLocations
--H_dmViolatorProgramReferralStatuses
--H_dmVisitingRelationships
--H_dmVisitingStatuses
--H_dmVisitingStatusReasons
--H_dmWorkAssignmentLeavingReasons
--H_dmWorkAssignmentsFl
--H_dmWorkAssignmentShifts
--H_dmWorkAssignmentsSw
--H_dmWorkUnits
--H_dmWorkUnitServiceTypes
--H_Dna
--H_DocProjectedRecommendationDates
--H_DpsTrackingNumbers
--H_DrcReviewProcess
--H_DriversLicenseInformation
--H_EducationalDetails
--H_EducationalSummary
--H_EducationGed
--H_EducationGedAccommodations
--H_EmploymentInformation
--H_EmploymentPhones
--H_EndKeepSeparates
--H_EnemyEndingInformation
--H_EnemyInformation
--H_FederalOffenderStatuses
--H_FieldRuleViolationBehaviorCodes
--H_FieldRuleViolationIncidents
--H_FieldRuleViolations
--H_FinancialInformation
--H_GenericNotes
--H_Groups
--H_GroupUsers
--H_HealthInformation
--H_Hist_ServingSS
--H_Housing
--H_InstitutionalInsOuts
--H_InstitutionAllegedRuleViolations
--H_InstitutionAppealReasons
--H_InstitutionAppealReports
--H_InstitutionAppeals
--H_InstitutionDisciplinaryNoticeReports
--H_InstitutionDisciplinaryNotices
--H_InstitutionHearingDisciplinaryNotices
--H_InstitutionHearingReports
--H_InstitutionHearings
--H_InstitutionInvestigationReports
--H_InstitutionInvestigations
--H_InstitutionRuleViolations
--H_InstitutionSanctions
--H_InterstateCompactIn
--H_InterstateCompactOut
--H_InterventionAssessments
--H_InterventionsInitiatedReasons
--H_KeepSeparates
--H_MedicalMentalHealthStatus
--H_MilitaryInformation
--H_Movements
--H_NameInformation
--H_NameTypes
--H_NeedsIdentifiedReasons
--H_Nga_Ca_Cases
--H_Nga_Ca_Charges
--H_Nga_Ca_Defendants
--H_Nga_Ca_Releases
--H_Nga_Ca_Victims
--H_NonPhysicalIdentifiers
--H_Obligations
--H_OffenderAgreements
--H_OffenderApprovedDestinations
--H_OffenderAssessments
--H_OffenderCustodyLevels
--H_OffenderFiles
--H_OffenderFilesCauseNumber
--H_OffenderHousingAssignmentRestrictions_OLD
--H_OffenderInformation
--H_OffenderInsOuts
--H_OffenderInsOutsDestinations
--H_OffenderInterventionPrograms
--H_OffenderInterventions
--H_OffenderLevelOfSupervision
--H_OffenderLevelSpecialty
--H_OffenderNeedGroupNeeds
--H_OffenderNeedGroups
--H_OffenderNeeds
--H_OffenderPrivilegeLevelsInstFl
--H_OffenderPrivilegeLevelsInstSw
--H_OffenderPrivilegeLevelsResi
--H_OffenderRuleCharges
--H_OffenderRules
--H_OffenderScheduledEvents
--H_OffenderSessions
--H_OffenderSessionSummaries
--H_OffenderSessionTopics
--H_OffenderTrips
--H_OffenderVisitingPrivilegeLevels
--H_OffenderWorkAssignments
--H_ParoleBoardInterviewEventOffenders
--H_ParoleRovFieldRuleViolationIncidents_OLD
--H_ParoleRovHearingResponseDecisions_OLD
--H_ParoleRovHearingResponseRecommendations_OLD
--H_ParoleRovResidentialFormalDisciplines_OLD
--H_ParoleRovResiFormalDisciplineRuleViolations_OLD
--H_PhysicalIdentifiers
--H_PresentenceAddendumCharges
--H_PresentenceAddendums
--H_PresentenceInvestigationCharges
--H_PresentenceInvestigations
--H_PretrialInterviewCharges
--H_PretrialInterviews
--H_ProbationAgreementAssocRules
--H_ProbationAgreementCharges
--H_ProbationAgreements
--H_ProbationReportOfViolation
--H_ProbationRovCharges
--H_ProbationRovFieldRuleViolationIncidents
--H_ProbationRovHearingResponseDecisions
--H_ProbationRovHearingResponseRecommendations
--H_ProbationRovHearingResponses
--H_ProbationRovResidentialFormalDisciplines
--H_ProbationRovResiFormalDisciplineRuleViolations
--H_PsiAddendumChargeRecommendations
--H_PsiChargeRecommendations
--H_RcpnAccomodationsDetails
--H_RcpnAlcoholDrugProblemDetails
--H_RcpnAttitudesOrientationDetails
--H_RcpnCompanionsDetails
--H_RcpnEducationDetails
--H_RcpnEmotionalPersonalDetails
--H_RcpnEmploymentDetails
--H_RcpnFamilyMaritalDetails
--H_RcpnFinancialDetails
--H_RcpnLeisureRecreationDetails
--H_ReceptionReports
--H_ReconsiderSentenceWorksheet
--H_ReconsiderSentenceWorksheetCharges
--H_ReentryCasePlanFaceSheet
--H_ReentryCasePlans
--H_ReleaseNotificationContacts
--H_ReleaseNotificationReportExtras
--H_ReleaseNotificationReports
--H_ReleaseNotifications
--H_ReleasesOfInformation
--H_ResidentialAllegedRuleViolations
--H_ResidentialAppealReasons
--H_ResidentialAppealReports
--H_ResidentialAppeals
--H_ResidentialFormalDiscipline
--H_ResidentialFormalDisciplineReports
--H_ResidentialHearingReports
--H_ResidentialHearings
--H_ResidentialInformalDiscipline
--H_ResidentialInformalDisciplineReports
--H_ResidentialRuleViolations
--H_ResidentialSanctions
--H_ResidentialTimeLossSanctions
--H_ResidentialViolationBehaviorCodes
--H_RestitutionInformation
--H_RestitutionPlans
--H_RestorationOfRights
--H_RestorationOfRightsOffenses
--H_RlRestitutionPaymentTypes
--H_RuleViolationIncidents
--H_RwsReportOfViolation
--H_RwsRovCharges
--H_RwsRovFieldRuleViolationIncidents
--H_RwsRovHearingResponseDecisions
--H_RwsRovHearingResponseRecommendations
--H_RwsRovHearingResponses
--H_SentencePenalties
--H_SentencePenalties_ProdFix
--H_Sentences
--H_Sentences_ProdFix
--H_SexOffenderRegistry
--H_SlCaseManagers
--H_SlOffenderWorkUnits
--H_SlSecondaryManagement
--H_SlSpecialties
--H_SlSupervisionModifiers
--H_SocialSecurityNumbers
--H_SpecialEducation
--H_SupervisionStatusCharges
--H_SupervisionStatusInformation
--H_SupportMeans
--H_TableGlossary
--H_ThreatGroupIdentifiers
--H_ThreatGroupInvolvement
--H_ThreatGroupInvolvementEndings
--H_TimeCompGroupAdjustments
--H_TimeCompGroupAdjustments_ProdFix
--H_TimeCompGroupPenalties
--H_TimeCompGroupPenalties_ProdFix
--H_TimeCompGroups
--H_TimeCompGroups_ProdFix
--H_TransferInstancesToField
--H_TransferInstancesToInstitution
--H_TransferInstancesToResidential
--H_TransferReports
--H_TripSchedules
--H_TripScheduleTrips
--H_UserLocations
--H_UserPasswords
--H_UserPreferences
--H_UserPreferences_New
--H_VehicleInformation
--H_VictimConfidentialComments
--H_VictimNotificationLetters
--H_VictimNotificationReportExtras
--H_VictimRegistrationLetters
--H_Victims
--H_ViolatorProgramContinuingCarePlans
--H_ViolatorProgramDischargeSummary
--H_ViolatorProgramProgressReport
--H_ViolatorProgramReferralForms
--H_VisitingListsInstitution
--H_VisitorInsOutsInstitution
--H_VliVisitingGroupsInstitution
--H_VliVisitingStatusesInstitution
--H_WrOwiTcnResidentialFormalDisciplines
--H_WrOwiTcnResiFormalDisciplineRuleViolations
--H_WrOwiTransferClassificationAppealDecisionNotices
--H_WrOwiTransferClassificationDecisions
--H_WrOwiTransferClassificationNotices
--HealthInformation
--Housing
--HousingCountLocations
--HousingCountOffenders
--HousingCounts
--HousingFromAcds
--Hruwt
--HruwtCurfews
--HruwtProgramManagers
--ICIS_COURT_ORDER_REQUESTS
--ICIS_DOC_ORIGINATED_ADDENDUMS
--ICIS_PSI_REQUEST
--ICSCurrent
--ICSDifferences
--ICSPrevious
--InstitutionalInsOuts
--InstitutionAllegedRuleViolations
--InstitutionAppealReasons
--InstitutionAppealReports
--InstitutionAppeals
--InstitutionConfidentialStatementSummaries
--InstitutionDisciplinaryNoticeReports
--InstitutionDisciplinaryNotices
--InstitutionHearingDisciplinaryNotices
--InstitutionHearingReports
--InstitutionHearings
--InstitutionInvestigationReports
--InstitutionInvestigations
--InstitutionRuleViolations
--InstitutionSanctions
--InterstateCompactIn
--InterstateCompactOut
--InterventionAssessments
--InterventionsInitiatedReasons
--IpiPickTicketReturns
--KeepSeparates
--KioskFingerPrintTemplates
--KioskFurloughApplicationPlans
--KioskFurloughApplicationProcessing
--KioskFurloughApplications
--KioskMessageConversations
--KioskMessages
--KioskMonthlyReportEmployment
--KioskMonthlyReportProcessing
--KioskMonthlyReports
--KioskPassApplicationPlans
--KioskPassApplicationProcessing
--KioskPassApplications
--KioskStaffAuthorizations
--KioskTravelRequestProcessing
--KioskTravelRequests
--KioskUnexpectedErrorLog
--LawEnforcementNotificationReports
--LocationScans
--MedicalMentalHealthStatus
--Menus
--MilitaryInformation
--MonitoringPrograms
--Movements
--MpCaseManagers
--MpCaseManagers
--MpCharges
--MpOffenderInterventionPrograms
--MpOffenderWorkUnits
--MpSecondaryManagement
--MpTrackedItems
--MpTransferNotifications
--NameInformation
--NameTypes
--NeedsIdentifiedReasons
--Nga_Ca_CaseMessages
--Nga_Ca_Cases
--Nga_Ca_Charges
--Nga_Ca_Defendants
--Nga_Ca_ReleaseMessages
--Nga_Ca_Releases
--Nga_Ca_Victims
--NletsRequests
--NonOffenderFiles
--NonPhysicalIdentifiers
--NPChargeHistoryLead
--NPChargeHistoryMostSerious
--NPErrorLog
--NPOffenderDailyHistory
--NpRunImpactedSystemCalculations
--O_KioskFingerPrintTemplates
--Obligations
--OffenderActivities
--OffenderAgreements
--OffenderAlerts
--OffenderApprovedDestinations
--OffenderAssessments
--OffenderCustodyLevels
--OffenderEventLog
--OffenderFiles
--OffenderFilesCauseNumber
--OffenderGrievanceProcessTypeReasons
--OffenderGroupLocks
--OffenderHousingAssignmentRestrictions_OLD
--OffenderInformation
--OffenderInformationDeletes
--OffenderInformationMerges
--OffenderInsOuts
--OffenderInsOutsDestinations
--OffenderInterventionPrograms
--OffenderInterventions
--OffenderLevelOfSupervision
--OffenderNeedGroupNeeds
--OffenderNeedGroups
--OffenderNeeds
--OffenderPrivilegeLevelsInstFl
--OffenderPrivilegeLevelsInstSw
--OffenderPrivilegeLevelsResi
--OffenderRuleAssignments
--OffenderRuleCharges
--OffenderRules
--OffenderScheduledEvents
--OffenderSessions
--OffenderSessionSummaries
--OffenderSessionTopics
--OffenderSupervisionLevels
--OffenderTrips
--OffenderUserLocks
--OffenderVisitingPrivilegeLevels
--OffenderWorkAssignments
--ParoleBoardInterviewEventOffenders
--ParoleBoardReviewAttachments
--ParoleRovFieldRuleViolationIncidents_OLD
--ParoleRovHearingResponseDecisions_OLD
--ParoleRovHearingResponseRecommendations_OLD
--ParoleRovResidentialFormalDisciplines_OLD
--ParoleRovResiFormalDisciplineRuleViolations_OLD
--PCSCurrent
--PCSDifferences
--PCSPrevious
--PhysicalIdentifiers
--PresentenceAddendumCharges
--PresentenceAddendums
--PresentenceInvestigationCharges
--PresentenceInvestigations
--PretrialInterviewCharges
--PretrialInterviews
--ProbationAgreementAssocRules
--ProbationAgreementCharges
--ProbationAgreements
--ProbationReportOfViolation
--ProbationRovCharges
--ProbationRovFieldRuleViolationIncidents
--ProbationRovHearingResponseDecisions
--ProbationRovHearingResponseRecommendations
--ProbationRovHearingResponses
--ProbationRovResidentialFormalDisciplines
--ProbationRovResiFormalDisciplineRuleViolations
--Property
--PropertyGroups
--PropertyGroupShipmentDetails
--PropertyShipmentAddresses
--PropertyStatuses
--PsiAddendumChargeRecommendations
--PsiChargeRecommendations
--PsiExtras
--RcpnAccomodationsDetails
--RcpnAlcoholDrugProblemDetails
--RcpnAttitudesOrientationDetails
--RcpnCompanionsDetails
--RcpnEducationDetails
--RcpnEmotionalPersonalDetails
--RcpnEmploymentDetails
--RcpnFamilyMaritalDetails
--RcpnFinancialDetails
--RcpnLeisureRecreationDetails
--ReceptionReportExtras
--ReceptionReports
--ReceptionTracking
--ReconsiderSentenceWorksheet
--ReconsiderSentenceWorksheetCharges
--RecordsExtras
--ReentryCasePlanActionSteps
--ReentryCasePlanFaceSheet
--ReentryCasePlans
--ReleaseNotificationContacts
--ReleaseNotificationReportExtras
--ReleaseNotificationReports
--ReleaseNotifications
--ReleasesOfInformation
--Reports
--ReportsOld
--ReportsOrderBy
--ReportsOrderByOld
--ReportsUsage
--ResidentialAllegedRuleViolations
--ResidentialAppealReasons
--ResidentialAppealReports
--ResidentialAppeals
--ResidentialFormalDiscipline
--ResidentialFormalDisciplineReports
--ResidentialHearingReports
--ResidentialHearings
--ResidentialInformalDiscipline
--ResidentialInformalDisciplineReports
--ResidentialRuleViolations
--ResidentialSanctions
--ResidentialTimeLossSanctions
--ResidentialViolationBehaviorCodes
--RestitutionInformation
--RestitutionPlans
--RestorationOfRights
--RestorationOfRightsOffenses
--RevocationDetailImposedConditions_OLD
--RevocationDetailViolatedConditions_OLD
--RlRestitutionPaymentTypes
--RpoDischargeReports
--RuleViolationIncidents
--RwsReportOfViolation
--RwsRovCharges
--RwsRovFieldRuleViolationIncidents
--RwsRovHearingResponseDecisions
--RwsRovHearingResponseRecommendations
--RwsRovHearingResponses
--SecurityEntities
--SecurityEntityUrls
--SecurityStandardsNonToxin
--SecurityStandardsNonToxinStaff
--SecurityStandardsNonToxinUnsatisfactoryReasons
--SecurityStandardsToxin
--SecurityStandardsToxinStaff
--SecurityStandardsToxinSubstances
--SentencePenalties
--SentencePenalties_ProdFix
--Sentences
--Sentences_ProdFix
--SexOffenderRegistry
--SlCaseManagers
--SlOffenderWorkUnits
--SlSecondaryManagement
--SlSpecialties
--SlSupervisionModifiers
--SocialSecurityNumbers
--SpecialEducation
--SSCardInstTransferred
--StoredReports
--SupervisionStatusCharges
--SupervisionStatusInformation
--SupportMeans
--TableGlossary
--ThreatGroupIdentifiers
--ThreatGroupInvolvement
--ThreatGroupInvolvementEndings
--TimeCompGroupAdjustments
--TimeCompGroupAdjustments_ProdFix
--TimeCompGroupEvents
--TimeCompGroupEvents_ProdFix
--TimeCompGroupPenalties
--TimeCompGroupPenalties_ProdFix
--TimeCompGroups
--TimeCompGroups_ProdFix
--TransferInstancesToField
--TransferInstancesToInstitution
--TransferInstancesToResidential
--TransferReportExtras
--TransferReports
--TripSchedules
--TripScheduleTrips
--UnsecureUrls
--Urls
--UserLocations
--UserNameChanges
--UserOffenders
--UserPasswords
--UserPreferences
--UserPreferences_New
--VehicleInformation
--VictimConfidentialComments
--VictimEmsNotificationLetters
--VictimNotificationLetters
--VictimNotificationReportExtras
--VictimRegistrationLetters
--Victims
--ViolatorProgramContinuingCarePlans
--ViolatorProgramDischargeSummary
--ViolatorProgramProgressReport
--ViolatorProgramReferralForms
--VisitingListsInstitution
--VisitorInsOutsInstitution
--VliVisitingGroupsInstitution
--VliVisitingStatusesInstitution
--WatchInformation
--WordTemplates
--WorkAssignmentsFromAcds
--WrOwiTcnResidentialFormalDisciplines
--WrOwiTcnResiFormalDisciplineRuleViolations
--WrOwiTransferClassificationAppealDecisionNotices
--WrOwiTransferClassificationDecisions
--WrOwiTransferClassificationNotices