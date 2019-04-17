[void] [System.Reflection.Assembly]::LoadWithPartialName("'System.Windows.Forms")
[void] [System.Reflection.Assembly]::LoadWithPartialName("'Microsoft.VisualBasic")

#create COM object named Outlook 
$Outlook = New-Object -ComObject Outlook.Application 
#create Outlook MailItem named Mail using CreateItem() method 
$Mail = $Outlook.CreateItem(0) 
#add properties as desired 
$Mail.To = "bibidh.bista@selu.edu" 
 

cls
$url = "https://www.americanmuscle.com/mustang-street-strip-mega-sweepstakes.html";
$emoji = ":D"
#initialize browser
$ie = New-Object -com internetexplorer.application;
$ie.visible = $true;
$ie.navigate($url);
while ($ie.Busy -eq $true) { Start-Sleep -Seconds 1; }    #wait for browser idle

# Specific to 

($ie.document.getElementsByName("FirstName") |select -first 1).value = "Bibidh";
($ie.document.getElementsByName("LastName") |select -first 1).value = "Bista";
($ie.document.getElementsByName("Email") |select -first 1).value = "bibidh.bista@selu.edu";
($ie.document.getElementsByName("Address1") |select -first 1).value = "225 Prairie View Drive Apt #5350";
($ie.document.getElementsByName("PostalCode") |select -first 1).value = "50266";
($ie.document.getElementsByName("City") |select -first 1).value = "West Des Moines";
($ie.document.getElementsByName("State") |select -first 1).value = "IA";
($ie.document.getElementsByName("CountryCode") |select -first 1).value = "US";


$inputs=@($ie.document.getElementsByTagName("Input"))
$AGE = $inputs|select -first 25|select -property classname, id,localname,value|ft -AutoSize
$age|%{$_|select -first 1}

$btns=@($ie.document.getElementsByTagName("button"))
$btn = $btns|select -first 25|select -property classname, id,localname,value|ft -AutoSize
$btn.classname

#$ie.document.getElementsByClassName("main_btn").click()

#$ie.document.getElementsByClassName("input") | % {
  
  #  if ($_.('data-id') -ne $null){
  #      #if ($_.id.Contains($buttonIdFragment)) { $btn = $_ }
  #      #if ($_.id.Contains($acceptTermsInputFragment)) { $at = $_ }
  #      #if ($_.id.Contains($passwordIdFragment)) { $pwd = $_ }
  #      #if ($_.id.Contains($userIdFragment)) { $user = $_ }
  #      write-host $_.('data-id')
  #  }
#}
#($ie.document.getElementsByClassName("wizard_option_btn")|? $_.textContent = '2015-2018').click();

#$btn= $ie.document.getElementsById("confirm-age-checkbox")
#$btn.disabled = $false
#$btn.click()
 
 
pause
#{"vers":5,"VehicleID":1149639,"LastModifiedDate":"2018-07-20T09:22:28.51","VehicleType":{"uid":"1","label":"Mustang"},"Year":{"uid":"2015","label":"2015"},"Generation":{"iconUrl":"https://turn5.scene7.com/ir/render/Turn5Render/Gen_Mustang_2015_CR?&fmt=png-alpha&obj=car/no_color&obj=car/color&color=201,16,11&gloss=20","uid":"6","label":"2015-2018"},"Submodel":{"uid":"5","label":"EcoBoost"},"SubmodelGroup":{"uid":"3","label":"EcoBoost"},"Color":{"hex":"0D0E0D","gloss":36,"rgb":"13,14,13","exposure":"c.252.222.255...d..131.186...e...47...","uid":"558","label":"Black"},"Segment":[{"uid":"1000","label":"15-17 Ecoboost"},{"uid":"1003","label":"15-17 Mustang"}]}
#($ie.document.getElementsByName("initCaseSearch") |select -first 1).click();
#
#while ($ie.Busy -eq $true) { Start-Sleep -Seconds 1; }    #wait for browser idle
#
#
#$Doc = $ie.Document.body
#$result = $Doc.getElementsByClassName("rows text-center")[0].innerHTML
#$date = get-date -Format 'mm-dd-yyyy'
#If($result.Contains("<h1>Case Was Received</h1>"))
#{
#    $emoji=':/'
#    if((get-date -Format 'dd')%7 -eq 0){
#        $Mail.Subject = "Case is still marked recieved on $date"
#        $Mail.Body = $result
#        #send message 
#        $Mail.Send() 
#        
#        #$wshell = New-Object -ComObject Wscript.Shell
#        #$wshell.Popup("It's been recieved!",0,":/",0x1)
#        #Write-Host -ForegroundColor Yellow "It's been recieved!";
#        }
#}
#else
#{
#        $Mail.Subject = "!! Case Was APPROVED !!"
#        $Mail.Body = $result
#        #send message 
#        $Mail.Send() 
#        
#        #$wshell = New-Object -ComObject Wscript.Shell
#        #$wshell.Popup("It's been APPROVED!",0,":D",0x1)
#        #Write-Host -ForegroundColor Green "It's been APPROVEDD!!";
#}
#
#[System.Runtime.Interopservices.Marshal]::ReleaseComObject($Outlook) | Out-Null
#
#
#$wshell = New-Object -ComObject Wscript.Shell
#$wshell.Popup("$emoji",0,$emoji,0x1)



#choose shop
#($ie.document.getElementsByName("shop") |select -first 1).value = $shopID;
#($ie.document.getElementsByName("submit") |select -first 1).click();
#while ($ie.Busy -eq $true) { Start-Sleep -Seconds 1; }    #wait for browser idle
#
#start-sleep -seconds 2
#
#$products = import-csv products.csv | foreach { 
#    write-host Product $iterator -  $_.ITEM_NUMBER
#    
#    #go to product addition form
#    $ie.navigate($AddProdURL);
#    while ($ie.Busy -eq $true) { Start-Sleep -Seconds 1; }    #wait for browser idle
#
#    #fill out form fields
#    ($ie.document.getElementsByName("item_number") |select -first 1).value = $_.ITEM_NUMBER;
#    ($ie.document.getElementsByName("item_name") |select -first 1).value = $_.ITEM_NAME;
#    ($ie.document.getElementsByName("item_type") |select -first 1).value = "C";
#    ($ie.document.getElementsByName("short_description") |select -first 1).value = $_.ShortProductDescription;
#    ($ie.document.getElementsByName("long_description") |select -first 1).value = $_.LongDescription;
#    ($ie.document.getElementsByName("legal") |select -first 1).click();
#    ($ie.document.getElementsByName("legal_text") |select -first 1).value = $_.LegalText;
#    ($ie.document.getElementsByName("submit") |select -first 1).click();
#
#    $iterator = $iterator+1;
#}
#

