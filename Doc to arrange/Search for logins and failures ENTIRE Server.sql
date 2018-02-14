DECLARE @TSQL NVARCHAR(2000)
DECLARE @lC INT

CREATE TABLE #templog
  (
     logdate     DATETIME,
     processinfo NVARCHAR(50),
     [text]      NVARCHAR(max)
  )

CREATE TABLE #logf
  (
     archivenumber INT,
     logdate       DATETIME,
     logsize       INT
  )

INSERT INTO #logf
EXEC Sp_enumerrorlogs

SELECT @lC = Min(archivenumber)
FROM   #logf

WHILE @lC IS NOT NULL
  BEGIN
      INSERT INTO #templog
      EXEC Sp_readerrorlog
        @lC

      SELECT @lC = Min(archivenumber)
      FROM   #logf
      WHERE  archivenumber > @lC
  END

--Failed login counts. Useful for security audits.
SELECT 'Failed - '
       + CONVERT(NVARCHAR(5), Count(text))
       + ' attempts' AS [Login Attempt],
       text          AS Details
FROM   #templog
WHERE  processinfo = 'Logon'
       AND text LIKE '%failed%'
GROUP  BY text

--Find Last Successful login. Useful to know before deleting "obsolete" accounts.
SELECT DISTINCT 'Successful - Last login at ('
                + CONVERT(NVARCHAR(64), Max(logdate)) + ')' AS [Login Attempt],
                text                                        AS Details
FROM   #templog
WHERE  processinfo = 'Logon'
       AND text LIKE '%succeeded%'
       AND text NOT LIKE '%NT AUTHORITY%'
GROUP  BY text

DROP TABLE #templog

DROP TABLE #logf
