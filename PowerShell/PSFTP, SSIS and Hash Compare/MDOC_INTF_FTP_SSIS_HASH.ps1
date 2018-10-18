[CmdletBinding()]
Param( 
   [Parameter(Mandatory=$False, HelpMessage='ENTER A VALID JOB ID: ')]
   [ValidateNotNullorEmpty()]  
   [int] $JobId,
   [Parameter(Mandatory=$False, HelpMessage='ENTER A VALID PACKAGE ID:')]
   [ValidateNotNullorEmpty()]  
   [int] $PackageId
   )

$ServerName    = 'ATGDSMSQ17'
$DBName        = 'MIDOC_INTERFACE'
$JobsTable     = 'INTF_Jobs'
$JobFilesTable = 'INTF_JobFiles'

$JobId         = 6
$PackageId     = 1
$JobCommands   = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "EXEC Admin_JobCommands $JobId, $PackageId"
$JobName       = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "Select JobNm from $JobsTable where JobId = $JobId and PackageId =$PackageId"
$JobFiles      = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "Select FTSfile from $JobFilesTable where JobId = $JobId and PackageId =$PackageId"

##### PSFTP #####
$InputFolder   = "C:\Users\bibidhb\Desktop\SSIS"                                                                                                  # change these to match env
$GetCmdFile    = "C:\users\bibidhb\desktop\ssis\get.txt"                                                                                          # change these to match env
($JobCommands.FTSgetlist).Replace("F:\DBA\MIDOC\Interfaces\SSIS\06_SCAO_JDW","$InputFolder")|Out-File "$GetCmdFile" -Encoding ascii               # not nec for prod
$Connect       = "psftp `"Atg\mdocsftp@atgmsm`" -pw `";0Thp8W8O;C?|o6PN6C:hD,!+`" -b `"$GetCmdFile`" -bc "#+ $JobCommands.FTSConn                 # needs double quotes on results from sps
iex $Connect

### Unzip Zipped File ### 
$InputFiles    = gci "$InputFolder\Input"
foreach($InputFile in $InputFiles){
$InputFilePath = "$InputFolder\Input\$InputFile"
if($InputFile.extension -eq '.zip'){
       Expand-Archive $InputFilePath -DestinationPath "$InputFolder\Input\" -Force
       del $InputFilePath
    }
}


## Separate PS1 ###
######## FOR DTEXEC #######
#($JobCommands.SSISCmd).Replace("F:\DBA\MIDOC\Interfaces\SSIS\06_SCAO_JDW","C:\Users\bibidhb\Desktop\SSIS")

## Separate PS1 ###
## For Putting Output to a folder ## Zipped?
#($JobCommands.FTSPutList).Replace("F:\DBA\MIDOC\Interfaces\SSIS\06_SCAO_JDW","C:\Users\bibidhb\Desktop\SSIS")



















#### FOR HASH ####
# Files to be compared
#$DBName = 'MIDOC_INTF_META'
#$HashFiles = "SELECT InFilePath, OutFilePath FROM [$DBName].[dbo].[JobFiles_HashCompare] WHERE RESULT IS NULL OR RESULT='NULL'" 
#$HashAlgorithm = 'SHA256'
#$HashFilesDataSet = Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBname -Query $HashFiles
#if(!$HashFilesDataSet){
#    Write-Host "No records to process." -BackgroundColor green
#    EXIT
#
#}
#
#$HashFilesDataSet|%{
#    $InFilePath =  $_.InFilePath
#    $OutFilePath =  $_.OutFilePath
#    # Input File doesn't exist
#    if(!(Test-Path($InFilePath))){
#        Write-Error "Input File doesn't exist. IN: $InFilePath and OUT: $OutFilePath"
#    # Output File doesn't exist
#    }elseif(!(Test-Path($OutFilePath))){
#        Write-Error "Output File doesn't exist. IN: $InFilePath and OUT: $OutFilePath"
#    # Both Files Exist   
#    }else{
#        # CALCULATE CURRENT HASHES
#        Write-Host "Comparing $InFile_Path with $OutFilePath ..." -ForegroundColor Yellow
#        $InFile_Hash =  Get-FileHash -Path $InFilePath -Algorithm  $HashAlgorithm
#        $OutFile_Hash = Get-FileHash -Path $OutFilePath -Algorithm $HashAlgorithm
#        $DATE =  GET-DATE -Format "yyyy-MM-dd HH:mm:ss"
#
#        # Compare them
#        IF ($InFile_Hash.hash -NE $OutFile_Hash.hash) {
#                # Log to table as Result Failure
#                Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "UPDATE JOBFILES_HASHCOMPARE SET [HASH]=NULL,RESULT='Mismatch',DATE='$DATE' WHERE INFILEPATH='$InFilePath' AND OUTFILEPATH='$OutFilePath' AND (RESULT IS NULL OR RESULT='NULL')"
#                Write-Warning "$InFilePath and $OutFilePath hash mismatch." 
#        }
#        ELSE {
#                # Log to table as Result Success
#                Invoke-Sqlcmd -ServerInstance $ServerName -Database $DBName -Query "UPDATE JOBFILES_HASHCOMPARE SET [HASH]=(CONVERT(BINARY(64),'$($InFile_Hash.hash)')),RESULT='Match',DATE='$DATE' WHERE INFILEPATH='$InFilePath' AND OUTFILEPATH='$OutFilePath' AND (RESULT IS NULL OR RESULT='NULL')"
#                Write-Host "$InFilePath and $OutFilePath hash match." -ForegroundColor Green
#        }
#    }
#    
#}



#####################################################################
##################### For Statistics ################################
######### Compare Cryptographic Hashing Algorithm Performance #######
#####################################################################


#$HashTime_1 = Measure-Command { Get-FileHash -Path "$Path\$InFile_Path" -Algorithm MD5}
#$HashTime_2 = Measure-Command { Get-FileHash -Path "$Path\$InFile_Path" -Algorithm SHA256}
#Write-host "$HashTime_1`n`n`n$HashTime_2"
