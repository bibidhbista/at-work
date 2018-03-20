#############################################################################################
#
# NAME: Show-SQLUserPermissions.ps1
# AUTHOR: Rob Sewell http://newsqldbawiththebeard.wordpress.com
# DATE:06/08/2013
#
# COMMENTS: Load function to Display the permissions a user has across the estate
# NOTE - Will not show permissions granted through AD Group Membership
# 
# USAGE Show-SQLUserPermissions DBAwithaBeard
 
 

[System.Reflection.Assembly]::LoadWithPartialName('Microsoft.SqlServer.SMO') | out-null
 
# Suppress Error messages - They will be displayed at the end
 
$ErrorActionPreference = "SilentlyContinue"
#cls
$Query = @"
SELECT 
IL.ServerName
FROM [dbo].[InstanceList] IL
WHERE NotContactable = 0
AND Inactive = 0
	AND DatabaseEngine = 'Microsoft SQL Server'
"@
 
 
 $AllServers = gc "N:\Projects_\at-work\Maint_Plans\AllSQLServers.txt" 
 $count=0
 $AllServers|%{
    $count+=1
 }
 Write-output "List has $count server(s) in it." 

  
# Create an array for the username and each domain slash username
 
#$logins = @("fhlbdm\bbista","fhlbdm\tsmsql", "fhlbdm\tsvc_veeamsql")
$logins = "G-SQL-TsyHubStaging RO"#,"FHLBDM\G-Sql Maintenance"
Write-Output "#################################" 
Write-Output "Logins for `n $logins displayed below" 
Write-Output "################################# `n" 
 $count=0
#loop through each server and each database and display usernames, servers and databases ::::::::::::::::: ONLY OUTPUTS NON PUBLIC ROLES
Write-Output "Server Logins"
foreach($server in $AllServers)
{
    $srv = New-Object ('Microsoft.SqlServer.Management.Smo.Server') $server
    
    		foreach($login in $logins)
		    {
    
    			if($srv.Logins.Contains($login))
			    {
                                    $count+=1
                                    Write-Output "`n $server , $login " 
                                            foreach ($Role in $Srv.Roles)
                                {
                                    $RoleMembers = $Role.EnumServerRoleMembers()
                                    
                                        if($RoleMembers -contains $login)
                                        {
                                        Write-Output " $login is a member of $Role on $Server"
                                        }
                                }
 
			}
            
            else
            {
                Write-host "$login doesn't exist on $server" -BackgroundColor red 
            }
         }
}
Write-Output "`n#########################################"
Write-Output "`n Database Logins"               
foreach($server in $servers)
{
         
	$srv = New-Object ('Microsoft.SqlServer.Management.Smo.Server') $server
    
	foreach($database in $srv.Databases)
	{
		foreach($login in $logins)
		{
			if($database.Users.Contains($login))
			{
                                       Write-Output "`n $server , $database , $login " 
                        foreach($role in $Database.Roles)
                                {
                                    $RoleMembers = $Role.EnumMembers()
                                    
                                        if($RoleMembers -contains $login)
                                        {
                                        Write-Output " $login is a member of $Role Role on $Database on $Server"
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

write-output "$login has server login setup on $count server(s)." 
Write-Output "`n#########################################"
Write-Output "Finished - If there are no logins displayed above then no logins were found!"    
Write-Output "#########################################" 
 
 