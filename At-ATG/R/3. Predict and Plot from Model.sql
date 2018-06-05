-- Create new table for car speeds because the previous table was from 1920 and had limited data
CREATE TABLE [dbo].[NewCarSpeed]([speed] [int] NOT NULL,
    [distance] [int]  NULL) ON [PRIMARY]
GO
INSERT [dbo].[NewCarSpeed] (speed)
VALUES (40),  (50),  (60), (70), (80), (90), (100)


use BBista_R_Test
SELECT * from stopping_distance_models



/*
    Predict stopping distance
    To get predictions based on one specific model, you must write a SQL script that does the following:
        1. Gets the model you want
        2. Gets the new input data
        3. Calls an R prediction function that is compatible with that model
*/
DECLARE @speedmodel_sqlVar varbinary(max) = (SELECT model FROM [dbo].[stopping_distance_models] WHERE model_name = 'latest model');

EXEC sp_execute_external_script
    @language = N'R'
    , @script = N'
            current_model <- unserialize(as.raw(speedmodel_RVar));
            newCarSpeed <- data.frame(NewCarData);
            predicted.distance <- rxPredict(current_model, newCarSpeed);
            str(predicted.distance);
            str(newCarSpeed);
            OutputDataSet <- cbind(newCarSpeed, ceiling(predicted.distance));
            '
    , @input_data_1 = N' SELECT speed FROM [dbo].[NewCarSpeed] '
    , @input_data_1_name = N'NewCarData'
    , @params = N'@speedmodel_RVar varbinary(max)'
    , @speedmodel_RVar = @speedmodel_sqlVar
WITH RESULT SETS (([new_speed] INT, [predicted_distance] INT))
 



-- Perform scoring in parallel
-- create required table and insert rand data
Create Table HugeTableofCarSpeeds(
    speed float not null,
    distance float not null
)
Insert into HugeTableofCarSpeeds values ((ROUND(Rand(CHECKSUM(NEWID())) * (10), 1)*3),(ROUND(Rand(CHECKSUM(NEWID())) * (10), 1)*3))
go 10000

select abs(checksum(NEWID()))

select * from HugeTableofCarSpeeds

DECLARE @speedmodel varbinary(max) = (select model from [dbo].[stopping_distance_models] where model_name = 'latest model');
EXEC sp_execute_external_script
    @language = N'R'
    , @script = N'
            current_model <- unserialize(as.raw(speedmodel));
            new <- data.frame(NewCarData);
            predicted.distance <- rxPredict(current_model, new);
            OutputDataSet <- cbind(new, ceiling(predicted.distance));
            '
    , @input_data_1 = N'SELECT [speed] FROM [dbo].[HugeTableofCarSpeeds]'
    , @input_data_1_name = N'NewCarData'
    , @parallel = 1
    , @params = N'@speedmodel varbinary(max)'
    , @speedmodel = @speedmodel
WITH RESULT SETS (([new_speed] float, [predicted_distance] float))