
[CmdletBinding()]
   

        param (
                   # The Environment variable for Dev/Test/UAT/Prod
                   [Parameter(Mandatory=$True)]
                   [ValidateNotNull()]
                   [ValidateSet('Dev','Test','UAT','Prod')] 
                        [string] $Environment,
                    # SVN Path to the solution/report
                    [Parameter(Mandatory=$True)]
                    [ValidateNotNull()]
                        [string] $githubRepoPath,
                     # SVN Path to the solution/report
                    [Parameter(Mandatory=$True)]
                    [ValidateNotNull()]
                        [string] $slnOrRpt,
                    # SVN Path to the solution/report 
                    [Parameter(Mandatory=$False)]
                    [ValidateNotNull()]
                        [string] $solutionName,
                    [Parameter(Mandatory=$False)]
                    [ValidateNotNull()]
                        [string] $reportName,
                    [Parameter(Mandatory=$False)]
                    [ValidateNotNull()]
                        [string] $branchName='master'
                       
                  )
    ECHO "======================== Preparing SSRS Deployment =======================`n"
   

    # Adding path to environment variable
    Echo "`n============= Adding path to System Variables ==========`n"
    try{
         $env:path="$env:path;C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE;C:\Program Files (x86)\Microsoft SQL Server\130\Tools\Binn"
    }
    catch{
        $ErrorActionPreference ="STOP"        
        write-error "Coudln't add path to system variables. Make sure you have admin privileges."
    }


    # Path variables for svn checkout/export
     
    # path for files on master:                     https://github.com/author/name/trunk/~folderpath to file~
    # path for files on a branch:                   https://github.com/author/name/branches/branchname/~folderpath to file~

    $githubRepoPath = "https://github.com/bbdhbista/ssrspowershell/"
    if ($branchName -eq 'master'){
        $githubRepoPath += "trunk/"
    }else{
        $githubRepoPath += "branches/$branchName/"    
    }

    
    $githubRepoPath = "AdventureWorks Sample Reports/adv/adventureworks sample reports sql2012.sln"
    $rdlFile = "AdventureWorks Sample Reports/Company Sales.rdl"
    $reportname= "$githubRepoPath/$rdlFile"

    
    # Pull from SVN and stage it locally
    # SVN Checkout and stage to a local path for the deploy
    $svnLocalPath = "c:\users\$env:username\desktop\svnWC"
    $svnRptPath = "C:/Users/bbista/Desktop"
    
    # for report file
    if($slnOrRpt -like 'r*p*t*'){
        ECHO "=============== Checking out $rdlFile from $githubRepoPath to $svnRptPath ==========`n"
        svn export $reportName $svnRptPath --force
    }
    # for solution file
    elseif ($slnOrRpt -like 's*l*n*'){
        ECHO "=============== Checking out from $githubRepoPath to $svnLocalPath ==========`n"
        svn export $githubRepoPath $svnLocalPath
    }
    # solution path is to be replaced by the path reports are staged on
    $solutionpath ="$svnLocalPath\$solutionName"

  
    # All of the settings and target server url must be set in solution file
    # If not, dev must change the target server according to the environment. For ex: Target Server URL: pdmssrs03/reportserver/project/ for "Prod" 
    
    if ($Environment -eq 'PROD') {
        $TargetSqlServer = 'Production' 
    }elseif ($Environment -eq 'DEV'){
        $TargetSqlServer= 'Debug'
    }elseif ($Environment -eq 'TEST'){
        $TargetSqlServer= 'Test'
    }elseif ($Environment -eq 'UAT'){
        $TargetSqlServer= 'UAT'
    }
    
    # Deploy provided solution
    if($slnOrRpt -like 's*l*n*'){
        echo "`n============= Building and Deploying Reports ==========`n"
        try { 
            
            devenv.com $solutionpath /deploy "$TargetSqlServer"
    
            $out = devenv.com $solutionpath /deploy | out-string
             
        }catch{
            $ErrorActionPreference ="STOP"
        
            write-error "ERROR: Deploy Failed. Couldn't build/deploy using devenv.exe."
        }
            
        $lastLine = ($out.Length-55)
            
        # If the deploy fails
        $out  = $out.Substring($lastLine, 30)
            
        if ($out -like '*loy*0*s*'){
               Write-Error "Check to see if the configurations have been set properly for the solution. Currently set to deploy in $targetsqlserver configuration."
        }
        #Echo "`n============= Removing Staged Files ==========`n"
        #rd $svnLocalPath -recurse -Force -Verbose
   }elseif ($slnOrRpt -like '*r*p*t*'){
        

   }
        
        
        
    
    
