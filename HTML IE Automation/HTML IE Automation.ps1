[void] [System.Reflection.Assembly]::LoadWithPartialName("'System.Windows.Forms")
[void] [System.Reflection.Assembly]::LoadWithPartialName("'Microsoft.VisualBasic")

#create COM object named Outlook 
$Outlook = New-Object -ComObject Outlook.Application 
#create Outlook MailItem named Mail using CreateItem() method 
$Mail = $Outlook.CreateItem(0) 
#add properties as desired 
$Mail.To = "bibidh.bista@selu.edu" 
 

cls
$caseNum = 'ysc1890187642'
$url = "https://egov.uscis.gov/casestatus/landing.do";

#initialize browser
$ie = New-Object -com internetexplorer.application;
$ie.visible = $false;
$ie.navigate($url);
while ($ie.Busy -eq $true) { Start-Sleep -Seconds 1; }    #wait for browser idle

# Specific to 

($ie.document.getElementsByName("appReceiptNum") |select -first 1).value = $caseNum;

($ie.document.getElementsByName("initCaseSearch") |select -first 1).click();

while ($ie.Busy -eq $true) { Start-Sleep -Seconds 1; }    #wait for browser idle


$Doc = $ie.Document.body
$result = $Doc.getElementsByClassName("rows text-center")[0].innerHTML
$date = get-date -Format 'mm-dd-yyyy'
If($result.Contains("<h1>Case Was Received</h1>"))
{
    if((get-date -Format 'dd')%7 -eq 0){
        $Mail.Subject = "Case is still marked recieved on $date"
        $Mail.Body = $result
        #send message 
        $Mail.Send() 
        #quit and cleanup 
        #$Outlook.Quit() 
        
        #$wshell = New-Object -ComObject Wscript.Shell
        #
        #$wshell.Popup("It's been recieved!",0,":/",0x1)
        

        #Write-Host -ForegroundColor Yellow "It's been recieved!";
        }
}
else
{
        #$wshell = New-Object -ComObject Wscript.Shell
        #
        #$wshell.Popup("It's been APPROVED!",0,":D",0x1)

        $Mail.Subject = "!! Case Was APPROVED !!"
        $Mail.Body = $result
        #send message 
        $Mail.Send() 
        #quit and cleanup 
        #$Outlook.Quit() 
        

        #Write-Host -ForegroundColor Green "It's been APPROVEDD!!";
}

[System.Runtime.Interopservices.Marshal]::ReleaseComObject($Outlook) | Out-Null

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

