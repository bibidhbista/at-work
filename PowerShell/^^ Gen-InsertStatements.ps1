<# script for writing out data from one or more databases either in insert statements
(useful for scripting small tables of static data) or in native BCP files.
You can use it to script the table followed by the data-insertion script if you set 
    'scriptSchema' = $true
Other types of BCP output are easy to do by altering the BCP parameters in the 
script slightly.
You can specify which tables you want to script out via a regex. You can use wildcards
to specify the databases
   #>
 
$Filepath = 'C:\Users\bibidhb\Desktop\BCP' # local directory to save build-scripts to
$DataSource = 'atgdsmsq17' # server name and instance
$Databases = @('MIDOC_medical_dev') <# the databases to copy from. wildcard comparison *, ?
 [a-d](range) and [and](set of chars) #>
$SQLUserName = ''#leave blank if Windows auth
$TablesRegex = 'menus\b' # Regex match to specify tables
$UseBCP =$true;
$ScriptSchema = $true;

$DestDB ='MIDOC_MEDICAL'
$DestServer = 'MIDOCSQL'
 
# set "Option Explicit" to catch subtle errors
set-psdebug -strict
$ErrorActionPreference = "stop" # you can opt to stagger on, bleeding, if an error occurs
#load the sqlserver module
$popVerbosity = $VerbosePreference
$VerbosePreference = "Silentlycontinue"
# the import process is very noisy if you are in verbose mode
#Install-Module sqlserver -AllowClobber #-DisableNameChecking #load the SQLPS functionality
Import-Module sqlserver -DisableNameChecking #load the SQLPS functionality
$VerbosePreference = $popVerbosity
# get credentials if necessary
if ($SQLUserName -ne '') #then it is using SQL Server Credentials
{
  $SqlEncryptedPasswordFile = `
  "$env:USERPROFILE\$($SqlUserName)-$($SQLInstance).txt"
  # test to see if we know about the password in a secure string stored in the user area
  if (Test-Path -path $SqlEncryptedPasswordFile -PathType leaf)
  {
    #has already got this set for this login so fetch it
    $Sqlencrypted = Get-Content $SqlEncryptedPasswordFile | ConvertTo-SecureString
    $SqlCredentials = `
    New-Object System.Management.Automation.PsCredential($SqlUserName, $Sqlencrypted)
  }
  else #then we have to ask the user for it
  {
    #hasn't got this set for this login
    $SqlCredentials = get-credential -Credential $SqlUserName
    $SqlCredentials.Password | ConvertFrom-SecureString |
    Set-Content $SqlEncryptedPasswordFile
  }
}
 
$ms = 'Microsoft.SqlServer'
$My = "$ms.Management.Smo" #
$scriptdata = $true
if ($SQLUserName -eq '') #dead simple if using windows security
{ $s = new-object ("$My.Server") $DataSource }
else # if using sql server security we do it via a connection object
{
  $ServerConnection = new-object "$ms.Management.Common.ServerConnection" (
    $DataSource, $SQLUsername, $SqlCredentials.Password)
  $s = new-object ("$My.Server") $ServerConnection
}
if ($s.Version -eq $null) { Throw "Can't find the instance $Datasource" }
$CreationScriptOptions = new-object ("$My.ScriptingOptions")
<# this is only needed if we are doing insert statements #>
$MyPreferences = @{
  'ScriptBatchTerminator' = $true; # this only goes to the file
  'ToFileOnly' = $true; #no need of string output as well
  'ScriptData' = $scriptdata;
  'scriptSchema' = $ScriptSchema;
  'Encoding' = [System.Text.Encoding]::UTF8;
}
$MyPreferences.GetEnumerator() |
  Foreach{ $Name = $_.name; $CreationScriptOptions.$name = $_.Value }
 
$possibilities = $s.Databases | select name
$DatabaseList = @()
$DatabaseList += $databases |
where { $_ -Notlike '*[*?]*' } |
where { $possibilities.Name -contains $_ }

$DatabaseList += $databases |
   where { $_ -like '*[*?]*' } |
     foreach{ $wildcard = $_; $possibilities.Name | where { $_ -like $wildcard } }

# For each database
$DatabaseList | Sort-Object -Unique |
  foreach {
  write-host "now working on $($_)"
  $TheDatabase = $s.Databases[$_]
  
  # for each table
    $MatchingTables = $TheDatabase.Tables | where { $_.IsSystemObject -eq $false -and $_.name -match $tablesRegex } 
    $MatchingTables|foreach{
    <# calculate where it should be saved #>
    $today     = $(Get-date).ToString('yyyyMMdd')
    $directory = "$($FilePath)\$($s.Name)\$($TheDatabase.Name)\$today"
    <# check that the directory exists #>
    if (-not (Test-Path -PathType Container $directory))
    {
      <# we create the  directory if it doesn't already exist #>
      $null = New-Item -ItemType Directory -Force -Path $directory;
    }
    if ($UseBCP -eq $true) <# then we are doing a Native BCP#>
    {
      $ScriptData = $false


      if ($SQLUserName -eq '')<# OK. Easy, a trusted connection #>
      {
        #native format -n, Trusted connection -T
        BCP "$($_.Schema).$($_.Name)"  out  "$($directory)\$($_.Schema)_$($_.Name).bcp"   `
          -n -T "-d$($TheDatabase.Name)"  "-S$($s.Name)"

          if ($genBcpOut =$true){
              $bcpOut ="BCP $($_.Schema).$($_.Name) in `"$($directory)\$($_.Schema)_$($_.Name).bcp`" -d$DestDB -S$DestServer -n -E -T"
          }
      }
      else <# if not a trusted connection we need to provide a userid and password #>
      {
      $progress='';
        $Progress=BCP "$($_.Schema).$($_.Name)"  out  "$($directory)\$($_.Schema)_$($_.Name).bcp"  `
          -n "-d$($TheDatabase.Name)"  "-S$($s.Name)"  `
          "-U$($s.ConnectionContext.Login)" "-P$($s.ConnectionContext.Password)"

        if ($genBcpOut =$true){
              $bcpOut ="BCP $($_.Schema).$($_.Name) in `"$($directory)\$($_.Schema)_$($_.Name).bcp`" -d$DestDb -S$DestServer -n -E -T"

          }
      }
      $bcpOut|Out-File -FilePath "$directory\BCPOUT.cmd"
      write-host "Writing out to $($_.Schema).$($_.Name) $($directory)\$($_.Schema)_$($_.Name).bcp
      $progress"
      if (-not ($?)) # if there was an error
      {
        throw ("Error with data export of $($directory)\$($_.Schema)_$($_.Name).bcp ");
      }
      
    }
    #else <# we are doing insert statements #>
    #{
        
        $MyPreferences = @{'ScriptData' = $scriptData;'scriptSchema' = $ScriptSchema;  'Encoding' = [System.Text.Encoding]::UTF8;}
        $MyPreferences.GetEnumerator() | Foreach{ $Name = $_.name; $CreationScriptOptions.$name = $_.Value }
      $CreationScriptOptions.Filename =   `
        "$directory\$($_.Schema)_$($_.Name)_Data.sql";
      $scripter = new-object ("$My.Scripter") ($s)
      $scripter.Options = $CreationScriptOptions
      $scripter.EnumScript($_.Urn)
    #}
  }
}
"I have done my best to obey, Master. "