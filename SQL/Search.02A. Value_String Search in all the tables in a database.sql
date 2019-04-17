DECLARE @SEARCHSTR NVARCHAR(max)
SET @SEARCHSTR ='nationalParameters'-- change this to your search string to find
BEGIN
		  CREATE TABLE #results (
				  columnname NVARCHAR(370),
				  columnvalue NVARCHAR(3630)
		  )

		  SET nocount ON

		  DECLARE @TableName NVARCHAR(256),
		  @ColumnName NVARCHAR(128),
		  @SearchStr2 NVARCHAR(110)

		  SET @TableName = ''
		  SET @SearchStr2 = Quotename('%' + @SearchStr + '%', '''')

		  WHILE @TableName IS NOT NULL
		  BEGIN
			  SET @ColumnName = ''
			  SET @TableName = (SELECT Min(Quotename(table_schema) + '.'
								+ Quotename(table_name))
			  FROM information_schema.tables
			  WHERE table_type = 'BASE TABLE'
					AND Quotename(table_schema) + '.'
					+ Quotename(table_name) > @TableName
					 AND Objectproperty(Object_id(Quotename(
					table_schema
					) +
					'.'
					+ Quotename(
					table_name
					)),
					'IsMSShipped') =
					0)

			  WHILE ( @TableName IS NOT NULL )
			  AND ( @ColumnName IS NOT NULL )
			  BEGIN
				  SET @ColumnName = (SELECT Min(Quotename(column_name))
				  FROM information_schema.columns
				  WHERE table_schema = Parsename(@TableName, 2
						)
						AND table_name = Parsename(@TableName,
						1)
						AND data_type IN ( 'char', 'varchar',
						'nchar',
						'nvarchar' )
						AND Quotename(column_name) >
						@ColumnName)

			  IF @ColumnName IS NOT NULL
			  BEGIN
					  INSERT INTO #results
					  EXEC ( 'SELECT ''' + @TableName + '.' + @ColumnName +
					  ''', LEFT(' +
					  @ColumnName
					  + ', 3630) FROM ' + @TableName + ' (NOLOCK) ' + ' WHERE ' +
					  @ColumnName
					  +
					  ' LIKE ' +
					  @SearchStr2 )
			  END
		  END
		END

		  SELECT columnname,
		  columnvalue
		  FROM #results

		  DROP TABLE [#results]
END
