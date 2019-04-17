--Current setup for init size growth
SELECT 
    name AS FileName, 
    size*1.0/128 AS FileSizeinMB,
    CASE max_size 
        WHEN 0 THEN 'Autogrowth is off.'
        WHEN -1 THEN 'Autogrowth is on.'
        ELSE 'Log file will grow to a maximum size of 2 TB.'
    END,
    growth AS 'GrowthValue',
    'GrowthIncrement' = 
        CASE
            WHEN growth = 0 THEN 'Size is fixed and will not grow.'
            WHEN growth > 0 AND is_percent_growth = 0 
                THEN 'Growth value is in 8-KB pages.'
            ELSE 'Growth value is a percentage.'
        END
FROM tempdb.sys.database_files;
GO
SELECT SUM(unallocated_extent_page_count) AS [free pages], 
(SUM(unallocated_extent_page_count)*1.0/128) AS [free space in MB]
FROM sys.dm_db_file_space_usage;

-- Logspace details
DBCC SQLPERF(LOGSPACE)

-- If the DB won't shrink whatsoever

DBCC FREEPROCCACHE
dBCC FREESYSTEMCACHE('aLL')
CHECKPOINT;
GO
DBCC DROPCLEANBUFFERS;
GO
DBCC FREESESSIONCACHE;
GO

DBCC SHRINKFILE (TEMPdev, 15000);   --- New file size in MB
GO
DBCC SHRINKFILE (TEMPdev2, 15000);   --- New file size in MB
GO
DBCC SHRINKFILE (TEMPdev3, 15000);   --- New file size in MB
GO
DBCC SHRINKFILE (TEMPdev4, 15000);   --- New file size in MB
GO
DBCC SHRINKFILE (TEMPlog, 7000);   --- New file size in MB
GO

-- estimated size 
declare @tempdb_size1 decimal(15,2) = 0
declare @tempdb_size2 decimal(15,2) = 0
declare @tempdb_size3 decimal(15,2) = 0
declare @tempdb_size decimal(15,2) = 0
declare @database_size_info table (
    database_name sysname, database_size decimal(15,2)
)
insert into @database_size_info
select db_name(database_id) database_name, 
SUM (CONVERT (numeric (15,2) , (convert(numeric, size) * 8192)/1048576)) 
from sys.master_files
group by database_id
SELECT * FROM @database_size_info
--10% of the total size of databases greater than 1TB
select @tempdb_size1 = isnull(sum(database_size),0)
from @database_size_info
where database_size >= 1000000
--15% of the total size of databases greater than 100GB and less than 1TB
select @tempdb_size2 = isnull(sum(database_size),0)
from @database_size_info
where database_size >= 100000 and database_size < 1000000
--25% of the total size of databases greater less than 100GB
select @tempdb_size3 = isnull(sum(database_size),0)
from @database_size_info
where database_size < 100000

set @tempdb_size = (@tempdb_size3*0.25)+(@tempdb_size2*0.15)+(@tempdb_size1*0.10)

select @tempdb_size tempdb_estimated_database_size, 
        (@tempdb_size*0.75 ) tempdb_estimated_data_initial_size, 
        (@tempdb_size*0.25 ) tempdb_estimated_log_initial_size




-- First SP_BLITZFirst Test
EXEC [dbo].[sp_BlitzFirst] @ExpertMode = 1, @Seconds = 50

-- whoisactive
--DECLARE @schema VARCHAR(MAX);
EXEC [dbo].[sp_WhoIsActive] --@filter = NULL,               -- sysname
                            --@filter_type = '',            -- varchar(10)
                            --@not_filter = NULL,           -- sysname
                            --@not_filter_type = '',        -- varchar(10)
                            --@show_own_spid = NULL,        -- bit
                            --@show_system_spids = NULL,    -- bit
                            --@show_sleeping_spids = 0,     -- tinyint
                            --@get_full_inner_text = NULL,  -- bit
                            --@get_plans = 0,               -- tinyint
                            --@get_outer_command = NULL,    -- bit
                            --@get_transaction_info = NULL, -- bit
                            --@get_task_info = 0,           -- tinyint
                            --@get_locks = NULL,            -- bit
                            --@get_avg_time = NULL,         -- bit
                            --@get_additional_info = NULL,  -- bit
                            --@find_block_leaders = NULL,   -- bit
                            --@delta_interval = 0,          -- tinyint
                            --@output_column_list = '',     -- varchar(8000)
                            --@sort_order = '',             -- varchar(500)
                            --@format_output = 0,           -- tinyint
                            --@destination_table = '',      -- varchar(4000)
                            --@return_schema = NULL,        -- bit
                            --@schema = @schema OUTPUT,     -- varchar(max)
                            --@help = NULL                  -- bit



-- TempDB FILES:

/* Re-sizing TempDB to 8 GB */

USE [master]; 
GO 
alter database tempdb modify file (name='tempdev', size = 15GB);
alter database tempdb modify file (name='tempLOG', size = 10GB);

GO

/* Adding three additional files */

USE [master];
GO
ALTER DATABASE [tempdb] ADD FILE (NAME = N'tempdev2', FILENAME = N'G:\MSSQL12.MSSQLSERVER\MSSQL\Data\tempdev2.ndf' , SIZE = 10GB , FILEGROWTH = 10%);
ALTER DATABASE [tempdb] ADD FILE (NAME = N'tempdev3', FILENAME = N'G:\MSSQL12.MSSQLSERVER\MSSQL\Data\tempdev3.ndf' , SIZE = 10GB , FILEGROWTH = 10%);
ALTER DATABASE [tempdb] ADD FILE (NAME = N'tempdev4', FILENAME = N'G:\MSSQL12.MSSQLSERVER\MSSQL\Data\tempdev4.ndf' , SIZE = 10GB , FILEGROWTH = 10%);

GO



exec sp_BlitzFirst @seconds=60, @ExpertMode=1;
GO

SELECT sqltext.TEXT,
req.session_id,
req.status,
req.command,
req.cpu_time,
req.total_elapsed_time
FROM sys.dm_exec_requests req
CROSS APPLY sys.dm_exec_sql_text(sql_handle) AS sqltext
