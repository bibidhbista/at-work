notepad++.exe 'C:\users\bibidhb\desktop\BibidhRDP.rdg'
#pause
$PwdString = 'AQAAANCMnd8BFdERjHoAwE/Cl+sBAAAAJG+rw2SLNU6DDt+4sU8T9wAAAAACAAAAAAADZgAAwAAAABAAAABu8oCa+b6VXSEAY2nOwKniAAAAAASAAACgAAAAEAAAAEJQvqtL2u0xyvSS47kldocwAAAASit9yTm2nMZ49ocXKhlenFJC2X99fu8RGdu5bXQELu/X/i04rBpYkIDmagh3N6lMFAAAAHO/H45QH7JtJkHsGfEaSKRNx1k4'
Copy-Item 'C:\Program Files (x86)\Microsoft\Remote Desktop Connection Manager\RDCMan.exe' 'C:\temp\RDCMan.dll' 
Import-Module 'C:\temp\RDCMan.dll'
$EncryptionSettings = New-Object -TypeName RdcMan.EncryptionSettings
[RdcMan.Encryption]::DecryptString($PwdString, $EncryptionSettings)
