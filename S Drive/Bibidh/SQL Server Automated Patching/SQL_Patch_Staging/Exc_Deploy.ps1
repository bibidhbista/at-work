# For remote install of the exception deploys(stop application services on appropriate app server,kill sessions for each db, execute script, reboot server remotely)


[CmdletBinding()]
    Param
    (
        # The SQL SERVER version that is going to be patched.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        [ValidateNotNull()]
        $path
  
    )

  Restart-Computer -Wait -PSComputerName $computer

# after it's brought back up
# deploy/install again
# Mention the installation file path

# Mention the installation file path
.\$path\SQLServer2014SP2-KB3171021-x64-ENU.exe /QUIET /ALLINSTANCES /IAcceptSQLServerLicenseTerms /INDICATEPROGRESS

