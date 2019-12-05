Create PROCEDURE [dbo].[Admin_LS_DbsPastThreshhold]

AS

select DB,
	FilePath,
	LastCopiedFile,
	LastRestoredFile,
	DATEDIFF(n,CurrentUtcDt,LastCopyDt) as CopyLatency,
	DATEDIFF(n,CurrentUtcDt,LastRestoreDt) as RestoreLatency
from
	(select DB,
		GETUTCDATE() as CurrentUtcDt,
		convert(datetime,substring(LastCopyDtString,5,2) + '/' + substring(LastCopyDtString,7,2) + '/' + substring(LastCopyDtString,1,4) + ' ' + substring(LastCopyDtString,9,2) + ':' + substring(LastCopyDtString,11,2) + ':' + substring(LastCopyDtString,13,2)) as LastCopyDt,
		convert(datetime,substring(LastRestoreDtString,5,2) + '/' + substring(LastRestoreDtString,7,2) + '/' + substring(LastRestoreDtString,1,4) + ' ' + substring(LastRestoreDtString,9,2) + ':' + substring(LastRestoreDtString,11,2) + ':' + substring(LastRestoreDtString,13,2)) as LastRestoreDt,
		FilePath,
		LastCopiedFile,
		LastRestoredFile
	from
		(
		select 
			secondary_database as DB,  
			reverse(substring(reverse(last_copied_file), 5, 14)) as LastCopyDtString,
			reverse(substring(reverse(last_restored_file), 5, 14)) as LastRestoreDtString,
			SUBSTRING(last_copied_file, (len(last_copied_file)-CHARINDEX('\',REVERSE(last_copied_file))+2), CHARINDEX('\',REVERSE(last_copied_file))-1) as LastCopiedFile,
			SUBSTRING(last_restored_file, (len(last_restored_file)-CHARINDEX('\',REVERSE(last_restored_file))+2), CHARINDEX('\',REVERSE(last_restored_file))-1) as LastRestoredFile,
			substring(last_copied_file,1,len(last_copied_file)-charindex('\',reverse(last_copied_file),1)+1) as FilePath
		from msdb.dbo.log_shipping_monitor_secondary
		) a
	) b
where 
	DATEDIFF(n,CurrentUtcDt,LastCopyDt) < -30 or
	DATEDIFF(n,CurrentUtcDt,LastRestoreDt) < -300



GO