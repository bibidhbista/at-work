/*
	Purpose: This script updates Attachment, Library, and Logging paths in
		 a database moved to another server or used as a test database
		 on the same server as the production database.

	Usage:	 Replace the paths below with Dev system folder paths and run
		 script against the dev copy of the database.  Do this before
		 creating a connection to the database through connection manager.
*/
sp_change_users_login 'update_one', 'sysdba', 'sysdba'
go

-- update attachment path
UPDATE sysdba.BRANCHOPTIONS SET AttachmentPath = '\\[TEST SALESLOGIX SHARE]\Documents' 
WHERE SiteCode = (SELECT PrimaryServer FROM sysdba.SYSTEMINFO WHERE SystemInfoID = 'Primary')

-- update library path
UPDATE sysdba.BRANCHOPTIONS SET SalesLibraryPath = '\\[TEST SALESLOGIX SHARE]\Library' 
WHERE SiteCode = (SELECT PrimaryServer FROM sysdba.SYSTEMINFO WHERE SystemInfoID = 'Primary') 

-- update logging path path
UPDATE sysdba.SYNCSERVER SET ServerPath = '\\[TEST SALESLOGIX SHARE]' 
WHERE SiteCode =(SELECT PrimaryServer FROM sysdba.SYSTEMINFO WHERE SystemInfoID = 'Primary') 

-- remove sync service definition file
DELETE FROM sysdba.SYNCSERVICEFILE 

-- remove the sync transfer profile
DELETE FROM sysdba.SYNCTRANSFER 

