# For remote install of the standard deploy (no need to kill sessions, etc. this would be for Dev/Test/UAT environments) 

# Mention the installation file path
SQLServer2014SP2-KB3171021-x64-ENU.exe /QUIET /ALLINSTANCES /IAcceptSQLServerLicenseTerms /INDICATEPROGRESS



# Wait until it is successfully installed
Shutdown –r –t 0
