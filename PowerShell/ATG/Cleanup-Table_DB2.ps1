# NC-DB2, NE-SQL

<#
PURPOSE      :   Cleanup records older than certain number of days in DB2. 

CONNECTION   :   Currently, this script uses windows authentication for connecting to the local DB2 instance using IBMDADB2 OLE DB provider.

PARAMETERS:
daysToStore  :   Rows older than specified number of days will be deleted from 'MED.WEBLOG','MED.DBLOG','PHARM.BATCHPRINTPRCS' tables. (see $tableNames var below to add/remove tables)
dbName       :   Database context to run under

#>

[cmdletbinding()]

param(
[int] $daysToStore,
[string] $dbName

)

# Function to execute sql commands
function Run-SQL ($query, $db){
    # Connection settings
    $cn    =  new-object system.data.OleDb.OleDbConnection("Provider=IBMDADB2;DSN=$db; User Id=;Password=;");
    $da    =  new-object "System.Data.OleDb.OleDbDataAdapter" ($query, $cn)
    $ds    =  new-object "System.Data.DataSet" "dsResults"
    $da.Fill($ds)|out-null
    $cn.close()    

    return $ds
    
}



# Params for testing
$dbName      = "MEDDEV"
$daysToStore = 7

# List of tables to cleanup
$tableNames  = 'MED.WEBLOG','MED.DBLOG','PHARM.BATCHPRINTPRCS'

# Get check date
$CheckDate   = "select (CURRENT_DATE-$daysToStore DAY) from sysibm.sysdummy1;"
$CheckDate   = ((Run-SQL $CheckDate $dbName).tables[0].1).ToString("yyyy-MM-dd HH:mm:ss.fff")


# For each table
foreach ($table in $tableNames){
    "`nCurrently running cleanup for $table table on $dbName."
    # Get RecId
    $recId        = "select max (recid) from $table where  entereddt <= '$CheckDate';" 
    if ($table -eq 'PHARM.BATCHPRINTPRCS'){
           $recId = $recId.Replace('(recid)','(BatchPrintPrcsid)')
    }
    
    $MaxIdStr =(Run-SQL $recId $dbName).tables[0].1
    # Delete rows based on the recId
    if($MaxIdStr -ne '' -and $MaxIdStr -ne $null -and $MaxIdStr -isnot [DBNull]){
        $MaxRecId = $MaxIdStr.ToInt32($null)
        
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
       Write-Host "No rows are older than $CheckDate in $table table. 0 rows deleted."
    }
}

