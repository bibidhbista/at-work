CREATE TABLE #logins
    (
     databasename sysname,
	 sid VARBINARY(MAX),
     login_name NVARCHAR(100)
     
    )
    

-- Logins exist but not mapped to any db users on the current db
INSERT INTO #logins
    EXEC sp_MSforeachdb @command1 = N'
	    USE [?]
		SELECT 
				db_name(),
				SL.sid,
				SL.name				
		FROM
				sys.syslogins AS SL LEFT JOIN
				sys.sysusers SU ON
				SL.sid = SU.sid 
		WHERE
				SU.sid IS NULL' 
   
-- join on all the db users list for entire list of logins that have not been mapeped to a db user

--filter out system users ** -- filter out sys db users
SELECT
    SL.sid,
    SL.status,
    SL.name,
    SL.dbname,
    SL.password,
    SL.loginname,
    L.databasename,
    L.sid,
    L.login_name	
FROM
    sys.syslogins SL LEFT JOIN
    #logins L
        ON SL.sid = L.sid
WHERE 
	SL.dbname NOT IN ('master')
    

DROP TABLE #logins


select * from master.sys.server_principals
