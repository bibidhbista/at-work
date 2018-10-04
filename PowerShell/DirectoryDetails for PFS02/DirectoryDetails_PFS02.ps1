<#
AUTHOR: BIBIDH BISTA


Goes through a share drive or folder path and gives size details of each of the folders. Use case: Monitor backup sizes moved/staged on a shared drive/folder.
#>




# Setup
$Dir = "\\atgdsmsq14\c$"                                                                                         ########### Change This
$OutputDir = "C:\Users\$env:USERNAME\desktop\DirectoryDetails\"                                                                  ########### Change This
$textFile ="$OutputDir\disk_space_results.txt"
md $OutputDir -Force|Out-Null

# For Total size
$d=dir $Dir -recurse -force -ErrorAction SilentlyContinue|select Mode,LastWriteTime, @{Name="Mbytes";Expression={[math]::Round($_.Length / 1Mb,2)}},Name|sort LastWriteTime -Descending|sort Mbytes -Descending|out-file $textFile -Force

# in GB # This is the preset value for the share drive. Don't have access to query size dynamically. :(
$totalSpace = 1500 # in GB                                                                                                         ########### Change This
$forPercentage = $totalSpace/100

# For each subfolder
$colItems = (Get-ChildItem $Dir -recurse | Measure-Object -property length -sum)
Write-host "The current size of the backup drive is: "  -NoNewline
Write-host ("{0:N2}" -f ($colItems.sum / 1GB) + " GB "+" = "`
            +"{0:N2}" -f ($colItems.sum / 1TB) + " TB "+
            "Usage: "+"{0:N2}" -f (($colItems.sum / 1GB)/$forPercentage)+"%"

            ) -BackgroundColor Green

Set-Content $textFile –value ("The current size of the backup drive is: "+"{0:N2}" -f ($colItems.sum / 1GB) + " GB = "+"{0:N2}" -f ($colItems.sum / 1TB) + " TB "+"Usage: "+"{0:N2}" -f (($colItems.sum / 1GB)/$forPercentage)+"%"),(Get-Content $textFile)

# Open the text file with all details
Invoke-Item $OutputDir\disk_space_results.txt;

# Display total size in an array along with the total memory occupied by all of these backups
$arrayOfDir= @()
$colItems = (Get-ChildItem $Dir -recurse | Where-Object {$_.PSIsContainer -eq $True} | Sort-Object)

foreach ($i in $colItems){
    
    $subFolderItems = (Get-ChildItem $i.FullName | Measure-Object -property length -sum)
    $sizeInMB = ("{0:N2}" -f ($subFolderItems.sum / 1MB) + " MB")
    $sizeInGB = ("{0:N2}" -f ($subFolderItems.sum / 1GB) + " GB")
    if($sizeInMB -gt 1){

        $dirDetails=New-Object -TypeName PSObject
        $dirDetails|Add-Member -MemberType NoteProperty -Name Dir -Value ($i.FullName)
        $dirDetails|Add-Member -MemberType NoteProperty -Name SizeInMB -Value ($sizeInMB)
        $dirDetails|Add-Member -MemberType NoteProperty -Name SizeInGB -Value ($sizeInGB)
    

        $arrayOfDir+=$dirDetails
    }
    

}
$arrayOfDir|Sort SizeInGB -Descending|Out-GridView