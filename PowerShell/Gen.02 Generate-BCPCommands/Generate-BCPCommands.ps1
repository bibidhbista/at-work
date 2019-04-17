<#################################################################################
## Purpose: Create automated BCP commands for data import export                ##
##                                                                              ##
##                                                                              ##
##                                                                              ##
## Author: Bibidh Bista                                                         ##
##                                                                              ##
## Type: Import/Export                                                          ##
##                                                                              ##
################################################################################>#
Param(   
   [Parameter(Mandatory=$true)]
   [ValidateNotNull()]
   [ValidateSet('ATGDSMSQ14','ATGDSMSQ17','14','17','CIOSQLAG1','CIOSQLCATAG1','TNE','PNE','TMI','MIDOCSQL','MIDOCSQ1GRR','MIDOCSQ2GRR','MIDOCSQ3LAS','TRSQLADM','TOBS')]
   [string] $SourceServer,
   
   [Parameter(Mandatory=$true)]
   #[ValidateNotNull()]
   [string] $DestinationServer,

   [Parameter(Mandatory=$true)]
   [ValidateNotNull()]
   $SourceDb,

   [Parameter(Mandatory=$true)]
   #[ValidateNotNull()]
   $DestinationDb,

   [Parameter(Mandatory=$true)]
   [ValidateNotNull()]
   [ValidatePattern(".*\..*")]
   [string[]]$SourceSchemaTables,     

   [Parameter(Mandatory=$false)]
   #[ValidateNotNull()]
   [ValidatePattern(".*\..*")]
   $DestinationSchemaTables,
   
   [Parameter(Mandatory=$false)]
   $action

)


#$SourceServer= '.'
#$DestinationServer= '.'
#
#$SourceDb= "deepdive"
#$DestinationDb= "bbista_R_test"
#
#$SourceSchemaTables= "dbo.newfeaturetable","dbo.newfeaturetable2"
#$DestinationSchemaTable= "dbo.newfeaturetable"

#$SourceTable = $SourceSchemaTable.Split(".")[1]
#$DestinationTable = $DestinationSchemaTable.Split(".")[1]
cls

$date =get-date -Format 'MMddyyHH'

if($SourceServer -eq '17')    {$SourceServer ='ATGDSMSQ17'}
elseif($SourceServer -eq "14"){$SourceServer ='ATGDSMSQ14'}
elseif($SourceServer -eq "TMI"){$SourceServer ='MIDOCSQL'}
elseif($SourceServer -eq "TOBS"){$SourceServer ='TRSQLADM'}
elseif($SourceServer -eq "TNE"){$SourceServer ='CIOSQLCATAG1'}
elseif($SourceServer -eq "PNE"){$SourceServer ='CIOSQLAG1'}

if($DestinationDb -eq '' -or $DestinationDb -eq $null){
    $DestinationDb = $SourceDb
}
if($DestinationServer -eq '' -or $DestinationServer -eq $null){
    $DestinationServer = $SourceServer
}

$date          = $(Get-date).ToString("yyyyMMdd")
$CurrentFolder = "$PSScriptRoot\$date"

$cmdOut = "REM BCPOUT COMMANDS:`r`n"
$cmdIn  = "REM BCPIN COMMANDS:`r`n"

#bcp out
foreach($table in $SourceSchemaTables){
    $SourceSchema =$table.Split(".")[0]
    $SourceTable  = $table.Split(".")[1]
    #$DestinationTable = $DestinationSchemaTable.Split(".")[1]
    $DestSchema   = $SourceSchema
    $DestTable    = $SourceTable
    
    $fileName = "$CurrentFolder\$table.txt"
    $cmdOut += "bcp $SourceDb.$SourceSchema.$SourceTable out `"$fileName`" -S `"$SourceServer`" -N -E -T > `"$CurrentFolder`\bcpOut_$date.log`r`n"
    
    $cmdIn += "osql -S `"$DestinationServer`" -d $DestinationDb -T -E  -Q `"Delete From $DestSchema.$DestTable`" -o `"$CurrentFolder`\bcpIn_$date`.log`r`n"
    $cmdIn += "bcp `"$DestinationDb.$DestSchema.$DestTable`" in `"$fileName`" -S `"$DestinationServer`" -N -E -T >> `"$CurrentFolder`\bcpIn_$date`.log`r`n"
    
}

"$cmdOut`r`n$cmdIn"
#"$cmdOut`r`n$cmdIn"|Out-Clipboard
#echo "Copied to clipboard"
