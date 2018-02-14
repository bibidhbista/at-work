-- Queries related to partition function/schemes

-- This is the most efficient/eloquent one
--paritioned table and index details
SELECT OBJECT_NAME(p.object_id) AS ObjectName,
       i.name AS IndexName,
       p.index_id AS IndexID,
       ds.name AS PartitionScheme,
       p.partition_number AS PartitionNumber,
       fg.name AS FileGroupName,
       prv_left.value AS LowerBoundaryValue,
       prv_right.value AS UpperBoundaryValue,
       CASE pf.boundary_value_on_right
           WHEN 1 THEN
               'RIGHT'
           ELSE
               'LEFT'
       END AS Range,
       p.rows AS Rows
FROM sys.partitions AS p
    JOIN sys.indexes AS i
        ON i.object_id = p.object_id
           AND i.index_id = p.index_id
    JOIN sys.data_spaces AS ds
        ON ds.data_space_id = i.data_space_id
    JOIN sys.partition_schemes AS ps
        ON ps.data_space_id = ds.data_space_id
    JOIN sys.partition_functions AS pf
        ON pf.function_id = ps.function_id
    JOIN sys.destination_data_spaces AS dds2
        ON dds2.partition_scheme_id = ps.data_space_id
           AND dds2.destination_id = p.partition_number
    JOIN sys.filegroups AS fg
        ON fg.data_space_id = dds2.data_space_id
    LEFT JOIN sys.partition_range_values AS prv_left
        ON ps.function_id = prv_left.function_id
           AND prv_left.boundary_id = p.partition_number - 1
    LEFT JOIN sys.partition_range_values AS prv_right
        ON ps.function_id = prv_right.function_id
           AND prv_right.boundary_id = p.partition_number
WHERE OBJECTPROPERTY(p.object_id, 'ISMSShipped') = 0
UNION ALL

--non-partitioned table/indexes

SELECT OBJECT_NAME(p.object_id) AS ObjectName,
       i.name AS IndexName,
       p.index_id AS IndexID,
       NULL AS PartitionScheme,
       p.partition_number AS PartitionNumber,
       fg.name AS FileGroupName,
       NULL AS LowerBoundaryValue,
       NULL AS UpperBoundaryValue,
       NULL AS Boundary,
       p.rows AS Rows
FROM sys.partitions AS p
    JOIN sys.indexes AS i
        ON i.object_id = p.object_id
           AND i.index_id = p.index_id
    JOIN sys.data_spaces AS ds
        ON ds.data_space_id = i.data_space_id
    JOIN sys.filegroups AS fg
        ON fg.data_space_id = i.data_space_id
WHERE OBJECTPROPERTY(p.object_id, 'ISMSShipped') = 0
ORDER BY ObjectName,
         IndexID,
         PartitionNumber;















--To determine if a table is partitioned

SELECT *   
FROM sys.tables AS t   
JOIN sys.indexes AS i   
    ON t.[object_id] = i.[object_id]   
    AND i.[type] IN (0,1)   
JOIN sys.partition_schemes ps   
    ON i.data_space_id = ps.data_space_id   
--WHERE t.name = 'PartitionTable';   
GO  

--To determine the boundary values for a partitioned table

--SELECT t.name AS TableName, i.name AS IndexName, p.partition_number, p.partition_id, i.data_space_id, f.function_id, f.type_desc, r.boundary_id, r.value AS BoundaryValue   
SELECT t.name AS TableName, i.name AS IndexName, p.partition_number, f.type_desc, r.boundary_id,  r.value AS BoundaryValue 
FROM sys.tables AS t  
JOIN sys.indexes AS i  
    ON t.object_id = i.object_id  
JOIN sys.partitions AS p  
    ON i.object_id = p.object_id AND i.index_id = p.index_id   
JOIN  sys.partition_schemes AS s   
    ON i.data_space_id = s.data_space_id  
JOIN sys.partition_functions AS f   
    ON s.function_id = f.function_id  
LEFT JOIN sys.partition_range_values AS r   
    ON f.function_id = r.function_id and r.boundary_id = p.partition_number  
WHERE --t.name = 'PartitionTable' AND 
i.type <= 1  
ORDER BY p.partition_number; 



--To determine the partition column for a partitioned table

SELECT   
    t.[object_id] AS ObjectID   
    , t.name AS TableName   
    , ic.column_id AS PartitioningColumnID   
    , c.name AS PartitioningColumnName   
FROM sys.tables AS t   
JOIN sys.indexes AS i   
    ON t.[object_id] = i.[object_id]   
    AND i.[type] <= 1 -- clustered index or a heap   
JOIN sys.partition_schemes AS ps   
    ON ps.data_space_id = i.data_space_id   
JOIN sys.index_columns AS ic   
    ON ic.[object_id] = i.[object_id]   
    AND ic.index_id = i.index_id   
    AND ic.partition_ordinal >= 1 -- because 0 = non-partitioning column   
JOIN sys.columns AS c   
    ON t.[object_id] = c.[object_id]   
    AND ic.column_id = c.column_id   
--WHERE t.name = 'PartitionTable' ;   
GO  