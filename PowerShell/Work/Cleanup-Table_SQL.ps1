
<#
PURPOSE      :   Cleanup records older than certain number of days in SQL. 

CONNECTION   :   Currently, this script uses windows authentication for connecting to the local DB2 instance using IBMDADB2 OLE DB provider.

PARAMETERS:
daysToStore  :   Rows older than specified number of days will be deleted from 'MED.WEBLOG','MED.DBLOG','PHARM.BATCHPRINTPRCS' tables. (see $tableNames var below to add/remove tables)
dbName       :   Database context to run under

#>

[cmdletbinding()]

param(
[int] $daysToStore,
[string] $dbName,
[string] $ServerName
)


$ServerName  = 'atgdsmsq14'
$dbName      = 'NE_medical_dev'
$daysToStore = 30

# Function to execute sql commands
function Run-SQL ($query, $db){
    # Connection settings
    $sqlConnection = New-Object System.Data.SqlClient.SqlConnection 
    $SqlConnection.ConnectionString = "Server = $ServerName; Database = $db; Integrated Security = True;"
    $SqlCmd = New-Object System.Data.SqlClient.SqlCommand($query, $sqlConnection)
    $SqlAdapter = New-Object System.Data.SqlClient.SqlDataAdapter($SqlCmd)
    $DataSet = New-Object System.Data.DataSet
    $SqlAdapter.Fill($DataSet) |out-null
    $SqlConnection.Close() 
    return $DataSet
    
}

# List of tables to cleanup
$tableNames  = 'MED.WEBLOG','MED.DBLOG','PHARM.BATCHPRINTPRCS'

# For each table
foreach ($table in $tableNames){
    "`nCurrently running cleanup for $table table on $dbName."
    # Get RecId
    $recId        = "select max (recid) from $table where  entereddt <= dateadd(dd,-$daysToStore,getdate());" 
    if ($table -eq 'PHARM.BATCHPRINTPRCS'){
           $recId = $recId.Replace('(recid)','(BatchPrintPrcsid)')
    }
    $MaxIdStr     = ((Run-SQL $recId $dbName)).tables.rows.column1
   
    # Delete rows based on the recId
    if($MaxIdStr -ne 0 -and $MaxIdStr -ne $null -and $MaxIdStr -isnot [DBNull] ){
        $MaxRecId = $MaxRecId.ToInt32($null)
        
        # Get rows to be deleted
        $RowsToDelete = "select * from $table where recid < $MaxRecId;" 
        if ($table -eq 'PHARM.BATCHPRINTPRCS'){
            $RowsToDelete=$RowsToDelete.Replace('recid','BatchPrintPrcsid')
        }
        try{
            $RowsDeleted = Run-SQL $RowsToDelete $dbName
            write-host "This will delete $($RowsDeleted.tables.rows.count) rows from the $table table."
            #Run-SQL "delete from $table where recid < $MaxRecId;" $dbName
        }catch{
            Write-Error "Couldn't delete rows from $table on $dbName." -ErrorAction Stop
        }
    }else{
       Write-Host "No rows are older than $((get-date).AddDays(-$daysToStore)) in $table table. 0 rows deleted."
    }
}

