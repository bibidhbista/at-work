# Scheduled Task Stored Procedure
# Parmaters for Tidal

[CmdletBinding()]
    Param 
    (
        # List of accepted stored proc name
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        [ValidateNotNull()][ValidateSet('ComPkg_DeleteObjectFromPolicy','DeleteRepositoryObjects_JOB','GenerateDashBoardData',
                                         'GenerateSecurityData','InsertEUCCategory','InsertEUCLandScape','InsertEUCLandScapePolicy',
                                         'InsertFileSummary','InsertMacrokeywordsSummary','InsertMapFolderSummary','pUpdateActionSummaryDBJob',
                                         'pUpdateActiveWFCountJOb','pUpdateATSummaryDBJob','pUpdateExcPolicyDBJob','pUpdateFileActivityDBJob',
                                         'pUpdateFolderDBJob','pUpdateWFDBJob','startWF')]
        $spName,
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()][ValidateSet('tSOXXL','tXLRISK','pSOXXL','pXLRISK')]
        $dbName
    )



# Find server type from provided $dbname (Database Name)
$serverType = $dbName.substring(0,1)

switch ($serverType) 
    { 
        'p' {$server = "PFHLBDMSQL13"} 
        't' {$server = "TFHLBDMSQL13"} 
    }
Write-Host "`nConnecting to $server..."

    
# Invoking the stored proc
$server= "sqltest2016"      ############# delete this

# Concurrency Check

try{
    $sqltxt= "Select * from (SELECT * FROM sys.dm_exec_requests where sql_handle is not null) a CROSS APPLY  sys.dm_exec_sql_text(a.sql_handle) t where t.text like '%CREATE%PROC%dbo%.%$spName%' and a.session_id<>@@SPID"
    Write-Progress -Activity "Executing SQL" -Status "Executing SQL => Checking for concurrency..."
    Write-Host "Executing SQL => Checking for concurrency..."
    $check = Invoke-Sqlcmd -Query $sqltxt -ServerInstance $server -Database $dbName
    log-sql("Sucessfully connected to the database $dbName.")
}catch{
    $ErrorMessage = $_.Exception.Message
    $FailedItem = $_.Exception.ItemName
    $ErrorActionPreference ="stop"
    log-sql("Failed attempt to connect to the database $dbName." )
            
    Write-Error "Error executing $spName.`n$errormessage $faileditem" 
}

# If the previous run is over
if ([string]::IsNullOrEmpty($check)){
    # Executing stored proc
    $sqltxt= "Exec $spName"
    Write-Progress -Activity "Executing SQL" -Status "Executing Stored Procedure: $spName..."
    Write-Host "Executing Stored Procedure: $spName..."
    
    try{
        Invoke-Sqlcmd -Query $sqltxt -ServerInstance $server -Database $dbName
        Write-host "Successfully executed $spname`n" -ForegroundColor Green
        # Log the details to table
        log-sql("Successfully executed $spName.")

    }catch{
        $ErrorMessage = $_.Exception.Message
        $FailedItem = $_.Exception.ItemName
        $ErrorActionPreference ="stop"
        #Log error to table
        log-sql("Failed to execute $sp. $errorMessage $faileditem")
        
        Write-Error "Error executing $sp.`n$errormessage $faileditem"
     }

# If the previous run is still running
}else {
    log-sql("Failed to execute $spname. $spname was already running.")    
    Write-Host "$spname is already running! Please try again later." -ForegroundColor Red
}



# Function to log the details/errors to table
function log-Sql ($logtext,$ServerName){
    
    # Connection Settings for logging on PFHLBDMSQL08 SCHEDULEDTASK DB CIMCON_LOG TABLE    
    $SqlConnection = New-Object System.Data.SqlClient.SqlConnection
    $TargetServer='PFHLBDMSQL08'
    $SqlConnection.ConnectionString = "Server=$TargetServer;Database=ScheduledTask;Integrated Security=True" 
    $SQLCmd = New-Object System.Data.SqlClient.SqlCommand
    $sqlCmd.CommandType = [System.Data.CommandType]::StoredProcedure
    $SQLCmd.CommandText = "usp_logging_cimcon_scheduled"
    $SQLCmd.CommandTimeout = $SQLCmdTimeout
    $SQLCmd.Connection = $SqlConnection
    
    #Passing the LogText to the sp in the mentioned server and db
    $SQLCmd.Parameters.Add("@LogText",[system.data.SqlDbType]::nvarchar) | out-Null
    $SQLCmd.Parameters['@LogText'].Direction = [system.data.ParameterDirection]::Input
    $SQLCmd.Parameters['@LogText'].value = $LogText

    #Passing the StartDate to the sp in the mentioned server and db 
    $StartDate = (Get-date -F u).toString().SUBSTRING(0,19)
    $SQLCmd.Parameters.Add("@StartDate",[system.data.SqlDbType]::nvarchar) | out-Null
    $SQLCmd.Parameters['@StartDate'].Direction = [system.data.ParameterDirection]::Input
    $SQLCmd.Parameters['@StartDate'].value = $StartDate

    #Passing the LogText to the sp in the mentioned server and db
    $ServerName='PFHLBDMSQL13'
    $SQLCmd.Parameters.Add("@ServerName",[system.data.SqlDbType]::nvarchar) | out-Null
    $SQLCmd.Parameters['@ServerName'].Direction = [system.data.ParameterDirection]::Input
    $SQLCmd.Parameters['@ServerName'].value = $ServerName
    
  

    Try{
        #Exec the query
        $SqlConnection.Open()
        $sqlcmd.ExecuteNonQuery() | out-null
        $SqlConnection.Close()
        
    }Catch
    {
        Write-Warning "Error occured while logging the details/errors."
        Write-Warning "$_"
        Break
    }

}