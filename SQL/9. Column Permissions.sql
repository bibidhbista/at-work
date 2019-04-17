SELECT
  p.name AS User_Name
, dp.permission_name
, dp.state_desc AS Permission_State
, c.name AS ColumnName
, OBJECT_NAME(o.object_id) AS TabName
FROM sys.database_permissions dp
INNER JOIN Sys.objects O
     ON dp.major_id = o.object_id
INNER JOIN sys.columns C
     ON c.object_id = O.object_id
        AND c.column_id = dp.minor_id
INNER JOIN sys.database_principals P
     ON p.principal_id = dp.grantee_principal_id
--WHERE p.Name = 'G-APPS-AHP Full'
order by TabName, C.Name 
