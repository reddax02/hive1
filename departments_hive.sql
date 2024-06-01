DROP DATABASE IF EXISTS hr_db CASCADE;

--Create new database.
CREATE DATABASE IF NOT EXISTS hr_db;


--use database.
USE hr_db;

--Creates employees table
CREATE TABLE IF NOT EXISTS departments (
    department_name STRING,
    department_id INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;



--Load data -(file is in your local machine Linux )
LOAD DATA LOCAL INPATH '/home/maria_dev/employees.csv' INTO TABLE departments;

--DESCRIBE departments
DESCRIBE departments;

--SELECT data
SELECT * FROM departments;

--total number of records in the departments table
SELECT COUNT(*) FROM departments;
