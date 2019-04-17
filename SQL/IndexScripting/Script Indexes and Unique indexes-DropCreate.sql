-- moves indexes not associated with a constraint to a new file group
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
select top 100 percent dbo.sysobjects.id, dbo.sysobjects.name, sysindexes.indid,
       sysindexes.name indname, sysindexes.origfillfactor , dbo.sysindexes.groupid
from sysindexes 
inner join dbo.sysobjects 
   on dbo.sysindexes.id = dbo.sysobjects.id
where (dbo.sysobjects.xtype = 'U') and (sysindexes.indid BETWEEN 2 and 254)
  and (indexproperty(sysindexes.id,sysindexes.name,'IsClustered') = 0)
  and not exists (select 1 from sysconstraints 
                    join dbo.sysobjects so2
                      on so2.id = sysconstraints.constid
                     and so2.name = sysindexes.name
                   where colid = 0 and sysconstraints.id = dbo.sysobjects.id)

  and sysindexes.groupid = 1 
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
    ORDER BY dbo.sysindexes.indid, dbo.sysindexkeys.keyno

  set @list = left(@list,len(@list)-1)

  set @strsql = 'drop index ['+@tbname+'].['+@indname+']'
  print @strsql

  IF @fill = 0
   SET @fill = 90

  IF (indexproperty(@id,@indname,'IsUnique') = 0)
    set @strsql = 'create index '
  else
    set @strsql = 'create unique index '
  
    set @strsql = @strsql + '['+@indname+'] on [dbo].['+@tbname+']('+@list+') with fillfactor = '+cast(@fill as nvarchar(3)) + ' on [' + @newgroup +']'
  print @strsql

  fetch next from curs1 into @id, @tbname, @indid, @indname, @fill, @group
end
close curs1
deallocate curs1
