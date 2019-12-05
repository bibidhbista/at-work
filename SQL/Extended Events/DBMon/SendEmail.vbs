
	Dim oSQL, oQR
	Dim sMsg, sDB
	Dim cYellow, cGray, sTAB

	sTAB = "    "
	cYellow = "#FFFF00"
	cGray = "#CCCCCC"

	Set oSQL = CreateObject("SQLDMO.SQLServer2")
	
	With oSQL
		.LoginSecure = False
		.Connect "TLSQLDSM","atgstat","statistics101"
	End With

	Set oQR = oSQL.Databases("ATGDBMon").ExecuteWithResults("SlowQueries_Top10_ByDb_Trulincs")

		

	sMsg = ""
	If oQR.Rows > 0 then
		For r = 1 to oQR.Rows
			If sDB <> oQR.GetColumnString(r,1) then
				If len(trim(sMsg)) <> 0 then
					sMsg = sMsg & "</TABLE>" & chr(13) & "<p>" & chr(13)
				End If
				sMsg = sMsg & "<TABLE WIDTH=100% BORDER=1 CELLPADDING=1 CELLSPACING=1>" & chr(13)
				sMsg = sMsg & sTAB & "<tr bgcolor=""" & cGray & """>" & chr(13)
				sMsg = sMsg & sTAB & sTAB & "<td colspan=6><B>" & oQR.GetColumnString(r,1) & "</B></td>" & chr(13)
				sMsg = sMsg & sTAB & "</tr>" & chr(13)
				sMsg = sMsg & sTAB & "<tr bgcolor=""" & cYellow & """>" & chr(13)
				sMsg = sMsg & sTAB & sTAB & "<td><B>SP Name</B></td>" & chr(13)
				sMsg = sMsg & sTAB & sTAB & "<td align=right><B>SP Time</B></td>" & chr(13)
				sMsg = sMsg & sTAB & sTAB & "<td align=right><B>SP Count</B></td>" & chr(13)
				sMsg = sMsg & sTAB & sTAB & "<td align=right><B>Max Time</B></td>" & chr(13)
				sMsg = sMsg & sTAB & sTAB & "<td align=right><B>Avg Time1</B></td>" & chr(13)
				sMsg = sMsg & sTAB & sTAB & "<td align=right><B>Avg Time2</B></td>" & chr(13)
				sMsg = sMsg & sTAB & "</tr>" & chr(13)
			End If

			sMsg = sMsg & sTAB & "<tr>" & chr(13)
			sMsg = sMsg & sTAB & sTAB & "<td valign=top>" & oQR.GetColumnString(r,2) & "&nbsp;</td>" & chr(13)
			sMsg = sMsg & sTAB & sTAB & "<td valign=top align=right>" & oQR.GetColumnString(r,3) & "&nbsp;</td>" & chr(13)
			sMsg = sMsg & sTAB & sTAB & "<td valign=top align=right>" & oQR.GetColumnString(r,4) & "&nbsp;</td>" & chr(13)
			sMsg = sMsg & sTAB & sTAB & "<td valign=top align=right>" & oQR.GetColumnString(r,7) & "&nbsp;</td>" & chr(13)
			sMsg = sMsg & sTAB & sTAB & "<td valign=top align=right>" & oQR.GetColumnString(r,5) & "&nbsp;</td>" & chr(13)
			sMsg = sMsg & sTAB & sTAB & "<td valign=top align=right>" & oQR.GetColumnString(r,8) & "&nbsp;</td>" & chr(13)
			sMsg = sMsg & sTAB & "</tr>" & chr(13)
			
			sDB = oQR.GetColumnString(r,1)

		Next


		sMsg = "<HTML>" & chr(13) & "<BODY>" & chr(13) & chr(13) & sMsg & "</TABLE>" & chr(13) & chr(13) & "</BODY>" & chr(13) & "</HTML>"
			
		SendEmail "DBA@a-t-g.com, ShipraA@a-t-g.com", "TrulincsDBA@A-T-G.COM", "Trulincs Performance - " & oQR.GetColumnString(1,6), sMsg

		Set oQR = Nothing
		Set oSQL = Nothing

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

