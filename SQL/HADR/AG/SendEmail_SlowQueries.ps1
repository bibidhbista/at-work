#import-module C:\util\sqlmaint\sqlserverpowershellcmdlet\sqlserver

# Connection settings
$ServerNames   = 'trsqladm'
$Date          = Get-Date
$DBName        = 'ATGDBMON'


# For SMTP
$SmtpServer    = 'SMTP1.a-t-g.com'
$EmailTo      = "DBA@a-t-g.com", "JonR@a-t-g.com", "AjitK@a-t-g.com"
#$EmailTo       = "bibidhb@a-t-g.com"
$EmailFrom     = "OBSOPS@atgops.com"   
$EmailSubject  = ""
$sHTML         = ""
$SlowQueries   = ""
$env           = ""

foreach($ServerName in $ServerNames){
    $sHTML         = ""
    $SlowQueries   = ""
    $env=""
    if($ServerName -eq 'ttsqladm'){$env='UAT'}
    elseif($ServerName -eq 'trsqladm') {$env='Production'}
    
    $SlowQueries        = INVOKE-SQLCMD -ServerInstance $ServerName -Database $DBName -Query "exec [SlowQueries_Top10_ByDb]"
    $SlowQueries        = $SlowQueries|select -Property object_name, SPTime, SPCount, MaxTime, AvgSpTime, AvgSpTime2 
                                             
    $EmailSubject  = "OBS [$env] -$($ServerName.ToUpper()) - Slow Queries"

    $sTAB = "	"
    
    $sHTML = "<table width=100% border=1 cellspacing=1 cellpadding=1>"
	    $sHTML = $sHTML + $sTAB + "<tr>"
	    $sHTML = $sHTML + $sTAB + $sTAB + "<td colspan=6 align=left valign=top bgcolor=#BBBBBB><B>Slow Queries</B></td>"
	    $sHTML = $sHTML + $sTAB + "</tr>"
	    $sHTML = $sHTML + $sTAB + "<tr>" 
	    $sHTML = $sHTML + $sTAB + $sTAB + "<td width=25% align=left valign=top bgcolor=#FFFF00>SP Name</td>"
	    $sHTML = $sHTML + $sTAB + $sTAB + "<td width=15% align=left valign=top bgcolor=#FFFF00>SP Time</td>"
	    $sHTML = $sHTML + $sTAB + $sTAB + "<td width=15% align=left valign=top bgcolor=#FFFF00>SP Count</td>"
	    $sHTML = $sHTML + $sTAB + $sTAB + "<td width=15% align=left valign=top bgcolor=#FFFF00>Max Time</td>"
        $sHTML = $sHTML + $sTAB + $sTAB + "<td width=15% align=left valign=top bgcolor=#FFFF00>Avg Time1</td>"
        $sHTML = $sHTML + $sTAB + $sTAB + "<td width=15% align=left valign=top bgcolor=#FFFF00>Avg Time2</td>"
	    $sHTML = $sHTML + $sTAB + "</tr>"

    if ($SlowQueries){
            foreach($SlQuery in $SlowQueries){
			    $sHTML = $sHTML + $sTAB + "<tr>"
                $sHTML = $sHTML + $sTAB + $sTAB + "<td align=left>" + $SlQuery.object_name + "</td>"
			    $sHTML = $sHTML + $sTAB + $sTAB + "<td align=left>" + $SlQuery.SPTime + "</td>"
			    $sHTML = $sHTML + $sTAB + $sTAB + "<td align=left>" + $SlQuery.SPCount + "</td>"
			    $sHTML = $sHTML + $sTAB + $sTAB + "<td align=left>" + $SlQuery.MaxTime + "</td>"
			    $sHTML = $sHTML + $sTAB + $sTAB + "<td align=left>" + $SlQuery.AvgSpTime + "</td>"
                $sHTML = $sHTML + $sTAB + $sTAB + "<td align=left>" + $SlQuery.AvgSpTime2 + "</td>"
			    $sHTML = $sHTML + $sTAB + "</tr>"
		    }
    }
    $sHTML = $sHTML + "</TABLE>" + "<p><br>"

    
    $i=1
    $sBackColor = "white"



    If ($sHTML.Length -ne 0 -and $SlowQueries){
	    $sHTML = "<HTML>" + "<BODY>" + $sHTML + "<p>" + "</BODY>" + "</HTML>"
        $MailOut = Send-MailMessage -To $EmailTO -From $EmailFrom -SmtpServer $SmtpServer -Subject "$EmailSubject" -BodyAsHTML $sHTML 
	    $sHTML=""
    }

}

 
