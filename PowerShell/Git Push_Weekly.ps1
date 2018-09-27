Set-ExecutionPolicy -ExecutionPolicy Unrestricted
$date = get-date -Format "MMddyyyy"
cd $PSScriptRoot
git add *
git commit -m "Weekly Commit_$date"
git push