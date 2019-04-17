-- Scripting Out the Logins, Server Role Assignments, and Server Permissions
-- ************************************************************************************************************************
-- Copyright © 2015 by JP Chen of DatAvail Corporation
-- This script is free for non-commercial purposes with no warranties. 

-- CRITICAL NOTE: You’ll need to change your results to display more characters in the query result.
-- Under Tools –> Options –> Query Results –> SQL Server –> Results to Text to increase the maximum number of characters 
-- returned to 8192 the maximum or to a number high enough to prevent the results being truncated.
-- ************************************************************************************************************************
SET NOCOUNT ON
Declare @LoginName nvarchar(25);
Set @LoginName = 'NE_Med'  -- Desired Search String for specific login name


-- Scripting Out the Logins To Be Created
SELECT 'IF (SUSER_ID('+QUOTENAME(SP.name,'''')+') IS NULL) BEGIN CREATE LOGIN ' +QUOTENAME(SP.name)+
			   CASE 
					WHEN SP.type_desc = 'SQL_LOGIN' THEN ' WITH PASSWORD = ' +CONVERT(NVARCHAR(MAX),SL.password_hash,1)+ ' HASHED, CHECK_EXPIRATION = ' 
						+ CASE WHEN SL.is_expiration_checked = 1 THEN 'ON' ELSE 'OFF' END +', CHECK_POLICY = ' +CASE WHEN SL.is_policy_checked = 1 THEN 'ON,' ELSE 'OFF,' END
					ELSE ' FROM WINDOWS WITH'
				END 
	   +' DEFAULT_DATABASE=[' +SP.default_database_name+ '], DEFAULT_LANGUAGE=[' +SP.default_language_name+ '] END;' COLLATE SQL_Latin1_General_CP1_CI_AS AS [-- Logins To Be Created --]
FROM sys.server_principals AS SP LEFT JOIN sys.sql_logins AS SL
		ON SP.principal_id = SL.principal_id
WHERE SP.type IN ('S','G','U')
		AND SP.name NOT LIKE '##%##'
		AND SP.name NOT LIKE 'NT AUTHORITY%'
		AND SP.name NOT LIKE 'NT SERVICE%'
		AND SP.name <> ('sa')
		AND SP.NAME LIKE ('%'+@loginName+'%');
		
-- Scripting Out the Role Membership to Be Added
SELECT 
'EXEC master..sp_addsrvrolemember @loginame = N''' + SL.name + ''', @rolename = N''' + SR.name + '''
' AS [-- Server Roles the Logins Need to be Added --]
FROM master.sys.server_role_members SRM
	JOIN master.sys.server_principals SR ON SR.principal_id = SRM.role_principal_id
	JOIN master.sys.server_principals SL ON SL.principal_id = SRM.member_principal_id
WHERE SL.type IN ('S','G','U')
		AND SL.name NOT LIKE '##%##'
		AND SL.name NOT LIKE 'NT AUTHORITY%'
		AND SL.name NOT LIKE 'NT SERVICE%'
		AND SL.name <> ('sa')
		AND SL.NAME LIKE ('%'+@loginName+'%');


-- Scripting out the Permissions to Be Granted
SELECT 
	CASE WHEN SrvPerm.state_desc <> 'GRANT_WITH_GRANT_OPTION' 
		THEN SrvPerm.state_desc 
		ELSE 'GRANT' 
	END
    + ' ' + SrvPerm.permission_name + ' TO [' + SP.name + ']' + 
	CASE WHEN SrvPerm.state_desc <> 'GRANT_WITH_GRANT_OPTION' 
		THEN '' 
		ELSE ' WITH GRANT OPTION' 
	END collate database_default AS [-- Server Level Permissions to Be Granted --] 
FROM sys.server_permissions AS SrvPerm 
	JOIN sys.server_principals AS SP ON SrvPerm.grantee_principal_id = SP.principal_id 
WHERE   SP.type IN ( 'S', 'U', 'G' ) 
		AND SP.name NOT LIKE '##%##'
		AND SP.name NOT LIKE 'NT AUTHORITY%'
		AND SP.name NOT LIKE 'NT SERVICE%'
		AND SP.name <> ('sa')
		AND SP.NAME LIKE ('%'+@loginName+'%');

SET NOCOUNT OFF




-- Scripting Out the DB Role Membership to Be Added
SELECT 
'EXEC master..sp_addsrvrolemember @loginame = N''' + DU.name + ''', @rolename = N''' + DR.name + '''
' AS [-- DB Roles the Logins Need to be Added --]
FROM master.sys.database_role_members DRM
	JOIN master.sys.database_principals DR ON DR.principal_id = DRM.role_principal_id
	JOIN master.sys.database_principals DU ON DU.principal_id = DRM.member_principal_id
WHERE	DU.name NOT LIKE '##%##'
		AND DU.name NOT LIKE 'NT AUTHORITY%'
		AND DU.name NOT LIKE 'NT SERVICE%'
		AND DU.name <> ('sa')
		AND DU.NAME LIKE ('%'+@loginName+'%');


-- Scripting out the Permissions to Be Granted
SELECT 
	CASE WHEN SrvPerm.state_desc <> 'GRANT_WITH_GRANT_OPTION' 
		THEN SrvPerm.state_desc 
		ELSE 'GRANT' 
	END
    + ' ' + SrvPerm.permission_name + ' TO [' + SP.name + ']' + 
	CASE WHEN SrvPerm.state_desc <> 'GRANT_WITH_GRANT_OPTION' 
		THEN '' 
		ELSE ' WITH GRANT OPTION' 
	END collate database_default AS [-- Server Level Permissions to Be Granted --] 
FROM sys.server_permissions AS SrvPerm 
	JOIN sys.server_principals AS SP ON SrvPerm.grantee_principal_id = SP.principal_id 
WHERE   SP.type IN ( 'S', 'U', 'G' ) 
		AND SP.name NOT LIKE '##%##'
		AND SP.name NOT LIKE 'NT AUTHORITY%'
		AND SP.name NOT LIKE 'NT SERVICE%'
		AND SP.name <> ('sa')
		AND SP.NAME LIKE ('%'+@loginName+'%');

SET NOCOUNT OFF











/**
-- DB Level --
SELECT 
        CASE WHEN rm.authentication_type IN (2, 0) /* 2=contained database user with password, 0 =user without login; create users without logins*/ 
			THEN ('IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] = ' + SPACE(1) + '''' + [name] + '''' + ') BEGIN CREATE USER ' + SPACE(1) + QUOTENAME([name]) + ' WITHOUT LOGIN WITH DEFAULT_SCHEMA = ' + QUOTENAME([default_schema_name]) + SPACE(1) + ', SID = ' + CONVERT(varchar(1000), sid) + SPACE(1) + ' END; ')
            ELSE ('IF NOT EXISTS (SELECT [name] FROM sys.database_principals WHERE [name] = ' + SPACE(1) + '''' + [name] + '''' + ') BEGIN CREATE USER' + SPACE(1) + QUOTENAME([name]) + ' FOR LOGIN ' + QUOTENAME([name]) + ' WITH DEFAULT_SCHEMA = ' + QUOTENAME(ISNULL([default_schema_name], 'dbo')) + SPACE(1) + 'END; ') 
		END AS [-- SQL STATEMENTS --]
FROM  sys.database_principals AS rm
      WHERE [type] IN ('U','G') 
	  and [name] not in  ('GUEST','INFORMATION_SCHEMA','sys')/* windows users, sql users, windows groups */
	  and [name] LIKE ('%'+@loginName+'%');
**/
