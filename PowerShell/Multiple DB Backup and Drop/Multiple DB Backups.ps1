$DBNames= gc $PSScriptRoot\DBNames.txt
$ServerName = 'Tfhlbdmsql07'
Start-Transcript "$PSScriptRoot\MultipleDB_Dropped_$ServerName.log"

# backup up
$DBNames|%{
    echo "$_ is being backedup"
    .$PSScriptRoot\BACKUPDB1-FC.ps1 -ServerName $ServerName -DatabaseName $_
}


# drop databases

#$DBNames|%{
#    echo "$_ is being backedup"
#    Invoke-Sqlcmd -ServerInstance $ServerName -Database $_ -Query "use [master]; drop database $_"
#}
##
#
Stop-Transcript