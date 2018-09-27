declare @val varchar(200)

exec xp_regread @root_key = 'HKEY_LOCAL_MACHINE'
, @key = 'SYSTEM\ControlSet001\Services\MSSQLServer'
, @valuename = 'ObjectName'
, @value = @val output

select @val