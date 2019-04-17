#try{
#        Invoke-Sqlcmd -InputFile "$PSScriptRoot\Windows_Orphan_Fix.sql" -serverinstance tdmsql15 -database Products_Reporting -Verbose 
#    }catch{
#        Write-Error "Couldn't fix Windows Orphaned Users. Check if you have sufficient permissions to run the permissions extract script on $PSScriptRoot!" -ErrorAction Stop
#    }

$DestinationServer='tdmsql15'
$DatabaseName = 'Products_Reporting'
$SourceServer ='tdmsql12'

$object = Repair-DbaOrphanUser -SqlInstance $DestinationServer -Database $DatabaseName
    $users = $object.user
    $count = $users.count

    # If there are SQL Orphan Users
    if($count -gt 0){
        Write-Host "Following SQL Orphan User(s) were fixed: " -BackgroundColor Green
        foreach($user in $users){
                Copy-DbaLogin -Source $SourceServer -Destination $DestinationServer -Login $user # Migrates Logins with password so they don't have to be reentered for SQL Logins
        }
        Repair-DbaOrphanUser -SqlInstance $DestinationServer -Database $DatabaseName|ft -AutoSize
    }
