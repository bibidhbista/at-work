CREATE TABLE #VLF_temp 
(
	RecoveryUnitID int
	, FileID varchar(3) 
	, FileSize numeric(20,0)
	, StartOffset bigint 
	, FSeqNo bigint 
	, Status char(1)
	, Parity varchar(4) 
	, CreateLSN numeric(25,0)
)

CREATE TABLE #VLF_db_total_temp
(
	DatabaseName sysname 
	, LogiFilename sysname
	, PhysFileName sysname
	, AVG_VLF_Size_MB DECIMAL(12,2)
	, vlf_count int
	, log_size_mb FLOAT
	, log_growth_mb FLOAT
)

IF (SELECT LEFT(cast(serverproperty('ProductVersion') as varchar),2)) in ('8.','9.','10') BEGIN
	ALTER TABLE #VLF_temp DROP COLUMN RecoveryUnitID
END

DECLARE db_cursor CURSOR READ_ONLY FOR 
SELECT name FROM sys.databases
WHERE State = 0

DECLARE @name sysname, @stmt varchar(40)

OPEN db_cursor

FETCH NEXT FROM db_cursor INTO @name

WHILE (@@fetch_status <> -1) BEGIN
	IF (@@fetch_status <> -2) BEGIN
		INSERT INTO #VLF_temp
		EXEC ('DBCC LOGINFO ([' + @name + ']) WITH NO_INFOMSGS')

		INSERT INTO #VLF_db_total_temp (DatabaseName, LogiFilename, PhysFileName, vlf_count, AVG_VLF_Size_MB, log_size_mb, log_growth_mb)
		SELECT DatabaseName = @name
			, LogiFilename = mf.name
			, PhysFileName = mf.physical_name
			, vlf_count = COUNT(*)
			, AVG_VLF_Size_MB = (AVG(FileSize)/1024)/1024
			, log_size_mb = (mf.size * 8)/1024 
			, log_growth_mb = CASE mf.is_percent_growth
									WHEN 1 THEN (mf.size * 8)/1024 * mf.growth/100
									WHEN 0 THEN  (mf.growth * 8)/1024 
									END
		FROM #VLF_temp vt
			INNER JOIN sys.master_files mf ON mf.database_id = db_id(@name) AND mf.file_id = vt.fileid
		GROUP BY mf.name, mf.physical_name,mf.size,mf.growth,mf.is_percent_growth;           

		TRUNCATE TABLE #VLF_temp           
	END

	FETCH NEXT FROM db_cursor INTO @name
END

CLOSE db_cursor
DEALLOCATE db_cursor

SELECT * 
	, USEDB = 'USE [' + DatabaseName + ']' 
	, CP = 'CHECKPOINT'
	, ShrinkZero = 'DBCC SHRINKFILE (N''' + LogiFileName + ''' , 0)'
	, GrowBack = 'ALTER DATABASE [' + DatabaseName + '] MODIFY FILE ( NAME = N''' + LogiFileName + ''', SIZE = ' + CAST(log_size_mb AS VARCHAR(20)) + 'MB ) --I split this up when over 10,000 MB'
	, ChangeGrowth = CASE --Note, never gets up to the 8000 MB I recommend for manual growths, but still 250 MB VLFs
						WHEN DatabaseName = 'tempdb' THEN ''
						WHEN log_size_mb <= 128 THEN 'ALTER DATABASE [' + DatabaseName + '] MODIFY FILE ( NAME = N''' + LogiFileName + ''', FILEGROWTH = 32MB )'
						WHEN log_size_mb <= 512 THEN 'ALTER DATABASE [' + DatabaseName + '] MODIFY FILE ( NAME = N''' + LogiFileName + ''', FILEGROWTH = 128MB )'
						WHEN log_size_mb <= 4000 THEN 'ALTER DATABASE [' + DatabaseName + '] MODIFY FILE ( NAME = N''' + LogiFileName + ''', FILEGROWTH = 1000MB )'
						WHEN log_size_mb <= 16000 THEN 'ALTER DATABASE [' + DatabaseName + '] MODIFY FILE ( NAME = N''' + LogiFileName + ''', FILEGROWTH = 1000MB )'
						ELSE 'ALTER DATABASE [' + DatabaseName + '] MODIFY FILE ( NAME = N''' + LogiFileName + ''', FILEGROWTH = 1000MB )'
						END
FROM #VLF_db_total_temp
--WHERE (vlf_count > 50 
--		AND Avg_VLF_Size_MB < vlf_count / 3) 
--	OR (vlf_count > 250
--		AND AVG_VLF_Size_MB < vlf_count / 2)
ORDER BY vlf_count DESC 

DROP TABLE #VLF_temp 
DROP TABLE #VLF_db_total_temp