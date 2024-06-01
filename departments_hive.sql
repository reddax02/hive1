DROP DATABASE IF EXISTS hr_db CASCADE;

--Create new database.
CREATE DATABASE IF NOT EXISTS hr_db;


--use database.
USE hr_db;

--Creates employees table
 CREATE TABLE departments1 (
    department_id INT,
    department_name STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;



--Load data -(file is in your local machine Linux )
LOAD DATA LOCAL INPATH '/home/maria_dev/dapartments.csv' INTO TABLE departments1;

--DESCRIBE departments
DESCRIBE departments1;

--SELECT data
SELECT * FROM departments1;

--total number of records in the departments table
SELECT COUNT(*) FROM departments1;
