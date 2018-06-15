Set-ExecutionPolicy -ExecutionPolicy Unrestricted
cd $PSScriptRoot
git add *
git commit -m "Weekly Commit"
git push