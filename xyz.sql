CREATE DATABASE IF NOT EXISTS xyz;
USE xyz;
CREATE TABLE employee_info(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    salary FLOAT
);

INSERT INTO employee_info 
(id, name, salary)
VALUES 
(1,'Adam',25000.00), (2, 'Bob', 30000.00), (3,'Casey', 40000.00);

SELECT * FROM employee_info;