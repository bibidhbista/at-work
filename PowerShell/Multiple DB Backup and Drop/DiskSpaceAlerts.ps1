#########################################################
#
# Disk space monitoring and reporting script
#
#########################################################
 
$users = "BBISTA@FHLBDM.COM" #"it-databaseadministrator@fhlbdm.com" # List of users to email your report to (separate by comma)
$fromemail = "$env:username@fhlbdm.com" # uses current context as sender
$mailServer = "mail.fhlbdm.com" #enter your own SMTP mailServer DNS name / IP address here
$totalSpaceinBakDrive=2000 # enter the total space allocated for the backup drive in GB

# Set free disk space threshold below in percent (default at 10%) # BACKUPDRIVE IS 1024GB :: 15% FREE SPACE = ALERTS WHEN THERE'S < 150 GB LEFT
[decimal]$thresholdspace = 15
 
# Get space details.
$Dir = "\\fhlbdm.com\sqlbackup\sqlbackup" 
$spaceOcc= [System.Math]::Round(([decimal]((Get-ChildItem $Dir -recurse | Measure-Object -property length -sum).Sum)/1GB),2)
$freespace = $totalSpaceinBakDrive - $spaceOcc
$percentFree= [System.Math]::Round(($freespace/$totalSpaceinBakDrive)*100,2)
write-host "There's $freeSpace GB ($percentFree %) free on $dir"

# Checks to see if it's lower than the allowed threshold
if(($thresholdspace -gt $percentFree) -or ($thresholdspace -eq $percentFree)){
        
            # assemble the HTML for our body of the email report.
$HTMLmessage = @"
<font color=""black"" face=""Arial, Verdana"" size=""3"">
<u><b>Low Disk Space on $Dir</b></u>
<br><br><b>FREE SPACE: </b>$freeSpace GB ($percentFree%)<br> <b>THRESHOLD SPACE: </b> $thresholdspace%
<br>
<style type=""text/css"">body{font: .8em ""Lucida Grande"", Tahoma, Arial, Helvetica, sans-serif;}
ol{margin:0;padding: 0 1.5em;}
table{color:#FFF;background:#C00;border-collapse:collapse;width:647px;border:5px solid #900;}
thead{}
thead th{padding:1em 1em .5em;border-bottom:1px dotted #FFF;font-size:120%;text-align:left;}
thead tr{}
td{padding:.5em 1em;}
tfoot{}
tfoot td{padding-bottom:1.5em;}
tfoot tr{}
#middle{background-color:#900;}
</style>
<body BGCOLOR=""white"">
$tableFragment

</body>
"@ 
#<br><br><b>ACTION:</b> Change the extension or open in Powershell to run the attached Powershell Script to get more details...
Echo "Sending Alert to $users..."
send-mailmessage -from $fromemail -to $users -subject "Only $freeSpace GB ($percentFree%) of Free Space left on $Dir" -BodyAsHTML -body $HTMLmessage -priority High -SmtpServer $mailServer # -Attachments "S:\Bibidh_PS Scripts\DirectoryDetails_PFS02.changeme"
}

# End of Script