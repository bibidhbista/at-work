-- Output Folder
DECLARE @outPutPath varchar(50) = 'D:\'
, @i bigint
, @init int
, @data varbinary(max) 
, @fPath varchar(max)  
, @folderPath  varchar(max) 
 

-- Select required blob files
--Get Data into temp Table variable so that we can iterate over it 
DECLARE @Doctable TABLE (id int identity(1,1), [Doc_Num]  varchar(100) , [FileName]  varchar(100), [Doc_Content] varBinary(max),FileExt varchar (10) )
 
INSERT INTO @Doctable([Doc_Num] , [FileName],[Doc_Content],FileExt)
SELECT TOP 2 DocumentId , ApplicationNm,FileBytes,FileType FROM  [dbo].[Documents_current] 
 

-- Main --
--SELECT * FROM @table

SELECT @i = COUNT(1) FROM @Doctable
 
WHILE @i >= 1
BEGIN 

	SELECT 
	 @data = [Doc_Content],
	 @fPath = @outPutPath + [Doc_Num] +FileExt
	 
	FROM @Doctable WHERE id = @i
 
  --Create folder first
  --EXEC  [dbo].[CreateFolder]  @folderPath
  
  EXEC sp_OACreate 'ADODB.Stream', @init OUTPUT; -- An instace created
  EXEC sp_OASetProperty @init, 'Type', 1;  
  EXEC sp_OAMethod @init, 'Open'; -- Calling a method
  EXEC sp_OAMethod @init, 'Write', NULL, @data; -- Calling a method
  EXEC sp_OAMethod @init, 'SaveToFile', NULL, @fPath, 2; -- Calling a method
  EXEC sp_OAMethod @init, 'Close'; -- Calling a method
  EXEC sp_OADestroy @init; -- Closed the resources
 
  print 'Document Generated at - '+  @fPath   

--Reset the variables for next use
SELECT @data = NULL  
, @init = NULL
, @fPath = NULL  
, @folderPath = NULL
SET @i -= 1
END