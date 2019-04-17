 <#
 #
 # Script found on internet and modified by C Kickbush
 #   
 # Comment: This script is designed to "walk" the security structure of each SQL instance to find:  
 #   
 #  · Each Login (Windows or SQL)  
 #     o Its Server Roles  
 #     o Every database to which the login is mapped  
 #        § The associated "Database User" for this login  
 #          · Its Database roles   
 #          · Any explicitly assigned permissions  
 #  
 # The script is hard-coded to locate a text file with a list of instance names (Hostname\instancename format).
 #
 # File with server names is at C:\output\SQLServerInstances.txt - can be put where you want
 #  
 # The text file should contain one instance per line.
 #   
 # All output is dumped to console.
 #  
 # About the only error checking included is to check whether a database is online before analyzing it.
 #  
 #>

<#

Clear screen

#>

clear-host
 
<#

Collect AD User Name

#>

$UserName = Read-Host "Enter AD User Name: "
##$domain = "dm\"
##$response = $domain + $UserName
$response = $UserName
write-host $response

<#

Create Output File

#>
md "C:\Powershell\"|Out-Null
$OutFileName = "c:\Powershell\" + $env:USERDOMAIN + "SQLUserSecurity.txt"

<#

Function Area

#>
   
Function GetDatabaseUser($Dbase)  
  {  
    if ($dbase.status -eq "Normal")  
      {
        $users = $Dbase.users | where {$_.login -eq $SQLLogin.name}   
        foreach ($u in $users)  
        {  
          if ($u) 
          {
            $DBName = $Dbase.Name    
            "$spc5 ===== Database: $DBName" | Out-file $OutFileName             
            "$spc5 Login's Database Mappings: " | Out-file $OutFileName -Append 
             
            ### $u | select-object name, login, parent, createdate, datelastmodified, DefaultSchema, HasDBAccess
           
            $UserName = $u.Name  
            "$spc10 Name       :  $UserName" | Out-file $OutFileName -Append

            $UserLogin = $u.Login  
            "$spc10 Login      : $UserLogin" | Out-file $OutFileName -Append
            
            $UserCreateDate = $u.createdate 
            "$spc10 CreateDate    :  $UserCreateDate" | Out-file $OutFileName -Append
            
            $UserDateLastMod = $u.datelastmodified 
            "$spc10 DateLastModified :  $UserDateLastMod" | Out-file $OutFileName -Append
            
            $UserDefualtSchema = $u.DefaultSchema 
            "$spc10 DefaultSchema  : $UserDefualtSchema"| Out-file $OutFileName -Append 
            
            $UserHasDBAccess = $u.HasDBAccess 
            "$spc10 HasDBAccess   : $UserHasDBAccess" | Out-file $OutFileName -Append            
             
            "$spc5 Database Roles for this DBUser:" | Out-file $OutFileName -Append 
             
            $DBRoles = $u.enumroles()   
            if ($DBRoles)  
            {             
              "$spc10 + $DBRoles" | Out-file $OutFileName -Append 
            }  
            Else  
            {             
              "$spc10 None." | Out-file $OutFileName -Append   
            }
             
            "$spc5 Explicit Database Permissions for this DBUser:" | Out-file $OutFileName -Append
                
            $DBExplict = $Dbase.EnumObjectPermissions($u.Name) | select-object objectname, permissiontype, permissionstate
            if ($DBExplict)  
            {
              "$spc10 + $DBExplict" | Out-file $OutFileName -Append 
            }  
            Else  
            {
              "$spc10 None."| Out-file $OutFileName -Append   
            }  
          }  
          #else   
          #{Write-host $spc10 "None."}  
        } # Next user in database  
      }  
    #else  
    #Skip to next database.  
  }  
 
<#
  
Main Program starts here

#>

write-host ""
Write-host "Processing..."
  
[reflection.assembly]::LoadWithPartialName("Microsoft.SqlServer.Smo") | out-null  
[string] $spc5 = "     "  
[string] $spc10 = "          "

"*** Begin Scan for $response ***" | Out-file $OutFileName
" " | Out-file $OutFileName -Append
    
foreach ($SQLsvr in get-content "$PSScriptRoot\AllSQLServers.txt")  
  {  
    $svr = new-object ("Microsoft.SqlServer.Management.Smo.Server") $SQLsvr   
    "=================================================================================" | Out-file $OutFileName -Append
    "-----" | Out-file $OutFileName -Append

    $SvrName = $svr.name
    "-----     SQL Instance: $SvrName" | Out-file $OutFileName -Append

    "-----"  | Out-file $OutFileName -Append
    "=================================================================================" | Out-file $OutFileName -Append

    $VerString = $svr.VersionString   
    "SQL Version: $VerString"  | Out-file $OutFileName -Append
    
    $SvrEdition = $svr.Edition         
    "Edition: $SvrEdition" | Out-file $OutFileName -Append

    $SvrLoginMode = $svr.LoginMode              
    "Login Mode: $SvrLoginMode" | Out-file $OutFileName -Append

    " " | Out-file $OutFileName -Append

    $SQLLogins = $svr.logins  
    foreach ($SQLLogin in $SQLLogins)  
    {
      if ($SQLLogin.name -eq $response)
      {
        "--------------------------------------------------" | Out-file $OutFileName -Append
       
        $LoginName = $SQLLogin.name 
        "----- Login: $LoginName" | Out-file $OutFileName -Append 
        
        "--------------------------------------------------" | Out-file $OutFileName -Append
        
        $LoginType = $SQLLogin.LoginType   
        "$spc5 Login Type: $LoginType" | Out-file $OutFileName -Append  
       
        $LoginCreateDate = $SQLLogin.CreateDate   
        "$spc5 Created: $LoginCreateDate" | Out-file $OutFileName -Append
        
        $LoginDefaultDB = $SQLLogin.DefaultDatabase   
        "$spc5 Default Database: $LoginDefaultDB" | Out-file $OutFileName -Append

        $LoginHasAccess = $SQLLogin.HasAccess   
        "$spc5 Has Access to this instance: $LoginHasAccess" | Out-file $OutFileName -Append
        
        "   ----------------------------------------------------------------------------" | Out-file $OutFileName -Append
        
        "$spc5 Server Roles for: $LoginName" | Out-file $OutFileName -Append  
          
        $SQLRoles = $SQLLogin.ListMembers()  
        if ($SQLRoles)   
        {
          "$spc10 + $SQLRoles" | Out-file $OutFileName -Append  
        }  
        else  
        {
          "$spc10 None." | Out-file $OutFileName -Append 
        }  
        "$spc5 This login maps to database users in the following databases:" | Out-file $OutFileName -Append   
        if ($SQLLogin.EnumDatabaseMappings())  
        {
          " "| Out-file $OutFileName -Append   
          foreach ( $DB in $svr.Databases)   
          {   
            GetDatabaseUser($DB)  
          } # Next Database  
        }  
        Else  
        {
          "$spc10 None." | Out-file $OutFileName -Append 
        }
     }    
   } # Next Login  
 } # Next Server
 
write-host ""
Write-host "Program End"  
