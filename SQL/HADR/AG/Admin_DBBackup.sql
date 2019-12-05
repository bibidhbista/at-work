

ALTER   PROCEDURE [dbo].[Admin_DBbackup]          
          
AS          
SET NOCOUNT ON          

exec sp_MSforeachdb '

if ''?'' not in (''tempdb'',''model'',''MIDOC_INTERFACE_H'',''MIDOC_DOCUMENTSTORE_BASEPHOTO'',''MIDOC_DOCUMENTSTORE_MEDW1'',''MIDOC_DOCUMENTSTORE_MEDM1'',''MIDOC_DOCUMENTSTORE_MEDM2'',''MIDOC_DOCUMENTSTORE_MEDM3'',''MIDOC_DOCUMENTSTORE_MIGRATION'')
BEGIN
          
	DECLARE @SQL varchar(2000)          
	DECLARE @Dt datetime = getdate(), @DateTimeString varchar(30)
	SET @DateTimeString = REPLACE(convert(varchar(11),@Dt,102),''.'','''') + ''_'' + replace(convert(varchar(11),@Dt,108),'':'','''')

	IF datepart(dw,getdate()) = 1 or ''?'' = ''master''
	BEGIN
		SET @SQL = ''BACKUP DATABASE ? TO DISK=''''O:\MSSQL\MSSQL\BACKUP\bkup_?_'' + @DateTimeString + ''_FULL.bak'''' WITH INIT, CHECKSUM''
	END
	ELSE
	BEGIN
		SET @SQL = ''BACKUP DATABASE ? TO DISK=''''O:\MSSQL\MSSQL\BACKUP\bkup_?_'' + @DateTimeString + ''_DIFF.bak'''' WITH DIFFERENTIAL, INIT, CHECKSUM''
	END
	exec(@SQL)          
	--print @SQL
END          
'
      
