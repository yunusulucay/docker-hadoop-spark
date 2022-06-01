-- This is a comment line
-- Loading csv file using PigStorage(',') as side describe the features' types.
-- Note: This hdfs path is my path. I have created -> /user/root path in root hdfs path.
student = LOAD 'hdfs:///user/root/basic.csv' using PigStorage(',') as (firstname:chararray, lastname:chararray, age:int, city:chararray);

-- Ordering the csv file by Age descending order
student_order = ORDER student BY age DESC;

-- After ordering selecting only 4 elements.
student_limit = LIMIT student_order 4;

/* -- Comment section
-- This is used to show the final result.
DUMP student_limit;
*/

-- To save file.
STORE student_limit into '/user/root/csv' using PigStorage('\t','-schema');

/* 
-- After saving the file in terminal ->
hadoop fs -rm /user/root/csv/.pig_schema
hadoop fs -getmerge /user/root/csv ./output.csv
*/
