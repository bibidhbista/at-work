#notepad++.exe 'C:\users\bibidhb\desktop\BibidhRDP.rdg'
#pause
$PwdString = 'AQAAANCMnd8BFdERjHoAwE/Cl+sBAAAAJDb6yqOniUqeftr+8JWDJgAAAAACAAAAAAADZgAAwAAAABAAAADO+3kfSq5FKixpkpiMMO7EAAAAAASAAACgAAAAEAAAAB+WQKEvN/uChroz1kKYzgMgAAAAQ4oMuP0+PMYRlM+x9bhYbTQ7xQsj5f0uSsad1cG6FoQUAAAA26M7JB6NT6+xpw/ZXttvMRHYhlk='
Copy-Item 'C:\Program Files (x86)\Microsoft\Remote Desktop Connection Manager\RDCMan.exe' 'C:\temp\RDCMan.dll' 
Import-Module 'C:\temp\RDCMan.dll'
$EncryptionSettings = New-Object -TypeName RdcMan.EncryptionSettings
[RdcMan.Encryption]::DecryptString($PwdString, $EncryptionSettings)
