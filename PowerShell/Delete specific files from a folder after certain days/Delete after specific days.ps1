$daysToStorefile = 10
$targetFolder ="\\pfs02\sqlbackup\UFHLBDMSQL07\sql\"
$extension = '*.bak'
$targetFiles= $targetFolder+$extension
get-childitem $targetFiles|? {$_.LastWriteTime -le (Get-Date).AddDays(-5)}|


# Use with CAUTION!!!!!!!!!
# delete theeeeseee lines to remove all the files

# After first execution comment out the whatif line

% {Remove-Item $_ -force -WhatIf }              # use 1st
#% {Remove-Item $_ -force  }                    # ################## ONLY USE AFTER THE WHATIF STATEMENT Show files that can actually be deleted########################