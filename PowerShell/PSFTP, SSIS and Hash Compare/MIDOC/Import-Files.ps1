[CmdletBinding()]
Param( 
   [Parameter(Mandatory=$True, HelpMessage='ENTER A VALID JOB ID: ')]
   [ValidateNotNullorEmpty()]  
   [int] $JobId ,                                                                     
   [Parameter(Mandatory=$True, HelpMessage='ENTER A VALID PACKAGE ID:')]
   [ValidateNotNullorEmpty()]  
   [int] $PackageId                                                                 
   )
# Logging Vars
$Date = Get-Date -Format MMddyyyy
md $Date -Force | Out-Null
Start-Transcript -Path "F:\DBA\MIDOC\Interfaces\SSIS\Logs\$Date\Log_$Date`_$(Get-Date -Format HHmm).log"

# Connection settings
$ServerName    = 'ATGDSMSQ17'
$DBName        = 'MIDOC_INTERFACE'
$JobsTable     = 'INTF_Jobs'
$JobFilesTable = 'INTF_JobFiles'

$JobCommands   = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "EXEC Admin_JobCommands $JobId, $PackageId"
$Jobs          = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "Select JobNm, SSISPackage from $JobsTable where JobId = $JobId and PackageId =$PackageId"
$JobFiles      = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "Select FileConnValue, FTSfile from $JobFilesTable where JobId = $JobId and PackageId =$PackageId and InputType =1"

###### PSFTP #####
$ConnectionString = $JobCommands.FTSConn
$GetCmdFile       = "$PSScriptRoot\GetCmd.txt"                                                                                          
$InputFolder      = $JobFiles.FileConnValue|Select -First 1
$Pos              = $InputFolder.IndexOf("\Input\")
$InputFolder      = $InputFolder.Substring(0,$Pos)

$JobCommands.FTSgetlist|Out-File "$GetCmdFile" -Encoding ascii -Force              
$Connect          = "psftp $ConnectionString -b `"$GetCmdFile`" -bc "
cmd $Connect

### Unzip Zipped File ### 
$InputFiles       = gci "$InputFolder\Input"
foreach($InputFile in $InputFiles){
    $InputFilePath    = "$InputFolder\Input\$InputFile"
    if($InputFile.extension -eq '.zip'){
           Expand-Archive $InputFilePath -DestinationPath "$InputFolder\Input\" -Force }
}


# SSIS Execution Call
#$SSISCmd = ($JobCommands.SSISCmd)
#$ScriptLocation   = "$PSScriptRoot\Exec-SSIS.ps1"
#.$ScriptLocation -JobId $JobId -PackageId $PackageId


Stop-Transcript