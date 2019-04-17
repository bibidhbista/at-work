-- Create a predictive model 
CREATE TABLE CarSpeed ([speed] int not null, [distance] int not null)
INSERT INTO CarSpeed
EXEC sp_execute_external_script
        @language = N'R'
        , @script = N'car_speed <- cars;'
        , @input_data_1 = N''
        , @output_data_1_name = N'car_speed'

Select * from CarSpeed

/*  To actually build the model, you define the formula inside your R code, 
    and pass the data as an input parameter.
*/

-- Create the procedure to generate the model
DROP PROCEDURE IF EXISTS generate_linear_model;
GO
CREATE PROCEDURE generate_linear_model
AS
BEGIN
    EXEC sp_execute_external_script
    @language = N'R'
    , @script = N'lrmodel <- rxLinMod(formula = distance ~ speed, data = CarsData);
        trained_model <- data.frame(payload = as.raw(serialize(lrmodel, connection=NULL)));'
    , @input_data_1 = N'SELECT [speed], [distance] FROM CarSpeed'
    , @input_data_1_name = N'CarsData'
    , @output_data_1_name = N'trained_model'
    WITH RESULT SETS ((model varbinary(max)));
END;
GO



-- Create table to store the model
CREATE TABLE stopping_distance_models (
    model_name varchar(30) not null default('default model') primary key,
    model varbinary(max) not null);


-- Saving the model to a table
INSERT INTO stopping_distance_models (model)
EXEC generate_linear_model;

-- Renaming the model_name to support reruns of the insertion of models
UPDATE stopping_distance_models
SET model_name = 'rxLinMod ' + format(getdate(), 'yyyy.MM.HH.mm', 'en-gb')
WHERE model_name = 'default model'

select * from stopping_distance_models 


/*
working with SQL parameters and R variables in sp_execute_external_script:

1. All SQL parameters mapped to R script must be listed by name in the @params argument.
2. To output one of these parameters, add the OUTPUT keyword in the @params list.
3. After listing the mapped parameters, provide the mapping, line by line, of SQL parameters to R variables, immediately after the @params list.

*/
DECLARE @model varbinary(max), @modelname varchar(30),@mod varbinary(max)
select @model as model,@mod as mod;
EXEC sp_execute_external_script
    @language = N'R'
    , @script = N'
        speedmodel <- rxLinMod(distance ~ speed, CarsData)
        modelbin <- serialize(speedmodel, NULL)
        OutputDataSet <- data.frame(coefficients(speedmodel));str(modelbin)'
    , @input_data_1 = N'SELECT [speed], [distance] FROM CarSpeed'
    , @input_data_1_name = N'CarsData'
    , @params = N'@modelbin varbinary(max) OUTPUT'
    , @modelbin = @model OUTPUT
    WITH RESULT SETS (([Coefficient] float not null));
    --select @model as model,@mod as mod;

-- Save the generated model
--INSERT INTO [dbo].[stopping_distance_models] (model_name, model)
--VALUES ('latest model', @model)

--delete from stopping_distance_models where model_name = 'latest model'

-- Save the generated model
INSERT INTO [dbo].[stopping_distance_models] (model_name, model)
VALUES ('new model', @model)

-- Iris data
DECLARE @species_sql nvarchar(15)
EXEC   sp_execute_external_script  
       @language = N'R'  
     , @script = N'iris_data <- iris; str(iris);'
     , @input_data_1 = N''  
     , @output_data_1_name = N'iris_data'
        
     WITH RESULT SETS (("Sepal.Length" float not null,   
           "Sepal.Width" float not null,  
        "Petal.Length" float not null,   
        "Petal.Width" float not null, "Species" varchar(100))); 

Select @species_sql as [SPECIES]
