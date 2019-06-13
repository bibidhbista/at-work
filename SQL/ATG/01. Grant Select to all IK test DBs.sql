use master
select 
'
USE '+D.NAME+'
GO
IF NOT EXISTS(SELECT * FROM SYS.database_principals WHERE NAME =''CCA\GREESHMAK'')
BEGIN
CREATE USER [CCA\GreeshmaK] FROM LOGIN [CCA\GreeshmaK]
END

IF NOT EXISTS (select top 1 role_principal_id from sys.database_role_members where user_name(role_principal_id) =''DevTeam'')
BEGIN
CREATE ROLE DevTeam
END
ALTER ROLE DevTeam ADD MEMBER [CCA\GreeshmaK]
ALTER ROLE db_datareader ADD MEMBER DevTeam

IF NOT EXISTS(SELECT * FROM SYS.database_principals WHERE NAME =''CCA\StevenH'')
BEGIN
CREATE USER [CCA\StevenH] FROM LOGIN [CCA\StevenH]
END
ALTER ROLE DevTeam ADD MEMBER [CCA\StevenH]

IF NOT EXISTS(SELECT * FROM SYS.database_principals WHERE NAME =''CCA\TrangT'')
BEGIN
CREATE USER [CCA\TrangT] FROM LOGIN [CCA\TrangT]
END
ALTER ROLE DevTeam ADD MEMBER [CCA\TrangT]

'
from sys.databases D where name like '%InmateKiosk%'