$dbName='DOCSecurity_Test'
$userName='louisM'







$server = 'atgdsmsq14'
$query = @"
use [$dbName]

create user [atg\$userName] for login [atg\$userName] with default_schema = [atg\$userName];
alter role devteam add member [atg\$userName];

"@




Invoke-Sqlcmd -ServerInstance $server -Database $dbName -Query $query