$PwdString = 'AQAAANCMnd8BFdERjHoAwE/Cl+sBAAAAu+QkWMJNfEKu5aeEiTtEigAAAAACAAAAAAADZgAAwAAAABAAAADsb2j9LS6lTNV8J1K/jyX+AAAAAASAAACgAAAAEAAAAAXAVNZhNrcjLgOlM+70IyMgAAAAbbpHAYtrwV1ULZuRbGUT8r9FTjWfvFqsZ1OZa2zrCbYUAAAAAh+puQt8ddQcMftEBitLcImemd4='
Copy-Item 'C:\Program Files (x86)\Microsoft\Remote Desktop Connection Manager\RDCMan.exe' 'C:\temp\RDCMan.dll' 
Import-Module 'C:\temp\RDCMan.dll'
$EncryptionSettings = New-Object -TypeName RdcMan.EncryptionSettings
[RdcMan.Encryption]::DecryptString($PwdString, $EncryptionSettings)