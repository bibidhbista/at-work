

CREATE PROCEDURE [dbo].[Blocking_s]     

	@DB VARCHAR(50) = NULL,

	@Start datetime2 = NULL

AS    



IF @Start IS NULL

BEGIN

	SELECT @Start = dateadd(day,-1, cast(getdate() as date))

END

DECLARE @Stop datetime2 = dateadd(day,1, @Start)



SELECT *

FROM Blocking

WHERE [timestamp] >= @Start AND [timestamp] < @Stop AND

	CASE WHEN @DB IS NULL THEN 1 ELSE	

		CASE WHEN database_name = @DB THEN 1 ELSE 0 END END = 1

ORDER BY database_name ASC, [timestamp] ASC
