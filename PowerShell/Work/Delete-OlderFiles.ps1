[CMDLETBINDING()]

<#

PARAMS:

REQUIRED:
path                     : Path to the folder that contains backups\logs to be deleted

OPTIONAL:
daysToStoreFiles         : Any files older than x number of days will be deleted from the path   
deleteOldest             : Deletes x number of oldest files in a folder and removes empty subfolders in the directory.

#>

param(
    [Parameter(Mandatory=$True)]
    [string]$path, 
    [Parameter(Mandatory=$False)]
    [int]$daysToStoreFiles, 
    [Parameter(Mandatory=$False)]
    [int]$deleteOldest
)


if(Test-path $path){
    if($deleteOldest){
        $items = gci $path |? {!$($_.PsIsContainer)} |sort LastWriteTime|select -First $deleteOldest
        if($items){
            $items|% {Remove-Item $_.fullname -force -Verbose} 
        }  

    }elseif($daysToStoreFiles){#  for logs delete older than days specified
        gci $path -Recurse |? {!$($_.PsIsContainer)}|? { $_.lastwritetime -le (Get-Date).AddDays(-$daysToStoreFiles)} |% {Remove-Item $_.FullName -force }  
        # For removing empty folders
        $dirs = gci $path -directory -recurse | Where { (gci $_.fullName).count -eq 0 } | select -expandproperty FullName
        $dirs | Foreach-Object { Remove-Item $_ -Verbose}
       }
}


else{
    Write-Error "'$path' doesn't exist. Please make sure provided path exists."

}
