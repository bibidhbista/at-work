#param (
#    [Parameter(Mandatory=$false)]
#    [ValidateNotNullOrEmpty()]
#    [string[]]$CssUri ="P:\at-work\TableResult.css"
#)
################################################ Change this according to your needs #######################################

$InThePreviousXDays = 21
$CheckEvery = 60 # in seconds
$MailTo   = "bibidhb@a-t-g.com"
$MailFrom = "bibidhb@a-t-g.com"
$Subject = 'Pending DBA Request Implementation'
$FilePath = "C:\Users\$env:USERNAME\Desktop\Results.html"


####################################################### Start of Main ######################################################
Add-Type -assembly "Microsoft.Office.Interop.Outlook"
$Outlook = New-Object -comobject Outlook.Application
$Namespace = $Outlook.GetNameSpace("MAPI")
$DbaReq = $namespace.folders|? fullfolderpath -like '*dba*'
$DbaReqInbox = $dbaReq.Folders|? fullfolderpath -like '*inbox*'

$TotalTime = 0
Write-Output "Exploring the mailbox to find new requests..."
$Date = $(Get-date).AddDays(-$InThePreviousXDays)
$NotDoneYet =@()
$NotDoneYet = $dbaReqInbox.Items()|select -last 50|sort ReceivedTime -Descending |select -Property ReceivedTime, SenderName, Subject, Body|? senderName -NE 'DBA Request'|? ReceivedTime -gt $date
$NotDoneYetCount = ($NotDoneYet|Measure).Count

$Header = @"
html,
body {
	height: 100%;
}

body {
	margin: 0;
	background: linear-gradient(45deg, #49a09d, #5f2c82);
	font-family: sans-serif;
	font-weight: 100;
    
}

.container {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

table {
    width:70%; 
    margin-left:15%; 
    margin-right:15%;
	border-collapse: collapse;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0,0,0,0.1);
    
}

th,
td {
	padding: 15px;
	background-color: rgba(255,255,255,0.2);
	color: #fff;
}

th {
	text-align: left;
}

thead {
	th {
		background-color: #55608f;
	}
}

tbody {
	tr {
		&:hover {
			background-color: rgba(255,255,255,0.3);
		}
	}
	td {
		position: relative;
		&:hover {
			&:before {
				content: "";
				position: absolute;
				left: 0;
				right: 0;
				top: -9999px;
				bottom: -9999px;
				background-color: rgba(255,255,255,0.2);
				z-index: -1;
			}
		}
	}
}
"@
# Infinite Loop to continuosly check for new emails
# Checks every minute
while ($NotDoneYetCount -ge '0'){
[string] $Body = '' 
    if($NotDoneYetCount -gt 1){
        $CheckDate =$(get-date)
        if(($CheckDate.Hour -gt 18) -or ($CheckDate.Hour -lt 7)){                              # After hour DBA Request will be processed the next day
            $diffSeconds = [math]::abs((($checkDate.Hour)%12) -12)
            $CheckEvery = ($diffSeconds+7)*3600 - ($checkDate.Minute*60) - ($checkDate.Second) # To start checking after 7 in the morning
        }else{
            $CheckEvery = 300
        }

        try{
            # Save as a file locally
            #$Body = $NotDoneYet|ConvertTo-Html -Property ReceivedTime, SenderName, Subject, Body -Head $Header -CssUri "P:\at-work\TableResult.css"|Out-File -FilePath $FilePath  
            #ii $FilePath   
            #exit;       
            
            # Save locally and Send as attachment
            $CssUri = "P:\at-work\TableResult.css"
            $Body = $NotDoneYet|ConvertTo-Html -Property ReceivedTime, SenderName, Subject, Body -Head $Header|Out-File -FilePath $FilePath
            $footer = "There are requests that have not been worked on yet.<br><br>For Details, see attached. <br><br><hr><br><i> Going to take a nap for $($CheckEvery/60) minute(s). </i><br>"  
            Send-MailMessage -To $MailTo -From $MailFrom -Subject $Subject -BodyAsHtml $footer -SmtpServer smtp -Attachments "$FilePath" 
            
            # Send BodyAsHTML in an Email
            #$Body = $NotDoneYet|ConvertTo-Html -Property ReceivedTime, SenderName, Subject, Body -Head $Header -CssUri "P:\at-work\TableResult.css"
            #Send-MailMessage -To $MailTo -From $MailFrom -Subject $Subject -BodyAsHtml $Body -SmtpServer smtp 

            Write-Host "Sent an email to $MailTo from $MailFrom." -BackgroundColor Green
            }
        catch{
            Write-Error "Couldn't send email!" -ErrorAction Stop
        }
        
        
    }else{
        $CheckEvery = 60
    }
    $TotalTime +=$CheckEvery
    if(($TotalTime%1200) -eq 0 ){
        cls
        Echo "Have been asleep for $($TotalTime/60) minute(s). What year is this?"
    }else {
        cls 
        Echo "No new requests found. Going to take a nap for a minute."
    }
    Start-Sleep $CheckEvery
    $NotDoneYet = $dbaReqInbox.Items()|select -last 50|sort ReceivedTime -Descending|select -Property ReceivedTime, SenderName, Subject, Body |? senderName -NE 'DBA Request'|? ReceivedTime -gt $date
    $NotDoneCount = $NotDoneYet.Count
}

echo '`n`n`n**endofscript**`n`n`n'




<#23: 16 8 15
  22  15 9
  21  14 10
  20  13 11

#>

