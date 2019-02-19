$SourceServer ='atgdsmsq17'
$DestServer ='atgdsmsq17'
$DestDB ='MIDOC_FIDUCIARY_TEST'
$SourceDB ='MIDOC_FIDUCIARY_DEFAULTS'
$query=@"
select o.name, m.definition
  from sys.objects o
  join sys.sql_modules m
    on o.object_id = m.object_id
  join sys.schemas s
    on s.schema_id = o.schema_id
"@

$count1=0
$count2=0
$NotMatch=""
$SourceSPDefs= Invoke-Sqlcmd -ServerInstance $SourceServer -Database $SourceDB -Query $query
$DestSPDefs= Invoke-Sqlcmd -ServerInstance $DestServer -Database $DestDB -Query $query

foreach($sourceSp in $SourceSPDefs){
    foreach($DestSP in $DestSPDefs){
        if($sourceSp.name -eq $DestSP.name){
            if($sourceSp.definition -eq $destSp.definition){
                $count1 +=1
            }else{
               $count2+=1
               $NotMatch+="'r'n$($SourceSP.name) doesn't match $($destSp.name).'r'n ---------------$SourceServer.$SourceDB..$($SourceSP.name)'r'n$($SourceSP.definition)'r'n ---------------$DestServer.$DestDB..$($DestSP.name)'r'n$($DestSP.definition)"
               
               
            }}
          
    }

}
write-host "$count1 SP match and $count2 don't match. $NotMatch"