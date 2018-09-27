
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
        [ValidateNotNull()]
        $RunDate 
        
    )
    Import-Module “sqlps” -DisableNameChecking   
   
   
    #For SQL Connection String
    $SqlConnection = New-Object System.Data.SqlClient.SqlConnection
    $TargetServer='TFHLBDMSQL12'
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
    $SQLCmd.Parameters.Add("@RunDate",[system.data.SqlDbType]::nvarchar) | out-Null
    $SQLCmd.Parameters['@RunDate'].Direction = [system.data.ParameterDirection]::Input
    $SQLCmd.Parameters['@RunDate'].value = $RunDate

    Try{
        #Exec the query
        $SqlConnection.Open()
        $sqlcmd.ExecuteNonQuery() | out-null
        $sqlconnection.Close()
        #Write-Output
        #Write-EventLog 'Successfully Completed without any errors.'
    }Catch
    {
        Write-Warning "Error occured: Make sure that the date entered is a valid date and the process_id & target server name are correct."
        Write-Warning "$_"
        Break
    }

