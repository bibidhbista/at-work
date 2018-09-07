cd "C:\Users\bibidhb\Desktop\WO\2018\0901-0930"


$date = Get-Date -Format MMddyyyy


 md $date

# for month/year
#$last = ((Get-Date).AddDays(-$(Get-Date).Day)).Day