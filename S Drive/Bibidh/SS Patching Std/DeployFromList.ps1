
[CmdletBinding()]
    Param
    (
     [Parameter(Mandatory=$false,
                   ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()][ValidateSet('SQLServer2016-KB4024305-x64','SQLServer2014-KB4019094-x64','SQLServer2012-KB4025925-x64')]
        $installerName
    )
   
# List of servers to patch
$PSScriptRoot

$scriptPath="$PSScriptRoot\SQL_Patch_Staging"

$computerNames= get-content "$PSScriptRoot\deploy.txt"
 $installerName+='.exe'

 # 

# For each computer name on deploy.txt
 $computerNames| %{

                $ScriptBlock = {
            
                                # accept the loop variable across the job-context barrier
                                param($name) 
                                # Show the loop variable has made it through!
                                Write-Host "[processing '$name' inside the job]"
                                # Execute a command
                                $cmd ="$PSScriptRoot\Std_Deploy.ps1"
                                $cmd
                                .$cmd -computerName $name -installerName 'SQLServer2016-KB4024305-x64';
                                # Just wait for a bit...
                                Start-Sleep 5
                                
                                }

                # Show the loop variable here is correct
                Write-Host "processing $_..."

                # Pass the loop variable across the job-context barrier
                Start-Job $ScriptBlock -ArgumentList $_
            }

# Wait for all to complete
While (Get-Job -State "Running") { Start-Sleep 2 }

# Display output from all jobs
Get-Job | Receive-Job

# Cleanup
Remove-Job *
