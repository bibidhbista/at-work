$server = "tfhlbdmsql14"


Get-DbaDatabaseUser -ExcludeSystemUser -serverinstance -Database fhlb,eom,principia_interface | Remove-DbaDbUser -WhatIf