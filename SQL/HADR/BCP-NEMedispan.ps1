$date = $(Get-Date).tostring("yyyyMMdd")
$path =  "E:\WO\2019\NE\Rollout\Medispan\$date"
$bcpCmdPath = "C:\Projects\DBA\Nebraska\NE_Medical\Database\Medispan"

if (!(Test-Path $path)){
    md $path
  }

Copy-Item $bcpCmdPath\* $path -Force
cd $path
.\bcpout.cmd;


ii "E:\WO\2019\NE\Rollout\Medispan"
Compress-Archive * -DestinationPath "$path"
del $path -Force


##################### TO DO ########################
# connect anyconnect vpn
# robocopy files over to remote site
# Extract all
# run bcp