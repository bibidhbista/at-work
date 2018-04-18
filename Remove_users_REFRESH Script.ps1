$server = 'DFHLBDMSQL12','TFHLBDMSQL12','UFHLBDMSQL12','PFHLBDMSQL12','DFHLBDMSQL09','TFHLBDMSQL09','PFHLBDMSQL09','TSHAREPSQL02','PSHAREPSQL02','DFHLBDMSQL10','TFHLBDMSQL05', 
'TFHLBDMSQL10','TQRMSQL11','TVIEWSQL01','HVMSQL04','PADMINSQL01','PADMINSQL02','PADMINSQL03','PDSXAPP02','PFHLBDMSQL05','PFHLBDMSQL10','PFOGSQL01','PQRMSQL11','PVMSQL04',
'PFHLBDMSSIS01','DFHLBDMSQL14','PFHLBDMSQL14','PFHLBDMSQL13','DFHLBDMSSIS01','UFHLBDMSQL07','DFHLBDMSQL08','UFHLBDMSQL10','PFHLBDMSSRS04','DFHLBDMSQL13','DFHLBDMSQL07','PFHLBDMSQL15','UFHLBDMSQL15','TFHLBDMSQL13',
'SQLTEST2016','PFHLBDMSQL07','TFHLBDMSSIS01','TFHLBDMSQL07','TFHLBDMSSRS04','DFHLBDMSSRS04','UFHLBDMSQL14','TFHLBDMSQL14','UFHLBDMSSRS04','UFHLBDMSSIS01','PFHLBDMSQL08','DFHLBDMSSIS02', 'DFHLBDMSQL15','TFHLBDMSQL15',
'TFHLBDMSSIS02','UFHLBDMSSIS02','PFHLBDMSSIS02','QFHLBDMSQL14','SQLTEST2016','SQLTEST2016-1','SQLTEST2016-2','SQLTEST2016-3','SQLTEST2016-4'
$name = "schen"

$server|%{
    write-host "Currently looking for $name on server $_"
    Get-DbaDatabaseUser -ExcludeSystemUser -serverinstance $_ |? name -like "*$name*"| Remove-DbaDbUser #-WhatIf

    }



    #Get-DbaDatabaseUser -ExcludeSystemUser -SqlInstance dfhlbdmsql12 -Database Collateral_Interface|Remove-DbaDbUser -WhatIf



    #Get-DbaDatabaseUser -ExcludeSystemUser -SqlInstance tfhlbdmsql12 -Database Collateral_Reporting_OLD|Remove-DbaDbUser
    #Get-DbaDatabaseUser -ExcludeSystemUser -SqlInstance dfhlbdmsql10 -Database Collateral_Reporting|Remove-DbaDbUser
    #Get-DbaDatabaseUser -ExcludeSystemUser -SqlInstance tfhlbdmsql10 -Database Collateral_Reporting|Remove-DbaDbUser
    Get-DbaDatabaseUser -ExcludeSystemUser -SqlInstance dfhlbdmsql10 -Database Collateral_Reporting|Remove-DbaDbUser
    Get-DbaDatabaseUser -ExcludeSystemUser -SqlInstance tfhlbdmsql15 -Database Derivatives|Remove-DbaDbUser


    Get-DbaLogin -WindowsLogins - Remove-DbaLogin -SqlInstance 