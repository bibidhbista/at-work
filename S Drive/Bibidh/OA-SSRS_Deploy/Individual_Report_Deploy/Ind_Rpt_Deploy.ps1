
<#

THE FOLDER MUST CONTAIN A COMMONSCRIPT.RSS FILE!

POWERSHELL COMMAND:
./Ind_rpt_deploy.ps1 -svnrepopath "file:///c:/users/bbista/desktop/svn/ADV/" -reportname "Company Sales.rdl" -servername "sqltest2016" -reportfolder "Test"

PARAMS:

REQUIRED:
SVNREPOPATH:	PATH TO SVN REPOSITORY 
REPORTNAME:	NAME OF THE REPORT : ENDING IN ".RDL"
SERVERNAME:	NAME OF THE SERVER TO DEPLOY TO: EX: 'SQLTEST2016'
REPORTFOLDER	NAME OF THE FOLDER TO DEPLOY TO ON THE SERVER

OPTIONAL:
DATASETFOLDER        	:DEFAULT:	"DATASETS"
DATASOURCEFOLDER	:DEFAULT:	"DATA SOURCES"
DATASOURCEPATH		:DEFAULT:	"/DATA SOURCES"



#>

[CmdletBinding()]
   

        param (
                 
                    # SVN Path to the solution/report
                    [Parameter(Mandatory=$True)]
                    [ValidateNotNull()]
                        [string] $svnRepoPath,
                    # Name of report to be deployed
                    [Parameter(Mandatory=$True)]
                    [ValidateNotNull()]
                    [ValidatePattern(“.rdl$”)]
                        [string] $reportName,
                    # Name of the server for the report to be deployed to
                    [Parameter(Mandatory=$True)]
                    [ValidateNotNull()]
                        [string] $serverName,
                    # Report Folder on the server to deploy to
                    [Parameter(Mandatory=$True)]
                    [ValidateNotNull()]
                        [string] $reportFolder,
                    # Name of dataset folder .... DEFAULT SET TO "Datasets"
                    [Parameter(Mandatory=$False)]
                    [ValidateNotNull()]
                        [string] $datasetFolder= "Datasets",
                     # Name of Data Sources folder .... DEFAULT SET TO "Data Sources"
                    [Parameter(Mandatory=$False)]
                    [ValidateNotNull()]
                        [string] $datasourceFolder="Data Sources",
                    [Parameter(Mandatory=$false)]
                    [ValidateNotNull()]
                        [string] $datasourcePath="/Data Sources"                       
                       
                  )
    ECHO "======================== Preparing SSRS Deployment =======================`n"
   

    # Adding path to environment variable
    Echo "`n============= Adding path to System Variables ==========`n"
    $condition = $env:path -notlike '*Program Files\TortoiseSVN\bin*' -or $env:path -notlike '*Tools\Binn*' -or $env:path -notlike '*Common7\IDE*'
    try{
         if($condition){
            $env:path="$env:path;C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE;C:\Program Files\TortoiseSVN\bin;C:\Program Files (x86)\Microsoft SQL Server\130\Tools\Binn"
        }
    }
    catch{
        $ErrorActionPreference ="STOP"        
        write-error "Coudln't add path to system variables. Make sure you have admin privileges."
    }

    # Path variables for svn checkout/export
    #$reportname = "Company Sales.rdl"
    #$svnrepopath ="file:///c:/users/bbista/desktop/svn/ADV/$reportname"
    
    $rptName = $reportName -replace '.rdl'
  
    $svnRepoPath = "$svnRepoPath/$reportName"
    $timestamp =$(get-date -f yyyy-MM-dd)
    # Pull from SVN and stage it locally
    # SVN Checkout and stage to a local path for the deploy
    $svnRptPath = "$PsScriptRoot\ReportStaged_For_Deploy_$timestamp\Reports\"
    mkdir $svnRptpath -Force| out-null
           
    ECHO "=============== Checking out $reportname from $svnRepopath to $svnRptPath ==========`n"
    svn export $svnrepopath $svnRptPath --force


    # Deploy report to server
    #$serverName ="sqltest2016"
    $serverPath="http://$servername/reportserver"
    #$reportFolder="Test"
    #$datasetFolder="Datasets"
    #$datasourceFolder="Data Sources"
    #$datasourcePath="/Data Sources"
    #$reportName="Company_sales.rdl"
    #$reportFilePath="$svnRptPath"
    $scriptFilePath ="$PSScriptRoot\commonscript.rss"


    # Makes a backup of the current version of the rdl file on server
    echo "==============================Making Backup of the existing report file======================="
    
    try{
        $url = 'http://localhost/ReportServer/ReportService2010.asmx?WSDL'
        $ssrs = New-WebServiceProxy -uri $url -UseDefaultCredential -Namespace "ReportingWebService"

        $reports = $ssrs.ListChildren("/$reportFolder", $false)


        $r =  $reports | where-object {$_.Name -eq "$rptName"}
        $def = $ssrs.GetItemDefinition($r.path)

        $stream = [system.io.file]::OpenWrite("$PsScriptRoot\$reportname-Backup_$timestamp.rdl")
        $stream.write($def, 0, $def.length)
        $stream.close()
        echo "Backup of the existing report has been copied to $PsScriptRoot\$reportname-Backup_$timestamp.rdl"
    }
    catch{
        echo "Existing report file not found. Continuing to deploy."
    }
    # Deploy the report
    rs.exe -i $scriptFilePath -s $serverPath -v ReportFolder="$reportFolder" -v DataSetFolder="$datasetFolder" -v DataSourceFolder="$datasourceFolder" -v DataSourcePath="$datasourcePath" -v ReportName="$reportName"  -v filePath="$svnRptPath" -e Mgmt2010
