select d.name, a.name, count(*) as [KeyNo]
from sysindexes a
inner join sysindexkeys b on
       a.id = b.id
       and a.indid = b.indid
inner join syscolumns c on
       b.id = c.id
       and b.colid = c.colid
inner join sys.tables d on
       a.id = d.object_id
       and d.is_ms_shipped <> 1
where a.indid=1
--and d.name not like '%_H'
--and d.name not like 'H_%'
--and d.name  like '%_H'
--or d.name  like 'H_%'
group by d.name, a.name
having count(*) >1

