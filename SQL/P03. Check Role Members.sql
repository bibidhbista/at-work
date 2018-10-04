-- query role members

SELECT dp.name , us.name  
FROM sys.sysusers us right 
JOIN  sys.database_role_members rm ON us.uid = rm.member_principal_id
JOIN sys.database_principals dp ON rm.role_principal_id =  dp.principal_id


-- QUERY EFFECTIVE PERMISSIONS THROUGH ROLE

WITH    perms_cte as
(
        select USER_NAME(p.grantee_principal_id) AS principal_name,
                dp.principal_id,
                dp.type_desc AS principal_type_desc,
                p.class_desc,
                OBJECT_NAME(p.major_id) AS object_name,
                p.permission_name,
                p.state_desc AS permission_state_desc
        from    sys.database_permissions p
        inner   JOIN sys.database_principals dp
        on     p.grantee_principal_id = dp.principal_id
)
--role members
SELECT rm.member_principal_name, rm.principal_type_desc, p.class_desc, 
    p.object_name, p.permission_name, p.permission_state_desc,rm.role_name
FROM    perms_cte p
right outer JOIN (
    select role_principal_id, dp.type_desc as principal_type_desc, 
   member_principal_id,user_name(member_principal_id) as member_principal_name,
   user_name(role_principal_id) as role_name--,*
    from    sys.database_role_members rm
    INNER   JOIN sys.database_principals dp
    ON     rm.member_principal_id = dp.principal_id
) rm
ON     rm.role_principal_id = p.principal_id
WHERE  p.object_name='cm_AndroidAppVersions'
order by 1




-- Detailed/Filtered query for the same purpose
--use IADOC_CorrCare_Dev  --DOCSecurity_Test
--go

WITH RoleMembers (member_principal_id, role_principal_id) 
AS 
(
  SELECT 
   rm1.member_principal_id, 
   rm1.role_principal_id
  FROM sys.database_role_members rm1 (NOLOCK)
   UNION ALL
  SELECT 
   d.member_principal_id, 
   rm.role_principal_id
  FROM sys.database_role_members rm (NOLOCK)
   INNER JOIN RoleMembers AS d 
   ON rm.member_principal_id = d.role_principal_id
)
select distinct rp.name as database_role, mp.name as database_userl
from RoleMembers drm
  join sys.database_principals rp on (drm.role_principal_id = rp.principal_id)
  join sys.database_principals mp on (drm.member_principal_id = mp.principal_id)
where rp.name = 'devteam'
and mp.name in ('atg\TarunK','atg\TylerL','atg\NirojK','atg\AyyappaK','atg\GreeshmaK','atg\RobertF')

order by rp.name