SELECT 'ALTER TABLE ['+t.name+'] DROP CONSTRAINT ['+i.name+']; CREATE ' + 
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
					   and (IncludedColumns like '%locationcd%' and IncludedColumns like '%offendercd%')

					 ) tmp2    
ON tmp2.object_id = I.object_id AND tmp2.index_id = I.index_id   
WHERE I.is_primary_key = 1 and
 t.name not like 'H_%'                                      -- change this for primary key values only if needed
and t.name In (N'_Templates', N'dmWorkflowTypes', N'dmZipCodes', N'IPI_PickTicket', N'IPI_PickTicketDetail', N'LoginHistory', N'OffenderPanBalance', N'PropertyMigration_ISP_Inventory_Books', N'PropertyMigration_ISP_Inventory_Clothing', N'PropertyMigration_ISP_Inventory_Electronics', N'TableDailyRecIds', N'TRUSTACCT_dmRegions')


order by t.name asc


--AND I.Object_id = object_id('Person.Address') --Comment for all tables 
--AND I.name = 'IX_Address_PostalCode' --comment for all indexes 
  

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