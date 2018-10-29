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
$Date = Get-Date -Format MMddyyyy
md $Date -Force|Out-Null
Start-Transcript -Path "F:\DBA\MIDOC\Interfaces\SSIS\Logs\$Date\SSISLog_$Date`_$(Get-Date -Format HHmm).log"

#exec
$SSISCmd = ($JobCommands.SSISCmd)
cmd /C $SSISCmd
if($LASTEXITCODE -eq 0){
        # Export Files Call
        .$PSScriptRoot\Export-Files.ps1 -JobId $JobId -PackageId $PackageId
    }else{
        $ErrorMessage = $_.Exception.Message
        Write-Error "SSIS Execution Failed. $ErrorMessage"

    }

Stop-Transcript