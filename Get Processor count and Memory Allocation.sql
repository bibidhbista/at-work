-- Scritp to get Processor Info from Registry
EXEC xp_instance_regread
'HKEY_LOCAL_MACHINE',
'HARDWARE\DESCRIPTION\System\CentralProcessor\0',
'ProcessorNameString';
 
-- Script to get CPU and Memory Info
SELECT
 cpu_count AS [Number of Logical CPU]
,hyperthread_ratio
,cpu_count/hyperthread_ratio AS [Number of Physical CPU]
,physical_memory_kb/1048576 AS [Total Physical Memory IN GB]
FROM sys.dm_os_sys_info OPTION (RECOMPILE);


