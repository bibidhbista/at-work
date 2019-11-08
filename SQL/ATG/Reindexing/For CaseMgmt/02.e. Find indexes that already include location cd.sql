drop index IX_BopExecutiveClemency_LocationCd on BopExecutiveClemency
drop index IX_BopInterviews_LocationCd on BopInterviews
drop index IX_BopRiskAssessmentsFromIparole_LocationCd on BopRiskAssessmentsFromIparole
drop index IX_BopRiskOffensesFromIparole_LocationCd on BopRiskOffensesFromIparole
drop index IX_dmBopStaffInformation_LocationCd on dmBopStaffInformation
drop index IX_dmIaRiskRevisedAuditors_LocationCd on dmIaRiskRevisedAuditors
drop index IX_dmOffUnitLocations_LocationCd on dmOffUnitLocations
drop index IX_dmParoleConditionCategories_LocationCd on dmParoleConditionCategories
drop index IX_dmParoleDispositionCategories_LocationCd on dmParoleDispositionCategories
drop index IX_dmRoundLocations_LocationCd on dmRoundLocations
drop index IX_H_KioskPassApplications_LocationCd on H_KioskPassApplications
drop index IX_H_OffenderFiles_LocationCd on H_OffenderFiles
drop index IX_HousingCounts_LocationCd on HousingCounts
drop index IX_ICIS_COURT_ORDER_REQUESTS_LocationCd on ICIS_COURT_ORDER_REQUESTS
drop index IX_ICIS_PSI_REQUEST_LocationCd on ICIS_PSI_REQUEST
drop index IX_ICONOffendersForBopConditionMigration_LocationCd on ICONOffendersForBopConditionMigration
drop index IX_LocationScans_LocationCd on LocationScans
drop index IX_Prescreenings_LocationCd on Prescreenings





-- this is for finding indexes that already contain locationcd so that single column locationcd index isn't required
select d.name as Tbl, a.name as Idx, c.name as Col,b.keyno AS KeyNo
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
--AND c.name LIKE 'Locationcd%'
AND d.name In (N'aDraor', N'aDraorCbcRevised', N'aDraorCbcRevisedWorkTable', N'aDraorInstitutionRevised', N'aIaHeadInjuryLoseConsciousnessOrInComa', N'aIsora', N'aIsoraStatic99RCombined', N'aLsi_rTrailerInstitution', N'aLsi_rTrailerPreRelease', N'aLsi_rTrailerProbationParole', N'aMaleCustodyClassification', N'aMaleCustodyReclassification', N'aOwiContinuumWorksheetII', N'aPsaBondReviewHearings', N'aPsaCharges', N'aPsaPretrialDecisions', N'aPublicSafetyAssessment', N'aSexualViolencePropensityFemale', N'aSotips', N'aStatic99R', N'aTabe1112', N'aTabeMostRecent', N'aTcuDrug', N'aWasiII', N'BopBoardMemberConditions', N'BopBoardMemberDecisions', N'BopBoardMemberReasons_OLD', N'BopCommBoardMemberRecs', N'BopCommGovernorDecisions', N'BopCorrespondence', N'BopDecisionCaseManagerConditions', N'BopDecisionCaseManagerDecisions', N'BopDecisionConditions', N'BopDecisionReasons_OLD', N'BopDecisions', N'BopEmployabilityCertificates', N'BopExecutiveClemency', N'BopExecutiveClemencyAttachments', N'BopExecutiveClemencyGovernorDecisions', N'BopExecutiveClemencyPhones', N'BopInterviews', N'BopReleasePlans', N'BopRevocationHearingImposedConditions', N'BopRevocationHearingNotices', N'BopRevocationHearingViolatedConditions', N'BopRevocationHearingWitnessSubpoenas', N'BopRiskAssessmentsFromIparole', N'BopRiskOffensesFromIparole', N'CjisSoeDciToIconMessages', N'CjisSoeEmployers', N'CjisSoeIconToDciMessages', N'CjisSoeOffenderAddresses', N'CjisSoeOffenders', N'CjisSoeOffenses', N'CjisSoeParentAddresses', N'CjisSoeSchools', N'CjisSoeVictims', N'CommunityServiceReporting', N'CommunityServiceReportingObligations', N'CulturalSpiritualPractices', N'DeenaTrainingAddresses', N'DeenaTrainingAddressPhones', N'DetainerNotificationRequests', N'DipeshTrainingAddresses', N'DipeshTrainingAddressPhones', N'dmActivities', N'dmBopConditionPackageConditions', N'dmBopStaffInformation', N'dmFlMaintenanceIssueItemProblems', N'dmIaRiskRevisedAuditors', N'dmInterventionEbpStatuses', N'dmInterventionProgramLocationEbpStatuses', N'dmKioskLocations', N'dmKioskMailboxStaff', N'dmKioskWorkstations', N'dmOffUnitLocations', N'dmOverrideReasons', N'dmParoleConditionCategories', N'dmParoleDispositionCategories', N'dmProcessTaskClosingSecurityEntities', N'dmPropertyGroupTypeReasons', N'dmPropertySetSubItems', N'dmPropertySubItems', N'dmPropertySubItemsIpi', N'dmRoundLocations', N'dmSecurityStandardNonToxinSubtypes', N'dmSecurityStandardSubstancePanelSubstances', N'dmStaffIdentifiers', N'dmStaffWorkUnits', N'DocProjectedRecommendationDateProcessing', N'EmailAddresses', N'GrievanceNotifications', N'H_KioskPassApplications', N'H_OffenderFiles', N'HousingCountOffenders', N'HousingCounts', N'Hruwt', N'HruwtCurfews', N'HruwtProgramManagers', N'ICIS_COURT_ORDER_REQUESTS', N'ICIS_PSI_REQUEST', N'ICONOffendersForBopConditionMigration', N'IcssConfidentialityReasons', N'IcssCorroboratingTypes', N'IcssReliableReasons', N'IncomeReporting', N'InstitutionConfidentialStatementSummaries', N'IpiPickTicketReturns', N'KioskFurloughApplicationPlans', N'KioskFurloughApplicationProcessing', N'KioskFurloughApplications', N'KioskMessageConversations', N'KioskMessages', N'KioskMonthlyReportEmployment', N'KioskMonthlyReportProcessing', N'KioskMonthlyReports', N'KioskPassApplicationPlans', N'KioskPassApplicationProcessing', N'KioskPassApplications', N'KioskTravelRequestProcessing', N'KioskTravelRequests', N'LawEnforcementNotificationReports', N'LocationScans', N'MagdyTrainingAddresses', N'MagdyTrainingAddressPhones', N'MeganTrainingAddresses', N'MeganTrainingAddressPhones', N'MikeTrainingAddresses', N'MikeTrainingAddressPhones', N'MonitoringPrograms', N'MpCaseManagers', N'MpCharges', N'MpOffenderInterventionPrograms', N'MpOffenderWorkUnits', N'MpSecondaryManagement', N'MpTrackedItems', N'MpTransferNotifications', N'NeedsEndedReasons', N'OffenderAlerts', N'OffenderFileBopCommutationDetails', N'OffenderFileParoleViolationReviewDetails', N'OffenderHousingAssignmentRestrictions', N'OffenderInsOuts', N'OffenderSessionClassFacilitators', N'OffenderSupervisionLevels', N'OffenderUserRestrictions', N'ParoleBoardInterviewEventOffenders', N'ParoleGuidelineScoresheets', N'ParoleViolationReviewCharges', N'ParoleViolationReviewFrvi', N'ParoleViolationReviewPpvi', N'ParoleViolationReviewPriorRevocationHearings', N'ParoleViolationReviewReportPpviCaseNumbers', N'ParoleViolationReviewReports', N'ParoleViolationReviewResiFormalDiscipline', N'ParoleViolationReviewRfdRuleViolations', N'ParoleViolationReviewWitnesses', N'PersonalProtectionOrders', N'PhysicalFileTrackings', N'PhysicalFileTrackingTransfers', N'PreaReportingForceTypes', N'PreaReportingIncidentNatures', N'PreaReportingInstDiscNotices', N'PreaReportingLocations', N'PreaReportingPostReportHousingActions', N'PreaReportingPostReportMedicalActions', N'PreaReportingRaces', N'PreaReportingReporters', N'PreaReportingSanctions', N'PreaReportingTimes', N'PreaReportingVictimInjuries', N'Prescreenings', N'PrescreeningScreeningResponses', N'PresentenceAddendums', N'PresentenceInvestigations', N'PropertyGroups', N'PropertyGroupShipmentDetails', N'PropertyShipmentAddresses', N'PsiExtraOffenderNeeds', N'QuangTrainingAddresses', N'QuangTrainingAddressPhones', N'ReceptionTracking', N'RecordsExtras', N'ResidentialTimeLossSanctionAppeals', N'RestorationOfRightsOffenses', N'RevocationDetailImposedConditions_OLD', N'RevocationDetailViolatedConditions_OLD', N'RpoDischargeReports', N'SecurityStandardsNonToxin', N'SecurityStandardsNonToxinStaff', N'SecurityStandardsNonToxinUnsatisfactoryReasons', N'SecurityStandardsToxin', N'SecurityStandardsToxinStaff', N'SecurityStandardsToxinSubstances', N'SentencePenalties', N'ShikshyaTrainingAddresses', N'ShikshyaTrainingAddressPhones', N'ShrabyaTrainingAddresses', N'ShrabyaTrainingAddressPhones', N'SocialSecurityCardTrackings', N'SSCardInstTransferred', N'StevenTrainingAddresses', N'StevenTrainingAddressPhones', N'SupervisionStatusInformation', N'TransportInformation', N'TravelPermits', N'VictimCases', N'VictimCauseNumbers', N'VictimConfidentialComments', N'VictimEmsNotificationLetters', N'VisitorInsOutsInstitution')
ORDER BY a.name


-- count 

select d.name as Tbl--, count(c.name) as LocationCdCount
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
AND c.name LIKE 'Locationcd%'

GROUP BY d.name
HAVING count(c.name) >=2
