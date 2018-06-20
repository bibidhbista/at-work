-- Enable external scripts
sp_configure 'external scripts enabled', 1;
RECONFIGURE WITH OVERRIDE;  
-- validation
EXEC sp_execute_external_script
  @language =N'R',
  @script=N'OutputDataSet<-InputDataSet',
  @input_data_1 =N'SELECT 1 AS hello'
  WITH RESULT SETS (([hello] int not null));





/* INPUT/OUTPUT COMMANDS WITH R */
CREATE TABLE RTestData ([col1] int not null) ON [PRIMARY]
INSERT INTO RTestData   VALUES (1);
INSERT INTO RTestData   VALUES (10);
INSERT INTO RTestData   VALUES (100) ;
GO

-- Display results
SELECT * from RTestData

-- Getting the same results with R
EXECUTE sp_execute_external_script
      @language = N'R'
    , @script = N' OutputDataSet <- InputDataSet;'
    , @input_data_1 = N' SELECT *  FROM RTestData;'
    WITH RESULT SETS (([NewColName] int NOT NULL));



-- Changing IO variable names (R is Case-Sensitve!)
EXECUTE sp_execute_external_script
  @language = N'R'
  , @script = N' SQL_Out <- SQL_In;'
  , @input_data_1 = N' SELECT 12 as Col;'
  , @input_data_1_name  = N'SQL_In'
  , @output_data_1_name =  N'SQL_Out'
  WITH RESULT SETS (([NewColName] int NOT NULL));


  -- Query using actual R Code
  EXECUTE sp_execute_external_script
    @language = N'R'
   , @script = N' mytextvariable <- c("hello", " ", "world");
       OutputDataSet <- as.data.frame(mytextvariable);'
   , @input_data_1 = N' SELECT 1 as Temp1'
   WITH RESULT SETS (([Col1] char(20) NOT NULL));



/* ALWAYS RETURN R DATA AS A DATA FRAME */
-- These have two different results because of the R Data Structure 
-- str function describes the structure of the return variable
--Example 1
EXECUTE sp_execute_external_script
       @language = N'R'
     , @script = N' mytextvariable <- c("hello", " ", "world"); 
       OutputDataSet <- as.data.frame(mytextvariable);str(OutputDataSet);'
     , @input_data_1 = N' ';
--Example 2
EXECUTE sp_execute_external_script
        @language = N'R'
      , @script = N' OutputDataSet<- data.frame(c("hello"), " ", c("world"));str(OutputDataSet);'
      , @input_data_1 = N'  ';





/* IMPLICIT CONVERSION OF DATA OBJECTS */
-- implicitly converts data objects to matrix multiplicated product(s) :> 4x3 Matrix is returned
EXECUTE sp_execute_external_script
    @language = N'R'
    , @script = N'
        x <- as.matrix(InputDataSet);
        y <- array(12:15);
    OutputDataSet <- as.data.frame(x %*% y);print(x);print (y)'
    , @input_data_1 = N' SELECT [Col1]  from RTestData;'
    WITH RESULT SETS (([Col1] int, [Col2] int, [Col3] int, Col4 int));


-- returns a single value
--produces different results than before because of rules of algebra:> single row matrix X single col matrix
EXECUTE sp_execute_external_script
   @language = N'R'
   , @script = N'
        x <- as.matrix(InputDataSet);
        y <- array(12:14);
   OutputDataSet <- as.data.frame(y %*% x);'
   , @input_data_1 = N' SELECT [Col1]  from RTestData;'
   WITH RESULT SETS (([Col1] int ));



   --Merge or multiply columns of differnt length
   --Remember that a data frame only looks like a table, and is actually a list of vectors.
   --To fill out the data frame, R repeats the elements retrieved from RTestData 
   -- as many times as needed to match the number of elements in the array df1.
   EXECUTE sp_execute_external_script
    @language = N'R'
    , @script = N'
               df1 <- as.data.frame( array(1:6) );
               df2 <- as.data.frame( c( InputDataSet , df1 ));
               OutputDataSet <- df2'
    , @input_data_1 = N' SELECT [Col1]  from RTestData;'
    WITH RESULT SETS (( [fromRtest] int not null, [df1] int not null ));


-- Through T-SQL Query
use AdventureWorksDW2017
SELECT ReportingDate
         , CAST(ModelRegion as varchar(50)) as ProductSeries
         , Amount
           FROM [AdventureWorksDW2017].[dbo].[vTimeSeries]
           WHERE [ModelRegion] = 'M200 Europe'
           ORDER BY ReportingDate ASC
-- Through R external query
EXECUTE sp_execute_external_script
       @language = N'R'
      , @script = N' str(InputDataSet);
      OutputDataSet <- InputDataSet;'
      , @input_data_1 = N'
           SELECT ReportingDate
         , CAST(ModelRegion as varchar(50)) as ProductSeries
         , Amount
           FROM [AdventureWorksDW2017].[dbo].[vTimeSeries]
           WHERE [ModelRegion] = ''M200 Europe''
           ORDER BY ReportingDate ASC;'
WITH RESULT SETS undefined;




/*  USING R FUNCTIONS WITH SQL SERVER DATA */


-- rNORM Function
-- Generates 100 random number so that their mean is 50 and their std deviation is 3!!!!
EXEC sp_execute_external_script
      @language = N'R'
    , @script = N'
         OutputDataSet <- as.data.frame(rnorm(100, mean = 50, sd =3));str(OutputDataSet)'
    , @input_data_1 = N'   ;'
      WITH RESULT SETS (([Density] float NOT NULL));
Go
-- Generate a different set of random numbers through users input
CREATE PROCEDURE MyRNorm (@param1 int, @param2 int, @param3 int)
AS
    EXEC sp_execute_external_script
      @language = N'R'
    , @script = N'
         OutputDataSet <- as.data.frame(rnorm(mynumbers, mymean, mysd));'
    , @input_data_1 = N'   ;'
    , @params = N' @mynumbers int, @mymean int, @mysd int'
    , @mynumbers = @param1
    , @mymean = @param2
    , @mysd = @param3
    WITH RESULT SETS (([Density] float NOT NULL));
-- execute the newly created stored proc
EXEC MyRNorm @param1 = 100,@param2 = 50, @param3 = 5




-- Using R Utility functions for troubleshooting
-- memory.limit() function

EXECUTE sp_execute_external_script
      @language = N'R'
    , @script = N'
        library(utils);
        mymemory <- memory.limit();
        OutputDataSet <- as.data.frame(mymemory);'
    , @input_data_1 = N' ;'
WITH RESULT SETS (([Col1] int not null));