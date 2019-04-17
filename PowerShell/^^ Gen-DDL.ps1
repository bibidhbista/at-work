Add-Type -AssemblyName "Microsoft.SqlServer.Smo"

$server = "ATGDSMSQ14"
$DBNAMES = "ICON_DEV"
$action = "ALTER"
$obj    = "COLUMN"


#$SQLObject            = new-object Microsoft.SqlServer.Management.Smo.Server $server;
#$SQLObjectDbs         = $SQLObject.Databases|? name -EQ 'ICON_DEV'
#$SQLObjectTableNames  = $SQLObjectDbs.Tables|select -Property name, schema

#$tableNames           = 'dbo.Prescreenings','dbo.H_Prescreenings'
#foreach ($tbnm in $tableNames){
#   foreach($tblObj in $SQLObjectTableNames){
#    $sch = $tblObj.Schema
#    $name = "$sch.$($tblObj.name)"
#        if($name -eq $tbnm){
#            $tblObj |gm
#        break; 
#         }
#    }
#
#}
$server      = "ATGDSMSQ14"
$DBNAMES     = "ICON_DEV"
$action      = "ALTER"
$obj         = "COLUMN"             
$tableNames  = 'dbo.Prescreenings','dbo.H_Prescreenings'


# Create custom PSObject for handling column details
$ColObjArray = @()
if($obj ="column"){
  
    $colList         = "CBCrimeAnswer","CBCriminalHistoryAnswer","CBVictimHistoryAnswer","CAMisconductMgmtAnswer","CAPriorSupervisionHistoryAnswer","PICoreProgrammingAnswer","PIEducationAnswer","PIWorkAnswer","PISubstanceAbuseAnswer",
    "PIOtherProgrammingAnswer", "PHMentalHealthHistoryAnswer","PHSubstanceAbuseHistoryAnswer"
    
    $DataTypeList    = "int","int","int","int","int","int","int","int","int","int","int","int"
    $NullableList    = "NULL","NULL","NULL","NULL","NULL","NULL","NULL","NULL","NULL","NULL","NULL","NOT NULL"
    
    for($i=0; $i -le $($colList.Length);$i++) {
        try{
            $ColObjArray += @([pscustomobject]@{ColumnName="$($colList[$i])";DataType="$($DataTypeList[$i])";Nullable="$($NullableList[$i])"}) 
        }catch{
            Write-Error "The number of columns listed don't match the number of data types/properties listed." -ErrorAction Stop
        }
    }

}

Write-Output "Verify column changes below:`r`n"
$($ColObjArray|Out-Host)

$Verified = Read-Host "Enter Y to script changes. Press any other key to exit..."

if($Verified -eq "Y"){
    cls
    foreach($DBNAME in $DBNAMES){
        # Verify tables exists before creating scripts
        $tableNamesString = $tableNames -join "'),object_id('"
        $tableNamesString = "object_id('$tableNamesString')"
        $query            = "Select count(*) as Count from sys.tables where [object_id] in ($tableNamesString)"
        $StupidCheck = Invoke-Sqlcmd -ServerInstance $server -Database $DBNAME -Query $query
        if($tableNames.Count -ne $StupidCheck.Count){
            Write-Error "Specified tables don't exist on $DBNAME database on $server server." -ErrorAction Stop
        }
            
        $sqlCmd     = "-- ** Generated on $(Get-date) ** --`r`n`r`nUSE $DBNAME`r`nGO`r`n"
        if($action ="ALTER"){
            if($obj ="COLUMN"){
                foreach($table in $tableNames){
                    $sqlCmd    += "------------------------ ** Changes for $table ** ------------------------`r`n"
                    foreach($col in $ColObjArray){
                    

                        $sqlCmd +="IF EXISTS (SELECT * FROM SYS.COLUMNS WHERE NAME ='$($col.Columnname)' AND [OBJECT_ID] = OBJECT_ID('$TABLE'))`r`nBEGIN`r`n`t$action table $table $action $obj $($col.columnname) $($col.Datatype) $($col.nullable)`r`nEND`r`n"
                    }
                    $sqlCmd    += "------------------------ ** End of Changes for $table ** ------------------------`r`n`r`n"
                }
            }

        }
    }
    $sqlCmd

    # too lazy to copy
    $sqlCmd|Out-Clipboard
    Write-Host "Query has been copied to clipboard!" -BackgroundColor Cyan -ForegroundColor Black
}
