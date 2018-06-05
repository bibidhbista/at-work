-- HAS PERMS CHECK for the current account or a specific account

--EXECUTE AS LOGIN = 'AccountNameHere';
DECLARE @RESULT INT;
SET @RESULT = HAS_PERMS_BY_NAME(NULL, NULL,'ALTER ANY EVENT SESSION');
SELECT CASE WHEN @RESULT='1' THEN 'YES'
ELSE 'NO'
END
AS [hasPermissions?];
--REVERT;


-- change the specific permissions names to find out principals with specific rights
SELECT
        'Owner-is-Principal'  AS [Type-That-Owns-Permission],
        NULL                  AS [Role-Name],
        prin.name             AS [Owner-Name],

        perm.permission_name
            COLLATE Latin1_General_CI_AS_KS_WS
            AS [Permission-Name]
    FROM
             sys.server_permissions  AS perm
        JOIN sys.server_principals   AS prin

            ON prin.principal_id = perm.grantee_principal_id
    WHERE
        perm.permission_name IN
            ('ALTER ANY EVENT SESSION',
            'VIEW SERVER STATE',
            'CONTROL SERVER')

			UNION ALL

-- Plus check for members of the 'sysadmin' fixed server role,
-- because 'sysadmin' includes the 'CONTROL SERVER' permission.
SELECT
        'Owner-is-Role',
        prin.name,  -- [Role-Name]

        CAST( (IsNull(pri2.name, N'No members'))
            AS nvarchar(128)),

        NULL
    FROM
                         sys.server_role_members  AS rolm
        RIGHT OUTER JOIN sys.server_principals    AS prin

            ON prin.principal_id = rolm.role_principal_id

        LEFT OUTER JOIN sys.server_principals     AS pri2

            ON rolm.member_principal_id = pri2.principal_id
    WHERE
        prin.name = 'sysadmin'
    ORDER BY
        1,2,3,4;