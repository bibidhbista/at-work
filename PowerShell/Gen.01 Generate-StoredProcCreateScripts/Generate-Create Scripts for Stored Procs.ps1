#ii "C:\Users\bibidhb\Desktop\WO\2018\0901-0930\09072018\Drop SPs Justin H midoc base\listsp.txt"
#ii "$PSScriptRoot\ListSp.txt"
############################ run the above command to change the list of SP supplied ########################


$servName ='ATGDSMSQ14'
$dbName = 'MIDOC_MIAccess_Dev'#'MIDOC_FIDUCIARY_DEV'
$spnames = gc "$PSScriptRoot\ListSp.txt"

$alLSQL =''


foreach($spname in $spnames){
    $sQL = $(Invoke-Sqlcmd -ServerInstance $servName -Database $dbName -Query "exec sp_helptext $spname").text
    $sql.Length
    $alLSQL+=$sQL
}
$date = get-date -Format MMdd_HHmm
$outFile = "$PSScriptRoot\Sp_Scripted_CYA_$date.sql"
$alLSQL|out-file $outFile

ii $outFile


#bcp MIDOC_FIDUCIARY_DEV.dbo.admCountersLockBox out admCountersLockBox.txt -S ATGDSMDSQ17 -T -E -N >>bcpout.log
#bcp MIDOC_FIDUCIARY_DEV.dbo.CBCOutsideSource   out CBCOutsideSource.txt -S ATGDSMDSQ17 -T -E -N >>bcpout.log
#bcp MIDOC_FIDUCIARY_DEV.dbo.CBCPrivateSector   out CBCPrivateSector.txt -S ATGDSMDSQ17 -T -E -N >>bcpout.log
#bcp MIDOC_FIDUCIARY_DEV.dbo.RevReplLocations   out RevReplLocations.txt -S ATGDSMDSQ17 -T -E -N >>bcpout.log
#ii $PSScriptRoot
