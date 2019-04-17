###################################################################################
############################  Exec-SSIS ###########################################
###################################################################################

[CmdletBinding()]
Param( 
   [Parameter(Mandatory=$True, HelpMessage='ENTER A VALID JOB ID: ')]
   [ValidateNotNullorEmpty()]  
   [int] $JobId,
   [Parameter(Mandatory=$True, HelpMessage='ENTER A VALID PACKAGE ID:')]
   [ValidateNotNullorEmpty()]  
   [int] $PackageId,
   [Parameter(Mandatory=$False, HelpMessage='ENTER A VALID SSIS CMD:')]
   [ValidateNotNullorEmpty()]  
   [string] $SSISCmd
   )


import-module C:\util\sqlmaint\sqlserverpowershellcmdlet\sqlserver

# Connection settings
$ServerName   = 'MIDOCSQL'
#$ServerName    = 'ATGDSMSQ17'
$DBName        = 'MIDOC_INTERFACE'
$JobsTable     = 'INTF_Jobs'
$JobFilesTable = 'INTF_JobFiles'

$SuccessCount = 0
$FailureCount = 0

function Exec-SSIS {
    param($JobId, $PackageId)

    $JobCommands   = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "EXEC Admin_JobCommands $JobId, $PackageId"
    $Jobs          = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "Select JobNm, SSISPackage from $JobsTable where JobId = $JobId and PackageId =$PackageId"
    
    # HASH Values
    $InputJobFiles  = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "Select FileId, FileConnValue from $JobFilesTable where JobId = $JobId and PackageId =$PackageId and InputType=1 Order by FileID"
    $OutputJobFiles = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "Select FileId, FileConnValue from $JobFilesTable where JobId = $JobId and PackageId =$PackageId and InputType=2 Order by FileID"
    
    # Exec
    $SSISCmd = ($JobCommands.SSISCmd)
    $SSISError = "SSIS Execution Failed."                                                                    #### Trap this error in Visual Cron ####
  
    # DTEXEC
    $SSISRun = cmd /C $SSISCmd 2>&1
    # Failure
    if($LASTEXITCODE -NE 0){                                        
        Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "INSERT INTO INTF_JobLog VALUES ($JobId, $PackageID, 'SSIS Execution failed for JobId $JobId and PackageId $PackageId. See dtexec logs for more details.','Exec-SSIS','Failure', getdate())"
        Write-Error "$SSISError Details: $SSISCmd"
    }
    # Success
    else{ 
        Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "INSERT INTO INTF_JobLog VALUES ($JobId, $PackageId, 'SSIS Execution succeeded for JobId $JobId and PackageId $PackageId.','Exec-SSIS','Success', getdate())"
        # HASH CHECK
        foreach($InputJobFileDetail in $InputJobFiles){
            $ErrorMessage   = ''
            $SuccessMessage = ''
            $InputJobFile = $InputJobFileDetail.FileConnValue
            foreach($OutputJobFileDetail in $OutputJobFiles){                      
                if($InputJobFileDetail.FileId -eq $OutputJobFileDetail.FileId){# only when FileIds Match
                    $OutputJobFile = $OutputJobFileDetail.FileConnValue
                    $InputHash  = (Get-FileHash -Path $InputJobFile  -Algorithm SHA256).Hash
                    $OutputHash = (Get-FileHash -Path $OutputJobFile -Algorithm SHA256).Hash
                    # Compare them and log execution results
                    if ($InputHash -ne $OutputHash) {
                            # Log to table as Result Failure
                            $FailureCount += 1
                            $ErrorMessage = ("$SuccessCount successes and $FailureCount failure during Hash Check. Hash mismatched for $InputJobFile and $OutputJobFile" + $_.Exception.Message).replace("'","''")
                            Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "INSERT INTO INTF_JobLog VALUES ($JobId, $PackageID, '$ErrorMessage','Exec-SSIS','Error', getdate())"                        
                            Write-Host $ErrorMessage
                            Write-Error $SSISError -ErrorAction Stop

                    }else{
                            # Log to table as Result Success
                            $SuccessCount +=1
                            $SuccessMessage = "Hash matched for $InputJobFile and $OutputJobFile"
                            Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "INSERT INTO INTF_JobLog VALUES ($JobId, $PackageId, '$SuccessMessage','Exec-SSIS','Success', getdate())"
                            Write-Host $SuccessMessage                        
                            break;
                    }
                }
            }
        }
    }
       
}

$JobCommands   = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "EXEC Admin_JobCommands $JobId, $PackageId"
$Jobs          = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "Select JobNm, SSISPackage from $JobsTable where JobId = $JobId and PackageId =$PackageId"
$JobFiles      = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "Select FileConnValue, FTSfile from $JobFilesTable where JobId = $JobId and PackageId =$PackageId and InputType=1"


# For Dynamic File Names
$ConnectionString = $JobCommands.FTSConn
$ParentJobFolder  = $JobFiles.FileConnValue|Select -First 1
$Pos              = $ParentJobFolder.IndexOf("\Input\")
$ParentJobFolder  = $ParentJobFolder.Substring(0,$Pos)
$InputFolder      = "$ParentJobFolder\Input"
$DynamicFiles     = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "SELECT * FROM $JobFilesTable WHERE DYNAMICFTSFLAG=1 AND JOBID =$JobId AND PACKAGEID =$PackageId AND INPUTTYPE=1"

if ($DynamicFiles){
    foreach($DynamicFile in $DynamicFiles){ 
        # find files based on string pattern from table
        $FTSFileConnValue   = $DynamicFile.FileConnValue
        $FTSLocation        = $DynamicFile.FTSLocation
        $FTSFile            = $DynamicFile.FTSFile
        $FTSFileID          = $DynamicFile.FileId
        $StringToMatch      = $DynamicFile.StringToMatch
        $IterateFlag        = $DynamicFile.IterateFlag
        $FixFileFlag        = $DynamicFile.FixFileFlag   
        $Zipped             = $DynamicFile.ZippedFlag
        $DirPattern         = $StringToMatch.Replace("?","\d")
        $DirResults         = Get-ChildItem -Path $InputFolder| Where-Object {$_.Name -match $DirPattern}|Where-Object {$_.name -inotlike '*.fixed'}
        
        # If there are multiple file connections to be made and iterate flag is 1             
        if ($IterateFlag -eq 1){
            foreach($DirResult in $DirResults){ 
                $DirFileName                = $DirResult.Name                
                $DynamicFileConnValue       = "$InputFolder\$DirFileName"
                $DynamicOutputFileConnValue = $DynamicFileConnValue.replace("\Input\","\Output\")

                # Updates both Input and Output File Names and FileConnValues
                # update table with I/O ftsfile name and I/O fileconnvalue
                $UpdateFTSFile                = Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "Update $JobFilesTable SET FTSFile = '$DirFileName' Where JobID = $JobId and PackageID = $PackageId"
                $UpdateFTSFileConnValue       = Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "Update $JobFilesTable SET FileConnValue = '$DynamicFileConnValue' Where JobID = $JobId and PackageID = $PackageId and FileID =$FTSFileID and InputType <> 2"
                $UpdateFTSOutputFileConnValue = Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "Update $JobFilesTable SET FileConnValue = '$DynamicOutputFileConnValue' Where JobID = $JobId and PackageID = $PackageId and FileID =$FTSFileID and InputType=2"
                
                # Exec SSIS for multiple dynamic file connection
                $run = Exec-SSIS -jobid $JobId -packageid $PackageId
            }
            exit;
         } # End of Foreach Loop
        
        
        # If iterate flag is 0  and dynamic flg is 1
        # Dynamic File Name Update
        foreach($DirResult in $DirResults){ 
            $DynamicFileName = $DirResult.Name
            if ($DynamicFileName -like $StringToMatch){  
               if($FTSFile -eq "" -or $FTSFile -eq $null){$FTSFile ="$DynamicFileName"}
                $DynamicFileConnValue       = "$InputFolder\$DynamicFileName"
                $DynamicOutputFileConnValue = $DynamicFileConnValue.replace("\Input\","\Output\")     # file connvalue doesn't need to be changed for zipped files w different names
     
                # Updates both Input and Output File Names and FileConnValues
                $UpdateFTSFile          = Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "Update $JobFilesTable SET FTSFile = '$DynamicFileName' Where JobID = $JobId and PackageID = $PackageId and FileID =$FTSFileID"
                
                # For packages that aren't zipped files, FileConnValue would be "Directory\FTSFile" 
                if($Zipped -eq 0){
                    $UpdateFTSFileConnValue = Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "Update $JobFilesTable SET FileConnValue = '$DynamicFileConnValue' Where JobID = $JobId and PackageID = $PackageId and FileID =$FTSFileID and InputType <> 2"
                    $UpdateFTSOutputFileConnValue = Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "Update $JobFilesTable SET FileConnValue = '$DynamicOutputFileConnValue' Where JobID = $JobId and PackageID = $PackageId and FileID =$FTSFileID and InputType=2"
                }
            break;
            }            
        }#end of foreach file in the directory
    } # End of Foreach loop for each row on the table

    # Exec SSIS for single dynamic file connection
    $run = Exec-SSIS -jobid $JobId -packageid $PackageId
        
}else{
# If the reiterate flag and dynamic flag is set to 0
# Exec SSIS for static file connections
    $run = Exec-SSIS -jobid $JobId -packageid $PackageId
}

# EOF
