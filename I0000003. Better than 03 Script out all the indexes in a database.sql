SELECT ' CREATE ' + 
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
		   DS.name + ' ] '  [CreateIndexScript] ,t.name as tablename, KeyColumns, i.name
		   
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
					   and (IncludedColumns like '%locationcd%' and IncludedColumns like '%offendercd%')

					 ) tmp2    
ON tmp2.object_id = I.object_id AND tmp2.index_id = I.index_id   
WHERE --I.is_primary_key = 0 and
 t.name not like 'H_%'                                      -- change this for primary key values only if needed
and t.name ='dmzipcodes'--In (N'dmZipCodes', N'dmWorkAssignmentShifts', N'dmVehicleModels', N'TimeCompGroupPenalties_ProdFix', N'TimeCompGroupEvents_ProdFix', N'TimeCompGroupAdjustments_ProdFix', N'dmThreatGroupSubFactions', N'_Templates', N'dmSupervisionStatusSpecialties', N'TableDailyRecIds', N'dmStaffWorkUnits', N'dmStaffSignatures', N'dmStaffPhones', N'dmStaffIdentifiers', N'aLsi_rWorkTable', N'SentencePenalties_ProdFix', N'dmSecurityStandardAssociatedSubstances_OLD', N'dmSearchTypeSubstances', N'dmSecurityStandardSubstancePanelSubstances', N'dmSecurityStandardNonToxinSubtypes', N'aSassiResultingRecommendations', N'dmRulePackageWorkUnits', N'dmRulePackageSupervisionStatuses', N'dmRulePackageRules', N'dmRuleWorkUnits', N'dmRuleSupervisionStatuses', N'dmRuleFilterWorkUnits', N'dmRuleFilterSupervisionStatuses', N'dmRuleFilterRules', N'dmBeds', N'DetainerNotificationRequests', N'IPI_PickTicket', N'dmWorkUnits', N'dmKioskLocations', N'dmFacilities', N'TRUSTACCT_dmRegions', N'DOC_ApplicableCharges', N'dmEthnicOrigins', N'aPsaPretrialDecisions', N'aPsaCharges', N'aPsaBondReviewHearings', N'aPsychDiagnosticAxis2', N'aPsychDiagnosticAxis1', N'aPsaPdPretrialDecisions', N'aPsaBrhPretrialDecisions', N'dmPropertySubItemsIpiAssociatedItems', N'dmPropertySubItemsIpi', N'dmPropertySetSubItems', N'dmPropertySubItems', N'dmPropertyItemFacilityLimits', N'dmPropertyGroupTypeReasons', N'dmProcessTaskStaffGroupStaff', N'dmProcessTaskClosingSecurityEntities', N'dmProcessTaskAssignedNotificationGroups', N'dmProcessTasks', N'dmProcessTaskGroupDependencies', N'dmProcessTaskGroups', N'BondReviewHearings', N'IPI_PickTicketDetail', N'dmPhysicianPhone', N'dmPenaltyTypePenaltyModifiers', N'dmSentencePenaltyTypePenaltyModifiers', N'PCSPrevious', N'PCSDifferences', N'PCSCurrent', N'dmParoleViolationReviewRequestRecommendations', N'dmOverrideReasons', N'OffenderWorkTable', N'TimeCompGroups_ProdFix', N'OffenderPanBalance', N'ICSPrevious', N'ICSDifferences', N'ICSCurrent', N'PropertyMigration_FDCF_Conversion', N'PropertyMigration_ICIW_Conversion', N'PropertyMigration_NCCF_Conversion', N'PropertyMigration_ISP_Inventory_Books', N'dmNeedOffenseBehaviorCodes', N'CjisSoeIconToDciMessages', N'CjisSoeDciToIconMessages', N'aLsi_rTrailerProbationParole', N'aLsi_rTrailerPreRelease', N'aLsi_rTrailerInstitution', N'aLsi_rCharges', N'LoginHistory', N'dmWorkflowTypes', N'UserNameChanges', N'UserLocations', N'KioskUnexpectedErrorLog', N'StoredReports', N'SecEnt', N'Screens', N'RestorationOfRights', N'ReportsOld', N'PreaReporting', N'OffenderUserLocks', N'OffenderInformationMerges', N'OffenderInformationDeletes', N'OffenderGroupLocks', N'ICONOffendersForBopConditionMigration', N'OffenderActivities', N'O_KioskFingerPrintTemplates', N'NPErrorLog', N'NonOffenderFiles', N'NletsRequests', N'MobileSessions', N'MobileDevices', N'LocationScans', N'KioskUserLogInLog', N'KioskStaffAuthorizations', N'KioskOffenderLogInLog', N'KioskAnnouncements', N'ICIS_PSI_REQUEST', N'ICIS_DOC_ORIGINATED_ADDENDUMS', N'ICIS_COURT_ORDER_REQUESTS_SYSTEM_REJECTED', N'ICIS_COURT_ORDER_REQUESTS', N'dmLegalPeoplePhones', N'dmKioskMailboxStaff', N'dmKioskWorkstations', N'EndKeepSeparates', N'IPI_ItemInfo', N'dmInterventionProviderPhones', N'dmInterventionContacts', N'dmInterventionProgramLocationInterventions', N'dmInterventionProgramLocationEbpStatuses', N'dmInterventionProgramLocations', N'dmInterventionSessionTopics', N'dmInterventionProvidersAssn', N'dmInterventionModalities', N'dmInterventionMethods', N'dmInterventionEbpStatuses', N'dmInterventionClasses', N'dmInterventionContactPhones', N'dmInterventionClassFacilitators', N'PropertyMigration_ISP_Inventory_Electronics', N'PropertyMigration_ISP_Inventory_Clothing', N'Nga_Ca_Defendants', N'Nga_Ca_Charges', N'aIaRiskReassessmentCharges', N'aIaRiskAssessmentCharges', N'aIaHeadInjuryLoseConsciousnessOrInComa', N'dmRooms', N'dmHousingStatusIncentives', N'dmHousingIncentiveFacilities', N'GrievanceRestrictionReviews', N'dmGrievanceProcessTypeReasons', N'GrievanceNoUnknownStaffNamed', N'GrievanceStaffNamed', N'GrievanceResponses', N'GrievanceReceipts', N'GrievanceNotifications', N'GrievanceAppeals', N'dmFlMaintenanceIssueItemProblems', N'dmFlMaintenanceIssueItems', N'FieldRuleViolations', N'FieldRuleViolationBehaviorCodes', N'dmWorkAssignmentsFl', N'dmPropertyItemFlStorageLocations', N'dmInstitutionTransportationTypes', N'dmInstitutionDestinations', N'dmHousingUnits', N'EnemyEndingInformation', N'EmploymentPhones', N'dmEmployerPhones', N'dmEducationSchoolCourses', N'dmEducationSchoolCourseInstructors', N'EducationGedAccommodations', N'EducationClassOffenderAssignments', N'EducationClassOffenders', N'EducationClassAssignments', N'EducationalDetailRecordRequests', N'DischargeReportCharges', N'IPI_dmDepartment', N'dmCrimeCodeOffenseSubTypes', N'ContactPhones', N'ClemencyBoardMemberRecommendations', N'CjisSoeVictims', N'CjisSoeSchools', N'CjisSoeParentAddresses', N'CjisSoeOffenses', N'CjisSoeOffenderAddresses', N'CjisSoeEmployers', N'Sentences_ProdFix', N'ClOffenseBehaviorCodes', N'IPI_dmCategory', N'BopRevocationHearingWitnessSubpoenas', N'BopRevocationHearingViolatedConditions', N'BopRevocationHearingNotices', N'BopRevocationHearingImposedConditions', N'dmBopRevocationCountyGroupCounties', N'dmBopReleasePlanReviewReasonRecommendations', N'BOPRPLRecommendationReasons', N'BOPRPLDecisions', N'BOPReleaseSitePhones', N'dmBopLocationFacilities', N'BopEmployabilityCertificates', N'BopDecisionReasons_OLD', N'BopDecisionConditions', N'BopDecisionCaseManagerDecisions', N'BopBoardMemberDecisions', N'BopDecisionCaseManagerConditions', N'dmBopConditionPackageConditions', N'BopBoardMemberReasons_OLD', N'BopBoardMemberConditions', N'BondReviewHearingCharges', N'BodyMarkingThreatGroupValidation', N'ICONBopConditionMigration', N'AdministrativeSegregationReviews', N'AddressPhones', N'dmActivities')


order by t.name asc


--AND I.Object_id = object_id('Person.Address') --Comment for all tables 
--AND I.name = 'IX_Address_PostalCode' --comment for all indexes 
  



  
