#Set-ExecutionPolicy -ExecutionPolicy Unrestricted
cd $PSScriptRoot
git add *
$commitMessage=Read-host("Enter message for commit: ")
git commit -m "$commitMessage"
git push
