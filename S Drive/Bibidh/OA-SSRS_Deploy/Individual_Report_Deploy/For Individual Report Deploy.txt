------------------------------------------------------FOR INDIVIDUAL REPORT DEPLOYS--------------------------------------------------------------------------

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!THE FOLDER MUST CONTAIN A COMMONSCRIPT.RSS FILE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!



AUTHOR: BIBIDH BISTA
LAST UPDATE DATE: 09/07/2017



POWERSHELL COMMAND:
./Ind_rpt_deploy.ps1 -gitLabPath "https://pgitapp01.fhlbdm.com/SSRS/Accounting/raw/master/Accounting_SSRS/LOC_Fees_Projection.rdl" -reportname "LOC_Fees_Projection.rdl" -servername "sqltest2016" -reportfolder "Test"




PARAMS:

REQUIRED:
GITLABPATH              : PATH TO GITLAB REPO                                  : ENDING IN ".RDL"
SERVERNAME              : NAME OF THE SERVER TO DEPLOY TO:                EX   : 'SQLTEST2016'
TARGETREPORTFOLDER      : NAME OF THE FOLDER TO DEPLOY TO ON THE SERVER        : IF IT DOES NOT EXIST, ONE WILL BE CREATED FOR YOU

OPTIONAL:
REPORTNAME:	NAME OF THE REPORT  : ENDING IN ".RDL"  :DEFAULT:    STRIPS OFF THE REPORT NAME OFF OF THE GIT LAB PATH PROVIDED
DATASETFOLDER                                       :DEFAULT:	"DATASETS"
DATASOURCEFOLDER	                                :DEFAULT:	"DATA SOURCES"
DATASOURCEPATH		                                :DEFAULT:	"/DATA SOURCES"



