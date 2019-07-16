$date = $(Get-Date).tostring("yyyyMMdd")
$path =  "E:\WO\2019\NE\Rollout\$date"
$bcpCmdPath = "C:\Projects\DBA\Nebraska\NE_Medical\Database\Medispan"

if (!(Test-Path $path)){
    md $path
  }

Copy-Item $bcpCmdPath\* $path -Force
cd $path
.\bcpout.cmd;

Compress-Archive * -DestinationPath "$path"
del $path -Force
ii "E:\WO\2019\NE\Rollout"