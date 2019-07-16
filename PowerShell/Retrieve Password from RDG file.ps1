#notepad++.exe 'C:\users\bibidhb\desktop\BibidhRDP.rdg'
#pause
$PwdString = 'AQAAANCMnd8BFdERjHoAwE/Cl+sBAAAAJDb6yqOniUqeftr+8JWDJgAAAAACAAAAAAADZgAAwAAAABAAAAAMy4AVqzGKhTWXT/qB+n2MAAAAAASAAACgAAAAEAAAAChjzZrVzvDLQa8NCla5FIYgAAAA+WGFJw5cloFY0oXNmXiel8gBdxD3h7fVwmexVMiGYiEUAAAAAeRk6XXh1qdL98Ge+z7iFCN17T8='
Copy-Item 'C:\Program Files (x86)\Microsoft\Remote Desktop Connection Manager\RDCMan.exe' 'C:\temp\RDCMan.dll' 
Import-Module 'C:\temp\RDCMan.dll'
$EncryptionSettings = New-Object -TypeName RdcMan.EncryptionSettings
[RdcMan.Encryption]::DecryptString($PwdString, $EncryptionSettings)
