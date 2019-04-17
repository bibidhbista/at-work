# For remote install of the exception deploys(stop application services on appropriate app server,kill sessions for each db, execute script, reboot server remotely)
<#
    1. PDSXAPP02
    2. T/D/U/PDMSQL10(RAI)
        A. T/D/U/PRAIAPP02 (JBOSS SERVICE)
    3. PADMINSQL02 (SITEMINDER)
        A. PSMAPP01
    4. T/PDMSQL05 (TIDAL)
        A. PTESCMAPP01
        B. PTESMAPP01
    5. PFOGSQL01
        A. PFNMSAPP01 --05
    6. PDMSQL09 (ONBASE)
        A. APP (SERVICE/USERS)
    7. T/D/U/PDMSQL12 (SSIS) *** OLD *** CHECK ANY ACTIVE SSIS PACKAGES.. IF YES WAIT FOR IT TO FINISH
    8. T/D/U/PDMSQL12 (SSIS) *** 2016 ***   """"""""""""""""""""""""
    9. PVMSQL04
    10.HVMSQL04



#>




[CmdletBinding()]
    Param
    (
        # The SQL SERVER version that is going to be patched.
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        [ValidateNotNull()]
        $path,
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        $computerName
    )

# Extract from list
# kill sessions ... check reboot pending ....

# specifics
    # connect to t/d/u of the same 
    
        # Mention the installation file path
        .\$path\SQLServer2014SP2-KB3171021-x64-ENU.exe /QUIET /ALLINSTANCES /IAcceptSQLServerLicenseTerms /INDICATEPROGRESS
        # copy summary file

# restart after patch
# check if services are up
# log results


