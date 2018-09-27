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
   [Parameter(Mandatory=$false)]
   #[ValidateNotNull()]
   [string] $SourceServer,
   
   [Parameter(Mandatory=$false)]
   #[ValidateNotNull()]
   [string] $DestinationServer,

   [Parameter(Mandatory=$false)]
   #[ValidateNotNull()]
   $SourceDb,

   [Parameter(Mandatory=$false)]
   #[ValidateNotNull()]
   $DestinationDb,

   [Parameter(Mandatory=$false)]
   #[ValidateNotNull()]
   [ValidatePattern(".*\..*")]
   $SourceSchemaTable,     

   [Parameter(Mandatory=$false)]
   #[ValidateNotNull()]
   [ValidatePattern(".*\..*")]
   $DestinationSchemaTable,
   
   [Parameter(Mandatory=$false)]
   $action ='out'

)


$SourceServer= '.'
$DestinationServer= '.'
$SourceDb= "deepdive"
$DestinationDb= "bbista_R_test"
$SourceSchemaTable= "dbo.newfeaturetable"
$DestinationSchemaTable= "dbo.newfeaturetable"

$SourceTable = $SourceSchemaTable.Split(".")[1]
$DestinationTable = $DestinationSchemaTable.Split(".")[1]

$date =get-date -Format 'MMddyyHHmm'
$fileName = "$PSScriptRoot\$sourceTable.txt"

#bcp out
bcp "$SourceDb.$SourceSchemaTable" $action "$fileName" -S $SourceServer -N -E -T > "$PSScriptRoot`\bcpout_$SourceTable`_$date.log"
osql -S $DestinationServer -d $DestinationDb -T -E  -Q "Delete From $DestinationSchemaTable" -o "$PSScriptRoot`\bcpin_$DestinationTable`_$date`.log"
bcp "$DestinationDb.$DestinationSchemaTable" in "$fileName" -S $DestinationServer -N -E -T >> "$PSScriptRoot`\bcpin_$DestinationTable`_$date`.log"


ii $fileName
