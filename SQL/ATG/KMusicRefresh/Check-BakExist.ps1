[CMDLETBINDING()]
param(
    [switch]$check
)



$root         = "\\10.47.239.20\f$"

# Creds and config
$runDate      = (Get-date).ToString("yyyy_MM_")
#$runDate      += "KioskTempDb.bak"
$runDate      = "KDb.bak"
$runftp       = 0
$User         = "KGNVPWISQL1\atgsqlsvc"
$File         = "E:\at-work\SQL\ATG\KMusicRefresh\KMusicRefresh.txt"
$Drive        = Get-PSDrive|? name -eq "K"

if(!$drive){
    New-PSDrive -Name "K" -PSProvider FileSystem -Root $root -Credential $Creds
}
cd K:
$file         = gci -Filter "$runDate"|select -First 1
$File
if($file){
   Write-Host "`r`nFile $($file.basename) Exists at $root and is ready to be moved using ftp."
   $runftp = 1
}else{
   $runftp = 0
   Write-Host "Backup file doesn't exist for $runDate as of $(Get-date)." 
}

# Gen Enc Pass
$PasswordFile = "E:\at-work\SQL\ATG\KMusicRefresh\ftpEncPass"
$KeyFile = "E:\at-work\SQL\ATG\KMusicRefresh\AES.key"
#$Key = New-Object Byte[] 32                                                           # You can use 16, 24, or 32 for AES
#[Security.Cryptography.RNGCryptoServiceProvider]::Create().GetBytes($Key)
#$Key | out-file $KeyFile
#| ConvertTo-SecureString  -AsPlainText -Force | ConvertFrom-SecureString -Key $key| Out-File $PasswordFile


# Get Enc Credential
$User = "atgftp"
$key = Get-Content $KeyFile
$Creds = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, (Get-Content $PasswordFile | ConvertTo-SecureString -Key $key)

# Ftp Put to remote site
if($runftp -eq 1){
    $LocalFile = $file.PSParentPath
    $PutCmd    = "lcd $LocalFile`r`ndir"
    cmd /c $PutCmd

}


#Remove-PSDrive -Name K -Force|Out-Null