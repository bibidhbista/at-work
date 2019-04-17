###################### VARS TO SET ######################
$path = "\\pfs02\sqlbackup\*"
$fileExt = ".*"
$olderThaninDays = '7'
#########################################################

#command exec
$path+=$fileExt
$list = gci -Path $path  -Recurse|? {$_.LastWriteTime -le (Get-date).AddDays(-$olderThaninDays)}|select -Property name,lastwritetime|sort lastwritetime|ft -AutoSize

$list
$count =$list.Length
Write-Host "There are $count file(s) older than $olderThaninDays day(s) in $path" -BackgroundColor Green 
