#requires -version 4.0
 
#compare hashing performance
 
[cmdletbinding()]
Param(
[Parameter(Position=0,ValueFromPipeline,ValueFromPipelineByPropertyName)]
[ValidateScript({Test-Path $_})]
[Alias("PSPath")]
[string]$Paths = 'C:\Users\bibidhb\Desktop\WO\*.*')
 

foreach ($path in $paths){
Process {
    Write-verbose "Testing hashing with $(Convert-Path $Path)"
    $filesize = (Get-item $path).Length
 
    $algorithms = "SHA1","SHA256","SHA384","SHA512","MACTripleDES","MD5","RIPEMD160" 
 
    foreach ($item in $algorithms) {
    [pscustomobject]@{
     Algorithm = $item
     HashTime = Measure-Command { Get-FileHash -Path $Path -Algorithm $item}
     FileSize = $filesize
    }
 
    } #foreach
 
} #process


}