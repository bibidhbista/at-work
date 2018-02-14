# CWA/Tidal job parameters:
param(
        # Job name as listed on Veeam Backup & Replication app
        [string]$jobName
)

# Add PS Snapin for Veeam
asnp VeeamPSSnapIn


# Use service account login to start a job using a key and secured string for credentials
[Byte[]] $key = (1..16)
$User = "FHLBDM\psvc_veeam"
$Pw = Get-Content "\\pveeamapp02\scripts\Creds.txt" | ConvertTo-SecureString -Key $key
$Cred = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, $Pw
$server= "pveeamapp02"
$currentDate = get-date -Format ddMMyyyy


# If the connection hasn't been disconnected from a previous run. Continue with the script.
try{
    Connect-VBRServer -Server $server -Credential $Cred}
catch{
    Write-Host "Tried to connect using $user. You are already connected to $server. Continuing with the job $jobName." 
    }


# Start the backup job on Veeam using the name of the job passed as parameter
Write-Host "Starting Backup Job: $jobName ... "

# Pull in VMName being backed up by the current job
$job= Get-VBRJob -Name $jobName
$session = $job.FindLastSession()
$VMName = $session.GetTaskSessions().name|select -first 1

# Error Handling/Logging
try{
    $jobObject = Start-VBRJob $jobName 
    $endResult = $jobObject| select Name,OrigJobName,JobTypeString,CreationTimeUTC,EndTimeUTC,Result,State,LogName,LogsSubFolder
    $endResult
    Write-Host "Backup job $jobName successfully completed!"
}
catch{
    $ErrorMessage = $_.Exception.Message
    $FailedItem = $_.Exception.ItemName
    Write-Error "ERROR: Backup job $jobName failed! Check logs file for more details: \\$VMName\C$\ProgramData\Veeam\Backup\VeeamGuestHelper_$currentDate.log `n$errormessage $faileditem" -ErrorAction SilentlyContinue
}

# Disconnect from the VBR Server
Write-Host "Disconnecting $user from $server..."
Disconnect-VBRServer


