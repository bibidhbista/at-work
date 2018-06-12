# Create a classification model using rxLogit
# The model you build is a binary classifier that predicts whether the taxi driver is likely to get a tip on a particular ride or not. 
# You'll use the data source you created in the previous lesson to train the tip classifier, using logistic regression.
# 


# Creation and population of this dataasource is from the previous tutorial step

# Data engineering is an important part of machine learning. Data often requires transformation before you can use it for predictive modeling. If the data does not have the features you need, you can engineer them from existing values.
# 
# For this modeling task, rather than using the raw latitude and longitude values of the pickup and drop-off location, you'd like to have the distance in miles between the two locations. To create this feature, you compute the direct linear distance between two points, by using the haversine formula.
# 
# In this step, we compare two different methods for creating a feature from data:
# 
# Using a custom R function
# Using a custom T-SQL function in Transact-SQL


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

# Query for generating a data source
bigQuery <- "SELECT tipped, fare_amount, passenger_count,trip_time_in_secs,trip_distance, pickup_datetime, dropoff_datetime,  pickup_latitude, pickup_longitude,  dropoff_latitude, dropoff_longitude FROM nyctaxi_sample";



# Data source using the defined sql conneciton and the query above
featureDataSource <- RxSqlServerData(sqlQuery = bigQuery,colClasses = c(tipped ="numeric", pickup_longitude = "numeric", pickup_latitude = "numeric", fare_amount = "numeric",
                                                                        dropoff_longitude = "numeric", dropoff_latitude = "numeric", passenger_count  = "numeric", 
                                                                        trip_distance  = "numeric", trip_time_in_secs  = "numeric", direct_distance  = "numeric"), 
                                     connectionString = connStr);


# The first line defines a new environment. In R, an environment can be used to encapsulate name spaces in packages and such. 
#You can use the search() function to view the environments in your workspace. To view the objects in a specific environment, 
#ype ls(<envname>).
# The lines beginning with $env.ComputeDistance contain the code that defines the haversine formula, which calculates the 
#great-circle distance between two points on a sphere.
env <- new.env();
env$ComputeDist <- function(pickup_long, pickup_lat, dropoff_long, dropoff_lat){
  R <- 6371/1.609344 #radius in mile
  delta_lat <- dropoff_lat - pickup_lat
  delta_long <- dropoff_long - pickup_long
  degrees_to_radians = pi/180.0
  a1 <- sin(delta_lat/2*degrees_to_radians)
  a2 <- as.numeric(a1)^2
  a3 <- cos(pickup_lat*degrees_to_radians)
  a4 <- cos(dropoff_lat*degrees_to_radians)
  a5 <- sin(delta_long/2*degrees_to_radians)
  a6 <- as.numeric(a5)^2
  a <- a2+a3*a4*a6
  c <- 2*atan2(sqrt(a),sqrt(1-a))
  d <- R*c
  return (d)
}


rxSetComputeContext("local");


start.time <- proc.time();



# Transformation of the incoming data source using the above defined user function

sql_feature_ds <- rxDataStep(inData = featureDataSource,
                         transforms = list(direct_distance=ComputeDist(pickup_longitude,pickup_latitude, dropoff_longitude, dropoff_latitude),
                                           tipped = "tipped", fare_amount = "fare_amount", passenger_count = "passenger_count"),
                                            #trip_time_in_secs = "trip_time_in_secs",  trip_distance="trip_distance"),
                                           #pickup_datetime = "pickup_datetime",  dropoff_datetime = "dropoff_datetime"),
                         transformEnvir = env,
                         rowsPerRead=500,
                         reportProgress = 3);
#sql_feature_ds[sql_feature_ds$fare_amount < sql_feature_ds$fare_amount]
str(sql_feature_ds)
used.time <- proc.time() - start.time;
print(paste("It takes CPU Time=", round(used.time[1]+used.time[2],2)," seconds, Elapsed Time=", round(used.time[3],2), " seconds to generate features.", sep=""));

#rxGetVarInfo(data = sql_feature_ds);




# End of previous Tutorial step for generating the data source

# Now using the same data source for building a model


(logitObj <- rxLogit(tipped ~ passenger_count + trip_distance + trip_time_in_secs + direct_distance, data = sql_feature_ds));


summary(logitObj);
