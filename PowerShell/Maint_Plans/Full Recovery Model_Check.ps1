

 $AllServers = gc "N:\Projects\Maint_Plans\AllSQLServers.txt" 
 Remove-Item "N:\Projects\Maint_Plans\FullRecoveryModel.csv" -force
 $AllServers| %{
    # Execute a command
         Write-Host "[processing '$_' inside the loop]"
         

#$sqlQuery = @"             
#              
#                          SELECT SERVERPROPERTY('ServerName') as SERVER_NAME,S.JOB_ID,L.NAME AS LOGIN_NAME,S.NAME AS JOB_NAME,
#		            CASE WHEN S.ENABLED=1 THEN 'Yes'
#                        ELSE 'No' 
#			            END AS IS_ENABLED ,
#			            MAX(CAST(
#            STUFF(STUFF(CAST(jh.run_date as varchar),7,0,'-'),5,0,'-') + ' ' + 
#            STUFF(STUFF(REPLACE(STR(jh.run_time,6,0),' ','0'),5,0,':'),3,0,':') as datetime)) AS [LastRun],
#            CASE jh.run_status WHEN 0 THEN 'Failed'
#            WHEN 1 THEN 'Success'
#            WHEN 2 THEN 'Retry'
#            WHEN 3 THEN 'Canceled'
#            WHEN 4 THEN 'In progress'
#			ELSE 'Never Ran'
#            END AS Status,
#		            S.DESCRIPTION,S.DATE_CREATED,S.DATE_MODIFIED,L.DBNAME AS [DATABASE NAME]
#             FROM  MSDB..SYSJOBS S 
#             LEFT JOIN MASTER.SYS.SYSLOGINS L ON S.OWNER_SID = L.SID
#             left join msdb.dbo.sysjobs j on j.job_id =s.job_id
#             left JOIN msdb.dbo.sysjobhistory jh ON jh.job_id = j.job_id AND jh.step_id = 0 
#             group by s.job_id,l.name,s.name,s.enabled,jh.run_status,s.description,s.date_created,s.date_modified,l.dbname
#
#"@
 $sqlQuery = "select @@servername, name, recovery_model_desc from sys.databases WHERE recovery_model_desc = 'FULL'"
         & INVOKE-SQLCMD -Query $sqlQuery -ServerInstance $_ -Database 'MASTER'|Export-Csv -Append -Path "N:\Projects\Maint_Plans\FullRecoveryModel.csv" -Encoding ascii -NoTypeInformation -Force
 }

 Invoke-Item -Path "N:\Projects\Maint_Plans\FullRecoveryModel.csv"
