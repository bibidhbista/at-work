--DDL
SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME ='TBLPERSON'
--version
select @@version
--USER OPTIONS: TEXTSIZE/LANG/ I..............ISOLATION LEVELS
DBCC USEROPTIONS


--errorlog
execute sys.sp_readerrorlog

-- the name of the local sql server
SELECT @@servername AS SERVERNAME

--THE SERVER PROCESS ID OF THE CURRENT PROCEESS
SELECT @@SPID AS 'ID', SYSTEM_USER AS 'Login Name', USER AS 'User Name'


-- finding blocking queries
dbcc OPENTRAN --gives the oldest active trans

--lock and logged in users
exec sp_lock
exec sp_who 'active'





--number of logins or attempted since sql server was started
SELECT GETDATE() AS 'Today''s Date and Time', 
@@CONNECTIONS AS 'Login Attempts'

--configure settings: global configuration settings for the current server.
sp_configure

--The maximum number of simultaneous connections that can be made with SQL Server in this computer environment. 
--The user can configure SQL Server for any number of connections less than or equal to the value of @@max_connections with sp_configure ''number of user connections''.  
select @@max_connections as [Max Connections]


--amt of time in ticks that CPU has spent doing SQL server work since last time SQL server was started
SELECT @@TIMETICKS
select @@cpu_busy
SELECT @@CPU_BUSY * CAST(@@TIMETICKS AS FLOAT) AS 'CPU microseconds', 
		GETDATE() AS 'As of' 


--USED TO CHECK THE ERROR STATUS OF THE RECENTLY EXE STATEMENT ............ 0 IF SUCCESS 1 FOR FAILURE
SELECT @@error
IF @@error<>0
	PRINT 'SOMETHING WENT HORRIBLY WOOOOOONG';

-- RETURNS LAST VALUE INSERTED INTO AN IDENTITY COLUMN BY AN INSERT OR SELECT INTO STATEMENT
-- RETURNS LAST VALUE EVEN IF THE INSERT FAILS TO COMMIT
SELECT * FROM TBLPERSON
--NULL IF CONVERSION FAILS
SELECT TRY_PARSE ('1990-20-14' AS DATE) AS CONVERSION
SELECT COLUMN_NAME, COLUMN_DEFAULT, IS_NULLABLE,DATA_TYPE, CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME= 'TBLPERSON'


INSERT INTO TBLPERSON(ID,Name,EMAIL, GenderId,dateOfBirth,salary, DEPARTMENTID,country) VALUES (38,'JAY','JAY@Z.COM', 1, (CONVERT(DATE, '19701211')), 145000, 3, 'USA')

--NO OF ROWS AFFECTD
SELECT @@ROWCOUNT

-- the amount of time in ticks that sql server has been idle
SELECT @@IDLE * CAST(@@TIMETICKS AS float) AS 'Idle microseconds',
   GETDATE() AS 'as of'



--the local language currently in use
SELECT @@LANGUAGE AS 'Language Name';

SET LANGUAGE 'Italian'
SELECT @@LANGID AS 'Language ID'
SET LANGUAGE 'us_english'
SELECT @@LANGID AS 'Language ID'


-- TOTAL DISKS READS AND WRITES BY SS
SELECT @@TOTAL_READ AS 'Reads', @@TOTAL_WRITE AS 'Writes', GETDATE() AS 'As of'

--COUNT OF TRANSACTIONS ...USED INSIDE A TRANSACTION TO KEEP TRACK OF THE NESTED TRANSACTIONS
SELECT @@trancount
PRINT @@TRANCOUNT
									--  The BEGIN TRAN statement will increment the
									--  transaction count by 1.
									BEGIN TRAN
										PRINT @@TRANCOUNT
										BEGIN TRAN
											PRINT @@TRANCOUNT
									--  The COMMIT statement will decrement the transaction count by 1.
										COMMIT
										PRINT @@TRANCOUNT
									COMMIT
									PRINT @@TRANCOUNT



EXEC sys.sp_addlinkedserver @server ='PFHLBDMSQL12' 
SELECT * FROM [PFHLBDMSQL12].[ETL_Maintenance].[DBO].[PROCESS_SETTINGS]



CREATE FUNCTION FN_FORRUNDATE()
RETURNS TABLE  
AS
RETURN(
	SELECT CURR_BUSINESS_DATE FROM [PFHLBDMSQL12].[ETL_Maintenance].[DBO].[PROCESS_BUSINESS_DATES] 
	)

SET NOCOUNT ON
SELECT * FROM FN_FORRUNDATE()