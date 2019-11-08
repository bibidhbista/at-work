#Install-Module UniversalDashboard -Force 
#Install-Script -Name server-performance-dashboard
#
#server-performance-dashboard.ps1 # Runs on local host
Import-Module sqlserver
#Add-Type -assembly "Microsoft.Office.Interop.Outlook"
function Run-SQL ($server, $db, $query){
    Invoke-Sqlcmd -ServerInstance $server -Database $db -Query $query 

}
function HeaderMapper(){

}
function Get-CPUUsage(){}
function Get-UserConnections(){}
#Get-UDDashboard|Stop-UDDashboard

function Get-NumOfDBARequest(){
    $InThePreviousXDays =7
    $Outlook = New-Object -comobject Microsoft.Office.Interop.Outlook.Application
    $Namespace = $Outlook.GetNameSpace("MAPI")
    $DbaReq = $namespace.folders|? fullfolderpath -like '*dba*'
    $DbaReqInbox = $dbaReq.Folders|? fullfolderpath -like '*inbox*'
    $Date = $(Get-date).AddDays(-$InThePreviousXDays)
    $Done =@()
    $Done = $dbaReqInbox.Items()|select -last 50|select -Property ReceivedTime, SenderName, Subject|? ReceivedTime -gt $date
    $Done = ($Done|Measure).Count
    return $done
}

$serverName ='localhost'#,'ATGDSMSQ17'

$dashboard = New-UDDashboard -Title "DBA Dashboard" -Content {
    #$headers = @("ComputerName","InstanceName","SqlInstance","Name","ContextSwitchesPersec","ElapsedTime","IDProcess","Spid","PercentPrivilegedTime","PercentProcessorTime","PercentUserTime","PriorityBase","PriorityCurrent","StartAddress","ThreadStateValue","ThreadWaitReasonValue","Process","Query") 
    #$headers = @("Id", "Name","Memory","CPU") 
    $headers = @("DBName","last_execution_time","total_worker_time","AvgCPUTime","execution_count") 
    New-UDRow {
        New-udColumn -size 6  {
            New-UDTable -Title "Current CPU Usage - $serverName"  -Headers $headers -Endpoint{
                $query = "SELECT TOP(5)
                 isnull(db_name(st.[dbid]),'Null') as DBName,
                 last_execution_time
                , (total_worker_time+0.0)/1000 AS total_worker_time
                , (total_worker_time+0.0)/(execution_count*1000) AS [AvgCPUTime] , execution_count
                FROM sys.dm_exec_query_stats qs
                CROSS APPLY sys.dm_exec_sql_text(sql_handle) st
                WHERE total_worker_time > 0
                and st.dbid is not null
                ORDER BY total_worker_time DESC"
                #$data = Get-DbaCpuUsage -sqlinstance localhost|Select-Object -Property ComputerName,InstanceName,SqlInstance|Format-Table -AutoSize
            
                $data = Run-SQL -server $serverName -db master -query $query
                
                #New-UDCard -Text "$data" -Title "card"

                #$data|Out-UDTableData  -Property  @("Id", "Name","WorkingSet","CPU") 
                # $data|foreach-object{
                #     [PSCustomObject]@{
                #         ComputerName = $_.ComputerName
                #         InstanceName = $_.InstanceName
                #         SqlInstance = $_.SqlInstance
                #     }
                # }|Out-UDTableData  -Property  $headers
                $data|Out-UDTableData  -Property  $headers
            

            } -Style highlight -FontColor black -AutoRefresh 
            #New-UDGrid  -Title "RefreshedDateTime" -Endpoint{get-date|Out-UDGridData}

            #New-UDGrid  -Title "Disk Space" -Endpoint{
            #     $data=Get-CimInstance -ClassName Win32_LogicalDisk -ComputerName localhost 
            #     $data|Out-UDGridData    

            # }   
            }
            New-udColumn -size 2 {
                $computerSystem    = icm -ComputerName $serverName  {Get-CimInstance CIM_ComputerSystem}
                $computerBIOS      = icm -ComputerName $serverName  {Get-CimInstance CIM_BIOSElement}
                $computerOS        = icm -ComputerName $serverName  {Get-CimInstance CIM_OperatingSystem}
                $computerCPU       = icm -ComputerName $serverName  {Get-CimInstance CIM_Processor}
                $computerHDD       = icm -ComputerName $serverName  {Get-CimInstance Win32_LogicalDisk -Filter "DeviceID = 'C:'"}
                $sqlserverVersion  = Run-SQL -server $serverName -db master -query "Select @@version"
                New-UDCard -Title "Sys Info" -Text "Last Reboot:   $($computerOS.LastBootUpTime)
                HDD Capacity:  $([Math]::round($computerHDD.Size/1GB,2)) GB
                Free HDD Space:  $([Math]::round($computerHDD.FreeSpace*100/$computerHDD.Size,2))%  
                ($([Math]::round($computerHDD.FreeSpace/1GB,2)) GB)
                RAM: $([Math]::round($computerSystem.TotalPhysicalMemory/1GB,2)) GB
                Operating System:  $($computerOS.caption)  
                
                SQL Server:  $($sqlserverVersion.column1)"}

            New-udColumn -size 2{
            
                $query="SELECT count(*) AS TotalConnections,
                (SELECT count(*) FROM sys.dm_exec_sessions
                WHERE STATUS NOT IN ('sleeping','dormant')) AS ActiveConnections
                FROM sys.dm_exec_sessions"
                    # New-UDTable -Title "Active/Total Connections"   -headers @("Total", "Active") -Endpoint{
                        $data   = Run-SQL -server $serverName  -db master -query $query
                        $Total  = $data.TotalConnections
                        $Active = $data.ActiveConnections
                    #     "$Total $Active"|Out-UDTableData  -property @("Total", "Active")
                    # }
                    #  -AutoRefresh 

                        New-UDCard -Title "Connections" -Text "$Active / $Total (Active / Total Connections)" 
                        
        } 
    }   
    New-UDRow{
        New-UDColumn -Size 2{
            New-UDGrid -Endpoint{
                Get-NumOfDBARequest|Out-UDGridData
            }

        }


    }        
}
Start-UDDashboard -Port 10000 -Dashboard $dashboard -autoreload 


#System Information for:  $computerSystem.Name 
                #Manufacturer: $computerSystem.Manufacturer
                #Model:  $computerSystem.Model
                #Serial Number:  $computerBIOS.SerialNumber
                #CPU:  $computerCPU.Name
                #HDD Capacity:  ($computerHDD.Size/1GB) GB
                #HDD Space:  ($computerHDD.FreeSpace/$computerHDD.Size)  Free ($computerHDD.FreeSpace/1GB) GB)
                #RAM: $computerSystem.TotalPhysicalMemory/1GB GB
                #Operating System:  $computerOS.caption  Service Pack:  $computerOS.ServicePackMajorVersion
                #User logged In:   $computerSystem.UserName