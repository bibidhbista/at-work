# For feeding multiple git lab links to deploy multiple rdl files to the same folder on the same server:


[CmdletBinding()]
   

 param (
                        
                # Name of the target server for the report to be deployed to
                [Parameter(Mandatory=$true)]
                [ValidateNotNull()]
                [string] $targetServerName,
                # Report Folder on the server to deploy to
                [Parameter(Mandatory=$true)]
                [ValidateNotNull()]
                [string] $targetReportFolder,

               
               
              
                # Folder path for Data Sources folder .... DEFAULT SET TO "Data Sources"                :: OPTIONAL
                [Parameter(Mandatory=$false)]
                [ValidateNotNull()]
                [string] $datasourcePath="/Data Sources"                       
                       
 ) 
 
 
 
 
 


 $gitLabPath = gc "$PsScriptRoot\MultipleReports.txt" 
 
 $gitLabPath| %{
    # Execute a command
         Write-Host "[processing '$_' inside the loop]"
         & "$PsScriptRoot\Ind_Rpt_Deploy_FromGit.ps1" -gitLabPath $_ -targetServerName $targetServerName -targetReportFolder $targetReportFolder -datasourcePath "/DataSources"
 }
