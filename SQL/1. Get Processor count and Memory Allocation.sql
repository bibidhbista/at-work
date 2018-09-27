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




-- Current Mem Allocation
SELECT 
  physical_memory_in_use_kb/1024 AS sql_physical_memory_in_use_MB, 
    large_page_allocations_kb/1024 AS sql_large_page_allocations_MB, 
    locked_page_allocations_kb/1024 AS sql_locked_page_allocations_MB,
    virtual_address_space_reserved_kb/1024 AS sql_VAS_reserved_MB, 
    virtual_address_space_committed_kb/1024 AS sql_VAS_committed_MB, 
    virtual_address_space_available_kb/1024 AS sql_VAS_available_MB,
    page_fault_count AS sql_page_fault_count,
    memory_utilization_percentage AS sql_memory_utilization_percentage, 
    process_physical_memory_low AS sql_process_physical_memory_low, 
    process_virtual_memory_low AS sql_process_virtual_memory_low
FROM sys.dm_os_process_memory;  





-- Set Max Server Memory or Memory Cap
EXEC sp_configure 'show advanced options', 1;  
GO  
RECONFIGURE;  
GO  
sp_configure 'max server memory', 12288;  
GO  
RECONFIGURE;  
GO  
EXEC sp_configure 'show advanced options', 0;  
GO  
RECONFIGURE;  




-- Validate changed config

SELECT
 cpu_count AS [Number of Logical CPU]
,hyperthread_ratio
,cpu_count/hyperthread_ratio AS [Number of Physical CPU]
,physical_memory_kb/1048576 AS [Total Physical Memory IN GB]
FROM sys.dm_os_sys_info OPTION (RECOMPILE)
UNION

SELECT  physical_memory_in_use_kb/1024 AS sql_physical_memory_in_use_MB FROM sys.dm_os_process_memory







