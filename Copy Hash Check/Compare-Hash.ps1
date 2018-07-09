# Pull from Table (Dynamic)
$server ="atgdsmsq17"
$database = "MIDOC_INTF_META"
$query = "Select top 1 Infilepath, outfilepath from [$database].[dbo].[JobFiles_HashCompare]" ############# Pull from a different metadata table ##############

# Files to be compared
$dataset = Invoke-Sqlcmd -ServerInstance $server -Database $database -Query $query
$InFilePath =  $dataset.InFilePath
$OutFilePath =  $dataset.OutFilePath

# calculate current hashes
Write-Host "Comparing $InFile_Path with $OutFilePath" -ForegroundColor Yellow
$InFile_Hash = Get-FileHash -Path $InFilePath -Algorithm MD5
$OutFile_Hash = Get-FileHash -Path $OutFilePath -Algorithm MD5


# Compare them
if ($InFile_Hash.hash -ne $OutFile_Hash.hash) {
       # Log to table as Result Failure
       Invoke-Sqlcmd -ServerInstance $server -Database $database -Query "INSERT INTO jobfiles_hashcompare VALUES ('$InFilePath','$OutFilePath',NULL,'Mismatch')"
       Write-Warning "$InFilePath and $OutFilePath hash mismatch" 
}
else {
        # Log to table as Result Success
       Invoke-Sqlcmd -ServerInstance $server -Database $database -Query "INSERT INTO jobfiles_hashcompare VALUES ('$InFilePath','$OutFilePath',convert(binary,'$($InFile_Hash.hash)'),'Match')"
       Write-Host "$InFilePath and $OutFilePath hash ok" -ForegroundColor Green
}




#####################################################################
##################### For Statistics ################################
######### Compare Cryptographic Hashing Algorithm Performance #######
#####################################################################


#$HashTime_1 = Measure-Command { Get-FileHash -Path "$Path\$InFile_Path" -Algorithm MD5}
#$HashTime_2 = Measure-Command { Get-FileHash -Path "$Path\$InFile_Path" -Algorithm SHA256}
#Write-host "$HashTime_1`n`n`n$HashTime_2"
