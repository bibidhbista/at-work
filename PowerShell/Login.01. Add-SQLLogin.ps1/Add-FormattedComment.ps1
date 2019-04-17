$AddString=@"
<#################################################################################
## Purpose: Add SQL Login to a list of servers with a pre-defined server role   ##
##                                                                              ##
##                                                                              ##
##                                                                              ##
## Author: Bibidh Bista                                                         ##
##                                                                              ##
## Type: SQL Login                                                              ##
##                                                                              ##
################################################################################>#
"@


$OriginalContent = gc -Path "$PSScriptRoot\*.ps1" -TotalCount
$OriginalContent

#Add-Content -Path "$PSScriptRoot\*.ps1" -Value "$AddString" 

