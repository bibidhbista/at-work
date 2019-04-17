<#################################################################################
## Purpose: Check if a user has agent roles                                     ##
##                                                                              ##
##                                                                              ##
##                                                                              ##
## Author: Bibidh Bista                                                         ##
##                                                                              ##
## Type: SQL Agent                                                              ##
##                                                                              ##
################################################################################>#

   
#cls
$LoginToSearch = ''
$Query = @"
USE msdb
	   IF IS_ROLEMEMBER ('sqlagentoperatorrole','$LoginToSearch') = 1  
   print 'jdosu is a member of the sqlagentoperatorrole role'  
ELSE IF IS_ROLEMEMBER ('sqlagentoperatorrole','$LoginToSearch') = 0  
   print 'jdosu is NOT a member of the sqlagentoperatorrole role'  
ELSE IF IS_ROLEMEMBER ('sqlagentoperatorrole','$LoginToSearch') IS NULL  
   print 'ERROR: The database role specified is not valid.';  
"@
 
 
 #$AllServers = gc "N:\Projects_\at-work\Maint_Plans\AllSQLServers.txt" 
 #$count=0
 #$AllServers|%{
 #   $count+=1
 #}
 #Write-output "List has $count server(s) in it." 

 $allservers =  'pfs14',
                'tfs14',
                'dfs14',
                'dfs07',
                'tfs07',
                'pfs07'
  
Write-Output "::::::::::::::::::: Results :::::::::::::::::::"
foreach($Server in $AllServers)
{
        write-host "Currently working on $Server" -BackgroundColor Green
        Invoke-Sqlcmd -Query $Query -ServerInstance $Server -Database msdb
}
   
