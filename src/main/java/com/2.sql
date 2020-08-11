CREATE TABLE employee(
id INT PRIMARY KEY AUTO_INCREMENT,
NAME VARCHAR(50),
age INT,
telephone VARCHAR(11),
job_name VARCHAR(50)
)
ALTER TABLE employee ADD sex CHAR(1);
ALTER TABLE employee MODIFY sex CHAR(1) AFTER age;
CREATE TABLE dept(
id INT PRIMARY KEY AUTO_INCREMENT,
job_name VARCHAR(50),
job_miaoshu VARCHAR(50)
)
SELECT CONCAT(LEFT(telephone,3),'****',RIGHT(telephone,3)) AS telephone FROM employee;
SELECT u.`job_name`,COUNT(u.id) FROM employee u GROUP BY u.`job_name`;
SELECT u.`job_name`,MAX(age) FROM employee u GROUP BY u.`job_name`;
SELECT * FROM employee WHERE telephone LIKE '%891%';