# Path to the Inmate Import folder and Inmate_Info csv file
$ParentArchiveDirPath="C:\CoreView\InmateImport\Archive\"
$ArchiveDirName = "InmateImport_Archive\"
$ErrorActionPreference = "Stop"

# Days to keep archived files :RETENTION CONFIG
$DaysToStoreInmateInfo = 90
$DaysToStore = 30
$DaysToStoreLogs = 45

# For SMTP
$EmailTo = "bibidhb@a-t-g.com"
$EmailFrom = "CoreView@a-t-g.com"

# Var Setup for folder path and file path
$Date = Get-Date -Format "MMddyyyy"
$AllCSVFileNames = gci "$ParentArchiveDirPath\*.csv"| select name
$ArchiveDirFullPath = $ParentArchiveDirPath+$ArchiveDirName
$ArchiveDirFullWPathDate =$ArchiveDirFullPath+$Date+"\"
$ArchiveLogDirPath = $ArchiveDirFullPath+"Logs"

# MD if it doesn't exist
$ArchiveLogDirPathCheck=Test-Path($ArchiveLogDirPath)
if(!$ArchiveLogDirPathCheck){
    md $ArchiveLogDirPath -Force|Out-Null     
}

# MD if it doesn't exist
$ArchiveDirFullWPathDateCheck=Test-Path($ArchiveDirFullWPathDate)
if(!$ArchiveDirFullWPathDateCheck){
    md $ArchiveDirFullWPathDate -Force|Out-Null     
}

Start-Transcript -Path "$ArchiveLogDirPath\InmateImportFilesLog_$date.log"

# Archival process for All Imported CSV Files
foreach($ImportFile in $AllCSVFileNames){
    $ImportFileName = $ImportFile.name
    $ImportFileFullPath = $ParentArchiveDirPath+$ImportFileName
       
    # Copy latest version of InmateImportFiles
    $check = Test-path($ImportFileFullPath)
    if ($check){
        copy $ImportFileFullPath -Destination $ArchiveDirFullWPathDate 
        "Successfully overwrote $ImportFileName to $ArchiveDirFullWPathDate"
        }
    elseif(!$check){
        copy $ImportFileFullPath -Destination $ArchiveDirFullWPathDate 
        "No existing file found at $ImportFileFullPath.Successfully copied $ImportFileName to $ArchiveDirFullWPathDate"
    }
    else{
        Write-Error "$ImportFileFullPath doesn't exist."
    }
}#end of archival

# Cleanup and Deduplications Alert

# Remove files older than *DaysToStore* day(s)
$rm_cnt=0
$rm_InmateInfo_cnt=0
$rm_logCnt=0

try{
     # For removing all other import file(s) except INMATE_INFO file older than x days   
    $AllOtherFileItems = gci "$ArchiveDirFullPath*.csv" -Recurse|select name, lastwritetime,directoryname|? name -NotLike "inmate_info*.csv"|? {$_.lastwritetime -le (Get-Date).AddDays(-$DaysToStore)} 
    $PathAllOtherFileItems = "$($AllOtherFileItems.DirectoryName)\$($AllOtherFileItems.Name)"
    If (Test-Path $PathAllOtherFileItems){
        $rm_cnt +=1
	    Remove-Item $PathAllOtherFileItems -Force -Verbose}

    # For removing all INMATE_INFO file(s) older than x days   
    gci "$ArchiveDirFullPath`Inmate_Info*.csv" -Recurse|? {$_.lastwritetime -le (Get-Date).AddDays(-$DaysToStoreInmateInfo)} |% {$rm_InmateInfo_cnt+=1;Remove-Item $_ -force -Verbose}
       
    # For removing log file(s) older than x days   
    gci "$ArchiveDirFullPath\*.log" -Recurse|? { $_.lastwritetime -le (Get-Date).AddDays(-$DaysToStoreLogs)} |% {$rm_logCnt+=1;Remove-Item $_ -force -Verbose}  
    #gci "$ArchiveDirFullPath"|? {$_.psiscontainer -and $_.lastwritetime -le (Get-Date).AddDays($DaysToStoreLogs)} |% {Remove-Item "$ArchiveDirFullPath\$_" -force -Recurse -Verbose}
    
    # End of cleanup
    Write-Host "Successfully removed $rm_cnt import file(s) older than $DaysToStore day(s), $rm_InmateInfo_cnt Inmate_Info file(s) older than $DaysToStoreInmateInfo day(s), and $rm_logCnt log(s) older than $DaysToStoreLogs day(s)." -BackgroundColor DarkGreen
    }
catch{
    Write-Error "Couldn't delete archived files/folders from $ArchiveDirFullPath."
}



# CYA: Duplicate file check :: Send email
$SendMail = 0
$body = ""

foreach($FileName in $AllCSVFileNames){
    $OrigImportFileName = $FileName.Name
    $OrigImportFileHashPath="$ParentArchiveDirPath$OrigImportFileName"
    $OrigImportFileHash = Get-FileHash -Path $OrigImportFileHashPath
    
    $OrigImportFileWildC = $OrigImportFileName.ToString().replace(".csv","*.csv")
    $ArchivedFiles = gci "$ParentArchiveDirPath$OrigImportFileWildC" -Recurse|select -Property name, directoryname

    foreach ($ArchivedFile in $ArchivedFiles){
            $ArchivedImportFileName = $ArchivedFile.Name
            $ArchivedImportDirPath = $ArchivedFile.DirectoryName
            $ArchivedImportFileHashPath = ($ArchivedImportDirPath+"\"+$ArchivedImportFileName)

            $LineCheck= $(gc $ArchivedImportFileHashPath|Measure-Object -line).lines
            
            # Compare only if there are records in the csv file
            if($LineCheck -gt 1){
                $ArchivedImportFileHash= Get-FileHash "$ArchivedImportFileHashPath"|select -Property Hash,Path

                if($($ArchivedImportFileHash.Hash) -eq $($OrigImportFileHash.hash)){
                    
                        $ArchiveFileDateModified = (gi -Path $ArchivedImportFileHashPath|select -Property lastwritetime).lastwritetime
                        $OriginalFileDateModified = (gi -Path $OrigImportFileHashPath|select -Property lastwritetime).lastwritetime
                    
                        $DayDiffOrigArch = New-TimeSpan -Start $ArchiveFileDateModified -End $OriginalFileDateModified
                    
                        # When there's a hash match for files that aren't same and haven't been created/modified on the same day
                        if($DayDiffOrigArch.Days -ge 1){
                                Write-Host "File at $ArchivedImportFileHashPath is the same as the current $OrigImportFileHashPath file but it is older." -BackgroundColor red
                                $body +="Import file on: $OrigImportFileHashPath is the same as archived file on $ArchivedImportFileHashPath.<br>With a hash of $ArchivedImportFileHash.<br><br>"
                                $SendMail =1
                        }
                        else{ 
                                #Write-Host "$OrigImportFileHashPath is the same as $ArchivedImportFileHashPath but it is from the same day." -BackgroundColor DarkGreen
                            }
                
                }
                else{
                    #Write-Host "$OrigImportFileHashPath is not the same as $ArchivedImportFileHashPath" -BackgroundColor DarkGreen
                }
           }else {
                Write-Host "Skipping duplicate hash check for $ArchivedImportFileHashPath because it doesn't have any records."
           }
    }
    
}


if($SendMail -eq 1){
    $body+= "<hr><br> See logs at $ArchiveLogDirPath<br><br><hr>"
    Send-MailMessage -To $EmailTO -From $EmailFrom -SmtpServer smtp -Subject "Duplicate Import file" -BodyAsHtml $body 
    Write-host "Sent an email from $EmailFrom to $EmailTo on $(Get-Date). " -BackgroundColor DarkGreen -NoNewline
}      

Stop-Transcript