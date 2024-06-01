DROP DATABASE IF EXISTS hr_db CASCADE;

--Create new database.
CREATE DATABASE IF NOT EXISTS hr_db;


--use database
USE hr_db;

--Creates employees table
CREATE TABLE employees (
    employee_id INT,
    name STRING,
    department_id INT,
    salary INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;



--Load data -(file is in your local machine Linux )
LOAD DATA LOCAL INPATH '/home/maria_dev/employees.csv' INTO TABLE employees;

--DESCRIBE employees
DESCRIBE employees;

--SELECT data
SELECT * FROM employees;

--total number of records in the employees table
SELECT COUNT(*) FROM employees;
