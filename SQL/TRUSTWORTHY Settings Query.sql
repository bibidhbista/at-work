/*
Checklist for Stored procs that use EXECUTE AS 
			1. The databases ETL_Maintenance, Products_Interface, and Products_Reporting must have SET TRUSTWORTHY ON
			2. The owner of Products_Interface and Products_Reporting must be the same as Master
			3. The account under which we EXECUTE AS (FHLBDM\ETLUser) needs to be a database/server principal (which is already the case).
			4. GRANT EXECUTE permission to those users or groups that will call this stored procedure
			5. GRANT IMPERSONATE as ETLUser permission to those users or groups that will call this stored procedure
				use [master]
				GO
				GRANT IMPERSONATE ON LOGIN::[FHLBDM\ETLUser] TO [FHLBDM\G-FHLB-Developers]
				GO			
*/


-- Query Trustworthy setting on the server

SELECT SUSER_SNAME(owner_sid) AS DBOWNER, d.name AS DATABASENAME
FROM sys.server_principals r
INNER JOIN sys.server_role_members m ON r.principal_id = m.role_principal_id
INNER JOIN sys.server_principals p ON
p.principal_id = m.member_principal_id
inner join sys.databases d on suser_sname(d.owner_sid) = p.name
WHERE is_trustworthy_on = 1
 AND d.name NOT IN ('MSDB') and r.type = 'R' and r.name = N'sysadmin'


ALTER DATABASE Products_Interface SET TRUSTWORTHY ON
ALTER DATABASE Products_Reporting SET TRUSTWORTHY ON
ALTER DATABASE ETL_Maintenance SET TRUSTWORTHY ON

