$dblist = get-dbadatabase -sqlinstance atgdsmsq14|where name -like '*NE_*'

(foreach $db in $dblist)
{
    echo "Currently on $db"
    Get-DbaPermission -SqlInstance atgdsmsq14 -database $db -IncludeServerLevel|where grantee -like '*NE_medical*'|ft -autosize
}
