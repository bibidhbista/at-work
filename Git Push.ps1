Set-ExecutionPolicy -ExecutionPolicy Unrestricted
cd $PSScriptRoot
git add *
$commitMessage=Read-host
git commit -m "$commitMessage"
git push