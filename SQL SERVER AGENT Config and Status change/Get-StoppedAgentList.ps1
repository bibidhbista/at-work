
write-host ---------------------------------------------------------
write-host validate
write-host ---------------------------------------------------------

## create server list from comma seperated list
##$vserverlist =  "<name of server>", "<name of server>", "<name of server>"

$vserverlist = 'dfhlbdmssis01','dfhlbdmssis01', 'tfhlbdmssis01','tfhlbdmssis02', 'ufhlbdmssis01','ufhlbdmssis02','pfhlbdmssis01','pfhlbdmssis02'

foreach($vserver in $vserverlist)
    {
    ##get sql service 
$vservice = get-wmiObject win32_service -computername $vserver | ?{$_.name -eq 'mssqlserver'} 

$vagent = get-wmiObject win32_service -computername $vserver | ?{$_.name -eq 'SQLSERVERAGENT'} 


if($vagent.state -eq "stopped"){
write-host "Agent is stopped in:"
$vserver
$vservice.state
$vservice.startname
$vagent.state
$vagent.startname
write-host --------------------------------------
}

}
