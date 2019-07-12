#VARS
$SearchString ='s_InmateInfo_GetInmatesForCentricUpload'


$path = 'C:\Projects\DBA\ATG_YIT\ATG_InmateKiosk\Database\Rollout\Update'



$oPath = 'C:\Users\bibidhb\Desktop\Ad hoc\StringFind'
if (!(Test-Path $oPath)){md $oPath}
$Outputfile ="$oPath\Results.sql"

# MAIN
cd $path
$results = findstr /s /i /c:"$SearchString" *.sql
$results|Out-File $Outputfile
ii $Outputfile