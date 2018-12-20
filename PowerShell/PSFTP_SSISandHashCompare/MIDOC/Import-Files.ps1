###################################################################################
############################  Import-Files ########################################
###################################################################################

[CmdletBinding()]
Param( 
   [Parameter(Mandatory=$True, HelpMessage='ENTER A VALID JOB ID: ')]
   [ValidateNotNullorEmpty()]  
   [int] $JobId ,                                                                     
   [Parameter(Mandatory=$True, HelpMessage='ENTER A VALID PACKAGE ID:')]
   [ValidateNotNullorEmpty()]  
   [int] $PackageId                                                                 
   )

import-module C:\util\sqlmaint\sqlserverpowershellcmdlet\sqlserver
   

# Connection settings
$ServerName      = 'MIDOCSQL'
#$ServerName       = 'ATGDSMSQ17'
$psftpPath       = "C:\Data\Interfaces\Util"
#$PSFTPPath        =  $PSScriptRoot
$FileNotFoundMessage = "no such file or directory"


$DBName           = 'MIDOC_INTERFACE'
$JobsTable        = 'INTF_Jobs'
$JobFilesTable    = 'INTF_JobFiles'

$JobCommands   = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "EXEC Admin_JobCommands $JobId, $PackageId"
$Jobs          = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "Select JobNm, SSISPackage from $JobsTable where JobId = $JobId and PackageId =$PackageId"
$JobFiles      = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "Select FileConnValue, FTSfile, ZippedFlag from $JobFilesTable where JobId = $JobId and PackageId =$PackageId and InputType =1"
# If package is in Packages with dynamic file names
$ConnectionString = $JobCommands.FTSConn
$ParentJobFolder  = $JobFiles.FileConnValue|Select -First 1
$Pos              = $ParentJobFolder.IndexOf("\Input\")
$ParentJobFolder  = $ParentJobFolder.Substring(0,$Pos)
$InputFolder      = "$ParentJobFolder\Input"
$GetCmdFile       = "$ParentJobFolder\GetCmd.txt"
$PSFTPError       = "PSFTP GET files failed."        
$Zipped           = $JobFiles.ZippedFlag|select -first 1 

# Input Folder Archival
$Date = Get-Date -Format "yyyyMMdd"
$ArchiveInputFolder = "$InputFolder\Archive\$Date"
$InputFolderItems   = gci $InputFolder| where { ! $_.PSIsContainer }
if($InputFolderItems){
    md $ArchiveInputFolder -Force|Out-Null
    move $InputFolderItems.FullName -Destination $ArchiveInputFolder -Force
}


$DynamicFiles = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "SELECT * FROM $JobFilesTable WHERE DYNAMICFTSFLAG=1 AND JOBID =$JobId AND PACKAGEID =$PackageId AND INPUTTYPE=1"


if ($DynamicFiles){
            # PSFTP CONNECT and GET cmd
            $JobCommands.FTSgetlist|Out-File "$GetCmdFile" -Encoding ascii -Force              
            $Connect  = "$psftpPath\psftp.exe $ConnectionString -b `"$GetCmdFile`""
            $PSFTPOut = iex $Connect 2>&1

            # If file exists
            if($LASTEXITCODE -eq 0){
                    # Log to table as Result Success
                    $SuccessMessage = "PSFTP GET from remote succeeded for JobID $JobId and PackageID $PackageId. DETAILS: $PSFTPOut".replace("'","''")
                    Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "INSERT INTO INTF_JobLog VALUES ($JobId, $PackageID, '$SuccessMessage','Import-Files','Success', getdate())"
                    Write-Host $SuccessMessage

             }else{
                     $ErrorMessage = "PSFTP GET from remote failed for JobID $JobId and PackageID $PackageId. DETAILS: $PSFTPOut".replace("'","''")
                     Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "INSERT INTO INTF_JobLog VALUES ($JobId, $PackageID, '$ErrorMessage','Import-Files','Failure', getdate())"
                     Write-Error $PSFTPError -ErrorAction Stop
            }    
        
}else{
        # For packages with static file names
        $JobCommands.FTSgetlist|Out-File "$GetCmdFile" -Encoding ascii -Force              
        $Connect       = "`"$psftpPath\psftp.exe`" $ConnectionString -b `"$GetCmdFile`""
        $PSFTPOut = cmd /C "$Connect" 2>&1        
        $FileNotFound = ($PSFTPOut -match "$FileNotFoundMessage").length 


        # File exists and no error has occured
        if($FileNotFound -eq 0 -and $LASTEXITCODE -eq 0 -and $($PSFTPOut).length -ne 0){ 
               # Log to table as Result Success
               $SuccessMessage = "PSFTP GET from remote succeeded for JobID $JobId and PackageID $PackageId. DETAILS: $PSFTPOut".replace("'","''")
               Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "INSERT INTO INTF_JobLog VALUES ($JobId, $PackageID, '$SuccessMessage','Import-Files','Success', getdate())"
               Write-Host $SuccessMessage
          }else{
               $ErrorMessage = "PSFTP GET from remote failed for JobID $JobId and PackageID $PackageId. DETAILS: $PSFTPOut".replace("'","''")
               Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "INSERT INTO INTF_JobLog VALUES ($JobId, $PackageID, '$ErrorMessage','Import-Files','Failure', getdate())"
               Write-Error $PSFTPError -ErrorAction Stop
           }
}



#### Unzip Zipped File ### 
if($Zipped -eq 1){
    try{
            $InputFiles = gci $InputFolder\*| where { ! $_.PSIsContainer }
            foreach($InputFile in $InputFiles){
                if($InputFile.Extension -ne 'zip'){
                    ren $InputFile "$InputFile.zip"
                    Expand-Archive "$InputFile.zip" $InputFolder -Force
                    ren "$InputFile.zip" $InputFile
                }else{
                    Expand-Archive $InputFile -DestinationPath "$InputFolder" -Force
                    }
             }
                
    }catch{
             $ErrorMessage = "Failed to unzip files to local path ($InputFolder)."
             Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "INSERT INTO INTF_JobLog VALUES ($JobId, $PackageID, '$ErrorMessage','Import-Files','Error', getdate())"
             Write-Error $ErrorMessage
    }
}else{
    #Write-Host "No zip files found."
}
# Cleanup CRLFs
$FilesToFix      = Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "Select * from dbo.$JobFilesTable ijf	 WHERE fixfileflag=1 and inputtype=1 and jobid = $JobId and packageid =$PackageId"
$NeedsFixing     = $FilesToFix.FixFileFlag
$FilesFixCmdPath = "$ParentJobFolder\FixFile.cmd" 
$PathCheck       = Test-Path($FilesFixCmdPath)

if($NeedsFixing -eq 1){
    if($PathCheck){
        foreach($FileToFix in $FilesToFix){
            try{
                $Zipped             = $FilesToFix.ZippedFlag
                $StringToMatch      = $FileToFix.StringToMatch
                $DirPattern         = $StringToMatch.Replace("?","\d")
                $DirResults         = Get-ChildItem -Path $InputFolder| Where-Object {$_.Name -match $DirPattern}
                $FileConnValue      = $FileToFix.FileConnValue
                $FTSFileID          = $FileToFix.FileId
                foreach($DirResult in $DirResults){
                    $DynamicFileName = $DirResult.Name
                    if ($DynamicFileName -like $StringToMatch){ 
                            $FileConnValue  = $DirResult.FullName
                            if($Zipped -eq 1){
                                $UpdateFTSFile                = Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "Update $JobFilesTable SET FTSFile = '$DynamicFileName' Where JobID = $JobId and PackageID = $PackageId and FileID =$FTSFileID and InputType <> 2"}
                            else{
                                $UpdateFTSFile                = Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "Update $JobFilesTable SET FTSFile = '$DynamicFileName' Where JobID = $JobId and PackageID = $PackageId and FileID =$FTSFileID and InputType <> 2"
                                $UpdateFTSFileConnValue       = Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "Update $JobFilesTable SET FileConnValue = '$FileConnValue' Where JobID = $JobId and PackageID = $PackageId and FileID =$FTSFileID and InputType <> 2"
                            }
                        $FilesToFix      = Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "Select * from dbo.$JobFilesTable ijf	 WHERE fixfileflag=1 and inputtype=1 and jobid = $JobId and packageid =$PackageId and FileID =$FTSFileID and InputType <> 2"    
                        $FileToFixPath   = $FilesToFix.FileConnValue
                        cmd /C $FilesFixCmdPath  $FileToFixPath                     
                    }
                }                
            }catch{
                $ErrorMessage = "Failed to run fix files command on Inbound/Outbound folders on $ParentJobFolder."
                Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "INSERT INTO INTF_JobLog VALUES ($JobId, $PackageID, '$ErrorMessage','Import-Files','Error', getdate())"
                Write-Error $ErrorMessage  -ErrorAction Stop
            }     
         }
    }else{
        $ErrorMessage = "Couldn''t find FixFile.cmd. Make sure that $FilesFixCmdPath exists."
        Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "INSERT INTO INTF_JobLog VALUES ($JobId, $PackageID, '$ErrorMessage','Import-Files','Error', getdate())"
        Write-Error $ErrorMessage.Replace("''","'")  -ErrorAction Stop
    }

}