$ie = New-Object -ComObject 'internetExplorer.Application'
$ie.Visible= $true # Make it visible

$Name="Bibidh Bista"

$Email="bibidh.bista@selu.edu"

$ie.Navigate("https://www.thejhsshow.com/giveaway")

While ($ie.Busy -eq $true) {Start-Sleep -Seconds 3;}

$NameField = $ie.document.getElementByID('comp-k42xnbx9input')
$NameField.value = "$Name"

$EmailField = $ie.document.getElementByID('comp-k42xnbzbinput')
$EmailField.value = "$Email"

$Link = $ie.document.getElementByID('comp-k42xnc3mlabel')
$Link.click()