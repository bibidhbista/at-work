

--select * from process_settings where name ='file_prefix_date'
--UNION
--select * from Process_Settings WHERE name ='rundate'
--select $(MyVar1) as var1
--select $(MyVar1)
		
		
------Actual SQL
----USE [ETL_Maintenance]
--DECLARE @NAME NVARCHAR(50)
----declare @name2 nvarchar (50)


--DECLARE @COUNT INT
--DECLARE @FILE_PREFIX_DATE NVARCHAR(8)

----PARAMS FROM PS SCRIPT

----SET @NAME = $(MyVar1)
----SET @NAME2 = $(MyVar2)
----select @NAME, @name2 as NAME2
----CK_ISDATE

-- UPDATE RUNDATE FOR THE GIVE PROCESS ID
--UPDATE PROCESS_SETTINGS SET VALUE = $(RunDate) WHERE PROCESS_ID = $(Process_ID) AND NAME = 'RunDate'
----UPDATE FILE_PREFIX_DATE IF EXISTS
--SELECT @FILE_PREFIX_DATE = REPLACE($(RunDate), '-', '')
--SELECT @COUNT= COUNT(NAME) FROM PROCESS_SETTINGS WHERE PROCESS_ID =  $(Process_ID) AND NAME='FILE_PREFIX_DATE'
--UPDATE  PROCESS_SETTINGS SET Value =  CASE 
--											WHEN @COUNT = 1 then @FILE_PREFIX_DATE  
--									  END
--		WHERE PROCESS_ID =  $(Process_ID)  AND NAME='FILE_PREFIX_DATE' 



--Actual SQL
DECLARE @PROC_ID INT
DECLARE @NAME NVARCHAR(50)
DECLARE @VALUE DATE
DECLARE @COUNT INT
DECLARE @FILE_PREFIX_DATE NVARCHAR(8)

--PARAMS FROM PS SCRIPT
SET @PROC_ID = $(process_ID)
update Process_Settings set @VALUE ='2022-11-11' where Process_ID = $(process_ID) and name ='rundate'
select * from Process_Settings where Process_ID = $(process_ID)
--SET @NAME ='RUNDATE'
----CK_ISDATE
--SET @VALUE = '2016-07-02'



----UPDATE FILE_PREFIX_DATE IF EXISTS
--SELECT @FILE_PREFIX_DATE = REPLACE(@VALUE, '-', '')
--SELECT @COUNT= COUNT(NAME) FROM PROCESS_SETTINGS WHERE PROCESS_ID = @PROC_ID  AND NAME='FILE_PREFIX_DATE'

--UPDATE  PROCESS_SETTINGS SET Value =  CASE 
--											WHEN @COUNT = 1 then @FILE_PREFIX_DATE  
--									  END
--		WHERE PROCESS_ID = @PROC_ID   AND NAME='FILE_PREFIX_DATE' 

