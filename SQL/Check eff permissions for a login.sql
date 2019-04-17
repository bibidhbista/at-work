-- For table/sp/view permissions
EXECUTE AS LOGIN = 'dm\cmagee'

SELECT SCHEMA_NAME(schema_id) + '.' + name TableName
, type_desc
, HAS_PERMS_BY_NAME(SCHEMA_NAME(schema_id) + '.' + name,
'OBJECT', 'SELECT') AS have_select
, HAS_PERMS_BY_NAME(SCHEMA_NAME(schema_id) + '.' + name,
'OBJECT', 'UPDATE') AS have_update
, HAS_PERMS_BY_NAME(SCHEMA_NAME(schema_id) + '.' + name,
'OBJECT', 'INSERT') AS have_insert
, HAS_PERMS_BY_NAME(SCHEMA_NAME(schema_id) + '.' + name,
'OBJECT', 'DELETE') AS have_delete
, HAS_PERMS_BY_NAME(SCHEMA_NAME(schema_id) + '.' + name,
'OBJECT', 'EXECUTE') AS have_execute
FROM sys.all_objects
WHERE type_desc IN ('USER_TABLE', 'SQL_STORED_PROCEDURE', 'VIEW')
AND SCHEMA_NAME(schema_id) NOT IN ('sys', 'INFORMATION_SCHEMA')
ORDER BY type_desc, tablename
REVERT;

-- DB Level
EXECUTE as user = 'dm\Cmagee' -- Set this to the user name you wish to check
SELECT USER_NAME()
select * from fn_my_permissions(null, 'DATABASE') 
order by subentity_name, permission_name
REVERT

-- specific SP 
EXECUTE AS user = 'dm\Cmagee'
SELECT SUSER_NAME(), USER_NAME();
select name, 
    has_perms_by_name(name, 'OBJECT', 'EXECUTE') as has_execute

from sys.procedures
where name = 'uspGetAdvanceTicketRate'; -- take this out for non specific sp level permissions
revert;


