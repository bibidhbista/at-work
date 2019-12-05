Create PROCEDURE [dbo].[Admin_LS_RestoreFix]

	@FilePath varchar(1000), 
	@DB varchar(50), 
	@LastRestored varchar(100)

AS

declare @Utc datetime = dateadd(MINUTE,-275,getutcdate())
declare @FourHrDtString varchar(14)
set @FourHrDtString = convert(char(4),DATEPART(yyyy,@Utc)) + replicate('0',2-len(DATEPART(MM,@Utc))) + convert(varchar(2),DATEPART(mm,@Utc)) + replicate('0',2-len(datepart(dd,@Utc))) + convert(varchar(2),datepart(dd,@Utc)) + replicate('0',2-len(datepart(hh,@Utc))) + convert(varchar(2),datepart(hh,@Utc)) + replicate('0',2-len(datepart(minute,@Utc))) + convert(varchar(2),DATEPART(minute,@Utc)) + '00'
--select @FourHrDtString

declare @sql varchar(max)
declare @Files TABLE (FileDetail varchar(4000))

set @sql = 'xp_cmdshell ''dir ' + @FilePath + @DB + '*.*'''
insert into @Files exec(@sql)

delete from @Files
where CHARINDEX(@DB,FileDetail) = 0 or FileDetail is null

DECLARE curRS CURSOR      
FOR select 'RESTORE LOG ' + @DB + ' FROM DISK = ''' + @FilePath + FileNm + ''' WITH NORECOVERY' 
from
(select right(FileDetail,len(FileDetail)-CHARINDEX(@DB,FileDetail)+1) as FileNm from @Files) a
where SUBSTRING(FileNm,len(@DB)+2,14) > SUBSTRING(@LastRestored,len(@DB)+2,14)
	and SUBSTRING(FileNm,len(@DB)+2,14) < @FourHrDtString
  
DECLARE @Cmd varchar(max)      
  
OPEN curRS 
  
FETCH NEXT FROM curRS INTO @Cmd
  
WHILE (@@fetch_status =0)      
BEGIN        
 
	exec(@Cmd)
	  
	FETCH NEXT FROM curRS INTO @Cmd
  
END      
  
CLOSE curRS
DEALLOCATE curRS 



