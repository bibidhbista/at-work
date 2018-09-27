SELECT
--[database_name]=
--CASE   
--      WHEN [database_name] = 'RF_pHubPersistent' THEN 'HUBPersistent'
--      WHEN [database_name] = 'RF_pHubStaging' THEN 'HUBStaging'
--	  WHEN	[database_name] = [database_name] THEN [database_name]
--   END,   
[database_name] AS "Database",
DATEPART(dd,[backup_start_date]) AS "day",
DATEPART(month,[backup_start_date]) AS "Month",
DATEPART(year,[backup_start_date]) AS "year",
max([backup_size]/1024/1024/1024) AS "Backup Size GB",
Convert(Decimal(10,2),AVG([compressed_backup_size]/1024/1024)) AS "Compressed Backup Size MB",		-- comment out convert for added precision
Convert(Decimal(10,2),AVG([backup_size]/[compressed_backup_size])) AS "Compression Ratio" 			-- comment out convert for added precision
FROM msdb.dbo.backupset

WHERE [database_name] IN('HUB','HubCore','HubPersistent','HubStaging','Infocheck','InfoGov') AND --'RF_pHUB','RF_pHubPersistent','RF_pHubStaging') AND
[type] = 'D'  --AND DATEPART(dd,[backup_start_date]) IN('4') 
AND DATEPART(month,[backup_start_date]) ='12'

GROUP BY [database_name],DATEPART(month,[backup_start_date]),DATEPART(day,[backup_start_date]),DATEPART(year,[backup_start_date])
ORDER BY [database_name],[MONTH],[day],[year]



SELECT * FROM msdb.dbo.[backupset] ORDER BY [backup_start_date] desc