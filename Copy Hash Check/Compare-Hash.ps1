# Pull from Table (Dynamic)
$server ="atgdsmsq17"
$database = "MIDOC_INTF_META"
$query = "Select Infilepath, outfilepath from [$database].[dbo].[JobFiles_HashCompare] where result is Null or result='null'" ############# Pull from a different metadata table ##############

# Files to be compared
$dataset = Invoke-Sqlcmd -ServerInstance $server -Database $database -Query $query
if(!$dataset){
    write-host "No records to process." -BackgroundColor green
    exit

}

$dataset|%{
    $InFilePath =  $_.InFilePath
    $OutFilePath =  $_.OutFilePath
    if(!(Test-Path($InFilePath))){
        Write-Error "Input File don't exist. IN: $InFilePath and OUT: $OutFilePath"
    
            }elseif(!(Test-Path($OutFilePath))){
        Write-Error "Output File don't exist. IN: $InFilePath and OUT: $OutFilePath"
        
    }else{


    # calculate current hashes
    Write-Host "Comparing $InFile_Path with $OutFilePath" -ForegroundColor Yellow
    $InFile_Hash = Get-FileHash -Path $InFilePath -Algorithm SHA256
    $OutFile_Hash = Get-FileHash -Path $OutFilePath -Algorithm SHA256
    $date =  get-date -Format "yyyy-MM-dd HH:mm:ss"

    # Compare them
    if ($InFile_Hash.hash -ne $OutFile_Hash.hash) {
            # Log to table as Result Failure
            Invoke-Sqlcmd -ServerInstance $server -Database $database -Query "Update jobfiles_hashcompare set [Hash]=NULL,result='Mismatch',date='$date' where infilepath='$InFilePath' and outfilepath='$OutFilePath' and (result is Null or result='null')"

            Write-Warning "$InFilePath and $OutFilePath hash mismatch" 
    }
    else {
            # Log to table as Result Success
            Invoke-Sqlcmd -ServerInstance $server -Database $database -Query "Update jobfiles_hashcompare set [Hash]=(convert(binary(64),'$($InFile_Hash.hash)')),result='Match',date='$date' where infilepath='$InFilePath' and outfilepath='$OutFilePath' and (result is Null or result='null')"
            Write-Host "$InFilePath and $OutFilePath hash ok" -ForegroundColor Green
    }
    }
    
}



#####################################################################
##################### For Statistics ################################
######### Compare Cryptographic Hashing Algorithm Performance #######
#####################################################################


#$HashTime_1 = Measure-Command { Get-FileHash -Path "$Path\$InFile_Path" -Algorithm MD5}
#$HashTime_2 = Measure-Command { Get-FileHash -Path "$Path\$InFile_Path" -Algorithm SHA256}
#Write-host "$HashTime_1`n`n`n$HashTime_2"
