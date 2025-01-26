CREATE DATABASE infotech_io;
USE infotech_io;

CREATE TABLE employee (
emp_id INT PRIMARY KEY,
emp_name VARCHAR(100),
job_tital VARCHAR(100),
department VARCHAR(100),
gender Varchar(100),
country VARCHAR(100),
Annual_salary INT NOT NULL
);


INSERT INTO employee
(emp_id,emp_name,job_tital,department,gender,country,Annual_salary)
VALUES
(1012,"Emily Davis","Sr.Manger","IT","Female","United States",99973),
(1013,"Theodore Dinh","Technical Architect","IT","Female","United States",10000),
(1014,"Luna Sanders","Director","Finance","Male","United States",99973),
(1015,"Penelope Jordan","Computer Systems Manager","IT","Male","United States",80000),
(1016,"Austin Vo","Sr. Analyst","Finance","Female","United States",41000),
(1017,"Joshua Gupta","Account Representative","Sales","Male","United States",88973),
(1018,"Ruby Barnes","Manager","IT","Male","United States",90973),
(1019,"Luke Martin","Analyst","Finance","Female","United States",60973),
(1020,"Easton Bailey","Manager","Accounting","Female","United States",10973),
(1021,"Madeline Walker","Sr. Analyst","Finance","Female","United States",50000),
(1022,"Savannah Ali","Sr.Manger","Human Resources","Male","United States",65973),
(1023,"Camila Rogers","Controls Engineer","Engineering","Female","United States",10973),
(1024,"Eli Jones","Manager","Human Resources","Male","United States",99000),
(1025,"Everleigh Ng","Sr.Manger","Finance","Female","United States",99988),
(1026,"Robert Yang","Sr.Analyst","Accounting","Male","United States",95000),
(1027,"Isabella Xi","Vice President","Marketing","Female","United States",50000),
(1028,"Bella Powell","Director","Finance","Female","United States",80000),
(1029,"Camila Silva","Sr.Manger","Marketing","Female","United States",50000),
(1030,"David Barnes","Director","IT","Male","United States",90000),
(1031,"Adam Dang","Director","Sales","Male","United States",60000);

SELECT * FROM employee;

SELECT * FROM employee WHERE department = "IT";
SELECT * FROM employee WHERE Annual_salary > 70000;

SELECT * FROM employee WHERE department = "Finance" And gender ="Female";
SELECT * FROM employee WHERE Annual_salary > 90000 OR job_tital = "Sr. Analyst";

SELECT * FROM employee WHERE Annual_salary BETWEEN 50000 AND 75000;

SELECT * FROM employee WHERE department IN ("Accounting","IT");

SELECT * FROM employee LIMIT 5;

SELECT * FROM employee ORDER BY emp_name;

SELECT * FROM employee ORDER BY emp_name DESC;

SELECT COUNT(emp_name) FROM employee;

SELECT MAX(Annual_salary) FROM employee;

SELECT MIN(Annual_salary) FROM employee;

SELECT SUM(Annual_salary) FROM employee;

SELECT AVG(Annual_salary) FROM employee;

SELECT emp_name, COUNT(job_tital) FROM employee GROUP BY emp_name;

SELECT COUNT(emp_name),department
 FROM employee
 GROUP BY department
 HAVING Max(Annual_salary) > 85000;

UPDATE employee
SET Annual_salary = 69000
WHERE Annual_salary = 10000;

SELECT * FROM employee;





