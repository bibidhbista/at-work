$file =  "C:\Users\bibidhb\Desktop\WO\*"
$dest = "E:\BackupDemo"
 
dir $file -Recurse| foreach {
     #calculate current hash
     Write-Host "Copying $($_.fullname) to $dest" -ForegroundColor Yellow
     $origHash = Get-FileHash -Path $_.FullName -Algorithm MD5
 
     #copy file
     $filecopy = $_ | Copy-Item -Destination $dest -PassThru
 
     #get hash of copied file
     $copyHash = Get-FileHash -Path $filecopy.FullName -Algorithm MD5
 
     #compare them
     if ($origHash.hash -ne $copyHash.hash) {
            Write-Warning "$($_.Fullname) and $($filecopy.fullname) hash mismatch" 
     }
     else {
            Write-Host "$($_.Fullname) and $($filecopy.fullname) hash ok" -ForegroundColor Green
     }
} #foreach
