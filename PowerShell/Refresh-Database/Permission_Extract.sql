SET NOCOUNT ON

IF not exists (select * FROM tempdb.[sys].[sysobjects] WHERE name='##tbl_db_principals_statements')
BEGIN
	CREATE TABLE ##tbl_db_principals_statements (stmt varchar(max), result_order decimal(4,1));
	CREATE TABLE ##tbl_db_principals_statements_2 (stmt varchar(max), result_order decimal(4,1));
End
ELSE
BEGIN
	TRUNCATE TABLE	##tbl_db_principals_statements;
	TRUNCATE TABLE	##tbl_db_principals_statements_2;
END



-- FOR SERVER LEVEL LOGIN CREATION	  
IF ((SELECT SUBSTRING(convert(sysname, SERVERPROPERTY('productversion')), 1, charindex('.',convert(sysname, SERVERPROPERTY('productversion')))-1)) > 10)
EXEC ('
INSERT INTO ##tbl_db_principals_statements_2 (stmt, result_order)
      SELECT
	  CASE WHEN rm.authentication_type IN (2, 0) /* 2=contained database user with password, 0 =user without login; create users without logins*/ THEN (''IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] = '' + SPACE(1) + '''''''' + [name] + '''''''' + '') BEGIN CREATE USER '' + SPACE(1) + QUOTENAME([name]) + '' WITHOUT LOGIN WITH DEFAULT_SCHEMA = '' + QUOTENAME([default_schema_name]) + SPACE(1) + '', SID = '' + CONVERT(varchar(1000), sid) + SPACE(1) + '' END; '')    
            ELSE (''IF NOT EXISTS (SELECT [NAME] FROM SYS.SYSLOGINS WHERE sid=SUSER_SID(''+''''''''+ [name]+''''''''+'')) BEGIN CREATE LOGIN ''+QUOTENAME(suser_sname([sid]))+'' FROM WINDOWS END;'') 
			END AS [-- SQL STATEMENTS --],
            2.1 AS [-- RESULT ORDER HOLDER --]
      FROM  sys.database_principals AS rm
      WHERE [type] IN (''U'', ''G'') and [name] not in (''GUEST'',''dbo'');/* windows users, sql users, windows groups */')

ELSE IF ((SELECT SUBSTRING(convert(sysname, SERVERPROPERTY('productversion')), 1, charindex('.',convert(sysname, SERVERPROPERTY('productversion')))-1)) IN (9,10))
EXEC ('
INSERT INTO ##tbl_db_principals_statements_2 (stmt, result_order)

      SELECT      (''IF NOT EXISTS (SELECT [NAME] FROM SYS.SYSLOGINS WHERE sid=SUSER_SID(''+''''''''+ [name]+''''''''+'')) BEGIN CREATE LOGIN ''+QUOTENAME(suser_sname([sid]))+'' FROM WINDOWS END;'') 
			 AS [-- SQL STATEMENTS --],
            2.1 AS [-- RESULT ORDER HOLDER --]
      FROM  sys.database_principals AS rm
      WHERE [type] IN (''U'', ''G'') and [name] not in (''GUEST'',''dbo'');')
	
	--SELECT * FROM sys.database_principals WHERE [type] IN ('U', 'S', 'G') and [name] != 'GUEST'
-- FOR DB LEVEL USER CREATION	

IF ((SELECT SUBSTRING(convert(sysname, SERVERPROPERTY('productversion')), 1, charindex('.',convert(sysname, SERVERPROPERTY('productversion')))-1)) > 10)
EXEC ('
INSERT INTO ##tbl_db_principals_statements (stmt, result_order)
      SELECT      
            CASE WHEN rm.authentication_type IN (2, 0) /* 2=contained database user with password, 0 =user without login; create users without logins*/ THEN (''IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] = '' + SPACE(1) + '''''''' + [name] + '''''''' + '') BEGIN CREATE USER '' + SPACE(1) + QUOTENAME([name]) + '' WITHOUT LOGIN WITH DEFAULT_SCHEMA = '' + QUOTENAME([default_schema_name]) + SPACE(1) + '', SID = '' + CONVERT(varchar(1000), sid) + SPACE(1) + '' END; '')
                  ELSE (''IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] = '' + SPACE(1) + '''''''' + [name] + '''''''' + '') BEGIN CREATE USER'' + SPACE(1) + QUOTENAME([name]) + '' FOR LOGIN '' + QUOTENAME([name]) + '' WITH DEFAULT_SCHEMA = '' + QUOTENAME(ISNULL([default_schema_name], ''dbo'')) + SPACE(1) + ''END; '') 
                  END AS [-- SQL STATEMENTS --],
                  3.1 AS [-- RESULT ORDER HOLDER --]
      FROM  sys.database_principals AS rm
      WHERE [type] IN (''U'',''G'') and [name] not in  (''GUEST'',''INFORMATION_SCHEMA'',''sys'')/* windows users, sql users, windows groups */')

ELSE IF ((SELECT SUBSTRING(convert(sysname, SERVERPROPERTY('productversion')), 1, charindex('.',convert(sysname, SERVERPROPERTY('productversion')))-1)) IN (9,10))
EXEC ('
INSERT INTO ##tbl_db_principals_statements (stmt, result_order)
      SELECT      (''IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] = '' + SPACE(1) + '''''''' + [name] + '''''''' + '') BEGIN CREATE USER'' + SPACE(1) + QUOTENAME([name]) + '' FOR LOGIN '' + QUOTENAME([name]) + '' WITH DEFAULT_SCHEMA = '' + QUOTENAME(ISNULL([default_schema_name], ''dbo'')) + SPACE(1) + ''END; '') AS [-- SQL STATEMENTS --],
                  3.1 AS [-- RESULT ORDER HOLDER --]
      FROM  sys.database_principals AS rm
      WHERE [type] IN (''U'',''G'') and [name]  not in  (''GUEST'',''INFORMATION_SCHEMA'',''sys'')/* windows users, sql users, windows groups */')


--SELECT * FROM ##tbl_db_principals_statements
--SELECT * FROM ##tbl_db_principals_statements_2

DECLARE 
    @sql VARCHAR(2048)
    ,@sort INT 

DECLARE tmp CURSOR FOR


/*********************************************/
/*********   DB CONTEXT STATEMENT    *********/
/*********************************************/
SELECT '-- [-- DB CONTEXT --] --' AS [-- SQL STATEMENTS --],
            0 AS [-- RESULT ORDER HOLDER --]
UNION
SELECT      'USE' + SPACE(1) + QUOTENAME(DB_NAME()) AS [-- SQL STATEMENTS --],
            0.1 AS [-- RESULT ORDER HOLDER --]

UNION

SELECT '' AS [-- SQL STATEMENTS --],
            1 AS [-- RESULT ORDER HOLDER --]

UNION

/*********************************************/
/*********     DB USER CREATION      *********/
/*********************************************/

      SELECT '-- [-- SQL LOGINS --] --' AS [-- SQL STATEMENTS --],
                  2 AS [-- RESULT ORDER HOLDER --]
      UNION
	  
      SELECT      
            [stmt],
                  2.1 AS [-- RESULT ORDER HOLDER --]
      FROM  ##tbl_db_principals_statements_2
      --WHERE [type] IN ('U', 'S', 'G') -- windows users, sql users, windows groups
      WHERE [stmt] IS NOT NULL
	  UNION


	  
      SELECT '-- [-- DB USERS --] --' AS [-- SQL STATEMENTS --],
                  3 AS [-- RESULT ORDER HOLDER --]
      UNION
      SELECT      
            [stmt],
                  3.1 AS [-- RESULT ORDER HOLDER --]
      FROM  ##tbl_db_principals_statements
      --WHERE [type] IN ('U', 'S', 'G') -- windows users, sql users, windows groups
      WHERE [stmt] IS NOT NULL

UNION

/*********************************************/
/*********    MAP ORPHANED USERS     *********/
/*********************************************/

SELECT '-- [-- ORPHANED USERS --] --' AS [-- SQL STATEMENTS --],
            4 AS [-- RESULT ORDER HOLDER --]
UNION
SELECT      'ALTER USER [' + rm.name + '] WITH LOGIN = [' + rm.name + ']',
            4.1 AS [-- RESULT ORDER HOLDER --]
FROM  sys.database_principals AS rm
Inner JOIN sys.server_principals as sp
ON rm.name = sp.name COLLATE DATABASE_DEFAULT and rm.sid <> sp.sid
WHERE rm.[type] IN ('U', 'S', 'G') -- windows users, sql users, windows groups
AND rm.name NOT IN ('dbo', 'guest', 'INFORMATION_SCHEMA', 'sys', 'MS_DataCollectorInternalUser')

UNION

/*********************************************/
/*********    DB ROLE PERMISSIONS    *********/
/*********************************************/
SELECT '-- [-- DB ROLES --] --' AS [-- SQL STATEMENTS --],
            5 AS [-- RESULT ORDER HOLDER --]
UNION



SELECT      'IF NOT EXISTS(SELECT USER_NAME(p.grantee_principal_id) FROM sys.database_permissions p WHERE USER_NAME(grantee_principal_id) = '
			+ QUOTENAME(USER_NAME(p.grantee_principal_id), '''')+') BEGIN; CREATE ROLE '
			+ SPACE(1) + QUOTENAME(USER_NAME(p.grantee_principal_id), '[]') + '; END;' AS [-- SQL STATEMENTS --],
            5.1 AS [-- RESULT ORDER HOLDER --]
FROM  sys.database_role_members AS rm
JOIN sys.database_permissions p
ON p.grantee_principal_id = rm.role_principal_id
JOIN sys.database_principals dp
ON p.grantee_principal_id = dp.principal_id WHERE dp.type_desc ='database_role' AND USER_NAME(p.grantee_principal_id) NOT IN ('public') GROUP BY USER_NAME(p.grantee_principal_id)


UNION

SELECT '' AS [-- SQL STATEMENTS --],
            5.2 AS [-- RESULT ORDER HOLDER --]

UNION
SELECT      'EXEC sp_addrolemember @rolename ='
      + SPACE(1) + QUOTENAME(USER_NAME(rm.role_principal_id), '''') + ', @membername =' + SPACE(1) + QUOTENAME(USER_NAME(rm.member_principal_id), '''') AS [-- SQL STATEMENTS --],
            5.3 AS [-- RESULT ORDER HOLDER --]
FROM  sys.database_role_members AS rm
WHERE USER_NAME(rm.member_principal_id) IN (    
                                                                        --get user names on the database
                                                                        SELECT [name]
                                                                        FROM sys.database_principals
                                                                        WHERE [principal_id] > 4 -- 0 to 4 are system users/schemas
                                                                        and [type] IN ('G', 'S', 'U') -- S = SQL user, U = Windows user, G = Windows group
                                                                    )
UNION
--ORDER BY rm.role_principal_id ASC
SELECT '' AS [-- SQL STATEMENTS --],
            5.4 AS [-- RESULT ORDER HOLDER --]

UNION

/*********************************************/
/*********  OBJECT LEVEL PERMISSIONS *********/
/*********************************************/
SELECT '-- [-- OBJECT LEVEL PERMISSIONS --] --' AS [-- SQL STATEMENTS --],
            7.1 AS [-- RESULT ORDER HOLDER --]
UNION
SELECT      CASE 
                  WHEN perm.state <> 'W' THEN perm.state_desc 
                  ELSE 'GRANT'
            END
            + SPACE(1) + perm.permission_name + SPACE(1) + 'ON ' + QUOTENAME(SCHEMA_NAME(obj.schema_id)) + '.' + QUOTENAME(obj.name) --select, execute, etc on specific objects
            + CASE
                        WHEN cl.column_id IS NULL THEN SPACE(0)
                        ELSE '(' + QUOTENAME(cl.name) + ')'
              END
            + SPACE(1) + 'TO' + SPACE(1) + QUOTENAME(USER_NAME(usr.principal_id)) COLLATE database_default
            + CASE 
                        WHEN perm.state <> 'W' THEN SPACE(0)
                        ELSE SPACE(1) + 'WITH GRANT OPTION'
              END
                  AS [-- SQL STATEMENTS --],
            7.2 AS [-- RESULT ORDER HOLDER --]
FROM  
      sys.database_permissions AS perm
            INNER JOIN
      sys.objects AS obj
                  ON perm.major_id = obj.[object_id]
            INNER JOIN
      sys.database_principals AS usr
                  ON perm.grantee_principal_id = usr.principal_id
            LEFT JOIN
      sys.columns AS cl
                  ON cl.column_id = perm.minor_id AND cl.[object_id] = perm.major_id
--WHERE     usr.name = @OldUser
--ORDER BY perm.permission_name ASC, perm.state_desc ASC


UNION

/*********************************************/
/*********  TYPE LEVEL PERMISSIONS *********/
/*********************************************/
SELECT '-- [-- TYPE LEVEL PERMISSIONS --] --' AS [-- SQL STATEMENTS --],
        8 AS [-- RESULT ORDER HOLDER --]
UNION
SELECT  CASE 
            WHEN perm.state <> 'W' THEN perm.state_desc 
            ELSE 'GRANT'
        END
        + SPACE(1) + perm.permission_name + SPACE(1) + 'ON ' + QUOTENAME(SCHEMA_NAME(tp.schema_id)) + '.' + QUOTENAME(tp.name) --select, execute, etc on specific objects
        + SPACE(1) + 'TO' + SPACE(1) + QUOTENAME(USER_NAME(usr.principal_id)) COLLATE database_default
        + CASE 
                WHEN perm.state <> 'W' THEN SPACE(0)
                ELSE SPACE(1) + 'WITH GRANT OPTION'
          END
            AS [-- SQL STATEMENTS --],
        8.1 AS [-- RESULT ORDER HOLDER --]
FROM    
    sys.database_permissions AS perm
        INNER JOIN
    sys.types AS tp
            ON perm.major_id = tp.user_type_id
        INNER JOIN
    sys.database_principals AS usr
            ON perm.grantee_principal_id = usr.principal_id


UNION

SELECT '' AS [-- SQL STATEMENTS --],
      9 AS [-- RESULT ORDER HOLDER --]

UNION

/*********************************************/
/*********    DB LEVEL PERMISSIONS   *********/
/*********************************************/
SELECT '-- [--DB LEVEL PERMISSIONS --] --' AS [-- SQL STATEMENTS --],
            10 AS [-- RESULT ORDER HOLDER --]
UNION
SELECT      CASE 
                  WHEN perm.state <> 'W' THEN perm.state_desc --W=Grant With Grant Option
                  ELSE 'GRANT'
            END
      + SPACE(1) + perm.permission_name --CONNECT, etc
      + SPACE(1) + 'TO' + SPACE(1) + '[' + USER_NAME(usr.principal_id) + ']' COLLATE database_default --TO <user name>
      + CASE 
                  WHEN perm.state <> 'W' THEN SPACE(0) 
                  ELSE SPACE(1) + 'WITH GRANT OPTION' 
        END
            AS [-- SQL STATEMENTS --],
            10.1 AS [-- RESULT ORDER HOLDER --]
FROM  sys.database_permissions AS perm
      INNER JOIN
      sys.database_principals AS usr
      ON perm.grantee_principal_id = usr.principal_id
--WHERE     usr.name = @OldUser

WHERE [perm].[major_id] = 0
      AND [usr].[principal_id] > 4 -- 0 to 4 are system users/schemas
      AND [usr].[type] IN ('G', 'S', 'U') -- S = SQL user, U = Windows user, G = Windows group

UNION

SELECT '' AS [-- SQL STATEMENTS --],
            11 AS [-- RESULT ORDER HOLDER --]

UNION 

SELECT '-- [--DB LEVEL SCHEMA PERMISSIONS --] --' AS [-- SQL STATEMENTS --],
            12 AS [-- RESULT ORDER HOLDER --]
UNION
SELECT      CASE
                  WHEN perm.state <> 'W' THEN perm.state_desc --W=Grant With Grant Option
                  ELSE 'GRANT'
                  END
                        + SPACE(1) + perm.permission_name --CONNECT, etc
                        + SPACE(1) + 'ON' + SPACE(1) + class_desc + '::' COLLATE database_default --TO <user name>
                        + QUOTENAME(SCHEMA_NAME(major_id))
                        + SPACE(1) + 'TO' + SPACE(1) + QUOTENAME(USER_NAME(grantee_principal_id)) COLLATE database_default
                        + CASE
                              WHEN perm.state <> 'W' THEN SPACE(0)
                              ELSE SPACE(1) + 'WITH GRANT OPTION'
                              END
                  AS [-- SQL STATEMENTS --],
            12.1 AS [-- RESULT ORDER HOLDER --]
from sys.database_permissions AS perm
      inner join sys.schemas s
            on perm.major_id = s.schema_id
      inner join sys.database_principals dbprin
            on perm.grantee_principal_id = dbprin.principal_id
WHERE class = 3 --class 3 = schema


ORDER BY [-- RESULT ORDER HOLDER --]


OPEN tmp
FETCH NEXT FROM tmp INTO @sql, @sort
WHILE @@FETCH_STATUS = 0
BEGIN
        PRINT @sql
        FETCH NEXT FROM tmp INTO @sql, @sort    
END

CLOSE tmp
DEALLOCATE tmp 

DROP TABLE ##tbl_db_principals_statements
DROP TABLE ##tbl_db_principals_statements_2


