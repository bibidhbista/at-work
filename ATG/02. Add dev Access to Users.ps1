$dbNames='IADOC_CorrCare_Dev '#'DOCSecurity_Test','ICON_Dev'
$userNames='TarunK','TylerL','NirojK','AyyappaK','GreeshmaK','RobertF'






foreach($dbName in $dbNames){

$server = 'atgdsmsq14'
foreach ($username in $userNames){
        $query = @"
        use [$dbName]
        if not exists(select name from sys.database_principals where name ='atg\$username')
        begin
        create user [atg\$userName] for login [atg\$userName] with default_schema = [atg\$userName]
        alter role devteam add member [atg\$userName]
        end

"@



        Write-Host "Creating $userName on $dbName on $server" 
        Invoke-Sqlcmd -ServerInstance $server -Database $dbName -Query $query -Verbose
        }}