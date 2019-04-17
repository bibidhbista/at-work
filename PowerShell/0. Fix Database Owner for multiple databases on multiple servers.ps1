$serverlist =#'ddmsql10',
             #'tdmsql10'#,
             'ddmsql12',
             'tdmsql12'


#$databaselist='Collateral_Interface',
#              'Collateral_Staging',
#              'Collateral_Reporting',
#              'Data_Depot'


$databaselist='Collateral_Interface_OLD',
              'Collateral_Staging_OLD',
              'Collateral_Reporting_OLD',
              'Data_Depot_OLD'



foreach($server in $serverlist) {

foreach($database in $databaselist){
    Test-DbaDatabaseOwner -SqlInstance $server -Database $database
    #Set-DbaDatabaseOwner -SqlInstance $server -Database $database  #-WhatIf

    }}
