$date = get-date
$x=0


while ($x -lt 10000) {
    $date= $date.addDays($x)
    
    if($($date.day) -eq 2)
    {
        if($($date.dayofweek) -eq 'Tuesday'){
            #echo "It's Two $($date.DayOfWeek)  $date"
            if(($($date.year)%10000) -eq '2'){
            echo "It's Two $($date.DayOfWeek) on year $($date.year)"

        }else {}
        }else {}
    }else {}

    $x+=1
}