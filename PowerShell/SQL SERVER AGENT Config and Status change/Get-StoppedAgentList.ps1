
write-host ---------------------------------------------------------
write-host validate
write-host ---------------------------------------------------------

## create server list from comma seperated list
##$vserverlist =  "<name of server>", "<name of server>", "<name of server>"

$vserverlist = 'atgdsmsq14'#'ddmssis01','ddmssis01', 'tdmssis01','tdmssis02', 'udmssis01','udmssis02','pdmssis01','pdmssis02'

foreach($vserver in $vserverlist)
    {
    ##get sql service 
$vservice = get-wmiObject win32_service -computername $vserver | ?{$_.name -eq 'mssqlserver'} 

$vagent = get-wmiObject win32_service -computername $vserver | ?{$_.name -eq 'SQLSERVERAGENT'} 


#if($vagent.state -eq "stopped"){
write-host "Agent is stopped in:"
$vserver
$vservice.state
$vservice.startname
$vagent.state
$vagent.startname
write-host --------------------------------------
#}

}
