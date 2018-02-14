-- Create DB for demo
CREATE DATABASE BBista_PageSplitDemo;
 GO
 USE BBista_PageSplitDemo;
 GO 
 -- Create Table
CREATE TABLE PageSplit (c1 INT, c2 CHAR (100));
 CREATE CLUSTERED INDEX PageSplit_CL ON PageSplit (c1);
 GO 



 -- Insert values skipping the 30th one:
 INSERT INTO PageSplit VALUES (1, 'a');
 INSERT INTO PageSplit VALUES (2, 'a');
 INSERT INTO PageSplit VALUES (3, 'a');
 INSERT INTO PageSplit VALUES (4, 'a');
 INSERT INTO PageSplit VALUES (6, 'a');
 INSERT INTO PageSplit VALUES (7, 'a');
 INSERT INTO PageSplit VALUES (8, 'a');
 INSERT INTO PageSplit VALUES (9, 'a');
 INSERT INTO PageSplit VALUES (10, 'a');
 INSERT INTO PageSplit VALUES (11, 'a');
 INSERT INTO PageSplit VALUES (12, 'a');
 INSERT INTO PageSplit VALUES (13, 'a');
 INSERT INTO PageSplit VALUES (14, 'a');
 INSERT INTO PageSplit VALUES (15, 'a');
 INSERT INTO PageSplit VALUES (16, 'a');
 INSERT INTO PageSplit VALUES (17, 'a');
 INSERT INTO PageSplit VALUES (18, 'a');
 INSERT INTO PageSplit VALUES (19, 'a');
 INSERT INTO PageSplit VALUES (20, 'a');
 INSERT INTO PageSplit VALUES (21, 'a');
 INSERT INTO PageSplit VALUES (22, 'a');
 INSERT INTO PageSplit VALUES (23, 'a');
 INSERT INTO PageSplit VALUES (24, 'a');
 INSERT INTO PageSplit VALUES (25, 'a');
 INSERT INTO PageSplit VALUES (26, 'a');
 INSERT INTO PageSplit VALUES (27, 'a');
 INSERT INTO PageSplit VALUES (28, 'a');
 INSERT INTO PageSplit VALUES (29, 'a');
 INSERT INTO PageSplit VALUES (31, 'a');
 INSERT INTO PageSplit VALUES (32, 'a');
 INSERT INTO PageSplit VALUES (33, 'a');
 INSERT INTO PageSplit VALUES (34, 'a');
 INSERT INTO PageSplit VALUES (35, 'a');
 INSERT INTO PageSplit VALUES (36, 'a');
 INSERT INTO PageSplit VALUES (37, 'a');
 INSERT INTO PageSplit VALUES (38, 'a');
 INSERT INTO PageSplit VALUES (39, 'a');
 INSERT INTO PageSplit VALUES (40, 'a');
 INSERT INTO PageSplit VALUES (41, 'a');
 INSERT INTO PageSplit VALUES (41, 'a');
 INSERT INTO PageSplit VALUES (42, 'a');
 INSERT INTO PageSplit VALUES (43, 'a');
 INSERT INTO PageSplit VALUES (44, 'a');
 INSERT INTO PageSplit VALUES (45, 'a');
 INSERT INTO PageSplit VALUES (46, 'a');
 INSERT INTO PageSplit VALUES (47, 'a');
 INSERT INTO PageSplit VALUES (48, 'a');
 INSERT INTO PageSplit VALUES (49, 'a');
 INSERT INTO PageSplit VALUES (50, 'a');
 INSERT INTO PageSplit VALUES (51, 'a');
 INSERT INTO PageSplit VALUES (52, 'a');
 INSERT INTO PageSplit VALUES (53, 'a');
 INSERT INTO PageSplit VALUES (54, 'a');
 INSERT INTO PageSplit VALUES (55, 'a');
 INSERT INTO PageSplit VALUES (56, 'a');
 INSERT INTO PageSplit VALUES (57, 'a');
 INSERT INTO PageSplit VALUES (58, 'a');
 INSERT INTO PageSplit VALUES (59, 'a');
 INSERT INTO PageSplit VALUES (60, 'a');
 INSERT INTO PageSplit VALUES (61, 'a');
 INSERT INTO PageSplit VALUES (62, 'a');
 INSERT INTO PageSplit VALUES (63, 'a');
 INSERT INTO PageSplit VALUES (64, 'a');
 INSERT INTO PageSplit VALUES (65, 'a');
 INSERT INTO PageSplit VALUES (66, 'a');
 INSERT INTO PageSplit VALUES (67, 'a');
 INSERT INTO PageSplit VALUES (68, 'a');
 INSERT INTO PageSplit VALUES (69, 'a');
 INSERT INTO PageSplit VALUES (70, 'a');
 INSERT INTO PageSplit VALUES (71, 'a');
 GO 


-- insert the next value (which is 72) and check how many log this will generate:  log bytes used=356

BEGIN TRAN
 INSERT INTO PageSplit VALUES (72, 'a');
 GO 

SELECT [database_transaction_log_bytes_used] FROM sys.dm_tran_database_transactions          
 WHERE [database_id] = DB_ID ('BBista_PageSplitDemo');
 GO 


 --commit the transaction and try to insert the missing 30th value:              log bytes used =6756 almost 19X than 72


COMMIT TRAN
 GO 

BEGIN TRAN
 INSERT INTO PageSplit VALUES (30, 'a');
 GO 

SELECT [database_transaction_log_bytes_used] FROM sys.dm_tran_database_transactions
 WHERE [database_id] = DB_ID ('BBista_PageSplitDemo');
 GO 
