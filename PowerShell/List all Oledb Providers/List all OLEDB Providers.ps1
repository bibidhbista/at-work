icm -cn pfhlbdmsql15 {

        $list = New-Object ([System.Collections.Generic.List[PSObject]])

        foreach ($provider in [System.Data.OleDb.OleDbEnumerator]::GetRootEnumerator())
        {
            $v = New-Object PSObject        
            for ($i = 0; $i -lt $provider.FieldCount; $i++) 
            {
                Add-Member -in $v NoteProperty $provider.GetName($i) $provider.GetValue($i)
            }
            $list.Add($v)
        }
        $list|? sources_name -like '*ora*'
        
    }