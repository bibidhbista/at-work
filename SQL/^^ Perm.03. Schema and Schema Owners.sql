SELECT
s.name AS [Name],
s.schema_id AS [ID],
ISNULL(dp1.name, N'') AS [Owner],
CAST(
      case when s.name in ('dbo','guest','INFORMATION_SCHEMA','sys','db_owner','db_accessadmin','db_securityadmin','db_ddladmin','db_backupoperator','db_datareader','db_datawriter','db_denydatareader', 'db_denydatawriter') then 1 else 0 end AS bit) AS [IsSystemObject]
FROM
sys.schemas AS s
LEFT OUTER JOIN sys.database_principals AS dp1 
   ON dp1.principal_id = s.principal_id
