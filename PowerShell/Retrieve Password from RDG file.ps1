Get-Content 'C:\users\bibidhb\desktop\BibidhRDP.rdg'|Out-GridView
$PwdString = 'AQAAANCMnd8BFdERjHoAwE/Cl+sBAAAAJG+rw2SLNU6DDt+4sU8T9wAAAAACAAAAAAADZgAAwAAAABAAAABjpTMEMAWdG662J64WEkxOAAAAAASAAACgAAAAEAAAAKKX0P6HQz90bNAfNMwRK6UgAAAAkjfYb1qMhJnrF9fz2tuA5Y5GzRnDQQTwrHVntV35BHcUAAAA15I1hPvjgdC0lo3icCzT58pmZ2k='
Copy-Item 'C:\Program Files (x86)\Microsoft\Remote Desktop Connection Manager\RDCMan.exe' 'C:\temp\RDCMan.dll' 
Import-Module 'C:\temp\RDCMan.dll'
$EncryptionSettings = New-Object -TypeName RdcMan.EncryptionSettings
[RdcMan.Encryption]::DecryptString($PwdString, $EncryptionSettings)