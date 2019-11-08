SELECT 'GRANT ' + permission_name collate SQL_Latin1_General_CP1_CI_AS + ' ON ' + object_name(major_id) + ' TO ' + pr.name FROM sys.database_permissions p
INNER JOIN sys.database_principals pr ON p.grantee_principal_id = pr.principal_id
WHERE pr.name = 'Corrmedia_CLI'


-- for all roles
SELECT DISTINCT rp.name, 
                ObjectType = rp.type_desc, 
                PermissionType = pm.class_desc, 
                pm.permission_name, 
                pm.state_desc, 
                ObjectType = CASE 
                               WHEN obj.type_desc IS NULL 
                                     OR obj.type_desc = 'SYSTEM_TABLE' THEN 
                               pm.class_desc 
                               ELSE obj.type_desc 
                             END, 
                s.Name as SchemaName,
                [ObjectName] = Isnull(ss.name, Object_name(pm.major_id)) 
FROM   sys.database_principals rp 
       INNER JOIN sys.database_permissions pm 
               ON pm.grantee_principal_id = rp.principal_id 
       LEFT JOIN sys.schemas ss 
              ON pm.major_id = ss.schema_id 
       LEFT JOIN sys.objects obj 
              ON pm.[major_id] = obj.[object_id] 
       LEFT JOIN sys.schemas s
              ON s.schema_id = obj.schema_id
WHERE  rp.type_desc = 'DATABASE_ROLE' 
       AND pm.class_desc <> 'DATABASE' 
ORDER  BY rp.name, 
          rp.type_desc, 
          pm.class_desc 