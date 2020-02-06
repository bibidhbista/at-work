#notepad++.exe 'C:\users\bibidhb\desktop\BibidhRDP.rdg'
#pause
$PwdString = 'AQAAANCMnd8BFdERjHoAwE/Cl+sBAAAAOqeFd+JvLUiKly1CFJU+HQAAAAACAAAAAAADZgAAwAAAABAAAAAf2umNMhHDeRk+5tEUKegFAAAAAASAAACgAAAAEAAAACt3qlZ1p5xF+p56UOo0pDUwAAAAwlMXeXgUIJ7ObAHJfmWOPUOAOdjGgTgAwwrueXL+BdQNUyWc4nckNjydEADw69WPFAAAAInNk7+hE9XlqrXj6AO1yJuGi71K'
Copy-Item 'C:\Program Files (x86)\Microsoft\Remote Desktop Connection Manager\RDCMan.exe' 'C:\temp\RDCMan.dll' 
Import-Module 'C:\temp\RDCMan.dll'
$EncryptionSettings = New-Object -TypeName RdcMan.EncryptionSettings
[RdcMan.Encryption]::DecryptString($PwdString, $EncryptionSettings)
