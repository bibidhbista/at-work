# List of servers to run the fatal error check
$Servers ='.\','atgdsmsq14'#,'atgdsmsq17'
$dbname='amadmin'

foreach($server in $Servers){

        Invoke-Sqlcmd -ServerInstance $server -Database $dbname -InputFile "$PSScriptRoot\CreateFatalErrorAlertSp.sql"
    
}
