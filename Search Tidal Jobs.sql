SELECT m.[jobmst_name],d.[jobdtl_cmd],d.[jobdtl_params],* FROM  [dbo].[jobdtl] d JOIN [dbo].[jobmst] m ON d.[jobdtl_id]=m.[jobdtl_id] WHERE [jobdtl_cmd] LIKE '%powershell.exe%' 
