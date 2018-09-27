-- Search For a specific string
SELECT [name]
      ,[id]
      ,[description]
	  ,CONVERT(VARCHAR(MAX),CONVERT(VARBINARY(MAX), packagedata)) AS packdata
      ,[createdate]
      ,[folderid]
      ,[ownersid]
      ,[packagedata]
      ,[packageformat]
      ,[packagetype]
      ,[vermajor]
      ,[verminor]
      ,[verbuild]
      ,[vercomments]
      ,[verid]
      ,[isencrypted]
      ,[readrolesid]
      ,[writerolesid]
  FROM [msdb].[dbo].[sysssispackages]
  WHERE CONVERT(VARCHAR(MAX),CONVERT(VARBINARY(MAX), packagedata)) LIKE '%Provider=Microsoft.Jet%'




--Categorized---


SELECT PCK.name AS PackageName 
      ,PCK.[description] AS [Description] 
      ,FLD.foldername AS FolderName 
      ,CASE PCK.packagetype 
            WHEN 0 THEN 'Default client' 
            WHEN 1 THEN 'I/O Wizard' 
            WHEN 2 THEN 'DTS Designer' 
            WHEN 3 THEN 'Replication' 
            WHEN 5 THEN 'SSIS Designer' 
            WHEN 6 THEN 'Maintenance Plan' 
            ELSE 'Unknown' END AS PackageTye 
      ,LG.name AS OwnerName 
      ,PCK.isencrypted AS IsEncrypted 
      ,PCK.createdate AS CreateDate 
      ,CONVERT(varchar(10), vermajor) 
       + '.' + CONVERT(varchar(10), verminor) 
       + '.' + CONVERT(varchar(10), verbuild) AS Version 
      ,PCK.vercomments AS VersionComment 
      ,DATALENGTH(PCK.packagedata) AS PackageSize 
FROM msdb.dbo.sysssispackages AS PCK 
     LEFT JOIN msdb.dbo.sysssispackagefolders AS FLD 
         ON PCK.folderid = FLD.folderid 
     LEFT JOIN sys.syslogins AS LG 
         ON PCK.ownersid = LG.sid 
ORDER BY PCK.name;




SELECT * FROM msdb..sysssispackages WHERE name LIKE '%principia_download%'