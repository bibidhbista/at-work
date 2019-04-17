

 
    param( 
       [Parameter(Mandatory=$false)] 
       [string] $Name ='ssrspowershell', 
        
       [Parameter(Mandatory=$false)] 
       [string] $Author= 'bbdhbista', 
        
       [Parameter(Mandatory=$False)] 
       [string] $Branch = "master", 
        
       [Parameter(Mandatory=$False)] 
       [string] $GithubTokenVariableAssetName = "fbe18d71dcf14f78e6ddb5f0e0f711f28fcc25c5" 
    ) 
     
    $ZipFile = "C:\ssrszipfile\$Name.zip" 
    $OutputFolder = "C:\$Name\$Branch" 
     
    $Token = $GithubTokenVariableAssetName 
     
    if(!$Token) { 
        throw("'$GithubTokenVariableAssetName' variable asset does not exist or is empty.") 
    } 
 
    $RepositoryZipUrl = "https://api.github.com/repos/$Author/$Name/zipball/$Branch" 
 
    # download the zip 
    Invoke-RestMethod -Uri $RepositoryZipUrl -Headers @{"Authorization" = "token $Token"} -OutFile $ZipFile 
     
    # extract the zip 
             
        New-Item -Path $OutputFolder -ItemType Directory | Out-Null
         
        [System.Reflection.Assembly]::LoadWithPartialName('System.IO.Compression.FileSystem') | Out-Null 
        [System.IO.Compression.ZipFile]::ExtractToDirectory($ZipFile, $OutputFolder) 
    
 
    # remove zip 
    Remove-Item -Path $ZipFile -Force 
     
    #output the path to the downloaded repository 
    (ls $OutputFolder)[0].FullName 
