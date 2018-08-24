# Path to the Inmate Import folder and Inmate_Info csv file
$Path="C:\CoreView\InmateImport\Archive\"
$FileName = "INMATE_INFO.csv"
$FolderName = "Inmate_Info_Archive\"
$ErrorActionPreference = "Stop"

# Days to keep archived files
$DaysToStore = 45
$DaysToStoreLogs = 7
$Date = Get-Date -Format "MMddyyyy"


# Var Setup for folder path and file path
$FolderPath = $Path+$FolderName
$FilePath = $Path+$FileName
$LogPath = $FolderPath+"Logs"
$FileNameWOExt = $FileName.Replace(".csv","")
$NewFilePath = $FolderPath+"$FileNameWOExt`_"+$Date+".csv"
$FolderName="Inmate_Info_Archive\"



# MD if it doesn't exist
$LogPathCheck=Test-Path($LogPath)
if(!$LogPathCheck){
   md $LogPath -Force|Out-Null     
}

Start-Transcript -Path "$LogPath\Log_$date.log"
# Copy latest version of Inmate_Info
$check = Test-path($FileName)
if (!$check){
    copy $FilePath -Destination $NewFilePath
    }
else{
    Write-Error "$FilePath doesn't exist!" -ErrorAction $ErrorActionPreference
}


# Remove files older than $DaysToStore day(s)
try{
    Get-ChildItem "$FolderPath\*$FileNameWOExt*.csv"|? { $_.lastwritetime -le (Get-Date).AddDays(-$daysToStore)} |% {Remove-Item $_ -force }
    Get-ChildItem "$LogPath\Log*.log"|? { $_.lastwritetime -le (Get-Date).AddDays(-$DaysToStoreLogs)} |% {Remove-Item $_ -force }  
    Write-Host "Successfully removed file(s) older than $DaysToStore day(s) and logs older than $DaysToStoreLogs day(s)."
    }
catch{
    Write-Error "Couldn't delete files older than $DaysToStore day(s) from $FilePath."
}
Stop-Transcript