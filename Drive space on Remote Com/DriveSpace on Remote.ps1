

# Change these to whatever you want it to point to
#$driveName='g:'
$ServerName = 'psqlhub'


#Command
$ServerName|%{
$disk = Get-WmiObject Win32_LogicalDisk -ComputerName $_|Select-Object name,Size,FreeSpace
 #-Filter "DeviceID='$driveName'" 
 write-host $_ -BackgroundColor red -NoNewline

    #Output
    $disk|%{
        Write-host $_.name -BackgroundColor green -NoNewline
        $D=[math]::round($_.Size/1GB,2)
        WRITE-HOST ($D) -NoNewline
        
        write-host "       Free Space" -BackgroundColor Green -NoNewline
        $f=[math]::round($_.FreeSpace/1Gb,2)
        write-host $f -NoNewline
        
        write-host "       % Filled" -BackgroundColor Red -NoNewline
        $p=[math]::round(100-($_.FreeSpace/$_.size)*100,2)
        write-host $p -nonewline
        
        write-host "       Occupied" -BackgroundColor Red -NoNewline
        $o=[math]::round($d-$f,2)
        $o
        
        }
    WRITE-HOST ''     }
    