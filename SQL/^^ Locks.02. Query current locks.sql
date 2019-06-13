--KILL 131
--DBCC INPUTBUFFER (459)
--DBCC INPUTBUFFER (374)


SELECT * FROM sys.sysprocesses WHERE blocked <>0

set nocount on
if object_id('tempdb..#locksummary') is not null Drop table #locksummary
if object_id('tempdb..#lock') is not null Drop table #lock
create table #lock (    spid int,    dbid int,    objId int,    indId int,    Type char(4),    resource nchar(32),    Mode char(8),    status char(6))
Insert into #lock exec sp_lock
if object_id('tempdb..#who') is not null Drop table #who
create table #who (     spid int, ecid int, status char(30),
            loginame char(128), hostname char(128),
            blk char(5), dbname char(128), cmd char(16)
            --
            , request_id INT --Needed for SQL 2008 onwards
            --
         )
Insert into #who exec sp_who
Print '-----------------------------------------'
Print 'Lock Summary for ' + @@servername  + ' (excluding tempdb):'
Print '-----------------------------------------' + Char(10)
Select     left(loginame, 28) as loginame, 
    left(db_name(dbid),128) as DB,
    left(object_name(objID),30) as object,
    max(mode) as [ToLevel],
    Count(*) as [How Many],
    Max(Case When mode= 'X' Then cmd Else null End) as [Xclusive lock for command],
    l.spid, hostname
into #LockSummary
from #lock l join #who w on l.spid= w.spid
where dbID != db_id('tempdb') and l.status='GRANT'
group by dbID, objID, l.spid, hostname, loginame

Select * from #LockSummary order by [ToLevel] Desc, [How Many] Desc, loginame, DB, object

Print '--------'
Print 'Who is blocking:'
Print '--------' + char(10)
SELECT p.spid
,convert(char(12), d.name) db_name
, program_name
, p.loginame
, convert(char(12), hostname) hostname
, cmd
, p.status
, p.blocked
, login_time
, last_batch
, p.spid
FROM      master..sysprocesses p
JOIN      master..sysdatabases d ON p.dbid =  d.dbid
WHERE     EXISTS (  SELECT 1
          FROM      master..sysprocesses p2
          WHERE     p2.blocked = p.spid )

Print '--------'
Print 'Details:'
Print '--------' + char(10)
Select     left(loginame, 30) as loginame,  l.spid,
    left(db_name(dbid),15) as DB,
    left(object_name(objID),40) as object,
    mode ,
    blk,
    l.status
from #lock l join #who w on l.spid= w.spid
where dbID != db_id('tempdb') and blk <>0
Order by mode desc, blk, loginame, dbID, objID, l.STATUS


