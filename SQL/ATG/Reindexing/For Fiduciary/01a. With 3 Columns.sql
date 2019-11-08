-- Both LocationCd and OffenderCd
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

SELECT 'Alter Table [' + o.NAME + '] Drop Constraint [' + I.NAME + ']; Alter Table [' + o.NAME + '] Add Constraint [' + I.NAME + '] PRIMARY KEY CLUSTERED (' + SUBSTRING(keys, LEN(keys) - CHARINDEX(',', REVERSE(keys)) + 2, LEN(Keys)) + ' ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100); IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = ''IX_' + o.NAME + '_LocationCd_OffenderCd'') BEGIN  Drop INDEX [IX_' + o.NAME + '_LocationCd] on [' + o.NAME + ']; END ' + 'Create NONCLUSTERED INDEX [IX_' + o.NAME + '_LocationCd_OffenderCd] on [' + o.NAME + '] ( ' + replace((substring(keys, 0, len(keys) - CHARINDEX(',', reverse(keys)) + 1)), ',', ' ASC,') + ' ASC)' --+']('
	--+replace(replace(keys,',',' ASC,'),(o.name+'ID'),'')+'ASC)'
	, o.NAME AS [Table], I.NAME AS [Index], SUBSTRING(keys, LEN(keys) - CHARINDEX(',', REVERSE(keys)) + 2, LEN(Keys)) AS KeyCol, (LEN(keys) - LEN(REPLACE(keys, ',', '')) + 1) AS [NumOfColsinIndex], keys, I.type_desc, is_unique, fill_factor, is_padded, --included,
	has_filter, filter_definition
FROM IndexQry IQ, Sys.objects o, sys.indexes I
WHERE IQ.object_id = o.object_id
	AND IQ.object_id = I.object_id
	AND IQ.Index_id = I.index_id
	--and (i.name not like '%locationcd%' and  i.name not like '%offendercd%')
	AND keys  LIKE '%locationCd%Offendercd%'
	--AND (keys NOT LIKE '%Locationcd%' AND keys NOT LIKE '%Offendercd%') -- To see if there are indexes with 3 columns with neither loc or off cd
	AND i.NAME LIKE 'pk%'
	AND (LEN(keys) - LEN(REPLACE(keys, ',', '')) + 1) = 3 -- change to >1 to fix other indexes
ORDER BY o.NAME ASC, keys DESC, type_desc ASC








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
SELECT 'Alter Table [' + o.NAME + '] Drop Constraint [' + I.NAME + ']; Alter Table [' + o.NAME + '] Add Constraint [' + I.NAME + '] PRIMARY KEY CLUSTERED (' + SUBSTRING(keys, LEN(keys) - CHARINDEX(',', REVERSE(keys)) + 2, LEN(Keys)) + ' ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100); IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = ''IX_' + o.NAME + '_LocationCd'') BEGIN  Drop INDEX [IX_' + o.NAME + '_LocationCd] on [' + o.NAME + ']; END ' + 'Create NONCLUSTERED INDEX [IX_' + o.NAME + '_LocationCd] on [' + o.NAME + '] ( ' + replace((substring(keys, 0, len(keys) - CHARINDEX(',', reverse(keys)) + 1)), ',', ' ASC,') + ' ASC)' --+']('
	--+replace(replace(keys,',',' ASC,'),(o.name+'ID'),'')+'ASC)'
	, o.NAME AS [Table], I.NAME AS [Index], SUBSTRING(keys, LEN(keys) - CHARINDEX(',', REVERSE(keys)) + 2, LEN(Keys)) AS KeyCol, (LEN(keys) - LEN(REPLACE(keys, ',', '')) + 1) AS [NumOfColsinIndex], keys, I.type_desc, is_unique, fill_factor, is_padded, --included,
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