SELECT 'GRANT ' + permission_name collate SQL_Latin1_General_CP1_CI_AS + ' ON ' + object_name(major_id) + ' TO ' + pr.name FROM sys.database_permissions p
INNER JOIN sys.database_principals pr ON p.grantee_principal_id = pr.principal_id
WHERE pr.name = 'Corrmedia_CLI'
