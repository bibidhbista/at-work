WITH cte AS (
                 SELECT    cast(foldername as varchar(max)) as folderpath, folderid
                 FROM    msdb..sysssispackagefolders
                 WHERE    parentfolderid = '00000000-0000-0000-0000-000000000000'
                 UNION    ALL
                 SELECT    cast(c.folderpath + '\' + f.foldername  as varchar(max)), f.folderid
                 FROM    msdb..sysssispackagefolders f
                 INNER    JOIN cte c        ON    c.folderid = f.parentfolderid
             )
             SELECT    c.folderpath,p.name,CAST(CAST(packagedata AS VARBINARY(MAX)) AS VARCHAR(MAX)) as pkg
             FROM    cte c
             INNER    JOIN msdb..sysssispackages p    ON    c.folderid = p.folderid
             WHERE    c.folderpath NOT LIKE 'Data Collector%'