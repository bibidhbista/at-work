$cols = 'CombinedLosId','IaRiskRevisedLosId','ResultLosId','RevisedLosId','LosOverrideReasonId','LosOverrideApprovalDt','FinalLosId','LosId'
$tables = 'aSotips','H_aSotips'
$action = 'Drop'

if($action -eq 'drop'){
    foreach($col in $cols){
        foreach($table in $tables){
            Write-Host "IF EXISTS(SELECT NAME FROM SYS.COLUMNS WHERE NAME='$col' AND [OBJECT_ID]=OBJECT_ID(N'dbo.$table'))
	        ALTER TABLE dbo.$table  DROP COLUMN $col" 

        }

    }
}elseif ($action -eq 'add'){
# Column definitions

}
