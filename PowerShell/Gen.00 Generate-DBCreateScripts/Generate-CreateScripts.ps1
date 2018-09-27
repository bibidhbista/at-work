<# SYNOPSIS 
      Generates create scripts for all tables. 
   DESCRIPTION 
      PowerShell script using SMO to script out all tables and optional all related objects like indexes etc.  
   NOTES 
      Author  : Bibidh Bista
      Requires: SMO assembly 
   LINKS 
      SMO: http://msdn.microsoft.com/en-us/library/ms162169.aspx 
      ScriptingOptions: http://msdn.microsoft.com/en-us/library/microsoft.sqlserver.management.smo.scriptingoptions.aspx 
#> 

# Configuration data 
$ScriptData = $false
[string] $server   = Read-host #".";                   # SQL Server Instance 
[string] $database = "BBista_R_Test";       # Database with the tables to script out. 
[string] $folder   = "$PSScriptRoot\";      # Path to export to 
$InputListFileName = 'List.txt'# Path to the list of Tables
$AllInOnePath = "$folder`All in Ones\$dbName\"
$OutPath = "$folder`Outs\$dbName\"
$mode=''

# For specific tables 
#$InputListFileName - 'DMICD9s_Import'

#####################################################################################################################################

$FilePath = "$PSScriptRoot\$InputListFileName"
notepad.exe $FilePath|Out-Null
$TableList   = gc $FilePath; 
$TableCount = ($TableList |measure -Line).Lines; 

#pause; # please wait while changing the names of the tables on the list

# Reference to SMO 
[void][System.Reflection.Assembly]::LoadWithPartialName('Microsoft.SqlServer.SMO'); 
 
Write-Output ((Get-Date -format yyyy-MM-dd_HH-mm-ss) + ": Started ...`nScripting out the tables...`n`n"); 
 
$srv = New-Object Microsoft.SqlServer.Management.Smo.Server $server; 
$db = $srv.Databases[$database]; 
$dbName =$db.ToString().Replace('[','')
$dbName =$dbName.ToString().Replace(']','')

# Configuration for scripting options: Which related objects should also be scripted? 
$so = New-Object Microsoft.SqlServer.Management.Smo.ScriptingOptions; 
$so.DriAllConstraints        = $true; 
$so.ScriptData               = $ScriptData;                # Set to true if data must be scripted too.   
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
$so.WithDependencies         = $true;

$date = get-date -Format MMddyyyy_HHmm


if(($TableCount -eq 0) -or ($TableCount -eq $null) -or ($TableCount -eq '')){
    $mode = 'all';
    Write-Host "All of the tables in $db are being scripted...`n`n"
    if(!(test-path $AllInOnePath)){
            md $AllInOnePath
    }
    }
else{
    $mode = 'list';
    Write-Host "The tables listed on $PSScriptRoot\List.txt are being scripted...`n`n"
    if(!(test-path $OutPath)){
            md $OutPath
    }
    }



$AllInOne = ''


# Loop over all tables. 
foreach ($tbl in $db.Tables) 
{ 
       if($mode -eq 'list'){
            if($TableList -eq ($tbl.Name)){ # same name
                write-host "$tbl.Name is being scripted out..." -BackgroundColor green
                $sb = New-Object System.Text.StringBuilder; 
                # Loop through all generated partial scripts and add them. 
                foreach ($script in $tbl.EnumScript($so)) 
                { 
                    $void = $sb.AppendLine($script); 
                } 
 
                try 
                { 
                    # Write script in text file. 
                    $outfile = New-Object System.IO.StreamWriter("$OutPath$date" + "Create_" + $tbl.Name + ".sql"); 
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
                foreach ($script in $tbl.EnumScript($so)) 
                { 
                    $void = $sb.AppendLine($script); 
                } 
 
                try 
                { 
                    # Write script in text file. 
                    $outfile = New-Object System.IO.StreamWriter("$OutPath$date" + "Create_" + $tbl.Name + ".sql"); 
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


# Combines all of the tables scripts to one single script
if($TableCount -gt 1){
        $date = get-date -Format MMddyyyy_HHmm
        $AllInOne|Out-File "$AllInOnePath`AllTables_$date.sql"
        ii "$AllInOnePath`AllTables_$date.sql"
        ii $folder}
Else{
    `Write-Host "`n`n*************************** End of script ***************************`n`n"
}