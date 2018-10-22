[CmdletBinding()]
Param( 
   [Parameter(Mandatory=$True, HelpMessage='ENTER A VALID JOB ID: ')]
   [ValidateNotNullorEmpty()]  
   [int] $JobId,
   [Parameter(Mandatory=$True, HelpMessage='ENTER A VALID PACKAGE ID:')]
   [ValidateNotNullorEmpty()]  
   [int] $PackageId
   )
$Date          = Get-Date -Format MMddyyyy
md $Date -Force|Out-Null
$daysToStoreLogs = 15
Start-Transcript -Path "F:\DBA\MIDOC\Interfaces\SSIS\Logs\$Date\ExportLog_$Date`_$(Get-Date -Format HHmm).log"

$JobCommands   = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "EXEC Admin_JobCommands $JobId, $PackageId"
$Jobs          = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "Select JobNm, SSISPackage from $JobsTable where JobId = $JobId and PackageId =$PackageId"
$JobFiles      = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "Select FileConnValue, FTSfile from $JobFilesTable where JobId = $JobId and PackageId =$PackageId and InputType=2"

# HASH - continue if same 
$InputJobFiles  = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "Select FileId, FileConnValue from $JobFilesTable where JobId = $JobId and PackageId =$PackageId and InputType=1 Order by FileID"
$OutputJobFiles = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "Select FileId, FileConnValue from $JobFilesTable where JobId = $JobId and PackageId =$PackageId and InputType=2 Order by FileID"


foreach($InputJobFileDetail in $InputJobFiles){
   $InputJobFile = $InputJobFileDetail.FileConnValue
    foreach($OutputJobFileDetail in $OutputJobFiles){
       if($InputJobFileDetail.FileId -eq $OutputJobFileDetail.FileId){
           $OutputJobFile = $OutputJobFileDetail.FileConnValue
           $InputHash  = (Get-FileHash -Path $InputJobFile  -Algorithm SHA256).Hash
           $OutputHash = (Get-FileHash -Path $OutputJobFile -Algorithm SHA256).Hash
           # Compare them
           if ($InputHash -ne $OutputHash) {
                    # Log to table as Result Failure
                    #Invoke-Sqlcmd -ServerInstance $server -Database $database -Query "Update jobfiles_hashcompare set [Hash]=NULL,result='Mismatch',date='$date' where InputJobFile='$InputJobFile' and OutputJobFile='$OutputJobFile' and (result is Null or result='null')"
                    Write-Warning "$InputJobFile and $OutputJobFile hash mismatch!" 
           }else{
                    # Log to table as Result Success
                    #Invoke-Sqlcmd -ServerInstance $server -Database $database -Query "Update jobfiles_hashcompare set [Hash]=(convert(binary(64),'$($InputHash)')),result='Match',date='$date' where InputJobFile='$InputJobFile' and OutputJobFile='$OutputJobFile' and (result is Null or result='null')"
                    Write-Host "$InputJobFile and $OutputJobFile hash match!"}}
            }
}

# Zip if neccessary
$OutputFileNameCheck = $JobFiles.FTSFile|Select -First 1
$Zipped              = $OutputFileNameCheck.Substring($OutputFileNameCheck.length -3 ,3)

if($Zipped -eq 'zip'){
    $OutputFolder   = ($JobFiles.fileconnvalue|select -First 1)
    $pos            = $OutputFolder.indexof("\Output\")
    $OutputFolder   = $InputFolder.Substring(0,$pos)
    $OutputFiles    = gci "$OutputFolder\Output"
    foreach($OutputFile in $OutputFiles){
        if($OutputFile.extension -ne '.zip'){
            $OutputFilePath = "$OutputFolder\Output\$OutputFile"
            $OutputFileName = ($OutputFile.Basename)
            Compress-Archive $OutputFilePath -DestinationPath "$OutputFolder\Output\$OutputFileName.zip" -Force }
    
        }
}

## FTS Put ## 
$ConnectionString = $JobCommands.FTSConn
$PutCmdFile       = "$PSScriptRoot\PutCmd.txt"                                                                                          

$JobCommands.FTSPutlist|Out-File "$PutCmdFile" -Encoding ascii              
$Connect          = "psftp $ConnectionString -b `"$PutCmdFile`" -bc "
cmd $Connect

# Remove Logs Older than 15 Days
Get-ChildItem "F:\DBA\MIDOC\Interfaces\SSIS\Logs\*.log" -Recurse|? { $_.lastwritetime -le (Get-Date).AddDays(-$daysToStoreLogs)} |% {Remove-Item $_ -force }  
"*** Deleted logs older than $daysToStoreLogs days ***"
Stop-Transcript