
[string] $Database = 'test_patching'
[string] $x= "SELECT SERVERPROPERTY('ProductVersion') AS Version, SERVERPROPERTY('ProductLevel') as SP"
$SQLQuery = "SELECT *  FROM [$Database].[dbo].[serverlist]"
# Check SQL version
foreach ($svr in gc "C:\SQL Patching\2016servers.txt"){
    invoke-sql $svr $Database $SQLQuery
}

function global:invoke-sql ($svr, $Database,$SQLQuery ) {
  $con = "server=$svr;database=$Database;Integrated Security=true" 
  $da = new-object System.Data.SqlClient.SqlDataAdapter ($SQLQuery, $con)
  $dt = new-object System.Data.DataTable
  $da.fill($dt) | out-null
  
  $dt | Format-Table -autosize
  $dt.table[0];
} 
