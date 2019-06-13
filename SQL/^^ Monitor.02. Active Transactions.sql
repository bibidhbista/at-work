select transaction_id, name, transaction_begin_time
 ,case transaction_type 
    when 1 then '1 = Read/write transaction'
    when 2 then '2 = Read-only transaction'
    when 3 then '3 = System transaction'
    when 4 then '4 = Distributed transaction'
end as transaction_type 
,case transaction_state 
    when 0 then '0 = The transaction has not been completely initialized yet'
    when 1 then '1 = The transaction has been initialized but has not started'
    when 2 then '2 = The transaction is active'
    when 3 then '3 = The transaction has ended. This is used for read-only transactions'
    when 4 then '4 = The commit process has been initiated on the distributed transaction'
    when 5 then '5 = The transaction is in a prepared state and waiting resolution'
    when 6 then '6 = The transaction has been committed'
    when 7 then '7 = The transaction is being rolled back'
    when 8 then '8 = The transaction has been rolled back'
end as transaction_state
,case dtc_state 
    when 1 then '1 = ACTIVE'
    when 2 then '2 = PREPARED'
    when 3 then '3 = COMMITTED'
    when 4 then '4 = ABORTED'
    when 5 then '5 = RECOVERED'
end as dtc_state 
,transaction_status, transaction_status2,dtc_status, dtc_isolation_level, filestream_transaction_id
from sys.dm_tran_active_transactions