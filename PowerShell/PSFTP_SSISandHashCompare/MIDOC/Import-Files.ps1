[CmdletBinding()]
Param( 
   [Parameter(Mandatory=$True, HelpMessage='ENTER A VALID JOB ID: ')]
   [ValidateNotNullorEmpty()]  
   [int] $JobId ,                                                                     
   [Parameter(Mandatory=$True, HelpMessage='ENTER A VALID PACKAGE ID:')]
   [ValidateNotNullorEmpty()]  
   [int] $PackageId                                                                 
   )

# import-module C:\util\sqlmaint\sqlserverpowershellcmdlet\sqlserver
   

# Connection settings
#$ServerName    = 'MIDOCSQL'
$ServerName    = 'ATGDSMSQ17'
#$psftpPath        = "C:\Data\Interfaces\Util"
$PSFTPPath        =  $PSScriptRoot
$FileNotFoundMessage = "no such file or directory"


$DBName        = 'MIDOC_INTERFACE'
$JobsTable     = 'INTF_Jobs'
$JobFilesTable = 'INTF_JobFiles'

$JobCommands   = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "EXEC Admin_JobCommands $JobId, $PackageId"
$JobFiles      = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "Select FileConnValue, FTSfile from $JobFilesTable where JobId = $JobId and PackageId =$PackageId and InputType =1"
# If package is in Packages with dynamic file names
###### PSFTP #####
$ConnectionString = $JobCommands.FTSConn
$ParentJobFolder  = $JobFiles.FileConnValue|Select -First 1
$Pos              = $ParentJobFolder.IndexOf("\Input\")
$ParentJobFolder  = $ParentJobFolder.Substring(0,$Pos)
$InputFolder      = "$ParentJobFolder\Input"
$GetCmdFile       = "$ParentJobFolder\GetCmd.txt"

$DynamicFiles = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "SELECT * FROM $JobFilesTable WHERE DYNAMICFTSFLAG=1 AND JOBID =$JobId AND PACKAGEID =$PackageId AND INPUTTYPE=1"


foreach($DynamicFile in $DynamicFiles){
    # find files based on string pattern from table
    $FTSLocation   = $DynamicFile.FTSLocation
    $FTSFile       = $DynamicFile.FTSFile
    $FTSFileID     = $DynamicFile.FileId
    $StringToMatch = $DynamicFile.StringToMatch

    # create a get request string based on current fileconnvalue and stop at \Input\ 
   
    # add the string pattern to the end of previous variable to create get cmd for specific file
    $PSFTPGet = "lcd $InputFolder`n cd $FTSLocation`n mget $StringToMatch`n bye"
    $PSFTPGet|Out-File $GetCmdFile -Encoding ascii -Force              
    # psftp connect and use previous get cmd
    $Connect = "$psftpPath\psftp.exe $ConnectionString -b `"$GetCmdFile`" -bc"
    iex $Connect 2>&1
    
    # found file based on string pattern
    if($LASTEXITCODE -eq 0){
    #    #yes : import
                # use the names to update FileConnValue on JobFiles table
            $DirPattern = $StringToMatch.Replace('?','\d')
            $results = Get-ChildItem -Path $InputFolder| Where-Object { $_.Name -match $DirPattern }
            $DynamicFileName = $results.Name
            # Handle multiple files
            # Updates both Input and Output File Names
            $UpdateTable = Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "Update $JobFilesTable SET FTSFile = '$DynamicFileName' Where JobID = $JobId and PackageID = $PackageId and FileID =$FTSFileID"
    }else{
        # THROW ERROR
    }    
    
}


# All of these should still work  

# For packages with static file names
# This JobsComands result would be accurate as we updated the FileName based on search pattern
$JobCommands   = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "EXEC Admin_JobCommands $JobId, $PackageId"
$Jobs          = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "Select JobNm, SSISPackage from $JobsTable where JobId = $JobId and PackageId =$PackageId"
$JobFiles      = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "Select FileConnValue, FTSfile from $JobFilesTable where JobId = $JobId and PackageId =$PackageId and InputType =1"

###### PSFTP #####
$ConnectionString = $JobCommands.FTSConn
$ParentJobFolder  = $JobFiles.FileConnValue|Select -First 1
$Pos              = $ParentJobFolder.IndexOf("\Input\")
$ParentJobFolder  = $ParentJobFolder.Substring(0,$Pos)
$InputFolder      = "$ParentJobFolder\Input"
$GetCmdFile       = "$ParentJobFolder\GetCmd.txt" 


$JobCommands.FTSgetlist|Out-File "$GetCmdFile" -Encoding ascii -Force              
$Connect          = "`"$psftpPath\psftp.exe`" $ConnectionString -b `"$GetCmdFile`" -bc"

$PSFTPOut = cmd /C "$Connect" 2>&1 

$PSFTPError = "PSFTP GET files failed."                                                                    #### Trap this error in Visual Cron ####
$FileNotFound = ($PSFTPOut -match "$FileNotFoundMessage").length 


# File exists and no error has occured
if($FileNotFound -eq 0 -and $LASTEXITCODE -eq 0 -and $($PSFTPOut).length -ne 0){ 
       # Log to table as Result Success
       $SuccessMessage = "PSFTP GET from remote succeeded for JobID $JobId and PackageID $PackageId."
       Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "INSERT INTO INTF_JobLog VALUES ($JobId, $PackageID, '$SuccessMessage','Import-Files','Success', getdate())"
       Write-Host $SuccessMessage
  }else{
       $ErrorMessage = $("PSFTP GET from remote failed for JobID $JobId and PackageID $PackageId. "+$PSFTPOut).replace("'","''")
       Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "INSERT INTO INTF_JobLog VALUES ($JobId, $PackageID, '$ErrorMessage','Import-Files','Failure', getdate())"
       Write-Error $PSFTPError -ErrorAction Stop
   }




### Unzip Zipped File ### 
try{
        $InputFiles       = gci $InputFolder
        foreach($InputFile in $InputFiles){
            $InputFilePath    = "$InputFolder\$InputFile"
                if($InputFile.extension -eq '.zip'){
                       Expand-Archive $InputFilePath -DestinationPath $InputFolder -Force }
            }
    }catch{
         $ErrorMessage = "Failed to unzip files to local path ($InputFolder). $ErrorMessage"
         Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "INSERT INTO INTF_JobLog VALUES ($JobId, $PackageID, '$ErrorMessage','Import-Files','Error', getdate())"
         Write-Error $ErrorMessage

    }

## Cleanup CRLFs
#$FixFileFlag = Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "Select * from dbo.$JobFilesTable ijf	 WHERE fixfileflag=1 and inputtype=1 and jobid = $JobId"
#
#if($FixFileFlag.jobId -eq $JobId){
#    $original_files = $FixFileFlag.FileConnValue
#    foreach ($original_file in $original_files) {
#        $text = [IO.File]::ReadAllText($original_file) -replace "`r`n", "~|~"        #"`n"
#        [IO.File]::WriteAllText("$InputFile", $text)
#    }
#}

# EOF