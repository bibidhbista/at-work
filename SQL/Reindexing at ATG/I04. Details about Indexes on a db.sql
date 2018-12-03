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
and (a.name like '%locationcd%' and c.name not like '%offendercd%')
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
	having count(*) =2 
) 
AND c.name !='locationcd'
--and d.name In ()
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

