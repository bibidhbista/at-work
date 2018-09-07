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
	where a.indid>1 -- and d.name = 'aLsi_rCharges'
	group by a.name
	having count(*) >=2 
) 

--AND c.name !='locationcd'
and d.name In  (N'admCounters', N'admTableId', N'AllowanceElectronicImport', N'CBCFeeActivity', N'CBCFees_H', N'CBCFeeWaiver', N'CBCFeeWriteOff',  N'CommissaryTransactions', N'CommissaryWebServiceTransaction', N'DepositRoster', N'Deposits', N'DestroyedChecks', N'dmAllowancesDept', N'dmAllowancesTypeOfWork', N'dmAllowancesWorkAssign', N'dmAllowancesWorkAssign_H', N'dmBlockReasons', N'dmCategories', N'dmCBCFeesPaidTo', N'dmCBCFeeWaiverType', N'dmCBCFeeWriteOffType', N'dmChildSupportPaidTo', N'dmCountries', N'dmCourtFilingFeesPaidTo', N'dmDOCSanctionsPaidTo', N'dmExpenditures', N'dmGLAccountCode', N'dmGLAccountNames', N'dmHazardTypes', N'dmICSLocations', N'dmIncomeCategories', N'dmIncomeTypes', N'dmItems', N'dmJPayOptions', N'dmKeefeOptions', N'dmLocationCheckInfo', N'dmManualPaidTo', N'dmMessages', N'dmModuleTypes', N'dmMoneyType', N'dmObligationTypes', N'dmObligationTypes_H', N'dmOffenderOrganizations', N'dmOptions', N'dmPredefinedGroups', N'dmPrivateSectorEmployer', N'dmRentStatus', N'dmRestitutionPaidTo', N'dmRestitutionType_H', N'dmScreens', N'dmState', N'dmTouchPayOptions', N'dmTransactionCategories', N'dmTransactionTypes', N'dmUsers', N'dmWUnionOptions', N'EnteredPhoneCredits', N'FacilityPhoneNumberBlocks', N'FacilityPhoneNumberControls', N'GLAssignments', N'GLTransaction', N'Groups', N'GroupUsers', N'H_dmInterventionClassFacilitators', N'H_dmMessages', N'H_Groups', N'H_GroupUsers', N'H_OffenderInterventionClassFacilitators', N'H_UserLocations', N'H_Users', N'IBSAInterestDistribution', N'IBSAMonthlyInterest', N'IBSATransactionDetails', N'ICSTransaction', N'IDCardDestroyedBalanceLog', N'InmateFlags', N'InmateFreePhoneNumbers', N'InmatePhoneContact', N'InmatePhoneNumberBlocks', N'InmatePhoneNumberControls',  N'InventoryAdjustments', N'JPayBatch', N'JPayTransactionExtract', N'JPayTransactions', N'KeefeBatch', N'KeefeTransactionExtract', N'KeefeTransactions', N'ManualChecks', N'NightlyComFailures', N'NightlyCycleNoFailures', N'OffenderAllowanceWorkAssignments',  N'OffenderCommissaryInformation_H', N'Parameters', N'PhoneCreditPhoneNumbers', N'PhoneCredits', N'PhoneCreditTransactionErrors',  N'Reconciliation',  N'SavingsTransactionDetails', N'ScreensInUse',  N'SenderInformation', N'StockReceipts', N'TempAllowanceElectronicImportDetail', N'TempCheckRoster', N'TempChecks', N'TempManualCheckRoster', N'TouchPayBatch', N'TouchPayTransactionExtract', N'TouchPayTransactions', N'UnknTransDetails', N'UserLocations', N'WithdrawalDetails', N'WrittenChecks', N'WUnionBatch', N'WUnionTransactionExtract', N'WUnionTransactions')
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
and d.name In (N'admCounters', N'dmGLAccountCode', N'dmGLAccountNames', N'dmIncomeCategories', N'dmKeefeOptions', N'dmModuleTypes', N'dmOptions')
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

