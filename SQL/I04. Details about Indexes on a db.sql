;with Columnsqry as 
    (select name,ic.object_id,ic.index_id,is_included_column,ic.key_ordinal
    from sys.index_columns IC,
    sys.columns c
    where ic.object_id=c.object_id and 
    ic.column_id = c.column_id ), 
    IndexQry as
    (select I.object_id,I.index_id, 
        (select stuff((select ',' + name as [text()] from Columnsqry q
            where q.object_id=I.object_id
            and q.index_id=i.index_id and q.is_included_column=0
			order by q.key_ordinal
            for xml path('')),1,1,'')) Keys,
        (select stuff((select ',' + name as [text()] from Columnsqry q
            where q.object_id=I.object_id
            and q.index_id=i.index_id and q.is_included_column=1
            for xml path('')),1,1,'')) Included 
    from Columnsqry q, sys.indexes I, 
            sys.objects o
    where q.object_id=I.object_id
            and q.index_id=i.index_id 
            and o.object_id=I.object_id 
            and O.type not in ('S','IT')
    group by I.object_id,I.index_id)

select 
	'IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = ''IX_'+o.name+'_OffenderCd_LocationCd'') BEGIN Alter Table ['+o.name+'] Drop Constraint ['+I.name+
	']; Alter Table ['+o.name+'] Add Constraint ['+I.name + '] PRIMARY KEY CLUSTERED ('+SUBSTRING( keys , LEN(keys) -  CHARINDEX(',',REVERSE(keys)) + 2  , LEN(Keys)  ) +
	' ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100); Drop INDEX [IX_'+o.name+'_OffenderCd_LocationCd] on ['+o.name+'] '+
	'Create NONCLUSTERED INDEX [IX_'+o.name+'_OffenderCd_LocationCd] on ['+o.name+'] (OffenderCd ASC, LocationCd ASC, '+
	replace((substring(keys, 0,len(keys) -CHARINDEX(',', reverse(keys))+1)),',',' ASC,') +' ASC) END'--+']('
	+replace(replace(keys,',',' ASC,'),(o.name+'ID'),'')+'ASC)',
	o.name as [Table] ,
       I.name as [Index],
	   SUBSTRING( keys , LEN(keys) -  CHARINDEX(',',REVERSE(keys)) + 2  , LEN(Keys)  ) as KeyCol,
	(LEN(keys) - LEN(REPLACE(keys, ',', ''))+1) as [NumOfColsinIndex],
        keys,I.type_desc,is_unique,fill_factor,is_padded,--included,
        has_filter,filter_definition
from IndexQry IQ, Sys.objects o,sys.indexes I

where IQ.object_id=o.object_id 
    and IQ.object_id=I.object_id 
    and IQ.Index_id=I.index_id
	and Keys not like '%offendercd%'
	--and (i.name not like '%locationcd%' and  i.name not like '%offendercd%')
	--and fill_factor != 100
	--and i.name  like 'pk%' 
	--or  i.name like 'IX_%' )
	and i.name like '%_locationcd' and i.name not like '%offendercd%'
	--and o.name In (N'AddressPhones', N'AdministrativeSegregationReviews', N'aIaHeadInjuryLoseConsciousnessOrInComa', N'aIaRiskAssessmentCharges', N'aIaRiskReassessmentCharges', N'aLsi_rCharges', N'aLsi_rTrailerInstitution', N'aLsi_rTrailerPreRelease', N'aLsi_rTrailerProbationParole', N'aLsi_rWorkTable', N'aPsaBondReviewHearings', N'aPsaBrhPretrialDecisions', N'aPsaCharges', N'aPsaPdPretrialDecisions', N'aPsaPretrialDecisions', N'aPsychDiagnosticAxis1', N'aPsychDiagnosticAxis2', N'aSassiResultingRecommendations', N'BodyMarkingThreatGroupValidation', N'BondReviewHearingCharges', N'BondReviewHearings', N'BopBoardMemberConditions', N'BopBoardMemberDecisions', N'BopBoardMemberReasons_OLD', N'BopDecisionCaseManagerConditions', N'BopDecisionCaseManagerDecisions', N'BopDecisionConditions', N'BopDecisionReasons_OLD', N'BopEmployabilityCertificates', N'BOPReleaseSitePhones', N'BopRevocationHearingImposedConditions', N'BopRevocationHearingNotices', N'BopRevocationHearingViolatedConditions', N'BopRevocationHearingWitnessSubpoenas', N'BOPRPLDecisions', N'BOPRPLRecommendationReasons', N'CjisSoeDciToIconMessages', N'CjisSoeEmployers', N'CjisSoeIconToDciMessages', N'CjisSoeOffenderAddresses', N'CjisSoeOffenses', N'CjisSoeParentAddresses', N'CjisSoeSchools', N'CjisSoeVictims', N'ClOffenseBehaviorCodes', N'ContactPhones', N'DetainerNotificationRequests', N'DischargeReportCharges', N'ICONBopConditionMigration', N'ICONOffendersForBopConditionMigration', N'KioskOffenderLogInLog', N'NletsRequests', N'O_KioskFingerPrintTemplates', N'OffenderActivities', N'OffenderGroupLocks', N'OffenderInformationDeletes', N'OffenderUserLocks', N'RestorationOfRights', N'SentencePenalties_ProdFix', N'Sentences_ProdFix', N'TimeCompGroupAdjustments_ProdFix', N'TimeCompGroupEvents_ProdFix', N'TimeCompGroupPenalties_ProdFix', N'TimeCompGroups_ProdFix')
	and o.name not like 'H_%'
	and (LEN(keys) - LEN(REPLACE(keys, ',', ''))+1) >1 -- change to >1 to fix other indexes
	
	
Order by o.name asc,keys desc,type_desc asc



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
and (a.name like '%locationcd%' and a.name not like '%offendercd%')
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
where a.indid>1 -- and d.name = 'aLsi_rCharges'
group by a.name
having count(*) >=1 
) 
--and d.name In (N'_Templates', N'ClemencyBoardMemberRecommendations', N'dmActivities')
--group by d.name, a.name
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
and d.name not like 'H_%'

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
AND TABLE_NAME like '%victim%' and table_name not like 'H_*'--AND TABLE_SCHEMA = 'Schema'
and COLUMN_NAME like '%locationcd%'

 





**/

