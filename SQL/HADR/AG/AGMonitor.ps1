import-module C:\util\sqlmaint\sqlserverpowershellcmdlet\sqlserver

# Connection settings
$ServerName    = 'TRSQLADM'
$Date          = Get-Date
$DBName        = 'OBS'

$AGStatus        = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "exec Admin_AGStatus"
$AGStatus        = $AGStatus|select -Property ag_name, primary_replica, primary_recovery_health_desc, synchronization_health_desc 
$AGStatusCount   = ($AGStatus|Measure).Count

$AGDetails        = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "exec Admin_AGStatusDetails"
$AGDetails        = $AGDetails|select -Property ag_name, replica_server_name, database_name, connected_state_desc, synchronization_state_desc, redo_queue_size, log_send_queue_size 
$AGDetailsCount   = ($AGDetails|Measure).Count

# For SMTP
$SmtpServer    = 'SMTP1.a-t-g.com'
$EmailTo       = "DBA@a-t-g.com"#"bibidhb@a-t-g.com"                                                
$EmailFrom     = "OBSOPS@atgops.com"                                                
$EmailSubject  = 'OBS[PROD]-TRSQLADM AG Status'

$sTAB = "	"
$FailAlert=0

$sHTML = "<table width=100% border=1 cellspacing=1 cellpadding=1>"
	$sHTML = $sHTML + $sTAB + "<tr>"
	$sHTML = $sHTML + $sTAB + $sTAB + "<td colspan=4 align=left valign=top bgcolor=#BBBBBB><B>Availability Group Status</B></td>"
	$sHTML = $sHTML + $sTAB + "</tr>"
	$sHTML = $sHTML + $sTAB + "<tr>" 
	$sHTML = $sHTML + $sTAB + $sTAB + "<td width=25% align=left valign=top bgcolor=#FFFF00>AG Name</td>"
	$sHTML = $sHTML + $sTAB + $sTAB + "<td width=25% align=left valign=top bgcolor=#FFFF00>Primary Replica</td>"
	$sHTML = $sHTML + $sTAB + $sTAB + "<td width=25% align=left valign=top bgcolor=#FFFF00>Recovery Health State</td>"
	$sHTML = $sHTML + $sTAB + $sTAB + "<td width=25% align=left valign=top bgcolor=#FFFF00>Synchronization State</td>"
	$sHTML = $sHTML + $sTAB + "</tr>"

if ($AGStatus){
        foreach($AGStat in $AGStatus){
			If (($AGStat.primary_recovery_health_desc -ne "ONLINE") -or ($AGStat.synchronization_health_desc -ne "HEALTHY") ){
				$FailAlert=1
			}
			$sHTML = $sHTML + $sTAB + "<tr>"
			$sHTML = $sHTML + $sTAB + $sTAB + "<td align=left>" + $AGStat.ag_name + "</td>"
			$sHTML = $sHTML + $sTAB + $sTAB + "<td align=left>" + $AGStat.primary_replica + "</td>"
			$sHTML = $sHTML + $sTAB + $sTAB + "<td align=left>" + $AGStat.primary_recovery_health_desc + "</td>"
			$sHTML = $sHTML + $sTAB + $sTAB + "<td align=left>" + $AGStat.synchronization_health_desc + "</td>"
			$sHTML = $sHTML + $sTAB + "</tr>"
		}
}
$sHTML = $sHTML + "</TABLE>" + "<p><br>"

$sAG = ""
$i=1
$sBackColor = "white"


If ($AGDetails){
        foreach($AGDetail in $AGDetails){
			If (($AGDetail.connected_state_desc -ne "CONNECTED") -or (($AGDetail.synchronization_state_desc -ne "SYNCHRONIZED") -and ($AGDetail.synchronization_state_desc -ne "SYNCHRONIZING")) ){
				$FailAlert=1
			}
			If ($sAG -ne $AGDetail.ag_name){
				If ($sAG.Length -ne 0){
					$sHTML = $sHTML + "</TABLE>" + "<p><br>"
					$sBackColor = "white"
				}
				$sHTML = $sHTML + "<table width=100% border=1 cellspacing=1 cellpadding=1>"
				$sHTML = $sHTML + $sTAB + "<tr>"
				$sHTML = $sHTML + $sTAB + $sTAB + "<td colspan=5 align=left valign=top bgcolor=#BBBBBB><B>" + $AGDetail.ag_name + "</B></td>"
				$sHTML = $sHTML + $sTAB + "</tr>"
				$sHTML = $sHTML + $sTAB + "<tr>"
				$sHTML = $sHTML + $sTAB + $sTAB + "<td width=20% align=left valign=top bgcolor=#FFFF00>Database</td>"
				$sHTML = $sHTML + $sTAB + $sTAB + "<td width=20% align=left valign=top bgcolor=#FFFF00>Replica</td>"
				$sHTML = $sHTML + $sTAB + $sTAB + "<td width=20% align=left valign=top bgcolor=#FFFF00>Connected State</td>"
				$sHTML = $sHTML + $sTAB + $sTAB + "<td width=20% align=left valign=top bgcolor=#FFFF00>Synchronization State</td>"
				$sHTML = $sHTML + $sTAB + $sTAB + "<td width=20% align=right valign=top bgcolor=#FFFF00>Send/Redo Queue</td>"
				$sHTML = $sHTML + $sTAB + "</tr>"
			}

			If (($i % 2) -eq 1){
				$sHTML = $sHTML + $sTAB + "<tr bgcolor=" + $sBackColor + ">"
				$sHTML = $sHTML + $sTAB + $sTAB + "<td align=left valign=top rowspan=2>" + $AGDetail.database_name + "</td>"
				$sHTML = $sHTML + $sTAB + $sTAB + "<td align=left>" + $AGDetail.replica_server_name + "</td>"
				$sHTML = $sHTML + $sTAB + $sTAB + "<td align=left>" + $AGDetail.connected_state_desc + "</td>"
				$sHTML = $sHTML + $sTAB + $sTAB + "<td align=left>" + $AGDetail.synchronization_state_desc + "</td>"
				$sHTML = $sHTML + $sTAB + $sTAB + "<td align=right>" + $AGDetail.log_send_queue_size + "</td>"
				$sHTML = $sHTML + $sTAB + "</tr>"
			}Else{
				$sHTML = $sHTML + $sTAB + "<tr bgcolor=" + $sBackColor + ">"
				$sHTML = $sHTML + $sTAB + $sTAB + "<td align=left>" + $AGDetail.replica_server_name + "</td>"
				$sHTML = $sHTML + $sTAB + $sTAB + "<td align=left>" + $AGDetail.connected_state_desc + "</td>"
				$sHTML = $sHTML + $sTAB + $sTAB + "<td align=left>" + $AGDetail.synchronization_state_desc + "</td>"
				$sHTML = $sHTML + $sTAB + $sTAB + "<td align=right>" + $AGDetail.redo_queue_size + "</td>"
				$sHTML = $sHTML + $sTAB + "</tr>"
			}

			$sAG =  $AGDetail.ag_name

			If (($i % 2) -eq 0){
				If ($sBackColor -eq "white"){
					$sBackColor = "#CCCCCC"
				}Else{
					$sBackColor = "white"
				}
			}

			$i++

		}

		$sHTML = $sHTML + "</TABLE>"

}


If ($sHTML.Length -ne 0){
	$sHTML = "<HTML>" + "<BODY>" + $sHTML + "<p>" + "</BODY>" + "</HTML>"
    If ($FailAlert -eq 1) {
        $EmailSubject = $EmailSubject + " - **FAILED**"
    }
	If (($FailAlert -eq 1) -or (([int]($Date.hour%6) -eq 0) -and ([int]($Date.Minute) -lt 5))) {
		$MailOut = Send-MailMessage -To $EmailTO -From $EmailFrom -SmtpServer $SmtpServer -Subject "$EmailSubject" -BodyAsHTML $sHTML 
	}
}




 
