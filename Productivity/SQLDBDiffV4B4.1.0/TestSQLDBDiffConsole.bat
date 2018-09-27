REM Example 1 
REM SQLDBDiffconsole.exe localhost source NULL NULL Y localhost Target NULL NULL Y null CompareResult.txt null 

REM Example 2 Compare + sync script 
REM SQLDBDiffconsole.exe localhost source NULL NULL Y localhost Target NULL NULL Y null CompareResult.txt SyncScript.sql 

REM Example 3 Compare + sync script + use specified config file 
SQLDBDiffconsole.exe DELL-PC\SQL2012 AdventureWorks NULL NULL Y DELL-PC\SQL2008 AdventureWorksLT2008 NULL NULL Y SqlDbDiff.XML CompareResult.txt SyncScript.sql 

pause
