#############################################################################################
#
# NAME: Show-SQLUserPermissions.ps1
# AUTHOR: Rob Sewell http://newsqldbawiththebeard.wordpress.com
# DATE:06/08/2013
#
# COMMENTS: Load function to Display the permissions a user has across the estate
# 
# USAGE Show-SQLUserPermissions DBAwithaBeard
#############################################################################################
 
# Configure as your heart desires 
$Logins = "atg\bibidhb" # Logins/Users to find Permission Details about

$AllServers = 'atgdsmsq14'
#$AllServers = gc "$PSScriptRoot\AllSQLServers.txt" 

#############################################################################################

 
# Suppress Error messages - They will be displayed at the end
$ErrorActionPreference = "SilentlyContinue"
$count=0
$AllServers|%{
$count+=1
}
Write-output "List has $count Server(s) in it." 

  
# Create an array for the username and each domain slash username
 [System.Reflection.Assembly]::LoadWithPartialName('Microsoft.SqlServer.SMO') | out-null
Write-Output "*******************************************" 
Write-Output "Logins for $Logins displayed below" 
Write-Output "*******************************************`n" 
$Count=0
#loop through each Server and each Database and display usernames, Servers and Databases ::::::::::::::::: ONLY OUTPUTS NON PUBLIC ROLES
Write-host "Server Logins" -BackgroundColor Green
foreach($Server in $AllServers)
{
    $Srv = New-Object ('Microsoft.SqlServer.Management.Smo.Server') $Server
    
    		foreach($Login in $Logins)
		    {
    
    			if($Srv.Logins.Contains($Login))
			    {
                                    $Count+=1
                                    Write-Output "`n $Server , $Login " 
                                            foreach ($Role in $Srv.Roles)
                                {
                                    $RoleMembers = $Role.EnumServerRoleMembers()
                                    
                                        if($RoleMembers -contains $Login)
                                        {
                                        Write-Output " $Login is a member of $Role on $Server"
                                        }
                                }
 
			}
            
            else
            {
                Write-host "$Login doesn't exist on $Server" -BackgroundColor red 
            }
         }
}
Write-Output "`n************************************** x.x *************************************"
Write-host "`n Database Logins"   -BackgroundColor Green            
foreach($Server in $Servers)
{
         
	$srv = New-Object ('Microsoft.SqlServer.Management.Smo.Server') $Server
    
	foreach($Database in $srv.Databases)
	{
		foreach($Login in $Logins)
		{
			if($Database.Users.Contains($Login))
			{
                                       Write-Output "`n $Server , $Database , $Login " 
                        foreach($role in $Database.Roles)
                                {
                                    $RoleMembers = $Role.EnumMembers()
                                    
                                        if($RoleMembers -contains $Login)
                                        {
                                        Write-Output " $Login is a member of $Role Role on $Database on $Server"
                                        }
                                }
                    
 
			}
                else
                    {
                        continue
                    }   
           
		}
	}
    }

Write-Output "`n`n*****************************************************************************"
write-output "$Login has Server Login setup on $count Server(s).`n`n" 
Write-Output "Finished - If there are no Logins displayed above then no Logins were found!"  
Write-Output "*****************************************************************************" 
 
 