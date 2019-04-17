-- For Specific Tables
--Exec sp_table_privileges @table_name ='%'

-- Vars
DECLARE @PermType NVARCHAR(25)
DECLARE @RoleName NVARCHAR(25)
DECLARE @UserName NVARCHAR(25)
DECLARE @DomainUserName NVARCHAR(25)


SET @PermType = 'Insert'                                  ------- Change This ---------
SET @RoleName = 'devteam'								  ------- Change This ---------
SET @UserName = '%Niroj%'								  ------- Change This ---------



-- Verify if the login exists for the DB user
IF EXISTS(SELECT COUNT(1) FROM SYS.SYSLOGINS WHERE SUSER_SNAME(SID) LIKE @USERNAME)
BEGIN
SET @DomainUserName = (SELECT SUSER_SNAME(SID) FROM SYS.SYSLOGINS WHERE SUSER_SNAME(SID) LIKE @USERNAME);
SELECT 'Login exists for '+QUOTENAME(@DomainUserName) as [Server Login Status];
END 
ELSE  SELECT 'Login Doesn''t Exist.' AS [Server Login Status] 

-- Verify if the user is part of the role
IF EXISTS(SELECT COUNT(1) FROM SYS.DATABASE_ROLE_MEMBERS WHERE USER_NAME(MEMBER_PRINCIPAL_ID) LIKE @USERNAME)
Select QUOTENAME(USER_NAME(MEMBER_PRINCIPAL_ID))+' is a part of the role '+QUOTENAME(USER_NAME(ROLE_PRINCIPAL_ID)) as [Role Membership Result] From SYS.DATABASE_ROLE_MEMBERS WHERE USER_NAME(MEMBER_PRINCIPAL_ID) LIKE @UserName
ELSE SELECT QUOTENAME(USER_NAME(MEMBER_PRINCIPAL_ID))+' is not a part of the role '+QUOTENAME(USER_NAME(ROLE_PRINCIPAL_ID)) as [Role Membership Result] From SYS.DATABASE_ROLE_MEMBERS WHERE USER_NAME(MEMBER_PRINCIPAL_ID) LIKE @UserName


-- Pull in DB level permissions for all users
SELECT CASE WHEN P.state_desc = 'GRANT_WITH_GRANT_OPTION' THEN 'GRANT' ELSE P.state_desc END AS cmd_state,
       P.permission_name,
       'ON '+ CASE P.class_desc
           WHEN 'DATABASE' THEN 'DATABASE::'+QUOTENAME(DB_NAME())
           WHEN 'SCHEMA' THEN 'SCHEMA::'+QUOTENAME(S.name)
           WHEN 'OBJECT_OR_COLUMN' THEN 'OBJECT::'+QUOTENAME(OS.name)+'.'+QUOTENAME(O.name)+
             CASE WHEN P.minor_id <> 0 THEN '('+QUOTENAME(C.name)+')' ELSE '' END
           WHEN 'DATABASE_PRINCIPAL' THEN 
             CASE PR.type_desc 
               WHEN 'SQL_USER' THEN 'USER'
               WHEN 'DATABASE_ROLE' THEN 'ROLE'
               WHEN 'APPLICATION_ROLE' THEN 'APPLICATION ROLE'
             END +'::'+QUOTENAME(PR.name)
           WHEN 'ASSEMBLY' THEN 'ASSEMBLY::'+QUOTENAME(A.name)
           WHEN 'TYPE' THEN 'TYPE::'+QUOTENAME(TS.name)+'.'+QUOTENAME(T.name)
           WHEN 'XML_SCHEMA_COLLECTION' THEN 'XML SCHEMA COLLECTION::'+QUOTENAME(XSS.name)+'.'+QUOTENAME(XSC.name)
           WHEN 'SERVICE_CONTRACT' THEN 'CONTRACT::'+QUOTENAME(SC.name)
           WHEN 'MESSAGE_TYPE' THEN 'MESSAGE TYPE::'+QUOTENAME(SMT.name)
           WHEN 'REMOTE_SERVICE_BINDING' THEN 'REMOTE SERVICE BINDING::'+QUOTENAME(RSB.name)
           WHEN 'ROUTE' THEN 'ROUTE::'+QUOTENAME(R.name)
           WHEN 'SERVICE' THEN 'SERVICE::'+QUOTENAME(SBS.name)
           WHEN 'FULLTEXT_CATALOG' THEN 'FULLTEXT CATALOG::'+QUOTENAME(FC.name)
           WHEN 'FULLTEXT_STOPLIST' THEN 'FULLTEXT STOPLIST::'+QUOTENAME(FS.name)
           WHEN 'SEARCH_PROPERTY_LIST' THEN 'SEARCH PROPERTY LIST::'+QUOTENAME(RSPL.name)
           WHEN 'SYMMETRIC_KEYS' THEN 'SYMMETRIC KEY::'+QUOTENAME(SK.name)
           WHEN 'CERTIFICATE' THEN 'CERTIFICATE::'+QUOTENAME(CER.name)
           WHEN 'ASYMMETRIC_KEY' THEN 'ASYMMETRIC KEY::'+QUOTENAME(AK.name)
         END COLLATE Latin1_General_100_BIN AS securable,
         'TO '+QUOTENAME(DP.name) AS grantee,
         CASE WHEN P.state_desc = 'GRANT_WITH_GRANT_OPTION' THEN 'WITH GRANT OPTION' ELSE '' END AS grant_option,
         'AS '+QUOTENAME(G.name) AS grantor
  FROM sys.database_permissions AS P
  LEFT JOIN sys.schemas AS S
    ON P.major_id = S.schema_id
  LEFT JOIN sys.all_objects AS O
       JOIN sys.schemas AS OS
         ON O.schema_id = OS.schema_id
    ON P.major_id = O.object_id
  LEFT JOIN sys.types AS T
       JOIN sys.schemas AS TS
         ON T.schema_id = TS.schema_id
    ON P.major_id = T.user_type_id
  LEFT JOIN sys.xml_schema_collections AS XSC
       JOIN sys.schemas AS XSS
         ON XSC.schema_id = XSS.schema_id
    ON P.major_id = XSC.xml_collection_id
  LEFT JOIN sys.columns AS C
    ON O.object_id = C.object_id
   AND P.minor_id = C.column_id
  LEFT JOIN sys.database_principals AS PR
    ON P.major_id = PR.principal_id
  LEFT JOIN sys.assemblies AS A
    ON P.major_id = A.assembly_id
  LEFT JOIN sys.service_contracts AS SC
    ON P.major_id = SC.service_contract_id
  LEFT JOIN sys.service_message_types AS SMT
    ON P.major_id = SMT.message_type_id
  LEFT JOIN sys.remote_service_bindings AS RSB
    ON P.major_id = RSB.remote_service_binding_id
  LEFT JOIN sys.services AS SBS
    ON P.major_id = SBS.service_id
  LEFT JOIN sys.routes AS R
    ON P.major_id = R.route_id
  LEFT JOIN sys.fulltext_catalogs AS FC
    ON P.major_id = FC.fulltext_catalog_id
  LEFT JOIN sys.fulltext_stoplists AS FS
    ON P.major_id = FS.stoplist_id
  LEFT JOIN sys.registered_search_property_lists AS RSPL
    ON P.major_id = RSPL.property_list_id
  LEFT JOIN sys.asymmetric_keys AS AK
    ON P.major_id = AK.asymmetric_key_id
  LEFT JOIN sys.certificates AS CER
    ON P.major_id = CER.certificate_id
  LEFT JOIN sys.symmetric_keys AS SK
    ON P.major_id = SK.symmetric_key_id
  JOIN sys.database_principals AS DP
    ON P.grantee_principal_id = DP.principal_id
  JOIN sys.database_principals AS G
    ON P.grantor_principal_id = G.principal_id
	WHERE (dp.name = @RoleName OR P.grantee_principal_id = USER_ID(@DomainUserName))
	AND p.permission_name = @PermType
	--P.grantee_principal_id IN (USER_ID('TestUser1'), USER_ID('TestUser2'));


-- ATG - ADMIN : SCRIPT TO GRANT ACCESS TO ALL OBJECT --
SELECT 'GRANT SELECT, INSERT, UPDATE, DELETE ON [' + NAME + '] TO [' + @RoleName + ']' AS Permission FROM SYSOBJECTS
 WHERE SYSOBJECTS.TYPE = 'U' AND SYSOBJECTS.UID = 1
 --UNION
 --SELECT 'GRANT EXECUTE ON ['+ NAME + '] TO [' + @RoleName + ']' AS Permission FROM SYSOBJECTS
 --WHERE SYSOBJECTS.TYPE = 'p' AND SYSOBJECTS.UID = 1 AND NAME NOT LIKE 'Admin[_]%'
 --UNION
 --SELECT 'GRANT SELECT ON ['+ NAME + '] TO [' + @RoleName + ']' AS Permission FROM SYSOBJECTS
 --WHERE SYSOBJECTS.TYPE = 'v' AND SYSOBJECTS.CATEGORY = 0 AND SYSOBJECTS.UID = 1
