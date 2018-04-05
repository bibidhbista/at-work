

# Change these to whatever you want it to point to
#$driveName='g:'
$ServerName = 'ufhlbdmsql07'
$sp10 ="                  "

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
        wr-te-host $sp10 -nonewline
        
        write-host "       Free Space" -BackgroundColor Green -NoNewline
        $f=[math]::round($_.FreeSpace/1Gb,2)
        write-host $f -NoNewline
        wr-te-host $sp10 -nonewline
        write-host "       % Filled" -BackgroundColor Red -NoNewline
        
        $p=[math]::round(100-($_.FreeSpace/$_.size)*100,2)
        write-host $p -nonewline
        wr-te-host $sp10 -nonewline
        
        write-host "       Occupied" -BackgroundColor Red -NoNewline
        $o=[math]::round($d-$f,2)
        $o
        wr-te-host $sp10 -nonewline
        }
    WRITE-HOST ''     }
    