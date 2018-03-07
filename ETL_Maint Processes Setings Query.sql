SELECT PS.[Process_ID]
      ,p.[Name] AS ProcessName
	  ,PS.[Name]
      ,PS.[Value]
      ,PS.[Description]
  FROM [ETL_Maintenance].[dbo].[Process_Settings] PS JOIN [dbo].[Processes] P ON P.id=PS.[Process_ID] WHERE [P].[Name] LIKE '%call%'