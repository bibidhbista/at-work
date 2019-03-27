-- moves unique indexes associated with a constraint to a new file group
-- modify @newgroup to set name of filegroup to move to
-- moves indexes that are currently in the Primary File Group (1)
-- SQL2000/2005

declare @id integer
declare @tbname nvarchar(100)
declare @indid integer
declare @indname nvarchar(100)
declare @fill integer
declare @group integer
declare @list nvarchar(4000)
declare @strsql nvarchar(4000)
declare @newgroup nvarchar(20)

set @newgroup = 'PRIMARY'

declare curs1 cursor for
select dbo.sysobjects.id, dbo.sysobjects.name, sysindexes.indid,
       sysindexes.name indname, sysindexes.origfillfactor , dbo.sysindexes.groupid
from sysindexes
 inner join dbo.sysobjects 
    on dbo.sysindexes.id = dbo.sysobjects.id
  inner join dbo.sysconstraints
    on dbo.sysconstraints.id = dbo.sysobjects.id
   and dbo.sysconstraints.colid = 0
  inner join dbo.sysobjects so2
     on so2.id = dbo.sysconstraints.constid
    and so2.name = sysindexes.name
   where (dbo.sysobjects.xtype = 'U') and (sysindexes.indid =1)
  and (indexproperty(sysindexes.id,sysindexes.name,'IsClustered') = 1)
  and (indexproperty(sysindexes.id,sysindexes.name,'IsUnique') = 1)
  and sysindexes.groupid = 1 

  and not exists (select 1 from sysreferences fk
   where fk.rkeyid = sysindexes.id
   and fk.rkeyindid = sysindexes.indid)
order by dbo.sysobjects.name, sysindexes.indid

open curs1
fetch next from curs1 into @id, @tbname, @indid, @indname, @fill, @group
while @@fetch_status = 0
begin
  set @list=''
  SELECT @list=@list +'['+dbo.syscolumns.name+']' +
     (case indexkey_property(@id,@indid,sysindexkeys.colid,'IsDescending')
         when 1 then ' DESC ,'
         else ' ASC , '
     end )
    FROM dbo.sysindexes
    INNER JOIN dbo.sysobjects on dbo.sysindexes.id = dbo.sysobjects.id
    INNER JOIN dbo.sysindexkeys on dbo.sysindexes.id = dbo.sysindexkeys.id
           and dbo.sysindexes.indid = dbo.sysindexkeys.indid
    INNER JOIN dbo.syscolumns on dbo.sysindexes.id = dbo.syscolumns.id
           AND dbo.sysindexkeys.colid = dbo.syscolumns.colid
    WHERE (dbo.sysobjects.xtype = 'U') and (dbo.sysindexes.indid = @indid) 
      and (dbo.sysobjects.id = @id)
      AND (sysindexes.groupid = 1)
    ORDER BY dbo.sysobjects.name, dbo.sysindexes.indid, dbo.sysindexkeys.keyno

  set @list = left(@list,len(@list)-1)

  set @strsql = 'alter table ['+@tbname+'] drop constraint ['+@indname+']'
  print @strsql
  set @strsql = 'alter table [dbo].['+@tbname+'] add constraint ['+@indname+'] '
  set @strsql = @strsql + ' PRIMARY KEY Clustered ('+@list+') ' 
  set @strsql = @strsql + ' with (fillfactor = '+cast(@fill as nvarchar(3)) + ') on [' +@newgroup +']'
  print @strsql
  fetch next from curs1 into @id, @tbname, @indid, @indname, @fill, @group
end
close curs1
deallocate curs1


