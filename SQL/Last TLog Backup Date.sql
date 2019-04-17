-- Last tran log backup date
WITH backup_cte as
(
    select
        database_name,
        backup_type =
            case type
                when 'D' then 'database'
                when 'L' then 'log'
                when 'I' then 'differential'
                else 'other'
            end,
        backup_finish_date,
        rownum = 
            row_number() over
            (
                partition by database_name, type 
                order by backup_finish_date desc
            )
    from msdb.dbo.backupset
)
select
    database_name,
    backup_type,
    backup_finish_date
from backup_cte
where [backup_cte].[backup_type] = 'LOG' AND [backup_cte].[rownum] =1
order by database_name;



-- all databases on full -- this is just a check to compare against  the results from above
select 
   name, recovery_model_desc
from 
   sys.databases WHERE recovery_model_desc = 'FULL'
