###################################################################################
############################  Export-Files ########################################
###################################################################################


[CmdletBinding()]
Param( 
   [Parameter(Mandatory=$True, HelpMessage='ENTER A VALID JOB ID: ')]
   [ValidateNotNullorEmpty()]  
   [int] $JobId,
   [Parameter(Mandatory=$True, HelpMessage='ENTER A VALID PACKAGE ID:')]
   [ValidateNotNullorEmpty()]  
   [int] $PackageId
   )


import-module C:\util\sqlmaint\sqlserverpowershellcmdlet\sqlserver

# Connection settings
$ServerName     = 'MIDOCSQL'
#$ServerName      = 'ATGDSMSQ17'
$psftpPath      = "C:\Data\Interfaces\Util"
#$psftpPath       = $PSScriptRoot

$daysToStoreLogs = 90
$DBName          = 'MIDOC_INTERFACE'
$JobsTable       = 'INTF_Jobs'
$JobFilesTable   = 'INTF_JobFiles'
$JobCommands     = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "EXEC Admin_JobCommands $JobId, $PackageId"
$Jobs            = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "Select JobNm, SSISPackage from $JobsTable where JobId = $JobId and PackageId =$PackageId"
$JobFiles        = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "Select FileConnValue, FTSfile, ZippedFlag from $JobFilesTable where JobId = $JobId and PackageId =$PackageId and InputType=2"
$ZippedJobFiles  = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "Select FileConnValue, FTSfile, ZippedFlag from $JobFilesTable where JobId = $JobId and PackageId =$PackageId and InputType=2 order by ZippedFlag"

# Zip if neccessary
$Zipped              = $ZippedJobFiles.ZippedFlag|Select -First 1
$ParentJobFolder     = ($JobFiles.fileconnvalue|select -First 1)
$pos                 = $ParentJobFolder.indexof("\Output\")
$ParentJobFolder     = $ParentJobFolder.Substring(0,$pos)
$OutputFolder        = "$ParentJobFolder\Output"
$OutputJobFiles      = $JobFiles.FtsFile
$OutputFiles         = gci $OutputFolder|where { ! $_.PSIsContainer }
$PSFTPError          = "PSFTP PUT files failed."                                                                    #### Trap this error in Visual Cron ####

if($OutputFiles){
    if($Zipped -eq 1){
        foreach($ZippedJobFile in $ZippedJobFiles){
            $OutputFilePath = $ZippedJobFile.FileConnValue
            $OutputFileName = $ZippedJobFile.FTSFile
            $ZipCheck       = $OutputFileName.Substring($OutputFileName.length -3 ,3)
            
            if ($ZipCheck -ne 'zip'){
               Compress-Archive $OutputFilePath -DestinationPath "$OutputFolder\$OutputFileName.zip" -Force
               ren "$OutputFolder\$OutputFileName.zip" "$OutputFolder\$OutputFileName"
            }elseif($ZipCheck -eq 'zip'){
               Compress-Archive $OutputFilePath -DestinationPath "$OutputFolder\$OutputFileName" -Force
            }
        }
    }
    
}else{
     Write-Host "Couldn't find output files on $OutputFolder."
     Write-Error $PSFTPError -ErrorAction Stop
     
}

## FTS Put ## 
$ConnectionString = $JobCommands.FTSConn
$PutCmdFile       = "$ParentJobFolder\PutCmd.txt"       
$JobCommands.FTSPutlist|Out-File "$PutCmdFile" -Encoding ascii              
$Connect          = "$psftpPath\psftp.exe $ConnectionString -b `"$PutCmdFile`""
$PSFTPOut = iex $Connect 2>&1 


if($LASTEXITCODE -eq 0){
        $SuccessMessage =  "PSFTP PUT to remote succeeded for JobID $JobId and PackageID $PackageId. DETAILS: $PSFTPOut".Replace("'","''")
        Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "INSERT INTO INTF_JobLog VALUES ($JobId, $PackageID, '$SuccessMessage','Export-Files','Success', getdate())"
        Write-Host "PSFTP PUT to remote succeeded for JobID $JobId and PackageID $PackageId."
}else{

         $PutError = "PSFTP PUT to remote failed for JobID $JobId and PackageID $PackageId. DETAILS: $PSFTPOut".Replace("'","''")
         Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "INSERT INTO INTF_JobLog VALUES ($JobId, $PackageID, '$PutError','Export-Files','Failure', getdate())"
         Write-Error $PSFTPError -ErrorAction Stop
}

# Remove Logs Older than x Days
$DateToDelete = (Get-Date).AddDays(-$daysToStoreLogs)

try{
      $res = Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "DELETE FROM INTF_JOBLOG WHERE EXECDT < '$DateToDelete'"
      # if there are old logs, delete them
      if($res){
            Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "INSERT INTO INTF_JobLog VALUES ($JobId, $PackageID, 'Deleted logs older than $daysToStoreLogs days.','Export-Files','Success', getdate())"
            Write-Host "*** Deleted logs older than $daysToStoreLogs days ***"
            }
    }catch{
    Write-Error "Failed to delete logs from $ServerName.$DBName.INTF_JobLog."
}

# Output Folder Archival
$Date = $(Get-date).ToString("yyyyMMdd")
$ArchiveOutputFolder = "$OutputFolder\Archive\$Date"
md $ArchiveOutputFolder -Force|Out-Null
$OutputFolderItems   = gci $OutputFolder| where { ! $_.PSIsContainer }
if($OutputFolderItems){
    move $OutputFolderItems.FullName -Destination $ArchiveOutputFolder -Force
}



# EOF