
select
                cast(0 as int) as RecId,
                GETDATE() as CaptureDt,
        DBName,
        name as FileNm,
        --[filename],
        size as SizeMB,
        usedspace as UsedSpaceMB,
        (size - usedspace) as FreeSpaceMB,
                                convert(decimal(5,2),UsedSpace/Size*100) as UsedPrct,
                                convert(decimal(5,2),(size-UsedSpace)/Size*100) as FreePrct,
                                IndexSize
from       
(   
                SELECT
                                db_name(s.database_id) as DBName,
                                s.name AS [Name],
                                s.physical_name AS [FileName],
                                (s.size * CONVERT(float,8))/1024 AS [Size],
                                (CAST(CASE s.type WHEN 2 THEN 0 ELSE CAST(FILEPROPERTY(s.name, 'SpaceUsed') AS float)* CONVERT(float,8) END AS float))/1024 AS [UsedSpace],
                                s.file_id AS [ID],
                                (select sum(convert(dec(15),reserved)) 
                                                from sysindexes si
                                                inner join sys.indexes i on 
                                                                si.id = i.object_id and 
                                                                si.indid = i.index_id 
                                                where 
                                                                i.data_space_id = s.data_space_id 
                                                                and indid not in (0, 1, 255)) * 8192.0 / 1048576.0 as IndexSize
                FROM  sys.master_files AS s 
                WHERE s.database_id = DB_ID()
) DBFileSizeInfo

