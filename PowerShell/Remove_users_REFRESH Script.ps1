$server = ''
$name = "schen"

$server|%{
    write-host "Currently looking for $name on server $_"
    Get-DbaDatabaseUser -ExcludeSystemUser -serverinstance $_ |? name -like "*$name*"| Remove-DbaDbUser #-WhatIf

    }


    Get-DbaLogin -WindowsLogins - Remove-DbaLogin -SqlInstance 
