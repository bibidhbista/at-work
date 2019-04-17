
<#

AUTHOR: BIBIDH BISTA
LAST UPDATE DATE: 09/07/2017


************* USE YOUR OWN PRIVATE TOKEN FROM GITLAB TO AUTHENTICATE: ONLY NEEDS TO BE DONE ONCE *************

THE FOLDER MUST CONTAIN A COMMONSCRIPT.RSS FILE! CURL MUST BE INSTALLED



POWERSHELL COMMAND:
./Ind_rpt_deploy.ps1 -gitLabPath "https://pgitapp01.dm.com/SSRS/Accounting/raw/master/Accounting_SSRS/LOC_Fees_Projection.rdl" -reportname "LOC_Fees_Projection.rdl" -servername "sqltest2016" -reportfolder "Test"

PARAMS:

REQUIRED:
GITLABPATH              : PATH TO GITLAB REPO                                  : ENDING IN ".RDL"
SERVERNAME              : NAME OF THE SERVER TO DEPLOY TO:                EX   : 'SQLTEST2016'
TARGETREPORTFOLDER      : NAME OF THE FOLDER TO DEPLOY TO ON THE SERVER        : IF IT DOES NOT EXIST, ONE WILL BE CREATED FOR YOU

OPTIONAL:
REPORTNAME:	NAME OF THE REPORT  : ENDING IN ".RDL"  :DEFAULT:    STRIPS OFF THE REPORT NAME OFF OF THE GIT LAB PATH PROVIDED
DATASETFOLDER                                       :DEFAULT:	"DATASETS"
DATASOURCEFOLDER	                                :DEFAULT:	"DATA SOURCES"
DATASOURCEPATH		                                :DEFAULT:	"/DATA SOURCES"



#>

[CmdletBinding()]
   

 param (
                # Gitlab Path to the report
                [Parameter(Mandatory=$true)]
                [ValidatePattern('\w*.rdl\b')]
                [ValidateNotNull()]
                [string] $gitLabPath,
                # Name of the target server for the report to be deployed to
                [Parameter(Mandatory=$true)]
                [ValidateNotNull()]
                [string] $targetServerName,
                # Report Folder on the server to deploy to
                [Parameter(Mandatory=$true)]
                [ValidateNotNull()]
                [string] $targetReportFolder,

               
			   
			   # Token for access to gitLabPath. Use private token generated from gitlab to authenticate your account!!
				[Parameter(Mandatory=$False)]
                [ValidateNotNull()]
				[string] $token,		# Needs to be set up once for every DBA trying to run this script with their own private token from GitLab
			   
               
			   
			   
                #Optional Parameters:
                # Report Name ending on *.rdl. To be used if the report name needs to be different than the one provided from GitLab
                [Parameter(Mandatory=$false)]
                [ValidatePattern('\w*.rdl\b')]
                [ValidateNotNull()]
                [string] $reportName=($gitLabPath -split '((?:.[^\/\r\n]*))$')[1].Substring(1),        #:: OPTIONAL :: Default Value is set to the report name stripped off of the URL for GitLabPath

                # Name of dataset folder .... DEFAULT SET TO "Datasets"                                 :: OPTIONAL
                [Parameter(Mandatory=$False)]
                [ValidateNotNull()]
                [string] $datasetFolder= "Datasets",
                # Name of Data Sources folder .... DEFAULT SET TO "Data Sources"                        :: OPTIONAL
                [Parameter(Mandatory=$False)]
                [ValidateNotNull()]
                [string] $datasourceFolder="Data Sources",
                # Folder path for Data Sources folder .... DEFAULT SET TO "Data Sources"                :: OPTIONAL
                [Parameter(Mandatory=$false)]
                [ValidateNotNull()]
                [string] $datasourcePath="/Data Sources"   

						
                       
 )

############################################# # Private Token for BBista. Change to your current private token from GitLab account to authenticate #############################
 $token='15zCXwxCpC5WgyvKjS5u' 
################################################################################################################################################################################
 
 $gitlabpath =$gitLabPath.Trim()
 $currentFolder =$PSScriptRoot
 $daysForLogRetention = 45
 $reportName =$reportName.Replace('%20',' ')

 # Clear old logs on PDMSQL08.Logs.SSRS_DEPLOY_LOG
 $cmd = 'select datediff(d,min(run_date),getdate()) from SSRS_Deploy_Log'
 try{
        $value = Invoke-Sqlcmd $cmd -ServerInstance PDMSQL08 -Database Logs
}catch{
         WRITE-Error 'You don''t have sufficient permissions to log the details to PDMSQL08' -ErrorAction Stop
}
 if(($value -ne $null) -and ($value>$daysForLogRetention)){
            $cmd = "DELETE FROM SSRS_DEPLOY_LOG WHERE RUN_DATE IN (SELECT RUN_DATE FROM SSRS_DEPLOY_LOG GROUP BY RUN_DATE HAVING DATEDIFF(D,MIN(RUN_DATE),GETDATE())=$daysForLogRetention)"
            try{
                Invoke-Sqlcmd $cmd -ServerInstance PDMSQL08 -Database Logs
                Write-Host '***** Cleared log history older than 45 days *****'
            }catch{
                WRITE-Error 'You don''t have sufficient permissions to delete the log from PDMSQL08' -ErrorAction Stop
            }
            
    } else{ 
            Write-Host "`n`n***** No logs are older than $daysForLogRetention days *****`n"             
 }


 # Log the details to PDMSQL08.LOGS.SSRS_DEPLOY_LOG
function Log-SQL ($targetServerName, $logText){
    TRY{
        $query = "INSERT INTO SSRS_DEPLOY_LOG VALUES ('$targetServerName', getdate(), '$logText', '$env:username')"
        Invoke-Sqlcmd $query -ServerInstance 'PDMSQL08' -Database 'LOGS' 
        }
    CATCH{
        WRITE-Error 'You don''t have sufficient permissions to log the details to PDMSQL08' -ErrorAction Stop
    }
}


Write-Host "***** Preparing SSRS Deployment *****`n"
   
# Validating the URL provided for the rdl file
if(!($gitLabPath.Contains('/blob/') -or $gitLabPath.Contains('/raw/'))){
        Write-Error "The URL provided for GitLabPath isn't a valid URL for a rdl file.`nPlease make sure that the link is pointing to the definition of the rdl file." -ErrorAction Stop
}
$currentUser = $env:username       
$logText=""


# Adding path to environment variable
Write-Host "`n***** Adding path to System Variables *****`n"
$condition = $env:path -notlike "*C:\Users\$currentUser\AppData\Local\Programs\Git\cmd*" -or $env:path -notlike '*Tools\Binn*' -or $env:path -notlike '*Common7\IDE*'
try{
        if($condition){
                $env:path="$env:path;C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE;C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE;C:\Users\$currentUser\AppData\Local\Programs\Git\cmd;C:\Program Files (x86)\Microsoft SQL Server\130\Tools\Binn"
                Write-Host "`n`nSuccessfully added the path to environment variables for RS.EXE, GIT Bash, cURL.exe and SSMS!" -
        }
}
catch{
        Write-Error "Coudln't add path to system variables for RS.EXE, GIT Bash, cURL.exe and SSMS!`nMake sure you have admin privileges." -ErrorAction Stop
}

# If Gitlab Path provided isn't to a raw file, XML DTDPROCESSING wouldn't be able to parse the XML code.
# If Gitlab Path contains BLOB :: Change into raw file
if ($gitLabPath.Contains('/blob/')){
        $gitLabPath=$gitLabPath.Replace('/blob/','/raw/')
        Write-Host "GitLab Path provided was an URL to the BLOB of $reportName.`nConverted to raw rdl file.`n`n"

}


# Path variables for github export
## PULL FROM GITLAB AND STAGE IT LOCALLY

$timestamp =$(get-date -f yyyy-MM-dd)
$StagingPath = "$currentFolder\ReportStaged_For_Deploy_$timestamp\Reports\"

#if((test-path "$StagingPath")){
#    rd $StagingPath -recurse -Force 
#    write-host "Deleted the existing reports under the Staging Folder."
#}

md $StagingPath -Force| out-null
md "$currentFolder\Report Backup" -Force |Out-Null
           
       
#cURL from the GitLab Url to a local path for staging the report
Write-Host "***** Downloading raw file $reportName from $gitLabPath to $StagingPath *****`n"
$cURLEXEPath = "$currentFolder\curl.exe"                            #"C:\Users\$currentUser\AppData\Local\Programs\Git\mingw64\bin\"
$curlParam =" --header `"PRIVATE-TOKEN: $token`" `"$gitLabPath`" -o `"$StagingPath$reportname`"`""

#$cURLEXEPath+=$curlParam
echo "$cURLEXEPath --header ""PRIVATE-TOKEN: $token"" ""$gitLabPath"" -o ""$StagingPath$reportname""" 
try{
    .$cURLEXEPath --header "PRIVATE-TOKEN: $token" "$gitLabPath" -o "$StagingPath$reportname" 
}
catch{
    Write-Error "Failed to download the raw file. Couldn't cURL from $gitLabPath to $StagingPath.`n$ErrorMessage`n`nMake sure you have sufficient permissions." -ErrorAction Stop
}


# DEPLOY REPORT TO SERVER
$scriptFilePath ="$currentFolder\commonscript.rss"
$serverPath="http://$targetServerName/reportserver"

# MAKES A BACKUP OF THE CURRENT VERSION OF THE RDL FILE ON SERVER IF IT EXISTS

Write-Host "***** Making Backup of the existing report file if exists *****"
    
$url = "http://$targetServerName/ReportServer/ReportService2010.asmx?WSDL"
$ssrs = New-WebServiceProxy -uri $url -UseDefaultCredential -Namespace "ReportingWebService"

$TargetReportFolder = $TargetReportFolder.substring(0,1).toupper()+$TargetReportFolder.substring(1)

# Checks to see if the folder exists on server
if($result -eq "Unkonwn"){
    Write-Error "$targetReportFolder doesn't exist on $targetServerName. Make sure the folder exists and try again." -errorAction Stop
}
else{
    try{
        $reports = $ssrs.ListChildren("/$targetReportFolder", $true)

        $nameLookup = $ReportName.Replace('.rdl','')
        $r =  $reports | where-object {$_.Name -eq $nameLookup}
        $def = $ssrs.GetItemDefinition($r.path)

        $stream = [system.io.file]::OpenWrite("$currentFolder\Report Backup\$ReportName-Backup_$timestamp.rdl") 
        $stream.write($def, 0, $def.length)
        $stream.close()
        #for personal use:BBISTA
       ##############################################################################################################
        $stream = [system.io.file]::OpenWrite("$currentFolder\Report Backup\$ReportName-Backup_$timestamp.rdl") ########
        $stream.write($def, 0, $def.length)#############################################################################
        $stream.close()##################################################################################################
        ##############################################################################################################

        Write-Host "Backup of the existing report has been copied to $currentFolder\$ReportName-Backup_$timestamp.rdl"
        $logText+= "Backed up the existing report to $currentFolder\$ReportName-Backup_$timestamp.rdl"
        Log-SQL $targetServerName $logText
        $logText=''
    }
    catch{
        Write-Host "Existing report file not found. Continuing to deploy."
    }
}
# Deploy the report
try{
    rs.exe -i $scriptFilePath -s $serverPath -v ReportFolder="$targetReportFolder" -v DataSetFolder="$datasetFolder" -v DataSourceFolder="$datasourceFolder" -v DataSourcePath="$datasourcePath" -v ReportName="$reportName" -v filePath="$StagingPath" -e Mgmt2010
    Write-Host "Successfully deployed $reportName to $targetServerName/Reports/browse/$targetReportFolder/" -BackgroundColor Green
    $logText=""
    $logText += "$currentUser successfully deployed $reportName to $targetServerName from $gitLabPath"
    Log-SQL $targetServerName $logText
    }    
catch{
    $ErrorMessage = $_.Exception.Message
    $FailedItem = $_.Exception.ItemName
    $ErrorActionPreference ="stop"
    Write-Error "$errormessage $faileditem"
    $logText=""
    $logText += "Failed to deploy $reportName to $targetServerName/Reports/browse/$targetReportFolder/. $ErrorMessage $FailedItem"
    Log-SQL $targetServerName $logText
}


# Start-Chrome 
try{
    $targetReportFolder =$targetReportFolder.Replace(' ','%20')
    Start-Process "chrome.exe" "$targetServerName/Reports/browse/$targetReportFolder/"
    }
catch{
    Write-Error 'NoChrome' -ErrorAction SilentlyContinue
}

