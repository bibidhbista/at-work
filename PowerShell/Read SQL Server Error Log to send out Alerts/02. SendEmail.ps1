# Vars value to change ($servers, $from, $to)

# List of servers to run the fatal error check
$Servers ='atgdsmsq14','.\'


$Code = {
    param ($init)
    $start = Get-Date
    
    # Function to run checks and send alerts if any errors have occurred 
    function SendAlert($servername){
    # Send notification emails for each of those servers
    #foreach ($Servername in $Servers){
            # Mail Config
            $From = "TrufacsOPS@a-t-g.com"
            $To ="bibidhb@a-t-g.com"
            $Subject = "$Servername - Fatal Error Log Report"
            $durationInHours=24


            # SQL Configuration and data import
            $LogTable='AMADMIN.dbo.SQL_FATALERROR_LOG'
            $data= Invoke-Sqlcmd -ServerInstance $Servername -Database master -Query "EXEC AMADMIN.dbo.Admin_SQL_FatalError_Alert $durationInHours;SELECT * FROM $LogTable;" 

    # Send email
            $data = $data | 
            Select @{Name="LogDate";Expression = {$_.LogDate }},
            @{Name="ProcessInfo";Expression = {$_.ProcessInfo}},
            @{Name="Text";Expression = {$_.Text}}

    # Use previous data to generate formatted reports

            $fragments = @()
            $fragments+= "<H1><Center>$("$Servername : Error Log Report")</center></H1>"
            [xml]$html = $data | convertto-html -Fragment
            $count =$html.table.tr.count
            if($count -le 0){
                exit                                                                                       ## Only send out emails if there are errors
                $fragments+="<h5>No new records to show from the error log.</h5>"
                }
            else{
            for ($i=1;$i -le $count-1;$i++) {
              if ($html.table.tr[$i].td[3] -eq 0) {
                    $class = $html.CreateAttribute("class")
                    $class.value = 'alert'
                    $html.table.tr[$i].childnodes[3].attributes.append($class) | out-null
              }
            }
                 $count = $count -1
                 $fragments+="<h5>Total record(s): $count</h5>"
            }
            $fragments+= $html.InnerXml
            $fragments+= "<p class='footer'>Report Created on $(get-date)</p>"

# Head and body for the report :#E5E4E2
            $head = @"
                 <Title>Error Log Report</Title>
                <style>
                body { background-color:white;
                       font-family:Monospace;
                       font-size:10pt; }
                td, th { border:0px solid black; 
                         border-collapse:collapse;
                         white-space:pre; }
                th { color:white;
                     background-color:black; }
                table, tr, td, th { padding: 2px; margin: 0px ;white-space:pre; }
                tr:nth-child(odd) {background-color: lightgray}
                table { width:95%;margin-left:5px; margin-bottom:20px;}
                h2 {
                 font-family:Tahoma;
                 color:#6D7B8D;
                }
                .alert {
                 color: red; 
                 }
                .footer 
                { color:green; 
                  margin-left:10px; 
                  font-family:Tahoma;
                  font-size:8pt;
                  font-style:italic;
                }
                </style>
"@
 
        [string] $body = ConvertTo-Html -Head $head -Body $fragments 

        # CDO Config            
        Write-Verbose 'Begin new mail session - Configure message'
        $cdoMessage = New-Object -ComObject 'CDO.Message'
        $cdoMessage.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=2
        $cdoMessage.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserver")="smtp" #$smtpServer
        $cdoMessage.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate")=1 # basic
        $cdoMessage.Configuration.Fields.Update()
    	
        # Set specific mail Parameters

        Write-Verbose 'Build message'
        $cdoMessage.From=$from
        $cdoMessage.To=$to
        $cdoMessage.Subject=$subject
        $cdoMessage.HTMLBody =$Body

        # Send email using above config
        Write-Verbose 'Send message'
        $cdoMessage.Send()
        Write-Verbose 'End mail session'
            
    }
    SendAlert($init)
    
    # For stats only
    $stop = Get-Date
    Write-Verbose "Ran checks for $init in $($stop - $start) from $start to $stop."
        }


# Parallel Job Runs
$jobs = @()
($Servers) | % { $jobs += Start-Job -ArgumentList $_ -ScriptBlock $Code }

Wait-Job -Job $jobs | Out-Null
#Receive-Job $jobs                             # Get output from background jobs
Remove-Job $jobs
