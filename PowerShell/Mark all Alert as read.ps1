cls
$outlook = new-object -comobject outlook.application

#Define folders
$namespace = $outlook.GetNameSpace("MAPI")
$DefaultFolder = $namespace.GetDefaultFolder(6)
$DefaultFolder

$alertFolder = $DefaultFolder.Folders|? folderpath -eq "\\BibidhB@a-t-g.com\Inbox\Alerts"
$a= $alertFolder.Folders

foreach ($b in $a){

        $b}






$InboxFolders = $DefaultFolder.Folders
$folder = $InboxFolders|where folderpath -EQ "\\BibidhB@a-t-g.com\Inbox\Alerts"


$Emails = $Folder.Items|select -first 3
$Emails


For($i=($emails.count-1);$i -ge 0;$i--){
    $Emails[$i]
    #$($emails)[$i].Unread = $false
    #($emails)[$i]
}



