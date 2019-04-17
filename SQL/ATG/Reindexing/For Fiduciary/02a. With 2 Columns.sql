-- Both LocationCd and OffenderCd
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
	'Alter Table ['+o.name+'] Drop Constraint ['+I.name+
	']; Alter Table ['+o.name+'] Add Constraint ['+I.name + '] PRIMARY KEY CLUSTERED ('+SUBSTRING( keys , LEN(keys) -  CHARINDEX(',',REVERSE(keys)) + 2  , LEN(Keys)  ) +
	' ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100); IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = ''IX_'+o.name+'_LocationCd'') BEGIN  Drop INDEX [IX_'+o.name+'_LocationCd] on ['+o.name+']; END '+
	'Create NONCLUSTERED INDEX [IX_'+o.name+'_LocationCd] on ['+o.name+'] ( '+
	replace((substring(keys, 0,len(keys) -CHARINDEX(',', reverse(keys))+1)),',',' ASC,') +' ASC)'--+']('
	--+replace(replace(keys,',',' ASC,'),(o.name+'ID'),'')+'ASC)'
	,o.name as [Table] ,
       I.name as [Index],
	   SUBSTRING( keys , LEN(keys) -  CHARINDEX(',',REVERSE(keys)) + 2  , LEN(Keys)  ) as KeyCol,
	(LEN(keys) - LEN(REPLACE(keys, ',', ''))+1) as [NumOfColsinIndex],
        keys,I.type_desc,is_unique,fill_factor,is_padded,--included,
        has_filter,filter_definition
from IndexQry IQ, Sys.objects o,sys.indexes I

where IQ.object_id=o.object_id 
    and IQ.object_id=I.object_id 
    and IQ.Index_id=I.index_id
	--and (i.name not like '%locationcd%' and  i.name not like '%offendercd%')
	AND keys LIKE '%locationCd%Offendercd%'
	and i.name  like 'pk%' 
	and (LEN(keys) - LEN(REPLACE(keys, ',', ''))+1) =2-- change to >1 to fix other indexes
		
Order by o.name asc,keys desc,type_desc ASC









-- Only LocationCd : tables that don't already have a NCI that includes LocationCd (wrong order for locationcd automation)
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
	'Alter Table ['+o.name+'] Drop Constraint ['+I.name+
	']; Alter Table ['+o.name+'] Add Constraint ['+I.name + '] PRIMARY KEY CLUSTERED ('+SUBSTRING(keys , LEN(keys) -  CHARINDEX(',',REVERSE(keys)) + 2 ,LEN(Keys)) +
	' ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100); IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = ''IX_'+o.name+'_LocationCd'') BEGIN  Drop INDEX [IX_'+o.name+'_LocationCd] on ['+o.name+']; END '+
	'Create NONCLUSTERED INDEX [IX_'+o.name+'_LocationCd] on ['+o.name+'] ( '+
	replace((substring(keys, 0,len(keys) -CHARINDEX(',', reverse(keys))+1)),',',' ASC,') +' ASC)'--+']('
	--+replace(replace(keys,',',' ASC,'),(o.name+'ID'),'')+'ASC)'
	,o.name as [Table] ,
       I.name as [Index],
	   SUBSTRING( keys , LEN(keys) -  CHARINDEX(',',REVERSE(keys)) + 2  , LEN(Keys)  ) as KeyCol,
	(LEN(keys) - LEN(REPLACE(keys, ',', ''))+1) as [NumOfColsinIndex],
        keys,I.type_desc,is_unique,fill_factor,is_padded,--included,
        has_filter,filter_definition
from IndexQry IQ, Sys.objects o,sys.indexes I


where 
 SUBSTRING( keys , LEN(keys) -  CHARINDEX(',',REVERSE(keys)) + 2  , LEN(Keys)  ) ='LocationCd'
  and NOT o.name in (N'ChildSupport_H', N'CourtFilingFees_H', N'dmGLTransactionType', N'DOCSanctions_H', N'IDCardTransaction', N'InmatePhoneNumberReview', N'OffenderCommissaryInformation', N'OmailCredits', N'PhoneCreditTransactions', N'PrimaryAccount_H', N'Restitution_H', N'Sender')
	AND o.name NOT LIKE 'H_%'
	AND o.name NOT LIKE '%_H'
	and IQ.object_id=o.object_id 
    and IQ.object_id=I.object_id 
    and IQ.Index_id=I.index_id
	AND keys LIKE '%locationCd%'
	AND keys NOT LIKE '%Offendercd%'
	and i.name  like 'pk%' 
	and (LEN(keys) - LEN(REPLACE(keys, ',', ''))+1) =2    -- change to >1 to fix other indexes

Order BY SUBSTRING( keys , LEN(keys) -  CHARINDEX(',',REVERSE(keys)) + 2  , LEN(Keys)  ) asc, o.name asc,keys desc,type_desc ASC











-- Only LocationCd : tables that don't already have a NCI that includes LocationCd (right order for locationcd automation!!)
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
	'Alter Table ['+o.name+'] Drop Constraint ['+I.name+
	']; Alter Table ['+o.name+'] Add Constraint ['+I.name + '] PRIMARY KEY CLUSTERED ('+SUBSTRING(keys , LEN(keys) -  CHARINDEX(',',REVERSE(keys)) + 2 ,LEN(Keys)) +
	' ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100); IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = ''IX_'+o.name+'_LocationCd'') BEGIN  Drop INDEX [IX_'+o.name+'_LocationCd] on ['+o.name+']; END '+
	'Create NONCLUSTERED INDEX [IX_'+o.name+'_LocationCd] on ['+o.name+'] ( '+
	replace((substring(keys, 0,len(keys) -CHARINDEX(',', reverse(keys))+1)),',',' ASC,') +' ASC)'--+']('
	--+replace(replace(keys,',',' ASC,'),(o.name+'ID'),'')+'ASC)'
	,o.name as [Table] ,
       I.name as [Index],
	   SUBSTRING( keys , LEN(keys) -  CHARINDEX(',',REVERSE(keys)) + 2  , LEN(Keys)  ) as KeyCol,
	(LEN(keys) - LEN(REPLACE(keys, ',', ''))+1) as [NumOfColsinIndex],
        keys,I.type_desc,is_unique,fill_factor,is_padded,--included,
        has_filter,filter_definition
from IndexQry IQ, Sys.objects o,sys.indexes I


where o.name NOT LIKE 'H_%'
	AND o.name NOT LIKE '%_H'
	and IQ.object_id=o.object_id 
    and IQ.object_id=I.object_id 
    and IQ.Index_id=I.index_id
	AND keys LIKE '%locationCd%'
	AND keys NOT LIKE '%Offendercd%'
	and i.name  like 'pk%' 
	and (LEN(keys) - LEN(REPLACE(keys, ',', ''))+1) =2    -- change to >1 to fix other indexes

Order BY  o.name asc,keys desc,type_desc ASC










-- History Tables
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
	'Alter Table ['+o.name+'] Drop Constraint ['+I.name+
	']; Alter Table ['+o.name+'] Add Constraint ['+I.name + '] PRIMARY KEY CLUSTERED ('+SUBSTRING(keys , LEN(keys) -  CHARINDEX(',',REVERSE(keys)) + 2 ,LEN(Keys)) +
	' ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100); IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = ''IX_'+o.name+'_LocationCd'') BEGIN  Drop INDEX [IX_'+o.name+'_LocationCd] on ['+o.name+']; END '+
	'Create NONCLUSTERED INDEX [IX_'+o.name+'_LocationCd] on ['+o.name+'] ( '+
	replace((substring(keys, 0,len(keys) -CHARINDEX(',', reverse(keys))+1)),',',' ASC,') +' ASC)'--+']('
	--+replace(replace(keys,',',' ASC,'),(o.name+'ID'),'')+'ASC)'
	,o.name as [Table] ,
       I.name as [Index],
	   SUBSTRING( keys , LEN(keys) -  CHARINDEX(',',REVERSE(keys)) + 2  , LEN(Keys)  ) as KeyCol,
	(LEN(keys) - LEN(REPLACE(keys, ',', ''))+1) as [NumOfColsinIndex],
        keys,I.type_desc,is_unique,fill_factor,is_padded,--included,
        has_filter,filter_definition
from IndexQry IQ, Sys.objects o,sys.indexes I


where (o.name LIKE 'H_%' or o.name LIKE '%_H')
	and IQ.object_id=o.object_id 
    and IQ.object_id=I.object_id 
    and IQ.Index_id=I.index_id
	--AND keys LIKE '%locationCd%'
	--AND keys NOT LIKE '%Offendercd%'
	and i.name  like 'pk%' 
	and (LEN(keys) - LEN(REPLACE(keys, ',', ''))+1) >1    -- change to >1 to fix other indexes

Order BY  o.name asc,keys desc,type_desc ASC




-- Only LocationCd : Data in 4 tables had to be fixed to create unique clustered PK
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
	'Alter Table ['+o.name+'] Drop Constraint ['+I.name+
	']; Alter Table ['+o.name+'] Add Constraint ['+I.name + '] PRIMARY KEY CLUSTERED ('+SUBSTRING(keys , LEN(keys) -  CHARINDEX(',',REVERSE(keys)) + 2 ,LEN(Keys)) +
	' ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100); IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = ''IX_'+o.name+'_LocationCd'') BEGIN  Drop INDEX [IX_'+o.name+'_LocationCd] on ['+o.name+']; END '+
	'Create NONCLUSTERED INDEX [IX_'+o.name+'_LocationCd] on ['+o.name+'] ( '+
	replace((substring(keys, 0,len(keys) -CHARINDEX(',', reverse(keys))+1)),',',' ASC,') +' ASC)'--+']('
	--+replace(replace(keys,',',' ASC,'),(o.name+'ID'),'')+'ASC)'
	,o.name as [Table] ,
       I.name as [Index],
	   SUBSTRING( keys , LEN(keys) -  CHARINDEX(',',REVERSE(keys)) + 2  , LEN(Keys)  ) as KeyCol,
	(LEN(keys) - LEN(REPLACE(keys, ',', ''))+1) as [NumOfColsinIndex],
        keys,I.type_desc,is_unique,fill_factor,is_padded,--included,
        has_filter,filter_definition
from IndexQry IQ, Sys.objects o,sys.indexes I


where o.name IN ('dmGLAccountCode','dmGLAccountNames','dmIncomeCategories','dmModuleTypes')
	and IQ.object_id=o.object_id 
    and IQ.object_id=I.object_id 
    and IQ.Index_id=I.index_id
	AND keys LIKE '%locationCd%'
	AND keys NOT LIKE '%Offendercd%'
	and i.name  like 'pk%' 
	and (LEN(keys) - LEN(REPLACE(keys, ',', ''))+1) =2    -- change to >1 to fix other indexes

Order BY  o.name asc,keys desc,type_desc ASC
