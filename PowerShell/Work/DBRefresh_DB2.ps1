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

$sourceServer    = '10.79.01.41' 
$sourcePath      = "$sourceServer\J$\DB2\Backup\Fulldumps Medical\"
$targetServer    = '10.79.14.16'                                      # New reporting db server
$targetPath      = "$targetServer\Unsure$"                            # Needs path
$dbname          = ''                                                 # Needs database name

# Copy latest backup file to target server
$latestBakFile     = $(gci -path $sourcePath|? {!$($_.PsIsContainer)}|sort LastWriteTime -Descending| select -first 1).FullName
$TimeStampFromLatest = $latestbakFile #regex extract

try{
    ROBOCOPY "$sourcePath\$latestBakFile" "$targetPath\$latestBakFile"
}
catch{
    Write-Error "Couldn't copy latest backup file. Please check $sourcePath and $targetPath to make sure." -ErrorAction Stop
}


# Connect to DB2 for restore if file has been copied over
$check = test-path($latestBakFile) #verification
if($check){

}


# Connection Strings to reporting db

# Restore dbs
$RestoreDB  = "RESTORE DATABASE MEDICAL FROM 10.79.14.16\Unsure$ TAKEN AT 20190630211600 LOGTARGET F:\DB2\MEDICAL\LOGS NEWLOGPATH F:\DB2\MEDICAL\LOGS"
$res = Run-SQL $RestoreDB $dbname

if($res){
    Write-Host "Restore Successful"
}else{
    Write-Error "Restore Failed" -ErrorAction Stop
}


<#
--db2 update db cfg for MEDICAL using LOGARCHMETH1 DISK:D:\DB2\BACKUP\LogArchive\MEDICAL\
--db2 update db cfg for MEDICAL using FAILARCHPATH NULL


# Rollforward with remaining logs
$Rollforward = "Db2 ROLLFORWARD DATABASE MEDICAL TO END OF BACKUP AND COMPLETE OVERFLOW LOG PATH ("F:\DB2\MEDICAL\LOGS")"
$res  = Run-sql $Rollforward $dbname


# Apply permisisons
$Permissions = "SET PERMISSIONS FOR DATABASE F:\DB2\MEDICAL\LOGS"
$res  = Run-sql $Permissions $dbname

#>

