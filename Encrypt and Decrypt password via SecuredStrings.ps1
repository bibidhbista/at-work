#$credential = Get-Credential
#$credential.Password | ConvertFrom-SecureString | Set-Content c:\encrypted_password.txt

$encrypted = Get-Content c:\encrypted_password.txt | ConvertTo-SecureString
$credential = New-Object System.Management.Automation.PsCredential('atg\bibidhb', $encrypted)

start-job {Invoke-Sqlcmd -ServerInstance bbista -Database master -Query "select @@version"} -Credential $credential|Wait-Job|Receive-Job