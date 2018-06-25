$Servername='.\'
$LogTable='master.dbo.SQL_ErrorLog'



# List of users to email your report to (separate by comma) 
$To = "bibidhb@a-t-g.com"                                                                                       
# uses current context as sender
$From = "bibidhb@a-t-g.com"                                                     
#enter your own SMTP mailServer DNS name / IP address here
$SMTPServer = "mail.a-t-g.com"


$result= Invoke-Sqlcmd -ServerInstance $Servername -Database master -Query "SELECT * FROM $LogTable;" #EXEC master.dbo.sql_errorlog_alert
$flag = sendEmail($result)




function sendEmail($data){
# Data from EventLog :: https://www.petri.com/adding-style-powershell-html-reports

$data = $data | 
Select @{Name="LogDate";Expression = {$_.LogDate }},
@{Name="ProcessInfo";Expression = {$_.ProcessInfo}},
@{Name="Text";Expression = {$_.Text}}

# Use previous data to generate formatted reports

$fragments = @()
$fragments+= "<H1><Center>$("$env:COMPUTERNAME :: Error Log Report")</center></H1>"
[xml]$html = $data | convertto-html -Fragment
 
for ($i=1;$i -le $html.table.tr.count-1;$i++) {
  if ($html.table.tr[$i].td[3] -eq 0) {
        $class = $html.CreateAttribute("class")
        $class.value = 'alert'
        $html.table.tr[$i].childnodes[3].attributes.append($class) | out-null
  }
}
$fragments+= $html.InnerXml
$fragments+= "<p class='footer'>$(get-date)</p>"
$convertParams = @{ 
  head = @"
 <Title>Error Log Report</Title>
<style>
body { background-color:#E5E4E2;
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
 body = $fragments
}
$body = convertto-html @convertParams
$body | out-file C:\temp\PSHTML.HTML

ii C:\temp\PSHTML.HTML 

Send-MailMessage -From $From -To $To -Subject "Error Log Report - $Servername on $(get-date)" -Body "this is body" -Attachments "C:\temp\PSHTML.HTML" -SmtpServer "mail1.a-t-g.com"


}