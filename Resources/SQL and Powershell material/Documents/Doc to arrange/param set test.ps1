[CmdletBinding(DefaultParametersetName='None')] 
param( 
    [Parameter(Position=0,Mandatory=$true)]  [string]$Age, 
    [Parameter(ParameterSetName="FC")][switch]$FC,
    [Parameter(ParameterSetName="iSCSI")][switch]$iSCSI,
    [Parameter(ParameterSetName="FC",Mandatory=$true)] [string]$FCACL,
    [Parameter(Position=1,Mandatory=$true)] [string]$Sex, 
    [Parameter(Position=2,Mandatory=$true)] [string]$Location,
    [Parameter(ParameterSetName='Extra')][switch]$Favorite,      
    [Parameter(ParameterSetName='Extra',Mandatory=$true)][string]$FavoriteCar
)

$ParamSetName = $PsCmdLet.ParameterSetName

Write-Output "Age: $age"
Write-Output "Sex: $sex"
Write-Output "FC: $FC"
Write-Output "FCACL: $FCACL"
Write-Output "Location: $Location"
Write-Output "Favorite: $Favorite"
Write-Output "Favorite Car: $FavoriteCar"
Write-Output "ParamSetName: $ParamSetName"