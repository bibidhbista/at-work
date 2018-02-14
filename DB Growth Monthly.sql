SELECT
--[database_name]=
--CASE   
--      WHEN [database_name] = 'RF_pHubPersistent' THEN 'HUBPersistent'
--      WHEN [database_name] = 'RF_pHubStaging' THEN 'HUBStaging'
--	  WHEN	[database_name] = [database_name] THEN [database_name]
--   END,   
[database_name] AS "Database",
DATEPART(year,[backup_start_date]) AS "Year",
DATEPART(month,[backup_start_date]) AS "Month",
max([backup_size]/1024/1024/1024) AS "Backup Size GB",
Convert(Decimal(10,2),AVG([compressed_backup_size]/1024/1024)) AS "Compressed Backup Size MB",		-- comment out convert for added precision
Convert(Decimal(10,2),AVG([backup_size]/[compressed_backup_size])) AS "Compression Ratio" 			-- comment out convert for added precision
FROM msdb.dbo.backupset

WHERE [database_name] IN('HUB','HubCore','HubPersistent','HubStaging','RF_pHUB','RF_pHubPersistent','RF_pHubStaging') AND
[type] = 'D' 

GROUP BY [database_name],DATEPART(month,[backup_start_date]),DATEPART(year,[backup_start_date])
ORDER BY  [year],[database_name],[MONTH]

