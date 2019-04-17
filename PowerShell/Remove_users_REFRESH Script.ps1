$server = 'DDMSQL12','TDMSQL12','UDMSQL12','PDMSQL12','DDMSQL09','TDMSQL09','PDMSQL09','TSHAREPSQL02','PSHAREPSQL02','DDMSQL10','TDMSQL05', 
'TDMSQL10','TQRMSQL11','TVIEWSQL01','HVMSQL04','PADMINSQL01','PADMINSQL02','PADMINSQL03','PDSXAPP02','PDMSQL05','PDMSQL10','PFOGSQL01','PQRMSQL11','PVMSQL04',
'PDMSSIS01','DDMSQL14','PDMSQL14','PDMSQL13','DDMSSIS01','UDMSQL07','DDMSQL08','UDMSQL10','PDMSSRS04','DDMSQL13','DDMSQL07','PDMSQL15','UDMSQL15','TDMSQL13',
'SQLTEST2016','PDMSQL07','TDMSSIS01','TDMSQL07','TDMSSRS04','DDMSSRS04','UDMSQL14','TDMSQL14','UDMSSRS04','UDMSSIS01','PDMSQL08','DDMSSIS02', 'DDMSQL15','TDMSQL15',
'TDMSSIS02','UDMSSIS02','PDMSSIS02','QDMSQL14','SQLTEST2016','SQLTEST2016-1','SQLTEST2016-2','SQLTEST2016-3','SQLTEST2016-4'
$name = "schen"

$server|%{
    write-host "Currently looking for $name on server $_"
    Get-DbaDatabaseUser -ExcludeSystemUser -serverinstance $_ |? name -like "*$name*"| Remove-DbaDbUser #-WhatIf

    }



    #Get-DbaDatabaseUser -ExcludeSystemUser -SqlInstance ddmsql12 -Database Collateral_Interface|Remove-DbaDbUser -WhatIf



    #Get-DbaDatabaseUser -ExcludeSystemUser -SqlInstance tdmsql12 -Database Collateral_Reporting_OLD|Remove-DbaDbUser
    #Get-DbaDatabaseUser -ExcludeSystemUser -SqlInstance ddmsql10 -Database Collateral_Reporting|Remove-DbaDbUser
    #Get-DbaDatabaseUser -ExcludeSystemUser -SqlInstance tdmsql10 -Database Collateral_Reporting|Remove-DbaDbUser
    Get-DbaDatabaseUser -ExcludeSystemUser -SqlInstance ddmsql10 -Database Collateral_Reporting|Remove-DbaDbUser
    Get-DbaDatabaseUser -ExcludeSystemUser -SqlInstance tdmsql15 -Database Derivatives|Remove-DbaDbUser


    Get-DbaLogin -WindowsLogins - Remove-DbaLogin -SqlInstance 
