--SET DATEFORMAT mmddyyyy

DECLARE
@table      VARCHAR(128),
@schema      VARCHAR(128),
@filename   VARCHAR(128),
@begindate  DATETIME,
@enddate    DATETIME,
@sql        VARCHAR(500)

-- For timestamp
SET @begindate = DATEADD(d,0 ,CONVERT(VARCHAR,GETDATE(),101))
--SET @enddate   = DATEADD(d, 0 ,CONVERT(VARCHAR,GETDATE(),101)) 

DECLARE c1 CURSOR FOR 
SELECT t.name ,s.name
  FROM sys.tables AS t
  INNER JOIN sys.schemas AS s
  ON t.[schema_id] = s.[schema_id]
  
  where t.name not like '%exclusionlist%'								------------ CHANGE FILTERS -------------
  and t.name not like '%dmoptions%'										------------ CHANGE FILTERS -------------
  and t.name not like '%WorkTable%'										------------ CHANGE FILTERS -------------

--loop thru all the tables
OPEN c1
FETCH next FROM c1 INTO @table,@schema
WHILE @@fetch_status <> -1

BEGIN

SET @filename = 'C:\bcp\' + @table + '_' + CONVERT(VARCHAR,@begindate,112) + '.bcp' 
SET @sql = DB_NAME()+'.'+@schema+'.'+ @table 

--put it all together
SET @sql = 'bcp ' + @sql + ' in "' + @filename + '" -T -N -E -S'+ @@servername +' >> bcpin.log'
PRINT @sql


--run it?
--EXEC xp_CmdShell @sql, NO_OUTPUT

FETCH next FROM c1 INTO @table,@schema
END
CLOSE c1
DEALLOCATE c1