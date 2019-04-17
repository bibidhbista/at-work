-- Go through current MSDB for all SSIS packages and generate CMD to copy all to file
/* For Server to server copying, Create folder structure and replace last select statement with 
  'dtutil /sourceserver ' + @@SERVERNAME + ' /SQL "'+ F.FolderPath + '\' + P.PackageName + '" /destserver MyShiny2012Box /copy SQL;"'+ F.FolderPath + '\' + P.PackageName + '"' AS cmd
  */
Declare @destServer nvarchar(25);
Declare @sourceServer nvarchar(25);

Set @sourceServer = 'sqltest2016'; -- name of the server you are currently running on/SSIS Source server
Set @destServer = 'sqltest2016';


WITH FOLDERS AS
(
    -- Capture root node
    SELECT
        cast(PF.foldername AS varchar(max)) AS FolderPath
    ,   PF.folderid
    ,   PF.parentfolderid
    ,   PF.foldername
    FROM
        msdb.dbo.sysssispackagefolders PF
    WHERE
        PF.parentfolderid IS NULL

    -- build recursive hierarchy
    UNION ALL
    SELECT
        cast(F.FolderPath + '\' + PF.foldername AS varchar(max)) AS FolderPath
    ,   PF.folderid
    ,   PF.parentfolderid
    ,   PF.foldername
    FROM
        msdb.dbo.sysssispackagefolders PF
        INNER JOIN
            FOLDERS F
            ON F.folderid = PF.parentfolderid
)
,   PACKAGES AS
(
    -- pull information about stored SSIS packages
    SELECT
        P.name AS PackageName
    ,   P.id AS PackageId
    ,   P.description as PackageDescription
    ,   P.folderid
    ,   P.packageFormat
    ,   P.packageType
    ,   P.vermajor
    ,   P.verminor
    ,   P.verbuild
    ,   suser_sname(P.ownersid) AS ownername
    FROM
        msdb.dbo.sysssispackages P
)

-- for cmd to run to create folder structure for ssis copy 
select case when f.FolderPath like '\%\%' then ('dtutil /sourceserver '+@destServer+  ' /fc SQL'+replace(f.FolderPath,'\',';'))  -- dtutil cmd for subfolders is different than for parent node path
		when f.FolderPath not like '\%\%' then ('dtutil /sourceserver '+@destServer+  ' /fc SQL;'+replace(f.FolderPath,'\','\;')) 
		
end as CreateFolderCMD, f.FolderPath from FOLDERS F 
Inner Join PACKAGES P on p.folderid = f.folderid 
where f.FolderPath != '' and f.FolderPath not like '\Data Collector%' and f.FolderPath not like '\Maintenance Plans%' 
group by f.FolderPath

-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
-------- MAKE SURE YOU CREATE THE REQUIRED FOLDER ON DESTINATION SERVER FIRST BEFORE RUNNING THIS -----
-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
;
/*Declare @destServer nvarchar(25);
Declare @sourceServer nvarchar(25);

Set @sourceServer = 'sqltest2016'; -- name of the server you are currently running on/SSIS Source server
Set @destServer = 'sqltest2016';*/
WITH FOLDERS AS
(
    -- Capture root node
    SELECT
        cast(PF.foldername AS varchar(max)) AS FolderPath
    ,   PF.folderid
    ,   PF.parentfolderid
    ,   PF.foldername
    FROM
        msdb.dbo.sysssispackagefolders PF
    WHERE
        PF.parentfolderid IS NULL

    -- build recursive hierarchy
    UNION ALL
    SELECT
        cast(F.FolderPath + '\' + PF.foldername AS varchar(max)) AS FolderPath
    ,   PF.folderid
    ,   PF.parentfolderid
    ,   PF.foldername
    FROM
        msdb.dbo.sysssispackagefolders PF
        INNER JOIN
            FOLDERS F
            ON F.folderid = PF.parentfolderid
)
,   PACKAGES AS
(
    -- pull information about stored SSIS packages
    SELECT
        P.name AS PackageName
    ,   P.id AS PackageId
    ,   P.description as PackageDescription
    ,   P.folderid
    ,   P.packageFormat
    ,   P.packageType
    ,   P.vermajor
    ,   P.verminor
    ,   P.verbuild
    ,   suser_sname(P.ownersid) AS ownername
    FROM
        msdb.dbo.sysssispackages P
)


SELECT 
    -- for copying from one server to another server directly : FOLDER STRUCTURE MUST EXIST!!
    'dtutil /sourceserver ' + @sourceServer + ' /SQL "'+ F.FolderPath + '\' + P.PackageName + '" /destserver '+ @destServer+' /copy SQL;"'+ F.FolderPath + '\' + P.PackageName + '"' AS CopyToSSISServerCMD,
    'dtutil /sourceserver ' + @sourceServer + ' /SQL "'+ F.FolderPath + '\' + P.PackageName + '" /copy file;".'+ F.FolderPath + '\' + P.PackageName +'.dtsx"' AS CopyToFileCMD
FROM 
    FOLDERS F
    INNER JOIN
        PACKAGES P
        ON P.folderid = F.folderid
 WHERE
     f.FolderPath not like '\Data Collector%' and f.FolderPath not like '\Maintenance Plans%' 
