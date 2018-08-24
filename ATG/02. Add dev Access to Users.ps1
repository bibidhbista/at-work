$dbNames= 'MIDOC_CASEMGMT_Base',
'MIDOC_CASEMGMT_GAP	',
'MIDOC_Fiduciary_Dev',	
'MIDOC_FIDUCIARY_GAP',	
'MIDOC_FIDUCIARY_TEST',	
'MIDOC_FoodService_Dev',	
'MIDOC_FOODSERVICE_GAP',	
'MIDOC_INTERFACE',	
'MIDOC_INTF_META',	
'MIDOC_Medical_Dev',
'MIDOC_Medical_Dev_Build',
'MIDOC_MEDICAL_GAP',	
'MIDOC_Medical_Test_Build',
'MIDOC_Roster_Dev',	
'MIDOC_ROSTER_GAP',	
'MIDOC_ROSTER_TEST',	
'MIDOC_Security_Dev',	
'MIDOC_SECURITY_GAP',	
'MIDOC_SECURITY_TEST'	#'DOCSecurity_Test','ICON_Dev'
$userNames='QuangT'#'TarunK','TylerL','NirojK','AyyappaK','GreeshmaK','RobertF'
$server = 'atgdsmsq17'#'atgdsmsq14'





foreach($dbName in $dbNames){


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