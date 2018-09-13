'on error resume next

    Dim sHTML
    Dim oSQL, oQR, oQR2, i, sSQL, sAG

    set oSQL = CreateObject("SQLDMO.SQLServer2")

    with oSQL
	.LoginSecure = True
	.Connect "MIDOCSQL"

	Set oQR = .Databases("ATGDBMON").ExecuteWithResults("Admin_AGStatus")
	
	If oQR.Rows > 0 then

		sHTML = sHTML & "<table width=100% border=1 cellspacing=1 cellpadding=1>" & vbcrlf
		sHTML = sHTML & sTAB & "<tr>" & vbcrlf
		sHTML = sHTML & sTAB & sTAB & "<td colspan=4 align=left valign=top bgcolor=#BBBBBB><B>Availability Group Status</B></td>" & vbcrlf
		sHTML = sHTML & sTAB & "</tr>" & vbcrlf
		sHTML = sHTML & sTAB & "<tr>" & vbcrlf
		sHTML = sHTML & sTAB & sTAB & "<td width=25% align=left valign=top bgcolor=#FFFF00>AG Name</td>" & vbcrlf
		sHTML = sHTML & sTAB & sTAB & "<td width=25% align=left valign=top bgcolor=#FFFF00>Primary Replica</td>" & vbcrlf
		sHTML = sHTML & sTAB & sTAB & "<td width=25% align=left valign=top bgcolor=#FFFF00>Recovery Health State</td>" & vbcrlf
		sHTML = sHTML & sTAB & sTAB & "<td width=25% align=left valign=top bgcolor=#FFFF00>Synchronization State</td>" & vbcrlf
		sHTML = sHTML & sTAB & "</tr>" & vbcrlf

		For i = 1 to oQR.Rows

			sHTML = sHTML & sTAB & "<tr>" & vbcrlf
			sHTML = sHTML & sTAB & sTAB & "<td align=left>" & oQR.GetColumnString(i,1) & "</td>" & vbcrlf
			sHTML = sHTML & sTAB & sTAB & "<td align=left>" & oQR.GetColumnString(i,2) & "</td>" & vbcrlf
			sHTML = sHTML & sTAB & sTAB & "<td align=left>" & oQR.GetColumnString(i,3) & "</td>" & vbcrlf
			sHTML = sHTML & sTAB & sTAB & "<td align=left>" & oQR.GetColumnString(i,4) & "</td>" & vbcrlf
			sHTML = sHTML & sTAB & "</tr>" & vbcrlf

		Next

		sHTML = sHTML & "</TABLE>" & vbcrlf & "<p><br>" & vbcrlf

	End If

	Set oQR = Nothing

	sAG = ""
	sBackColor = "white"

	Set oQR = .Databases("ATGDBMON").ExecuteWithResults("Admin_AGStatusDetails")
	
	If oQR.Rows > 0 then
		
		For i = 1 to oQR.Rows

			If sAG <> oQR.GetColumnString(i,1) then
				If sAG <> "" then
					sHTML = sHTML & "</TABLE>" & vbcrlf & "<p><br>" & vbcrlf
					sBackColor = "white"
				End If
				sHTML = sHTML & "<table width=100% border=1 cellspacing=1 cellpadding=1>" & vbcrlf
				sHTML = sHTML & sTAB & "<tr>" & vbcrlf
				sHTML = sHTML & sTAB & sTAB & "<td colspan=5 align=left valign=top bgcolor=#BBBBBB><B>" & oQR.GetColumnString(i,1) & "</B></td>" & vbcrlf
				sHTML = sHTML & sTAB & "</tr>" & vbcrlf
				sHTML = sHTML & sTAB & "<tr>" & vbcrlf
				sHTML = sHTML & sTAB & sTAB & "<td width=20% align=left valign=top bgcolor=#FFFF00>Database</td>" & vbcrlf
				sHTML = sHTML & sTAB & sTAB & "<td width=20% align=left valign=top bgcolor=#FFFF00>Replica</td>" & vbcrlf
				sHTML = sHTML & sTAB & sTAB & "<td width=20% align=left valign=top bgcolor=#FFFF00>Connected State</td>" & vbcrlf
				sHTML = sHTML & sTAB & sTAB & "<td width=20% align=left valign=top bgcolor=#FFFF00>Synchronization State</td>" & vbcrlf
				sHTML = sHTML & sTAB & sTAB & "<td width=20% align=right valign=top bgcolor=#FFFF00>Send/Redo Queue</td>" & vbcrlf
				sHTML = sHTML & sTAB & "</tr>" & vbcrlf
			End If

			If i mod 3 = 1 then
				sHTML = sHTML & sTAB & "<tr bgcolor=" & sBackColor & ">" & vbcrlf
				sHTML = sHTML & sTAB & sTAB & "<td align=left valign=top rowspan=3>" & oQR.GetColumnString(i,3) & "</td>" & vbcrlf
				sHTML = SHTML & sTAB & sTAB & "<td align=left>" & oQR.GetColumnString(i,2) & "</td>" & vbcrlf
				sHTML = sHTML & sTAB & sTAB & "<td align=left>" & oQR.GetColumnString(i,4) & "</td>" & vbcrlf
				sHTML = sHTML & sTAB & sTAB & "<td align=left>" & oQR.GetColumnString(i,5) & "</td>" & vbcrlf
				sHTML = sHTML & sTAB & sTAB & "<td align=right>" & oQR.GetColumnString(i+1,7) & "</td>" & vbcrlf
				sHTML = sHTML & sTAB & "</tr>" & vbcrlf
			Else
				sHTML = sHTML & sTAB & "<tr bgcolor=" & sBackColor & ">" & vbcrlf
				sHTML = SHTML & sTAB & sTAB & "<td align=left>" & oQR.GetColumnString(i,2) & "</td>" & vbcrlf
				sHTML = sHTML & sTAB & sTAB & "<td align=left>" & oQR.GetColumnString(i,4) & "</td>" & vbcrlf
				sHTML = sHTML & sTAB & sTAB & "<td align=left>" & oQR.GetColumnString(i,5) & "</td>" & vbcrlf
				sHTML = sHTML & sTAB & sTAB & "<td align=right>" & oQR.GetColumnString(i,6) & "</td>" & vbcrlf
				sHTML = sHTML & sTAB & "</tr>" & vbcrlf
			End If

			sAG = oQR.GetColumnString(i,1)

			If i mod 3 = 0 then
				If sBackColor = "white" then
					sBackColor = "#CCCCCC"
				Else
					sBackColor = "white"
				End If
			End If

		Next

		sHTML = sHTML & "</TABLE>" & vbcrlf
			
	End If

	Set oQR = Nothing

    End With

    Set oSQL = Nothing

    If len(sHTML) > 0 then
	sHTML = "<HTML>" & vbcrlf & "<BODY>" & vbcrlf & SHTML & "<p>" & vbcrlf & "</BODY>" & vbcrlf & "</HTML>"

	'sendEmail "DBA@A-T-G.COM","MIDOCDBA@A-T-G.COM","MIDOC AG Status", sHTML
	'sendEmail "TIMM@A-T-G.COM","MIDOCDBA@A-T-G.COM","MIDOC AG Status", sHTML

	set oFSO = CreateObject("Scripting.FileSystemObject")
	set oTS = oFSO.CreateTextFile("C:\UTIL\Tim\AG\AGops.html")
	oTS.Write sHTML
	oTS.Close
	set oTS = Nothing
	set oFSO = Nothing

    End If


Function sendEmail(sTo, sFrom, sSubject, sBody)

	Dim objMail, sHTML, sEmailBody

	Set objMail = CreateObject("CDO.Message")
		
	objMail.From = sFrom
	objMail.To = sTo

	objMail.Subject = sSubject
	objMail.HTMLBody = sBody
	objMail.Send

	Set objMail = Nothing

End Function

