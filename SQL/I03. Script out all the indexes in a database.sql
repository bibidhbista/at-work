--ALTER TABLE ['+t.name+'] DROP CONSTRAINT [IX_'+t.name+'_OffenderCd]; 
SELECT 'Drop Index ['+i.name+'] On table ['+t.name+']; CREATE ' + 
			CASE WHEN I.is_unique = 1 THEN ' UNIQUE ' ELSE '' END  +  
			I.type_desc COLLATE DATABASE_DEFAULT +' INDEX ' +   
			I.name  + ' ON '  +  
			Schema_name(T.Schema_id)+'.'+T.name + ' ( ' + 
			KeyColumns + ' )  ' + 
			ISNULL(' INCLUDE ('+IncludedColumns+' ) ','') + 
			ISNULL(' WHERE  '+I.Filter_definition,'') + ' WITH ( ' + 
			CASE WHEN I.is_padded = 1 THEN ' PAD_INDEX = ON ' ELSE ' PAD_INDEX = OFF ' END + ','  + 
			'FILLFACTOR = '+CONVERT(CHAR(5),CASE WHEN I.Fill_factor = 0 THEN 100 ELSE I.Fill_factor END) + ','  + 
			-- default value 
			'SORT_IN_TEMPDB = OFF '  + ','  + 
			CASE WHEN I.ignore_dup_key = 1 THEN ' IGNORE_DUP_KEY = ON ' ELSE ' IGNORE_DUP_KEY = OFF ' END + ','  + 
			CASE WHEN ST.no_recompute = 0 THEN ' STATISTICS_NORECOMPUTE = OFF ' ELSE ' STATISTICS_NORECOMPUTE = ON ' END + ','  + 
			-- default value  
			' DROP_EXISTING = ON '  + ','  + 
			-- default value  
			' ONLINE = OFF '  + ','  + 
		   CASE WHEN I.allow_row_locks = 1 THEN ' ALLOW_ROW_LOCKS = ON ' ELSE ' ALLOW_ROW_LOCKS = OFF ' END + ','  + 
		   CASE WHEN I.allow_page_locks = 1 THEN ' ALLOW_PAGE_LOCKS = ON ' ELSE ' ALLOW_PAGE_LOCKS = OFF ' END  + ' ) ON [' + 
		   DS.name + ' ]; '  [CreateIndexScript],
		   t.name as tablename, KeyColumns, i.name
		   
FROM sys.indexes I   
	 JOIN sys.tables T ON T.Object_id = I.Object_id    
	 JOIN sys.sysindexes SI ON I.Object_id = SI.id AND I.index_id = SI.indid   
	 JOIN (SELECT * FROM (  
						SELECT IC2.object_id , IC2.index_id ,  
								STUFF((SELECT ' , ' + C.name + CASE WHEN MAX(CONVERT(INT,IC1.is_descending_key)) = 1 THEN ' DESC ' ELSE ' ASC ' END 
						FROM sys.index_columns IC1  
						JOIN Sys.columns C   
								   ON C.object_id = IC1.object_id   
								   AND C.column_id = IC1.column_id   
								   AND IC1.is_included_column = 0  
						WHERE IC1.object_id = IC2.object_id   
								AND IC1.index_id = IC2.index_id   
						GROUP BY IC1.object_id,C.name,index_id  
						ORDER BY MAX(IC1.key_ordinal)  
						   FOR XML PATH('')), 1, 2, '') KeyColumns   
						FROM sys.index_columns IC2   
						--WHERE IC2.Object_id = object_id('Person.Address') --Comment for all tables  
						GROUP BY IC2.object_id ,IC2.index_id) tmp3 )tmp4   
					  ON I.object_id = tmp4.object_id AND I.Index_id = tmp4.index_id  
					 JOIN sys.stats ST ON ST.object_id = I.object_id AND ST.stats_id = I.index_id   
					 JOIN sys.data_spaces DS ON I.data_space_id=DS.data_space_id   
					 JOIN sys.filegroups FG ON I.data_space_id=FG.data_space_id   
					 LEFT JOIN (SELECT * FROM (   
						SELECT IC2.object_id , IC2.index_id ,   
							STUFF((SELECT ' , ' + C.name  
						FROM sys.index_columns IC1   
						JOIN Sys.columns C    
						   ON C.object_id = IC1.object_id    
						   AND C.column_id = IC1.column_id    
						   AND IC1.is_included_column = 1   
						WHERE IC1.object_id = IC2.object_id    
						   AND IC1.index_id = IC2.index_id    
						GROUP BY IC1.object_id,C.name,index_id   
						   FOR XML PATH('')), 1, 2, '') IncludedColumns    
					   FROM sys.index_columns IC2    
					   --WHERE IC2.Object_id = object_id('Person.Address') --Comment for all tables   
					   GROUP BY IC2.object_id ,IC2.index_id) tmp1   
					   WHERE IncludedColumns IS NOT NULL 
					   --and (IncludedColumns like '%locationcd%' and IncludedColumns like '%offendercd%')

					 ) tmp2    
ON tmp2.object_id = I.object_id AND tmp2.index_id = I.index_id   
WHERE I.is_primary_key = 0 
 --and t.name not like 'H_%'                                      -- change this for primary key values only if needed
 --and i.fill_factor !=100
 and i.name In (N'IX_ClemencyBoardMemberRecommendations_LocationCd', N'IX_dmActivities_LocationCd', N'IX_dmBeds_LocationCd', N'IX_dmBopConditionPackageConditions_LocationCd', N'IX_dmBopLocationFacilities_LocationCd', N'IX_dmBopReleasePlanReviewReasonRecommendations_LocationCd', N'IX_dmBopRevocationCountyGroupCounties_LocationCd', N'IX_dmBopRevocationHearingNumbers_LocationCd', N'IX_dmCrimeCodeOffenseSubTypes_LocationCd', N'IX_dmEducationSchoolCourseInstructors_LocationCd', N'IX_dmEducationSchoolCourses_LocationCd', N'IX_dmEmployerPhones_LocationCd', N'IX_dmEthnicOrigins_LocationCd', N'IX_dmFacilities_LocationCd', N'IX_dmFlMaintenanceIssueItemProblems_LocationCd', N'IX_dmFlMaintenanceIssueItems_LocationCd', N'IX_dmGrievanceProcessTypeReasons_LocationCd', N'IX_dmHousingIncentiveFacilities_LocationCd', N'IX_dmHousingStatusIncentives_LocationCd', N'IX_dmHousingUnits_LocationCd', N'IX_dmInstitutionDestinations_LocationCd', N'IX_dmInstitutionTransportationTypes_LocationCd', N'IX_dmInterventionClasses_LocationCd', N'IX_dmInterventionClassFacilitators_LocationCd', N'IX_dmInterventionContactPhones_LocationCd', N'IX_dmInterventionContacts_LocationCd', N'IX_dmInterventionEbpStatuses_LocationCd', N'IX_dmInterventionMethods_LocationCd', N'IX_dmInterventionModalities_LocationCd', N'IX_dmInterventionProgramLocationEbpStatuses_LocationCd', N'IX_dmInterventionProgramLocationInterventions_LocationCd', N'IX_dmInterventionProgramLocations_LocationCd', N'IX_dmInterventionProviderPhones_LocationCd', N'IX_dmInterventionProvidersAssn_LocationCd', N'IX_dmInterventionSessionTopics_LocationCd', N'IX_dmKioskLocations_LocationCd', N'IX_dmKioskMailboxStaff_LocationCd', N'IX_dmKioskWorkstations_LocationCd', N'IX_dmLegalPeoplePhones_LocationCd', N'IX_dmNeedOffenseBehaviorCodes_LocationCd', N'IX_dmOverrideReasons_LocationCd', N'IX_dmParoleViolationReviewRequestRecommendations_LocationCd', N'IX_dmPenaltyTypePenaltyModifiers_LocationCd', N'IX_dmPhysicianPhone_LocationCd', N'IX_dmProcessTaskAssignedNotificationGroups_LocationCd', N'IX_dmProcessTaskClosingSecurityEntities_LocationCd', N'IX_dmProcessTaskGroupDependencies_LocationCd', N'IX_dmProcessTaskGroups_LocationCd', N'IX_dmProcessTasks_LocationCd', N'IX_dmProcessTaskStaffGroupStaff_LocationCd', N'IX_dmPropertyGroupTypeReasons_LocationCd', N'IX_dmPropertyItemFacilityLimits_LocationCd', N'IX_dmPropertyItemFlStorageLocations_LocationCd', N'IX_dmPropertySetSubItems_LocationCd', N'IX_dmPropertySubItems_LocationCd', N'IX_dmPropertySubItemsIpi_LocationCd', N'IX_dmPropertySubItemsIpiAssociatedItems_LocationCd', N'IX_dmRooms_LocationCd', N'IX_dmRuleFilterRules_LocationCd', N'IX_dmRuleFilterSupervisionStatuses_LocationCd', N'IX_dmRuleFilterWorkUnits_LocationCd', N'IX_dmRulePackageRules_LocationCd', N'IX_dmRulePackageSupervisionStatuses_LocationCd', N'IX_dmRulePackageWorkUnits_LocationCd', N'IX_dmRuleSupervisionStatuses_LocationCd', N'IX_dmRuleWorkUnits_LocationCd', N'IX_dmSearchTypeSubstances_LocationCd', N'IX_dmSecurityStandardAssociatedSubstances_OLD_LocationCd', N'IX_dmSecurityStandardNonToxinSubtypes_LocationCd', N'IX_dmSecurityStandardSubstancePanelSubstances_LocationCd', N'IX_dmSentencePenaltyTypePenaltyModifiers_LocationCd', N'IX_dmStaffIdentifiers_LocationCd', N'IX_dmStaffPhones_LocationCd', N'IX_dmStaffSignatures_LocationCd', N'IX_dmStaffWorkUnits_WorkUnitIdLocationCd', N'IX_dmStaffWorkUnits_LocationCd', N'IX_dmSupervisionStatusSpecialties_LocationCd', N'IX_dmThreatGroupSubFactions_LocationCd', N'IX_dmVehicleModels_LocationCd', N'IX_dmWorkAssignmentsFl_LocationCd', N'IX_dmWorkAssignmentShifts_LocationCd', N'IX_dmWorkUnits_LocationCd', N'IX_EducationalDetailRecordRequests_LocationCd', N'IX_EducationClassAssignments_LocationCd', N'IX_EducationClassOffenderAssignments_LocationCd', N'IX_EducationGedAccommodations_LocationCd', N'IX_EmploymentPhones_LocationCd', N'IX_EndKeepSeparates_LocationCd', N'IX_EnemyEndingInformation_LocationCd', N'IX_FieldRuleViolationBehaviorCodes_LocationCd', N'IX_FieldRuleViolations_LocationCd', N'IX_GrievanceAppeals_LocationCd', N'IX_GrievanceNoUnknownStaffNamed_LocationCd', N'IX_GrievanceReceipts_LocationCd', N'IX_GrievanceResponses_LocationCd', N'IX_GrievanceRestrictionReviews_LocationCd', N'IX_GrievanceStaffNamed_LocationCd', N'IX_IcssConfidentialityReasons_LocationCd', N'IX_IcssCorroboratingTypes_LocationCd', N'IX_IcssReliableReasons_LocationCd', N'IX_InstitutionAllegedRuleViolations_LocationCd', N'IX_InstitutionAppealReasons_LocationCd', N'IX_InstitutionAppealReports_LocationCd', N'IX_InstitutionAppeals_LocationCd', N'IX_InstitutionConfidentialStatementSummaries_LocationCd', N'IX_InstitutionDisciplinaryNoticeReports_LocationCd', N'IX_InstitutionHearingDisciplinaryNotices_LocationCd', N'IX_InstitutionHearingReports_LocationCd', N'IX_InstitutionInvestigationReports_LocationCd', N'IX_InstitutionInvestigations_LocationCd', N'IX_InstitutionRuleViolations_LocationCd', N'IX_InstitutionSanctions_LocationCd', N'IX_InterventionAssessments_LocationCd', N'IX_InterventionEventNotes_LocationCd', N'IX_InterventionsInitiatedReasons_LocationCd', N'IX_KioskFurloughApplicationPlans_LocationCd', N'IX_KioskFurloughApplicationProcessing_LocationCd', N'IX_KioskMessages_LocationCd', N'IX_KioskMonthlyReportEmployment_LocationCd', N'IX_KioskMonthlyReportProcessing_LocationCd', N'IX_KioskPassApplicationPlans_LocationCd', N'IX_KioskPassApplicationProcessing_LocationCd', N'IX_KioskTravelRequestProcessing_LocationCd', N'IX_MpCaseManagers_LocationCd', N'IX_MpCharges_LocationCd', N'IX_MpOffenderInterventionPrograms_LocationCd', N'IX_MpOffenderWorkUnits_LocationCd', N'IX_MpSecondaryManagement_LocationCd', N'IX_MpTrackedItems_LocationCd', N'IX_MpTransferNotifications_LocationCd', N'IX_NameTypes_LocationCd', N'IX_NeedsEndedReasons_LocationCd', N'IX_NeedsIdentifiedReasons_LocationCd', N'IX_Nga_Ca_CaseMessages_LocationCd', N'IX_Nga_Ca_Charges_LocationCd', N'IX_Nga_Ca_Defendants_LocationCd', N'IX_Nga_Ca_ReleaseMessages_LocationCd', N'IX_Nga_Ca_Victims_LocationCd', N'IX_NonOffenderFileBusinessRuleSecurityEntities_LocationCd', N'IX_NonOffenderFileWordTemplateRegionFileNames_LocationCd', N'IX_OffenderFileParoleViolationReviewDetails_LocationCd', N'IX_OffenderFilesCauseNumber_LocationCd', N'IX_OffenderGrievanceProcessTypeReasons_LocationCd', N'IX_OffenderGroupLockExclusions_LocationCd', N'IX_OffenderHousingIncentives_LocationCd', N'IX_OffenderInsOutsDestinations_LocationCd', N'IX_OffenderNeedGroupNeeds_LocationCd', N'IX_OffenderPrivilegeLevelsInstFl_LocationCd', N'IX_OffenderProcessTaskGroupDependencies_LocationCd', N'IX_OffenderProcessTaskGroups_LocationCd', N'IX_OffenderProcessTasks_LocationCd', N'IX_OffenderRuleAssignments_LocationCd', N'IX_OffenderRuleCharges_LocationCd', N'IX_OffenderSessionClassFacilitators_LocationCd', N'IX_OffenderSessions_LocationCd', N'IX_OffenderSessionSummaries_LocationCd', N'IX_OffenderSessionTopics_LocationCd', N'IX_ParoleRovCharges_OLD_LocationCd', N'IX_ParoleRovFieldRuleViolationIncidents_OLD_LocationCd', N'IX_ParoleRovHearingResponseDecisions_OLD_LocationCd', N'IX_ParoleRovHearingResponseRecommendations_OLD_LocationCd', N'IX_ParoleRovHearingResponses_OLD_LocationCd', N'IX_ParoleRovResidentialFormalDisciplines_OLD_LocationCd', N'IX_ParoleRovResiFormalDisciplineRuleViolations_OLD_LocationCd', N'IX_ParoleViolationReviewCharges_LocationCd', N'IX_ParoleViolationReviewFrvi_LocationCd', N'IX_ParoleViolationReviewPpvi_LocationCd', N'IX_ParoleViolationReviewPriorRevocationHearings_LocationCd', N'IX_ParoleViolationReviewReportPpviCaseNumbers_LocationCd', N'IX_ParoleViolationReviewReports_LocationCd', N'IX_ParoleViolationReviewResiFormalDiscipline_LocationCd', N'IX_ParoleViolationReviewRfdRuleViolations_LocationCd', N'IX_ParoleViolationReviewWitnesses_LocationCd', N'IX_PreaReportingForceTypes_LocationCd', N'IX_PreaReportingIncidentNatures_LocationCd', N'IX_PreaReportingInstDiscNotices_LocationCd', N'IX_PreaReportingLocations_LocationCd', N'IX_PreaReportingPostReportHousingActions_LocationCd', N'IX_PreaReportingPostReportMedicalActions_LocationCd', N'IX_PreaReportingRaces_LocationCd', N'IX_PreaReportingReporters_LocationCd', N'IX_PreaReportingSanctions_LocationCd', N'IX_PreaReportingTimes_LocationCd', N'IX_PreaReportingVictimInjuries_LocationCd', N'IX_PresentenceAddendumCharges_LocationCd', N'IX_PresentenceAddendums_LocationCd', N'IX_PresentenceInvestigationCharges_LocationCd', N'IX_PretrialInterviewCharges_LocationCd', N'IX_ProbationAgreementAssocRules_LocationCd', N'IX_ProbationAgreementCharges_LocationCd', N'IX_ProbationRovCharges_LocationCd', N'IX_ProbationRovFieldRuleViolationIncidents_LocationCd', N'IX_ProbationRovHearingResponseDecisions_LocationCd', N'IX_ProbationRovHearingResponseRecommendations_LocationCd', N'IX_ProbationRovHearingResponses_LocationCd', N'IX_ProbationRovResidentialFormalDisciplines_LocationCd', N'IX_ProbationRovResiFormalDisciplineRuleViolations_LocationCd', N'IX_PropertyGroupShipmentDetails_LocationCd', N'IX_PropertyStatuses_LocationCd', N'IX_PsiAddendumChargeRecommendations_LocationCd', N'IX_PsiChargeRecommendations_LocationCd', N'IX_PsiExtraOffenderNeeds_LocationCd', N'IX_RcpnAccomodationsDetails_LocationCd', N'IX_RcpnAlcoholDrugProblemDetails_LocationCd', N'IX_RcpnAttitudesOrientationDetails_LocationCd', N'IX_RcpnCompanionsDetails_LocationCd', N'IX_RcpnEducationDetails_LocationCd', N'IX_RcpnEmotionalPersonalDetails_LocationCd', N'IX_RcpnEmploymentDetails_LocationCd', N'IX_RcpnFamilyMaritalDetails_LocationCd', N'IX_RcpnFinancialDetails_LocationCd', N'IX_RcpnLeisureRecreationDetails_LocationCd', N'IX_ReceptionTrackingHousingAccommodations_LocationCd', N'IX_ReconsiderSentenceWorksheetCharges_LocationCd', N'IX_ReconsiderSentenceWorksheetReview_LocationCd', N'IX_ReentryCasePlanAssignments_LocationCd', N'IX_ReleaseNotificationContacts_LocationCd', N'IX_ReleaseNotificationReports_LocationCd', N'IX_ReportsOrderByOld_LocationCd', N'IX_ResidentialAllegedRuleViolations_LocationCd', N'IX_ResidentialAppealReasons_LocationCd', N'IX_ResidentialAppealReports_LocationCd', N'IX_ResidentialAppeals_LocationCd', N'IX_ResidentialFormalDisciplineReports_LocationCd', N'IX_ResidentialHearingReports_LocationCd', N'IX_ResidentialHearings_LocationCd', N'IX_ResidentialInformalDisciplineReports_LocationCd', N'IX_ResidentialRuleViolations_LocationCd', N'IX_ResidentialSanctions_LocationCd', N'IX_ResidentialTimeLossSanctionAppealReasons_LocationCd', N'IX_ResidentialTimeLossSanctionAppeals_LocationCd', N'IX_ResidentialTimeLossSanctions_LocationCd', N'IX_ResidentialViolationBehaviorCodes_LocationCd', N'IX_RestitutionPlans_LocationCd', N'IX_RestorationOfRightsOffenses_LocationCd', N'IX_RevocationDetailImposedConditions_OLD_LocationCd', N'IX_RevocationDetailViolatedConditions_OLD_LocationCd', N'IX_RlRestitutionPaymentTypes_LocationCd', N'IX_RwsRovCharges_LocationCd', N'IX_RwsRovFieldRuleViolationIncidents_LocationCd', N'IX_RwsRovHearingResponseDecisions_LocationCd', N'IX_RwsRovHearingResponseRecommendations_LocationCd', N'IX_RwsRovHearingResponses_LocationCd', N'IX_SecEntUrls_LocationCd', N'IX_SecurityStandardDetails_OLD_LocationCd', N'IX_SecurityStandardsNonToxinStaff_LocationCd', N'IX_SecurityStandardsNonToxinUnsatisfactoryReasons_LocationCd', N'IX_SecurityStandardsToxinStaff_LocationCd', N'IX_SecurityStandardsToxinSubstances_LocationCd', N'IX_SentencePenalties_LocationCd', N'IX_Sentences_LocationCd', N'IX_SlCaseManagers_LocationCd', N'IX_SlOffenderWorkUnits_LocationCd', N'IX_SlSecondaryManagement_LocationCd', N'IX_SlSpecialties_LocationCd', N'IX_SlSupervisionModifiers_LocationCd', N'IX_SocialSecurityCardTrackings_LocationCd', N'IX_SSCardInstTransferred_LocationCd', N'IX_SupervisionStatusCharges_LocationCd', N'IX_SupportMeans_LocationCd', N'IX_ThreatGroupIdentifiers_LocationCd', N'IX_ThreatGroupInvolvementEndings_LocationCd', N'IX_TimeCompGroupAdjustments_LocationCd', N'IX_TimeCompGroupEvents_LocationCd', N'IX_TimeCompGroupPenalties_LocationCd', N'IX_TransportInformation_LocationCd', N'IX_UserPreferences_LocationCd', N'IX_UserPreferences_New_LocationCd', N'IX_VictimCases_LocationCd', N'IX_VictimCauseNumbers_LocationCd', N'IX_VictimEmsNotificationLetters_LocationCd', N'IX_VictimNgaCaVictims_OLD_LocationCd', N'IX_VictimNotificationLetters_LocationCd', N'IX_VictimRegistrationLetters_LocationCd', N'IX_ViolatorProgramReferralFormCharges_LocationCd', N'IX_ViolatorProgramReferralFormNewCharges_LocationCd', N'IX_VliVisitingGroupsInstitution_LocationCd', N'IX_VliVisitingStatusesInstitution_LocationCd', N'IX_WrOwiTcnResiFormalDisciplineRuleViolations_LocationCd', N'IX_WrOwiTransferClassificationDecisions_LocationCd')

--and t.name In (N'_Templates', N'dmWorkflowTypes', N'dmZipCodes', N'IPI_PickTicket', N'IPI_PickTicketDetail', N'LoginHistory', N'OffenderPanBalance', N'PropertyMigration_ISP_Inventory_Books', N'PropertyMigration_ISP_Inventory_Clothing', N'PropertyMigration_ISP_Inventory_Electronics', N'TableDailyRecIds', N'TRUSTACCT_dmRegions')
order by t.name asc
  

/**

-- Alternative way (is slower)

SELECT 
    DB_NAME() AS database_name,
    sc.name + N'.' + t.name AS table_name,
    (SELECT MAX(user_reads) 
        FROM (VALUES (last_user_seek), (last_user_scan), (last_user_lookup)) AS value(user_reads)) AS last_user_read,
    last_user_update,
    CASE si.index_id WHEN 0 THEN N'/* No create statement (Heap) */'
    ELSE 
        CASE is_primary_key WHEN 1 THEN
            N'ALTER TABLE ' + QUOTENAME(sc.name) + N'.' + QUOTENAME(t.name) + N' ADD CONSTRAINT ' + QUOTENAME(si.name) + N' PRIMARY KEY ' +
                CASE WHEN si.index_id > 1 THEN N'NON' ELSE N'' END + N'CLUSTERED '
            ELSE N'CREATE ' + 
                CASE WHEN si.is_unique = 1 then N'UNIQUE ' ELSE N'' END +
                CASE WHEN si.index_id > 1 THEN N'NON' ELSE N'' END + N'CLUSTERED ' +
                N'INDEX ' + QUOTENAME(si.name) + N' ON ' + QUOTENAME(sc.name) + N'.' + QUOTENAME(t.name) + N' '
        END +
        /* key def */ N'(' + key_definition + N')' +
        /* includes */ CASE WHEN include_definition IS NOT NULL THEN 
            N' INCLUDE (' + include_definition + N')'
            ELSE N''
        END +
        /* filters */ CASE WHEN filter_definition IS NOT NULL THEN 
            N' WHERE ' + filter_definition ELSE N''
        END +
        /* with clause - compression goes here */
        CASE WHEN row_compression_partition_list IS NOT NULL OR page_compression_partition_list IS NOT NULL 
            THEN N' WITH (' +
                CASE WHEN row_compression_partition_list IS NOT NULL THEN
                    N'DATA_COMPRESSION = ROW ' + CASE WHEN psc.name IS NULL THEN N'' ELSE + N' ON PARTITIONS (' + row_compression_partition_list + N')' END
                ELSE N'' END +
                CASE WHEN row_compression_partition_list IS NOT NULL AND page_compression_partition_list IS NOT NULL THEN N', ' ELSE N'' END +
                CASE WHEN page_compression_partition_list IS NOT NULL THEN
                    N'DATA_COMPRESSION = PAGE ' + CASE WHEN psc.name IS NULL THEN N'' ELSE + N' ON PARTITIONS (' + page_compression_partition_list + N')' END
                ELSE N'' END
            + N')'
            ELSE N''
        END +
        /* ON where? filegroup? partition scheme? */
        ' ON ' + CASE WHEN psc.name is null 
            THEN ISNULL(QUOTENAME(fg.name),N'')
            ELSE psc.name + N' (' + partitioning_column.column_name + N')' 
            END
        + N';'
    END AS index_create_statement,
    si.index_id,
    si.name AS index_name,
    partition_sums.reserved_in_row_GB,
    partition_sums.reserved_LOB_GB,
    partition_sums.row_count,
    stat.user_seeks,
    stat.user_scans,
    stat.user_lookups,
    user_updates AS queries_that_modified,
    partition_sums.partition_count,
    si.allow_page_locks,
    si.allow_row_locks,
    si.is_hypothetical,
    si.has_filter,
    si.fill_factor,
    si.is_unique,
    ISNULL(pf.name, '/* Not partitioned */') AS partition_function,
    ISNULL(psc.name, fg.name) AS partition_scheme_or_filegroup,
    t.create_date AS table_created_date,
    t.modify_date AS table_modify_date
FROM sys.indexes AS si
JOIN sys.tables AS t ON si.object_id=t.object_id
JOIN sys.schemas AS sc ON t.schema_id=sc.schema_id
LEFT JOIN sys.dm_db_index_usage_stats AS stat ON 
    stat.database_id = DB_ID() 
    and si.object_id=stat.object_id 
    and si.index_id=stat.index_id
LEFT JOIN sys.partition_schemes AS psc ON si.data_space_id=psc.data_space_id
LEFT JOIN sys.partition_functions AS pf ON psc.function_id=pf.function_id
LEFT JOIN sys.filegroups AS fg ON si.data_space_id=fg.data_space_id
/* Key list */ OUTER APPLY ( SELECT STUFF (
    (SELECT N', ' + QUOTENAME(c.name) +
        CASE ic.is_descending_key WHEN 1 then N' DESC' ELSE N'' END
    FROM sys.index_columns AS ic 
    JOIN sys.columns AS c ON 
        ic.column_id=c.column_id  
        and ic.object_id=c.object_id
    WHERE ic.object_id = si.object_id
        and ic.index_id=si.index_id
        and ic.key_ordinal > 0
    ORDER BY ic.key_ordinal FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'),1,2,'')) AS keys ( key_definition )
/* Partitioning Ordinal */ OUTER APPLY (
    SELECT MAX(QUOTENAME(c.name)) AS column_name
    FROM sys.index_columns AS ic 
    JOIN sys.columns AS c ON 
        ic.column_id=c.column_id  
        and ic.object_id=c.object_id
    WHERE ic.object_id = si.object_id
        and ic.index_id=si.index_id
        and ic.partition_ordinal = 1) AS partitioning_column
/* Include list */ OUTER APPLY ( SELECT STUFF (
    (SELECT N', ' + QUOTENAME(c.name)
    FROM sys.index_columns AS ic 
    JOIN sys.columns AS c ON 
        ic.column_id=c.column_id  
        and ic.object_id=c.object_id
    WHERE ic.object_id = si.object_id
        and ic.index_id=si.index_id
        and ic.is_included_column = 1
    ORDER BY c.name FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'),1,2,'')) AS includes ( include_definition )
/* Partitions */ OUTER APPLY ( 
    SELECT 
        COUNT(*) AS partition_count,
        CAST(SUM(ps.in_row_reserved_page_count)*8./1024./1024. AS NUMERIC(32,1)) AS reserved_in_row_GB,
        CAST(SUM(ps.lob_reserved_page_count)*8./1024./1024. AS NUMERIC(32,1)) AS reserved_LOB_GB,
        SUM(ps.row_count) AS row_count
    FROM sys.partitions AS p
    JOIN sys.dm_db_partition_stats AS ps ON
        p.partition_id=ps.partition_id
    WHERE p.object_id = si.object_id
        and p.index_id=si.index_id
    ) AS partition_sums
/* row compression list by partition */ OUTER APPLY ( SELECT STUFF (
    (SELECT N', ' + CAST(p.partition_number AS VARCHAR(32))
    FROM sys.partitions AS p
    WHERE p.object_id = si.object_id
        and p.index_id=si.index_id
        and p.data_compression = 1
    ORDER BY p.partition_number FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'),1,2,'')) AS row_compression_clause ( row_compression_partition_list )
/* data compression list by partition */ OUTER APPLY ( SELECT STUFF (
    (SELECT N', ' + CAST(p.partition_number AS VARCHAR(32))
    FROM sys.partitions AS p
    WHERE p.object_id = si.object_id
        and p.index_id=si.index_id
        and p.data_compression = 2
    ORDER BY p.partition_number FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'),1,2,'')) AS page_compression_clause ( page_compression_partition_list )
WHERE 
    si.type IN (0,1,2) /* heap, clustered, nonclustered */
ORDER BY table_name, si.index_id
    OPTION (RECOMPILE);
GO


**/
