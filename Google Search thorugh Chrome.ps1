$searchText = Read-Host ("Enter text to search:`n")
$searchText = $searchText.Replace(' ','%20')
$url = "https://www.google.com/search?q=$searchText"
Start-Process "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" $url