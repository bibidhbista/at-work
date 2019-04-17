# Data from EventLog :: https://www.petri.com/adding-style-powershell-html-reports

$data = Get-Eventlog -List | 
Select @{Name="Max(K)";Expression = {"{0:n0}" -f $_.MaximumKilobytes }},
@{Name="Retain";Expression = {$_.MinimumRetentionDays }},
OverFlowAction,
@{Name="Entries";Expression = {"{0:n0}" -f $_.entries.count}},
@{Name="Log";Expression = {$_.LogDisplayname}}

# Use previous data to generate formatted reports

$fragments = @()
$fragments+= "<H1>$($env:COMPUTERNAME)</H1>"
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
 <Title>Event Log Report</Title>
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
convertto-html @convertParams | out-file C:\temp\PSHTML.HTML

ii C:\temp\PSHTML.HTML 
