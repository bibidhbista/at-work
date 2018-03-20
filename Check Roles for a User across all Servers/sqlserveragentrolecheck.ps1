   
#cls
$Query = @"
USE msdb
	   IF IS_ROLEMEMBER ('sqlagentoperatorrole','fhlbdm\jdsouza') = 1  
   print 'jdosu is a member of the sqlagentoperatorrole role'  
ELSE IF IS_ROLEMEMBER ('sqlagentoperatorrole','fhlbdm\jdsouza') = 0  
   print 'jdosu is NOT a member of the sqlagentoperatorrole role'  
ELSE IF IS_ROLEMEMBER ('sqlagentoperatorrole','fhlbdm\jdsouza') IS NULL  
   print 'ERROR: The database role specified is not valid.';  


   	   IF IS_ROLEMEMBER ('sqlagentoperatorrole','FHLBDM\aparashar') = 1  
   print 'FHLBDM\aparashar is a member of the sqlagentoperatorrole role'  
ELSE IF IS_ROLEMEMBER ('sqlagentoperatorrole','FHLBDM\aparashar') = 0  
   print 'FHLBDM\aparashar is NOT a member of the sqlagentoperatorrole role'  
ELSE IF IS_ROLEMEMBER ('sqlagentoperatorrole','fhlbdm\FHLBDM\aparashar') IS NULL  
   print 'ERROR: The database role specified is not valid.';  
"@
 
 
 $AllServers = gc "N:\Projects_\at-work\Maint_Plans\AllSQLServers.txt" 
 $count=0
 $AllServers|%{
    $count+=1
 }
 Write-output "List has $count server(s) in it." 

 $allservers =  'pfhlbdmsql14',
                'tfhlbdmsql14',
                'dfhlbdmsql14',
                'dfhlbdmsql07',
                'tfhlbdmsql07',
                'pfhlbdmsql07'
  
write-Output "Results:::::::::::::::::::"
foreach($server in $AllServers)
{
        write-host "currently working on $server" -BackgroundColor Green
        Invoke-Sqlcmd -Query $Query -ServerInstance $server -Database msdb
}
   