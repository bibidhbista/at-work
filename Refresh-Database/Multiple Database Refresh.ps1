$SourceServer = 'pfhlbdmsql14'
$DestinationServer = 'sqltest2016'


$databasesList = 'Hub','HubPersistent', 'HubStaging','InfoGov'

$databasesList|%{
    $databaseName = $_
    write-host "Currently working on $databaseName"
    .\$PSScriptRoot\refresh-database.ps1 -SourceServer $SourceServer -DestinationServer $DestinationServer -SourceDatabaseName $databaseName -DestDatabaseName $databaseName
}