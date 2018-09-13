USE dbatools
select * from [dbo].[BlitzFirst] Order by CheckDate DESC --00:00:02
select * from [dbo].[BlitzCache] Order by CheckDate DESC --
select * from [dbo].[BlitzFirst_PerfmonStats_Deltas_Filtered] Order by CheckDate desc
SELECT * FROM [dbo].[BlitzFirst_WaitStats_Deltas_Filtered] Order by CheckDate DESC -- longest


--check date is populated from BlitzFirst DateRun
SELECT checkdate FROM [dbo].[BlitzFirst] Order by CheckDate desc


Select * from [dbo].[Summary_DbSize] Order BY daterun desc
Select * from [dbo].[Summary_TableSizeInfo] Order by RunDateTime desc


EXEC sp_updatestats
USE ATGDbMon

Select * from [dbo].[vw_DrivePerformance]
Select * from [dbo].[vw_DriveSize]

Select * from [dbo].[vw_Processor_Time_avg]
Select * from [dbo].[vw_SummarySlowQueries]

Select * from sys.dm_os_spinlock_stats Order by spins DESC
SELECT * FROM sys.dm_xe_map_values
WHERE name = 'spinlock_types'
AND map_value = 'LOCK_HASH'
GO
 
