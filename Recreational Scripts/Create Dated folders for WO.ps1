$Date = Get-Date -Format MMddyyyy
$thisMonth = $(get-date)
$lastMonth = $thismonth.AddDays(-1)
$diff =  $thisMonth.Month - $lastMonth.Month 
$FIRSTDAYOFMONTH=GET-DATE  -Day 1 -Format dd
$LASTDAYOFMONTH=$(GET-DATE -Day 1).AddMonths(1).AddDays(-1).Day
$Month =get-date -Format MM
# To change path
$path= "C:\Users\bibidhb\Desktop\WO\2018\$month$FIRSTDAYOFMONTH-$Month$LASTDAYOFMONTH"

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

