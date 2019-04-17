# UPDATES RUNDATE AND/OR RERUNFLAG OF PROCESSES ON ETL_MAINTENANCE AND LOGS IT TO PROCESSES_LOG & ERROR_LOG ON ETL_MAINTENANCE.
# AUTHOR: BIBIDH BISTA. LAST UPDATE DATE: 06/20/2017 11:11 AM


[CmdletBinding()]
    Param
    (
        # The Process_id from the PROCESSES table in ETL_Maintenance :: Required Param
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        [ValidateNotNull()]
        $Process_id,

        # The RunDate from the PROCESS_SETTINGS table in ETL_Maintenance :: Required Param
        [Parameter(Mandatory=$true, 
                   ValueFromPipelineByPropertyName=$true,
                   Position=1)]                           
        [ValidateNotNull()] # If rundate isn't provided, uses the old run date. USE CASE: Updating the rerunflag but not the rundate.
        $RunDate, 

        # The ReRun_Flag from the PROCESS_SETTINGS table in ETL_Maintenance :: Optional Param
        # If RerunFlag isn't provided, uses the old RerunFlag. USE CASE: For processes without rerunflag. And, for updating just the rundate.
        [Parameter(Mandatory=$true, 
                   ValueFromPipelineByPropertyName=$true,
                   Position=1)]
        [ValidateNotNull()][ValidateSet('Y','N','Yes','No')]
        $ReRunFlag
        
    )
    Import-Module “sqlps” -DisableNameChecking   


    switch ($ReRunFlag)
    {
        'Y' {$ReRunFlag = 'Yes'}
        'N' {$ReRunFlag = 'No'}
    }
   
    
    #For SQL Connection String
    $SqlConnection = New-Object System.Data.SqlClient.SqlConnection
    $TargetServer='sqltest2016'                                   #*************change this to target server name**************************
    $SqlConnection.ConnectionString = "Server=$TargetServer;Database=ETL_Maintenance;Integrated Security=True" 
    $SQLCmd = New-Object System.Data.SqlClient.SqlCommand
    $sqlCmd.CommandType = [System.Data.CommandType]::StoredProcedure
    $SQLCmd.CommandText = "usp_Update_RunDate_Powershell"
    $SQLCmd.CommandTimeout = $SQLCmdTimeout
    $SQLCmd.Connection = $SQLConnection
    
    #Passing the Process_ID to the sp in the mentioned server and db
    $SQLCmd.Parameters.Add("@ProcID",[system.data.SqlDbType]::Int) | out-Null
    $SQLCmd.Parameters['@ProcID'].Direction = [system.data.ParameterDirection]::Input
    $SQLCmd.Parameters['@ProcID'].value = $Process_id
    
    #Passing the RunDate to the sp in the mentioned server and db    
    $SQLCmd.Parameters.Add("@RunDate",[system.data.SqlDbType]::NVARCHAR) | out-NuLL
    $SQLCmd.Parameters['@RunDate'].Direction = [system.data.ParameterDirection]::Input
    $SQLCmd.Parameters['@RunDate'].value = $RunDate
    
    #Passing the RERUN_FLAG to the sp in the mentioned server and db    
    $SQLCmd.Parameters.Add("@ReRunFlag",[system.data.SqlDbType]::nvarchar) | out-Null
    $SQLCmd.Parameters['@ReRunFlag'].Direction = [system.data.ParameterDirection]::Input
    $SQLCmd.Parameters['@ReRunFlag'].value = $ReRunFlag


    Try{
        #Exec the query
        $SqlConnection.Open()
        $sqlcmd.ExecuteNonQuery() | out-null
        $sqlconnection.Close()
  
        Write-host 'Successfully Completed without any errors.'
    }Catch
    {
        $ErrorMessage = $_.Exception.Message
        $FailedItem = $_.Exception.ItemName
        $ErrorActionPreference ="stop"
        Write-Error "$errormessage $faileditem"
        Write-Warning "Error occured: Make sure that the date entered is a valid date and the process_id is valid."
        Write-Warning "$_"
        Break
    }

