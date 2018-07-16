# change the miles to travel value (one way)

[double]$TotalMilesOneway = Read-host 'Enter the number of miles to drive (One-Way)'

# estimated/average 
$Offset = 30             # assuming you're not completely out of gas AND a complete idiot
$AvgSpeed = 70           #in mph
$TotalMilesRefuelNeeded = $TotalMilesOneway-$offset

# Car Specs
$TankSize = 13.5
$FuelPricePerGallon = 3.0
$MilesPerGallon= 35
$TotalFuelPricePerGallon = $TankSize * $FuelPricePerGallon
$PricePerMile = [math]::Round(($FuelPricePerGallon/$MilesPerGallon),2)
$Mileage = ($MilesPerGallon*$TankSize)
$PricePerFullTank = $FuelPricePerGallon*($TankSize-($Offset/$MilesPerGallon))

# calcs
$Stops = [math]::Floor(($TotalMilesOneway*2)/$Mileage)
$Expense = [Math]::Round((((($TotalMilesOneway*2))/$Mileage)*$FuelPricePerGallon*$TankSize),2)
$Time = [Math]::Round(($TotalMilesOneway/$AvgSpeed)+(($Stops/3)*(15/60)),2)

# outs
Write-Host "`nYou will be spending: " -NoNewline
write-host "`$$expense" -BackgroundColor darkred -NoNewline
Write-Host " with min. of $stops stop(s) at the gas station.`nTotal Cha-chingsss per mile: " -NoNewline
write-host "`$$PricePerMile." -BackgroundColor DarkRed -NoNewline
Write-Host "`nYou will be spending: " -NoNewline
write-host "$Time" -BackgroundColor darkred -NoNewline
Write-Host "` hour(s) for One-Way Drive." -NoNewline

