############################################################## Incoming and outgoing msgs are already done and ready for table diff #####################################

$Date = Get-date -Format MMddyyyy_HHmm
$HomeDir= $PSScriptRoot
$SourceServer = "C_SQLGLOBAL\C_SQLGLOBAL"
$SourceDB = "OpsData"
#$SourceSchema ="dbo"                                                                     #pull
#$SourceTable = "Calls"                                                                   #pull
$DestServer ="C_DEVSQLGLOBAL\C_DEVSQLGLOBAL"
$DestDB = "DevOpsData"
#$DestSchema= "dbo"                                                                       #pull
#$DestTable ='Calls','ContactAddress'                                                     #pull

# Vars to hold generated BCP commands
$outCmd =''
$TruncateCmd =''
$inCmd =''

################################################################### PULLS IN TABLE AND SCHEMA NAMES TO BE BCP'd ##############################################################
$SourceTables      = Invoke-Sqlcmd -ServerInstance $SourceServer      -Database $SourceDB       -Query "SELECT schema_name(schema_id) as SchemaName,NAME AS Name FROM SYS.TABLES T WHERE T.NAME NOT LIKE 'SYS%' AND T.NAME NOT LIKE '%EXCLUSIONLIST%' AND T.NAME NOT LIKE '%IMPORT%' AND T.NAME NOT LIKE '%DMOPTIONS%' AND T.NAME NOT LIKE '%WORKTABLE%' AND T.NAME  not LIKE '\_%' ESCAPE '\' and t.name ='ContactAddresses' order by t.name"
$DestinationTables = Invoke-Sqlcmd -ServerInstance $DestServer     -Database $DestDB  -Query "SELECT schema_name(schema_id) as SchemaName,NAME AS Name FROM SYS.TABLES T WHERE T.NAME NOT LIKE 'SYS%' AND T.NAME NOT LIKE '%EXCLUSIONLIST%' AND T.NAME NOT LIKE '%IMPORT%' AND T.NAME NOT LIKE '%DMOPTIONS%' AND T.NAME NOT LIKE '%WORKTABLE%' AND T.NAME  not LIKE '\_%' ESCAPE '\'  and t.name ='ContactAddresses' order by t.name"

$SourceTableNames = $SourceTables.name
$SourceSchemaNames = $SourceTables.Schemaname
$Count=0
cd $HomeDir
# do for each table supplied  # for tables that exist on both
foreach ($DestTable in $DestinationTables){
    $DestTableName =$DestTable.name
    $DestSchemaName = $DestTable.SchemaName
    

 if (($SourceTableNames.Contains($DestTableName)) -and ($SourceSchemaNames.Contains($DestSchemaName))){
    # Only if the table also exists in source
    foreach($SourceTable in $SourceTables){
    
        $SourceTableName =$SourceTable.name
        $SourceSchemaName = $SourceTable.SchemaName

        $SourceFullName ="$SourceSchemaName.$SourceTableName"
        $DestFullName ="$DestSchemaName.$DestTableName"

         if ($SourceFullName -eq $DestFullName){
            Write-host "[$DestSchemaName].[$DestTableName] exists on both SOURCE: ($SourceServer) and DESTINATION: ($DestServer) Generating bcp commands ..." #-BackgroundColor Green

            $BCPOutFileName = "BCPOUT_$SourceSchemaName`_$SourceTableName`_$date.txt"

            #out
            $Count += 1
            $outCmd += "bcp  $SourceDB.$SourceSchemaName.$SourceTableName out $BCPOutFileName -S $SourceServer -N -E -T >> BCPOUT_$date.log`n"
            
            #Truncate before load
            $TruncateCmd +="osql -S $DestServer -d $DestDB -T -E  -Q`"Truncate table $DestSchemaName.$DestTableName`" -o  BCPIN_$date.log`n"
            $inCmd += "bcp $DestDB.$DestSchemaName.$DestTableName in $BCPOutFileName -S $DestServer -q -N -E -T >> BCPIN_$date.log`n"
            break;
          }else{
                #write-host "[$DestSchemaName].[$DestTableName] exists on $DestServer but not on the source server ($SourceServer)" -BackgroundColor red
                }
    }
}}

Write-Host "`n`n ** Generated BCP Commands for $Count tables ** " 

$outCmd|Out-File "BCPOut.txt"
$TruncateCmd, $inCmd |Out-File "BCPIn.txt"
#ii $HomeDir,"BCPOut.txt","BCPIn.txt"


cmd /c $outCmd
Write-Host "`n`n ** Executed BCPOUT Commands for $Count tables ** " -BackgroundColor Green

#cmd /c $outCmd
#Write-Host "`n`n ** Executed BCPOUT Commands for $Count tables ** " 