<# SYNOPSIS 
      Generates create scripts for all tables. 
   DESCRIPTION 
      PowerShell script using SMO to script out all tables and optional all related objects like indexes etc.  
   NOTES 
      Author  : Olaf Helper 
      Requires: PowerShell Version 2.0, SMO assembly 
   LINKS 
      SMO: http://msdn.microsoft.com/en-us/library/ms162169.aspx 
      ScriptingOptions: http://msdn.microsoft.com/en-us/library/microsoft.sqlserver.management.smo.scriptingoptions.aspx 
#> 

# Configuration data 
$so.ScriptData = 'false';                   # Set to true if data must be scripted too.   
[string] $server   = ".";                   # SQL Server Instance 
[string] $database = "BBista_R_Test";       # Database with the tables to script out. 
[string] $folder   = "$PSScriptRoot\";      # Path to export to 
$TableList   = gc "$PSScriptRoot\List.txt"; # Path to the list of Tables
$TableCount = gc "$PSScriptRoot\List.txt" -ReadCount; 
Start-Process "$folder`List.txt" -Wait

#pause; # please wait while changing the names of the tables on the list

if(($TableCount -eq 0) -or ($TableCount -eq $null) -or ($TableCount -eq '')){
    $mode = 'all';
    }
else{
    $mode = 'list';}



$AllInOne = ''
# Reference to SMO 
[void][System.Reflection.Assembly]::LoadWithPartialName('Microsoft.SqlServer.SMO'); 
 
Write-Output ((Get-Date -format yyyy-MM-dd_HH-mm-ss) + ": Started ...`nScripting out the tables...`n`n"); 
 
$srv = New-Object Microsoft.SqlServer.Management.Smo.Server $server; 
$db = $srv.Databases[$database]; 
 
# Configuration for scripting options: Which related objects should also be scripted? 
$so = New-Object Microsoft.SqlServer.Management.Smo.ScriptingOptions; 
$so.DriAllConstraints        = $true; 
$so.DriAllKeys               = $true; 
$so.DriClustered             = $true; 
$so.DriDefaults              = $true; 
$so.DriIndexes               = $true; 
$so.DriNonClustered          = $true; 
$so.DriPrimaryKey            = $true; 
$so.DriUniqueKeys            = $true; 
$so.IncludeDatabaseContext   = $true;
 
$so.AnsiFile                 = $true; 
$so.ClusteredIndexes         = $true; 
$so.IncludeHeaders           = $true; 
$so.Indexes                  = $true; 
$so.SchemaQualify            = $true; 
$so.Triggers                 = $true; 
$so.XmlIndexes               = $true; 

$date = get-date -Format MMddyyyy_HHmm

# Loop over all tables. 
foreach ($tbl in $db.Tables) 
{ 
       if($mode -eq 'list'){
            if($TableList.Contains($tbl.Name)){
                write-host "$tbl.Name is being scripted out..." -BackgroundColor green
                $sb = New-Object System.Text.StringBuilder; 
                # Loop through all generated partial scripts and add them. 
                foreach ($script in $tbl.Script($so)) 
                { 
                    $void = $sb.AppendLine($script); 
                } 
 
                try 
                { 
                    # Write script in text file. 
                    $outfile = New-Object System.IO.StreamWriter("$folder`Out\$date" + "Create_" + $tbl.Name + ".sql"); 
                    $outfile.Write($sb.ToString());
                    $AllInOne += $sb.ToString(); 
                    $outfile.Close(); 
                    $outfile.Dispose(); 
                    Write-Output ((Get-Date -format yyyy-MM-dd_HH-mm-ss) + ": Table $tbl.Name"); 
                } 
                catch 
                { 
                    Write-Output ($_.Exception.Message) 
                } 
                }
            else{
                #write-output "$tbl.Name isn't on the list."
            }
        }elseif($mode -eq 'all'){
                write-host "$tbl.Name is being scripted out..." -BackgroundColor green
                $sb = New-Object System.Text.StringBuilder; 
                # Loop through all generated partial scripts and add them. 
                foreach ($script in $tbl.Script($so)) 
                { 
                    $void = $sb.AppendLine($script); 
                } 
 
                try 
                { 
                    # Write script in text file. 
                    $outfile = New-Object System.IO.StreamWriter("$folder`Out\$date" + "Create_" + $tbl.Name + ".sql"); 
                    $outfile.Write($sb.ToString());
                    $AllInOne += $sb.ToString(); 
                    $outfile.Close(); 
                    $outfile.Dispose(); 
                    Write-Output ((Get-Date -format yyyy-MM-dd_HH-mm-ss) + ": Table $tbl.Name"); 
                } 
                catch 
                { 
                    Write-Output ($_.Exception.Message) 
                }         
        }
    
    
} 
 
Write-Output ((Get-Date -format yyyy-MM-dd_HH-mm-ss) + ": Finished Scripting out the Tables.");

$date = get-date -Format MMddyyyy_HHmm
$AllInOne|Out-File "$folder\AllInOne_$date.sql"
ii "$folder\AllInOne_$date.sql"
ii $folder