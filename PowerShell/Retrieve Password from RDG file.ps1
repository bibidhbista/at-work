#Get-Content 'C:\users\bibidhb\desktop\BibidhRDP.rdg'|Out-GridView
$PwdString = 'AQAAANCMnd8BFdERjHoAwE/Cl+sBAAAAJG+rw2SLNU6DDt+4sU8T9wAAAAACAAAAAAADZgAAwAAAABAAAACL0q7UQyIyWSrZXo9efiaAAAAAAASAAACgAAAAEAAAAHS775QR+L9kTd7pD+ibqvAgAAAAjUGJB+4aY136yFXoXq42Eo1Ek/Fcx0F2AzHTRGDvkB8UAAAAZ3BTfaDaOJDh8bUz9Hr1wHFougU='
#Copy-Item 'C:\Program Files (x86)\Microsoft\Remote Desktop Connection Manager\RDCMan.exe' 'C:\temp\RDCMan.dll' 
#Import-Module 'C:\temp\RDCMan.dll'
$EncryptionSettings = New-Object -TypeName RdcMan.EncryptionSettings
[RdcMan.Encryption]::DecryptString($PwdString, $EncryptionSettings)