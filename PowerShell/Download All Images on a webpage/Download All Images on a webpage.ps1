Param(
  [Parameter(Mandatory=$True, HelpMessage='ENTER A VALID TO DOWNLOAD ALL THE IMAGES IN THE WEBPAGE')]
   [ValidateNotNullorEmpty()]
   $url

)

#$URL = "https://www.codeproject.com/Articles/1073184/How-to-import-data-into-MS-SQL-server-from-CSV-and"

$dest ='C:\DownloadedImagesFromPowerShell\'

md $dest -Force

$Site = iwr -Uri $URL

$Images = ($Site).Images.src

foreach ($Image in $Images) {

    Start-BitsTransfer -Source $Image -Destination $dest -TransferType Download

}


ii $dest