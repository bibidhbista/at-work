#notepad++.exe 'C:\users\bibidhb\desktop\BibidhRDP.rdg'
#pause
$PwdString = 'AQAAANCMnd8BFdERjHoAwE/Cl+sBAAAADNyLaWIvWkWTdDwal6o32QAAAAACAAAAAAADZgAAwAAAABAAAACAD2pHa1VQD28ixUJSsmizAAAAAASAAACgAAAAEAAAAJcUGIeMyD+JlYqnQ0Ef1BkgAAAAoHVkxLBpj5b9gbAYg6nnB8qwev9W6QWhS6g1GLTELMcUAAAAXF5Fqok1CQ574+frT7wEMRlcofc='
Copy-Item 'C:\Program Files (x86)\Microsoft\Remote Desktop Connection Manager\RDCMan.exe' 'C:\temp\RDCMan.dll' 
Import-Module 'C:\temp\RDCMan.dll'
$EncryptionSettings = New-Object -TypeName RdcMan.EncryptionSettings
[RdcMan.Encryption]::DecryptString($PwdString, $EncryptionSettings)
