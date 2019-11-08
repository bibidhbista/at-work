-- Use this to get more details on the NCI and PKs in the database

-- for NCI Details
select d.name as Tbl, a.name as Idx, c.name as Col, b.keyno 
from sysindexes a
inner join sysindexkeys b on
       a.id = b.id
       and a.indid = b.indid
inner join syscolumns c on
       b.id = c.id
       and b.colid = c.colid
inner join sys.tables d on 
       a.id = d.object_id
       and d.is_ms_shipped <> 1
where a.indid>1 
and a.name like 'Ix_%'
--and (a.name like '%locationcd%' and a.name like '%offendercd%')
and a.name in
(
	select a.name 
	from sysindexes a
	inner join sysindexkeys b on
		   a.id = b.id
		   and a.indid = b.indid
	inner join syscolumns c on
		   b.id = c.id
		   and b.colid = c.colid
	inner join sys.tables d on 
		   a.id = d.object_id
		   and d.is_ms_shipped <> 1
	where a.indid>1 
	group by a.name
	having count(*) >=2 
) 

AND (c.name ='locationcd' or c.name ='OffenderCd')
and d.name In (N'admCounters_OLD', N'ApplicationConfiguration', N'BarcodeInstanceFailures', N'BarcodeInstances', N'BopExecutiveClemency', N'BopInterviews', N'BopOutOfStateOffenders', N'BopRevocationHearingEvents', N'BopRiskAssessmentsFromIparole', N'BopRiskOffensesFromIparole', N'BroadcastMessages', N'DeenaH_TrainingAddresses', N'DeenaH_TrainingAddressPhones', N'DipeshH_TrainingAddresses', N'DipeshH_TrainingAddressPhones', N'dmActivityFrequencies', N'dmActivityPriorities', N'dmActivityProviderRoles', N'dmActivityTypes', N'dmAppealDecisions', N'dmAppealLevels', N'dmAppealModifications', N'dmAppealReasons', N'dmAsamCareLevels', N'dmAsamSeverityIndex', N'dmAssessmentReasons', N'dmAssessmentTools', N'dmBankLocations', N'dmBodyMarkingColors', N'dmBodyMarkingLocations', N'dmBodyMarkingQualities', N'dmBodyMarkingTypes', N'dmBopActionTypes', N'dmBopCommutationAttachmentCategories', N'dmBopCommutationNotificationEmails', N'dmBopConditionPackages', N'dmBopContentTypes', N'dmBopDecisionCodes', N'dmBOPDecisionCodesMap_OLD', N'dmBOPDecisionTypes_OLD', N'dmBOPDecisionTypesProcess_OLD', N'dmBopExecutiveClemencyAppTypes', N'dmBopExecutiveClemencyAttachmentCategories', N'dmBopExecutiveClemencyNotificationEmails', N'dmBopLocations', N'dmBopProgressReportReasons', N'dmBopRecommendationReasons', N'dmBopReleasePlanRecommendations', N'dmBopReleasePlanReviewReasons', N'dmBopRevocationCountyGroups', N'dmBopRevocationHearingDecisions', N'dmBOPRevocationTypes_OLD', N'dmBopRiskAuditors', N'dmBopSenderTypes', N'dmBopStaffInformation', N'dmCasasEmployabilityCompetencySystemForms', N'dmCasasEmployabilityCompetencySystemLevels', N'dmCasasFunctionalWritingAssessmentForms', N'dmCasasFunctionalWritingAssessmentLevels', N'dmCasasLifeSkillsForms', N'dmCasasLifeSkillsLevels', N'dmChargeEndReasons', N'dmChargeProcessChangeReasons', N'dmChargeStatuses', N'dmCommunityServiceTypes', N'dmConfidentialStatementConfidentialityReasons', N'dmConfidentialStatementCorroboratingTypes', N'dmConfidentialStatementReliableReasons', N'dmCounties', N'dmCountries', N'dmCPCRSupervisionStatuses', N'dmCrimeCodeClasses', N'dmCrimeCodeOffenseTypes', N'dmCrimeCodes', N'dmCulturalSpiritualPracticeApproved', N'dmCustodyClassificationAuditors', N'dmCustodyClassificationOverrideReasons', N'dmCustodyLevels', N'dmCustodyWorkOutReasons', N'dmEarningIntervals', N'dmEdEducationalLevels', N'dmEmploymentLeavingReasons', N'dmEnemyCodes', N'dmEsHighestGradeCompleted', N'dmEyeColor', N'dmFieldResidentialViolationBehaviorCodes', N'dmFileStatuses', N'dmFlMaintenanceIssues', N'dmGedAccommodations', N'dmGedSites', N'dmGovernorsOfficeInformation', N'dmGrievanceActions', N'dmGrievanceProcessTypes', N'dmGrievanceResolutionTypes', N'dmGrievanceSubtypes', N'dmGrievanceTypes', N'dmHairColor', N'dmHairQuality', N'dmHealthIssueTypes', N'dmHearingDecisions', N'dmHearingResponseStatuses', N'dmHearingRoles', N'dmHearingStatuses', N'dmHousingAssignmentRestrictions', N'dmHousingAssignmentRestrictions_OLD', N'dmHousingPrivilegeLevelsInstFl', N'dmHousingPrivilegeLevelsInstSw', N'dmHousingPrivilegeLevelsResi', N'dmHousingRestrictionCategories', N'dmHousingRestrictions', N'dmHousingSecurityTypes', N'dmHousingUnitUses', N'dmHousingVisitingPrivilegeLevels', N'dmIaRiskRevisedAuditors', N'dmIASexOffenderRiskCategories', N'dmInOutTypes', N'dmInstitutionDisciplinaryNumbers', N'dmInstitutionRules', N'dmInterventionCategories', N'dmInterventionClosureTypes', N'dmInterventionLocations', N'dmInterventionNotCompletedReasons', N'dmInterventionPrograms', N'dmInterventionProviders', N'dmInterventions', N'dmInterventionServiceTypes', N'dmInterventionSessionSummaries', N'dmInterventionSettings', N'dmIsoraDepartureReasons', N'dmJobStatuses', N'dmJurisdictionTypes', N'dmKioskFurloughPurposes', N'dmKioskMailboxes', N'dmLegalPeopleInformation', N'dmLevelOfSupervision', N'dmLevyModifiers', N'dmLevyTypes', N'dmLivingWith', N'dmLov', N'dmLsi_rAuditors', N'dmLsi_rDispositions', N'dmMaritalStatuses', N'dmMethods', N'dmMilitaryBranches', N'dmMilitaryDischargeTypes', N'dmModalities', N'dmMonitoringTrackedItems', N'dmMovementCodes', N'dmNameTypes', N'dmNbmtgIdentifierTypes', N'dmNeedEndReasons', N'dmNeedResponses', N'dmNeeds', N'dmNoteCategories', N'dmNoticeDecisions', N'dmOffenderEventTypes', N'dmOffenderScheduledEventTypes', N'dmOffenderSpecialty', N'dmOffenderSpecialtyChangeReasons', N'dmOffenseBehaviorCodes', N'dmOffenseBehaviorVerifications', N'dmOffenseClasses', N'dmOffenseLevels', N'dmOffUnitLocations', N'dmOptions', N'dmOSCRSupervisionStatuses', N'dmOverrideCategories', N'dmOwiContinuumResults', N'dmParoleBoardDecisionTypes', N'dmParoleBoardInterviewEventSpecialTypes', N'dmParoleBoardLocations', N'dmParoleConditionCategories', N'dmParoleDispositionCategories', N'dmParoleViolationReviewRecommendations', N'dmParoleViolationReviewRequests', N'dmPaymentIntervals', N'dmPhoneTypes', N'dmPleas', N'dmPreaAges', N'dmPreaConclusions', N'dmPreaForceTypes', N'dmPreaIncidentNatures', N'dmPreaInjuries', N'dmPreaLocations', N'dmPreaPostReportHousingActions', N'dmPreaPostReportMedicalActions', N'dmPreaRaces', N'dmPreaReporters', N'dmPreaSanctions', N'dmPreaSexualViolenceTypes', N'dmPreaTimes', N'dmPreferences', N'dmPretrialDecisions', N'dmPretrialDecisionTypes', N'dmPretrialTypes', N'dmPrimaryLanguages', N'dmProcesses', N'dmProcessTaskStaffGroups', N'dmPropertyGroupTypes', N'dmPropertyItemCategories', N'dmPropertyItemFlDonationLocations', N'dmPropertyItems', N'dmPropertyItemSeizedReasons', N'dmPropertyItemStatuses', N'dmPropertyItemStorageReasons', N'dmPropertySets', N'dmPropertyTypes', N'dmPropertyVendorInformation', N'dmPsychDiagnosticAxisTypes', N'dmRaces', N'dmReadingLevels', N'dmReentryCasePlanAuditors', N'dmRegions', N'dmRelationships', N'dmReleaseNotificationTypes', N'dmReligiousIdentifiers', N'dmResidentialSanctions', N'dmRestitutionPaymentTypes', N'dmRiskAssessmentOverrideReasons', N'dmRoundLocations', N'dmRuleCategories', N'dmRuleFilters', N'dmRulePackageOrigins', N'dmRulePackages', N'dmRules', N'dmRuleViolationBehaviorCodeCategories', N'dmRuleViolationBehaviorCodes', N'dmSanctions', N'dmSassiRecommendations', N'dmSecurityStandardNonToxinTypes', N'dmSecurityStandardReasons', N'dmSecurityStandardSubstancePanels', N'dmSecurityStandardSubstances', N'dmSecurityStandardToxinTypes', N'dmSecurityStandardToxinUaSamples', N'dmSecurityStandardTypes_OLD', N'dmSecurityStandardUnsatisfactoryReasons', N'dmSentenceDispositionStatus', N'dmSentencePenaltyModifiers', N'dmSentencePenaltyStatuses', N'dmSentencePenaltyTypes', N'dmStaffInformation', N'dmStateJobTitles', N'dmStates', N'dmSupervisionLevels', N'dmSupervisionModifiers', N'dmSupervisionStatuses', N'dmSupportMeans', N'dmTestingWaivedReasons', N'dmTGLevelsOfInvolvement', N'dmThreatGroupFactions', N'dmTimeCompAdjustments', N'dmTimeCompEvents', N'dmTimeCompMethods', N'dmTransferHoldTypes', N'dmTransferInitiators', N'dmTransferLocationReasons', N'dmTransferReasons', N'dmTransferStatuses', N'dmTransportationTypes', N'dmTransportHolds', N'dmTravelPermitTypes', N'dmTravelReasons', N'dmTribes', N'dmTypesOfWork', N'dmUricaStages', N'dmUsCitizenshipStatuses', N'dmUserOffenderLocks_OLD', N'dmUserOffenderRestrictions', N'dmVehicleMakes', N'dmViolatorProgramCancelledReason', N'dmViolatorProgramDeniedReason', N'dmViolatorProgramPlacementLocations', N'dmViolatorProgramReferralStatuses', N'dmVisitingRelationships', N'dmVisitingStatuses', N'dmVisitingStatusReasons', N'dmWatchActivities', N'dmWorkAssignmentLeavingReasons', N'dmWorkAssignmentsSw', N'ICONOffendersForBopConditionMigration')
----group by d.name, a.name

order by d.name--, a.name, b.keyno








--For PK Details

select d.name as Tbl, a.name as Idx, c.name as Col, b.keyno 
from sysindexes a
inner join sysindexkeys b on
       a.id = b.id
       and a.indid = b.indid
inner join syscolumns c on
       b.id = c.id
       and b.colid = c.colid
inner join sys.tables d on 
       a.id = d.object_id
       and d.is_ms_shipped <> 1
where a.indid=1 
--and d.name not like 'H_%'
AND d.name LIKE 'H_%'
and a.name in
(
select a.name 
from sysindexes a
inner join sysindexkeys b on
       a.id = b.id
       and a.indid = b.indid
inner join syscolumns c on
       b.id = c.id
       and b.colid = c.colid
inner join sys.tables d on 
       a.id = d.object_id
       and d.is_ms_shipped <> 1
where a.indid=1 -- and d.name = 'aLsi_rCharges'
group by a.name
having count(*) =2 
) 
--and d.name In (N'admCounters', N'dmGLAccountCode', N'dmGLAccountNames', N'dmIncomeCategories', N'dmKeefeOptions', N'dmModuleTypes', N'dmOptions')
order by d.name, a.name, b.keyno



--**/


/**
-- Use this for fulll Details.... (only to get ishh done)


SELECT 
     TableName = t.name,
     IndexName = ind.name,
	  ColumnName = col.name,
	 ind.fill_factor,
     IndexId = ind.index_id,
     ColumnId = ic.index_column_id,
     ind.*,
     ic.*,
     col.* 
FROM 
     sys.indexes ind 
INNER JOIN 
     sys.index_columns ic ON  ind.object_id = ic.object_id and ind.index_id = ic.index_id 
INNER JOIN 
     sys.columns col ON ic.object_id = col.object_id and ic.column_id = col.column_id 
INNER JOIN 
     sys.tables t ON ind.object_id = t.object_id 
WHERE 
     ind.is_primary_key = 0 
     AND ind.is_unique = 0 
     AND ind.is_unique_constraint = 0 
     AND t.is_ms_shipped = 0 
	 AND (IND.NAME like '%locationcd%' or ind.name like '%offendercd%')
	--and ind.fill_factor != '100'
	 --and t.name = 'aPsaBondReviewHearings' 
ORDER BY 
     t.name, ind.name, ind.index_id, ic.index_column_id;





 SELECT COLUMN_NAME,*
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE OBJECTPROPERTY(OBJECT_ID(CONSTRAINT_SCHEMA + '.' + QUOTENAME(CONSTRAINT_NAME)), 'IsPrimaryKey') = 1
--AND TABLE_NAME like '%victim%' and table_name not like 'H_*'--AND TABLE_SCHEMA = 'Schema'
and COLUMN_NAME like '%locationcd%'

 





**/

