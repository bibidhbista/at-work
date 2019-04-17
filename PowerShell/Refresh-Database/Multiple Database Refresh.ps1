$SourceServer = 'pdmsql12'
$DestinationServer = 'ddmsql12'


#$databasesList = 'Hub','HubPersistent', 'HubStaging','InfoGov'
$databasesList =   'COLLATERAL_INTERFACE','DATA_DEPOT','COLLATERAL_STAGING','COLLATERAL_REPORTING'

$databasesList|%{
    $SourcedatabaseName = $_
    $DestinationDatabaseName = "$SourcedatabaseName`_old"
    write-host "Currently working on $SourcedatabaseName database on $SourceServer to $DestinationDatabaseName database on $DestinationServer server."
    .$PSScriptRoot\Refresh-Database.ps1 -SourceServer $SourceServer -DestinationServer $DestinationServer -SourceDatabaseName $SourcedatabaseName -DestDatabaseName $DestinationDatabaseName
}
