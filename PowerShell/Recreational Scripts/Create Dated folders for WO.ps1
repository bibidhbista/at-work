$Date = Get-Date -Format MMddyyyy
$thisMonth = $(get-date)
$lastMonth = $thismonth.AddDays(-1)
$diff =  $thisMonth.Month - $lastMonth.Month 
$FIRSTDAYOFMONTH=GET-DATE  -Day 1 -Format dd
$LASTDAYOFMONTH=$(GET-DATE -Day 1).AddMonths(1).AddDays(-1).Day
$Month =get-date -Format MM
# To change path
$paths= "E:\WO\2019\ATG_InmateKiosk\$month$FIRSTDAYOFMONTH-$Month$LASTDAYOFMONTH",
        "E:\WO\2019\$month$FIRSTDAYOFMONTH-$Month$LASTDAYOFMONTH",
        "E:\WO\2019\MIDOC\Fid\$month$FIRSTDAYOFMONTH-$Month$LASTDAYOFMONTH",
        "E:\WO\2019\MIDOC\Med\$month$FIRSTDAYOFMONTH-$Month$LASTDAYOFMONTH",
        "E:\WO\2019\MIDOC\FoodService\$month$FIRSTDAYOFMONTH-$Month$LASTDAYOFMONTH",
        "E:\WO\2019\MIDOC\Roster\$month$FIRSTDAYOFMONTH-$Month$LASTDAYOFMONTH",
        "E:\WO\2019\MIDOC\Security\$month$FIRSTDAYOFMONTH-$Month$LASTDAYOFMONTH",
        "E:\WO\2019\MIDOC\Ticketing\$month$FIRSTDAYOFMONTH-$Month$LASTDAYOFMONTH",
        "E:\WO\2019\NE\$month$FIRSTDAYOFMONTH-$Month$LASTDAYOFMONTH",
        "E:\WO\2019\OBS\$month$FIRSTDAYOFMONTH-$Month$LASTDAYOFMONTH",
        "E:\WO\2019\ICON\$month$FIRSTDAYOFMONTH-$Month$LASTDAYOFMONTH",
        "E:\WO\2019\CoreView\$month$FIRSTDAYOFMONTH-$Month$LASTDAYOFMONTH"


foreach($path in $paths){
    if($diff -eq 1){
        $FIRSTDAYOFMONTH=GET-DATE  -Day 1 -Format dd
        $LASTDAYOFMONTH=$(GET-DATE -Day 1).AddMonths(1).AddDays(-1).Day
       
        md $path
    }


    do {
      $dirs = gci $path -directory -recurse | Where { (gci $_.fullName).count -eq 0 } | select -expandproperty FullName
      $dirs | Foreach-Object { Remove-Item $_ }
    } while ($dirs.count -gt 0)


    cd $path 
    md $date

}
