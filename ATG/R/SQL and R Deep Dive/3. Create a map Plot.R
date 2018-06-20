# Create a Map Plot

# Typically, database servers block Internet access. This can be inconvenient when using R packages 
# that need to download maps or other images to generate plots. However, there is a workaround that 
# you might find useful when developing your own applications. Basically, you generate the map 
# representation on the client, and then overlay on the map the points that are stored as attributes 
# in the SQL Server table.

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
sampleDataQuery <- "SELECT tipped, fare_amount, passenger_count,trip_time_in_secs,trip_distance, pickup_datetime, dropoff_datetime, pickup_longitude, pickup_latitude, dropoff_longitude, dropoff_latitude FROM dbo.nyctaxi_sample"

# Use above query and connection strings to import data into an R variable
inDataSource <- RxSqlServerData(
  sqlQuery = sampleDataQuery,
  connectionString = connStr,
  colClasses = c(pickup_longitude = "numeric", pickup_latitude = "numeric",
                 dropoff_longitude = "numeric", dropoff_latitude = "numeric"),
  rowsPerRead=500
)

str(inDataSource)

mapPlot <- function(inDataSource, googMap){
  library(ggmap)
  library(mapproj)
  ds <- rxImport(inDataSource)
  p <- ggmap(googMap)+
    geom_point(aes(x = pickup_longitude, y =pickup_latitude ), data=ds, alpha =.5,
               color="darkred", size = 1.5)
  return(list(myplot=p))
};

str(mapPlot)
# Change the compute context to local and load the libraries required for creating the maps.

rxSetComputeContext("local");

if (!('ggmap' %in% rownames(installed.packages()))){
  install.packages("ggmap",repos = "http://cran.us.r-project.org")
};
if (!('mapproj' %in% rownames(installed.packages()))){
  install.packages("mapproj",repos = "http://cran.us.r-project.org")
};
if (!('RCurl' %in% rownames(installed.packages()))){
  install.packages("RCurl",repos = "http://cran.us.r-project.org")
};

if (!('RJSONIO' %in% rownames(installed.packages()))){
  install.packages("RJSONIO",repos = "http://cran.us.r-project.org")
};

library(ggmap);
library(mapproj);
library(RCurl);
library(RJSONIO);

getGeoData <- function(location, api_key){
  location <- gsub(' ','+',location)
  geo_data <- getURL(paste("https://maps.googleapis.com/maps/api/geocode/json?address=",location,sprintf("&key=%s",api_key), sep=""))
  geo_data <- fromJSON(geo_data)
  str(geo_data)
  return(geo_data$results[[1]]$geometry$location)
}

gc <- getGeoData("Times Square", "AIzaSyAd7Y6Sd8sZ4YBawPBhosHWGAT10K_3DyY"); #, key = "AIzaSyAd7Y6Sd8sZ4YBawPBhosHWGAT10K_3DyY"
str(gc)
#gc <- geocode("Times Square", source = "google" ); #, key = "AIzaSyAd7Y6Sd8sZ4YBawPBhosHWGAT10K_3DyY"
googMap <- get_googlemap(center = as.numeric(gc), zoom = 12, maptype = 'roadmap', color = 'color');

str(gc)
str(googMap)


rxSetComputeContext(sqlcc)
myplots <- rxExec(mapPlot, inDataSource, googMap, timesToRun = 1)
plot(myplots[[1]][["myplot"]]);



