write-host ""
$target_server = Read-Host "Enter SQL Server name: "
write-host ""
write-host "You entered: $target_server"

Try
  {
    Get-ADComputer $target_server -ErrorAction Stop
    $Result = $true
  }
  Catch
    {
      $Result = $False
    }

if ($Result)
  {
    write-host "" 
    write-host 'Server Found'
  }
else
  {
    write-host "" 
    write-host 'Server Not Found'
    exit
  }
    
<#

Get Database Name

#>

write-host ""
$DBInput = Read-Host "Enter DB name: "
write-host ""
write-host "You entered: $DBInput"

$NameQueryResult = Invoke-Sqlcmd -Query "SELECT name FROM master.sys.sysdatabases WHERE name='$DBInput'" -ServerInstance $target_server -Verbose -AbortOnError

if ($NameQueryResult -eq $null)
  {
    write-host ""
    write-host "$DBInput not found"
    exit
  }

$DBNameFound = $NameQueryResult[0] 

