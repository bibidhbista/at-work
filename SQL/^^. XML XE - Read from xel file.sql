-- select DATEDIFF(mi, GETUTCDATE(), GETDATE())
select
    DATEADD(hh, -5, n.value('(@name)[1]', 'varchar(50)'))  as event_name,
    n.value('(@package)[1]', 'varchar(50)') AS package_name,
    n.value('(@timestamp)[1]', 'datetime2') AS [utc_timestamp],
    n.value('(data[@name="duration"]/value)[1]', 'int') as duration,
    n.value('(data[@name="cpu_time"]/value)[1]', 'int') as cpu,
    n.value('(data[@name="physical_reads"]/value)[1]', 'int') as physical_reads,
    n.value('(data[@name="logical_reads"]/value)[1]', 'int') as logical_reads,
    n.value('(data[@name="writes"]/value)[1]', 'int') as writes,
    n.value('(data[@name="row_count"]/value)[1]', 'int') as row_count,
    n.value('(data[@name="last_row_count"]/value)[1]', 'int') as last_row_count,
    n.value('(data[@name="line_number"]/value)[1]', 'int') as line_number,
    n.value('(data[@name="offset"]/value)[1]', 'int') as offset,
    n.value('(data[@name="offset_end"]/value)[1]', 'int') as offset_end,
    n.value('(data[@name="statement"]/value)[1]', 'nvarchar(max)') as statement,
    n.value('(action[@name="database_name"]/value)[1]', 'nvarchar(128)') as database_name
from (select cast(event_data as XML) as event_data
from sys.fn_xe_file_target_read_file('G:\MSSQL\ExtendedEvents\SlowQueries\*.xel', null, null, null)) ed
cross apply ed.event_data.nodes('event') as q(n)


