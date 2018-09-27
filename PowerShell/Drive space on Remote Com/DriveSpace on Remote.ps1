

# Change these to whatever you want it to point to
#$driveName='E:'



$ServerName = 'atgdsmsq14'#'dsqlhub','tsqlhub','usqlhub'#,'psqlhub'#,'pfhlbdmsql12'
$sp10 ="                  "
$gb = " GB"
#Command
$ServerName|%{
#$disk = Get-WmiObject Win32_LogicalDisk -ComputerName $_ -Filter "DeviceID='$driveName'"|Select-Object name,Size,FreeSpace,volumeName 
$disk = Get-WmiObject Win32_LogicalDisk -ComputerName $_ |Select-Object name,Size,FreeSpace,volumeName 

 write-host $_ -BackgroundColor red 

    #Output
    $disk|%{
        try{$sp10
        Write-host $_.name -BackgroundColor red -NoNewline
        Write-host $_.volumename -BackgroundColor red -NoNewline
        
        WRITE-host $sp10 -nonewline
        $D=[math]::round($_.Size/1GB,2)
        
        #WRITE-HOST ($D) -NoNewline
        #WRITE-host $sp10 -nonewline
        
        write-host "Free Space: " -BackgroundColor Green -NoNewline
        $f=[math]::round($_.FreeSpace/1Gb,2)
        
        write-host "    $f GB out of $D GB" -NoNewline
        WRITE-host $sp10 -nonewline
        #write-host "% Filled: " -BackgroundColor Red -NoNewline
        #
        #$p=[math]::round(100-($_.FreeSpace/$_.size)*100,2)
        #
        #write-host "  $p%" -nonewline
        #WRITE-host $sp10 -nonewline
        #
        #write-host "Occupied: " -BackgroundColor Red -NoNewline
        #$o=[math]::round($d-$f,2)
        #
        #write-host "  $o GB"
        #WRITE-host $sp10 -nonewline
        }
        catch{
            Write-Host ''
        }
        }
    WRITE-HOST ''     }
    
