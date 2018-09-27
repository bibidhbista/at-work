

 $AllServers = gc "N:\Projects\Maint_Plans\AllSQLServers.txt" 
 Remove-Item "N:\Projects\Maint_Plans\ServerSize.csv" -force
 $AllServers| %{
    # Execute a command
         Write-Host "[processing '$_' inside the loop]"
         


  $sqlQuery="SELECT @@servername, CONVERT(DECIMAL(10,2),(SUM(size * 8.00) / 1024.00 / 1024.00)) As UsedSpaceInGB FROM master.sys.master_files"
         & INVOKE-SQLCMD -Query $sqlQuery -ServerInstance $_ -Database 'MASTER'|Export-Csv -Append -Path "N:\Projects\Maint_Plans\ServerSize.csv" -Encoding ascii -NoTypeInformation -Force
 
 }

 Invoke-Item -Path "N:\Projects\Maint_Plans\ServerSize_2.csv"