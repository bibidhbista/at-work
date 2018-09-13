sqlConnString <- "Driver=SQL Server;Server=local;Database=DeepDive;Trusted_Connection=True"

sqlFraudTable <- "ccFraudSmall"

sqlRowsPerRead = 5000

sqlFraudDS <- RxSqlServerData(connectionString = sqlConnString,
   table = sqlFraudTable,
   rowsPerRead = sqlRowsPerRead)

