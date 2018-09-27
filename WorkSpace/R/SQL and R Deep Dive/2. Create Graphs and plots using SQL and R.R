# Create Graphs and plots using SQL and R 

# import the revoscaler library for computation and manipulation
library("RevoScaleR")

# define necessary connection string to talk to the SQL Server
connStr <- "Driver=SQL Server;Server=.;Database=DeepDive;Trusted_Connection=Yes"
sqlShareDir <- paste("C:\\AllShare\\",Sys.getenv("USERNAME"),sep="")
sqlWait <- TRUE
sqlConsoleOutput <- FALSE
# define sql compute context using those config
sqlcc <- RxInSqlServer(connectionString = connStr, shareDir = sqlShareDir, wait = sqlWait, consoleOutput = sqlConsoleOutput)


# by default, the compute context is set to local. SO explicitly changing into sqlcc
rxSetComputeContext(sqlcc)


# Sample sql query for importing data
sampleDataQuery <- "SELECT tipped, fare_amount, passenger_count,trip_time_in_secs,trip_distance, pickup_datetime, dropoff_datetime, pickup_longitude, pickup_latitude, dropoff_longitude, dropoff_latitude FROM nyctaxi_sample"

# Use above query and connection strings to import data into an R variable
inDataSource <- RxSqlServerData(
  sqlQuery = sampleDataQuery,
  connectionString = connStr,
  colClasses = c(pickup_longitude = "numeric", pickup_latitude = "numeric",
                 dropoff_longitude = "numeric", dropoff_latitude = "numeric"),
  rowsPerRead=500
)


# Plot fare amount on SQL Server and return the plot
start.time <- proc.time()
rxHistogram(~fare_amount, data = inDataSource, title = "Fare Amount Histogram")
used.time <- proc.time() - start.time
print(paste("It takes CPU Time=", round(used.time[1]+used.time[2],2), " seconds, Elapsed Time=", round(used.time[3],2), " seconds to generate plot.", sep=""))




