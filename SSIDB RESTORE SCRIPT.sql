-- check if a master key has been created
select Count(*) from sys.symmetric_keys where name like '%DatabaseMasterKey%'


/* 
My script for restoring SSISDB to a SQL Server 2016 SP1 instance of SQL Server. 
I followed the instructions found at https://msdn.microsoft.com/en-us/library/hh213291(v=sql.130).aspx 
Hope this helps, 
Andy Leonard 
*** Action is required where you see three asterisks “***'' 
*/ 
-- CREATE the ##ms_ssisservercleanupjoblogin## loginIF it does NOT already exist. USE [master]go
PRINT '##ms_ssisservercleanupjoblogin## login' IF NOT EXISTS
( 
       SELECT [name] 
       FROM   sys.sql_logins 
       WHERE  [name] = '##ms_ssisservercleanupjoblogin##') 
BEGIN 
  PRINT ' – creating the ##ms_ssisservercleanupjoblogin## login' 
  -- *** change this
  CREATE login [##MS_SSISServerCleanupJobLogin##] WITH password=N'dwehrjfirgmxefae=kxomukf7fnv3pow/zqpj', default_database=[master] , 
    default_language=[us_english] , 
    check_expiration=OFF , 
    check_policy=OFF 
  PRINT ' – ##ms_ssisservercleanupjoblogin## login created' 
END 
ELSE 
PRINT ' – ##ms_ssisservercleanupjoblogin## already EXISTS.'
GO
PRINT ''
PRINT ' – disabling the ##ms_ssisservercleanupjoblogin## login'
ALTER login [##MS_SSISServerCleanupJobLogin##] disable
PRINT ' – ##ms_ssisservercleanupjoblogin## login disabled'
GO


USE [master]
GO
SET ansi_nulls ON
GO
SET quoted_identifier ON
PRINT 'dbo.sp_ssis_startup stored procedure'IF EXISTS
( 
       SELECT s.NAME + '.' + p.NAME 
       FROM   sys.procedures p 
       JOIN   sys.schemas s 
       ON     s.[schema_id] = p.[schema_id] 
       WHERE  s.[name] = 'dbo' 
       AND    p.NAME = 'sp_ssis_startup') 
BEGIN 
  PRINT ' – dropping dbo.sp_ssis_startup stored procedure' 
DROP PROCEDURE [dbo].[sp_ssis_startup] 
PRINT ' – dbo.sp_ssis_startup stored PROCEDURE dropped' 
END
PRINT ' – creating dbo.sp_ssis_startup stored procedure'
GO
CREATE PROCEDURE [dbo].[sp_ssis_startup] 
AS 
  SET nocount ON 
  /* Currently, the IS Store name is 'SSISDB' */ 
  IF Db_id('ssisdb') IS NULL 
  RETURN 
  IF NOT EXISTS 
  ( 
         SELECT [NAME] 
         FROM   [SSISDB].sys.procedures 
         WHERE  [NAME]=N'startup') 
  RETURN 
  /*Invoke the procedure in SSISDB  */ 
  /* Use dynamic sql to handle AlwaysOn non-readable mode*/ 
  DECLARE @script NVARCHAR(500) 
  SET @script = N'exec [SSISDB].[catalog].[startup]' 
  EXECUTE sp_executesql @script
  GO
  PRINT ' – dbo.sp_ssis_startup stored PROCEDURE created'
  PRINT ''
  
  
  USE master
  PRINT 'enabling sqlclr'
  EXEC sp_configure 'clr enabled',1 RECONFIGURE
  PRINT 'sqlclr enabled'
  PRINT ''
  PRINT 'ms_sqlenablesystemassemblyloadingkey asymetric key'IF NOT EXISTS
( 
       SELECT [name] 
       FROM   sys.asymmetric_keys 
       WHERE  [name] = 'ms_sqlenablesystemassemblyloadingkey') 
BEGIN 
  PRINT ' – creating ms_sqlenablesystemassemblyloadingkey' 
  -- *** CHECK this  
  CREATE asymmetric KEY ms_sqlenablesystemassemblyloadingkey FROM executable FILE = ?'E:\program files\microsoft sql server\130\dts\binn\microsoft.sqlserver.integrationservices.server.dll' 
     
  PRINT ' – ms_sqlenablesystemassemblyloadingkey created' 
END 
ELSE 

PRINT ' – ms_sqlenablesystemassemblyloadingkey already EXISTS.'
GO
PRINT ''
PRINT 'ms_sqlenablesystemassemblyloadinguser sql login'

IF NOT EXISTS
( 
       SELECT [name] 
       FROM   sys.sql_logins 
       WHERE  [name] = 'ms_sqlenablesystemassemblyloadinguser') 
BEGIN 
  PRINT ' – attempting TO CREATE ms_sqlenablesystemassemblyloadinguser sql login' 
  BEGIN try 
    CREATE login ms_sqlenablesystemassemblyloadinguser FROM asymmetric KEY ms_sqlenablesystemassemblyloadingkey
    PRINT ' – ms_sqlenablesystemassemblyloadinguser sql login created' 
    PRINT ' – granting unsafe assembly permission TO ms_sqlenablesystemassemblyloadinguser' GRANT unsafe assembly TO ms_sqlenablesystemassemblyloadinguser
    PRINT ' – ms_sqlenablesystemassemblyloadinguser granted unsafe assembly permission' 
  END try 
  BEGIN catch 
    PRINT ' – something went wrong 
    WHILE attempting to CREATE the ms_sqlenablesystemassemblyloadinguser sql login, but it''s probably ok…' -- nothing FOR now
  END catch 
END 
ELSE 
PRINT ' – ms_sqlenablesystemassemblyloadinguser sql login already EXISTS.'
GO
PRINT ''

PRINT 'restoring ssisdb'

USE [master]
BEGIN try
  ALTER DATABASE [SSISDB] 
  SET single_user WITH ROLLBACK immediate 
END try

BEGIN catch 
  -- ignore the error (usually happens because the DATABASE doesn't exist…) 
 -- *** CHECK this

END catch

RESTORE DATABASE [SSISDB] 
-- *** check this, please – Andy 
FROM DISK = N'E:\Andy\backup\SSISDB_SP1.bak' 
  WITH FILE = 1, 
   MOVE N'data' To N'E:\Program Files\Microsoft SQL Server\MSSQL13.TEST\MSSQL\DATA\SSISDB.mdf',   
   MOVE N'log' TO N'E:\Program Files\Microsoft SQL Server\MSSQL13.TEST\MSSQL\DATA\SSISDB.ldf',    
   NOUNLOAD 
, REPLACE 
, STATS = 5

ALTER DATABASE [SSISDB] SET MULTI_USER

GO 
print ' – SSISDB restore complete' 
print ''

print 'Set ProcOption to 1 for dbo.sp_ssis_startup stored procedure' 
EXEC sp_procoption N'[dbo].[sp_ssis_startup]', 'startup', '1' 
print 'ProcOption set to 1 for dbo.sp_ssis_startup stored procedure'

GO 
print ''

Use SSISDB 
go

print '##MS_SSISServerCleanupJobUser## user in SSISDB database' 
If Not Exists(Select * 
              From sys.sysusers 
              Where [name] = '##MS_SSISServerCleanupJobUser##') 
begin 
  print ' – Creating ##MS_SSISServerCleanupJobUser## user' 
  CREATE USER [##MS_SSISServerCleanupJobUser##] FOR LOGIN [##MS_SSISServerCleanupJobLogin##] WITH DEFAULT_SCHEMA=[dbo] 
  print ' – ##MS_SSISServerCleanupJobUser## user created' 
end 
Else 
print ' – ##MS_SSISServerCleanupJobUser## already exists.' 
GO 
print ''

/*

-- One method for restoring the master key from the file. 
-- NOTE: You must have the original SSISDB encryption password!

Restore master key from file = 'E:\Andy\backup\SSISDB_SP1_key'    -- *** check this, please – Andy 
       Decryption by password = 'SuperSecretPassword' -- 'Password used to encrypt the master key during SSISDB backup'    -- *** check this, please – Andy 
       Encryption by password = 'SuperSecretPassword' -- 'New Password'    -- *** check this, please – Andy 
       Force  
go 
*/

-- Another method for restoring the master key from the file. 
-- NOTE: You must have the original SSISDB encryption password! 
print 'Opening the master key' 
Open master key decryption by password = 'SuperSecretPassword' --'Password used when creating SSISDB'   -- *** check this, please – Andy 
Alter Master Key 
  Add encryption by Service Master Key 
go 
print 'Master key opened'

print ''

print 'Checking the SSIS Catalog Schema Version' 
exec [catalog].check_schema_version @use32bitruntime = 0