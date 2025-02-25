CREATE DATABASE college;
USE college;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO student 
(rollno, name, marks, grade, city) 
VALUES 
(101, "Sharvari", 78, "C", "Pune"),
(102, "Gayatri", 93, "A", "Mumbai"),
(103, "Suyash", 85, "B", "Mumbai"), 
(104, "Tanmay", 96, "A", "Delhi"),
(105, "Aayush", 82, "B", "Pune"), 
(106, "Rucha", 12, "F", "Delhi");


SELECT name, marks FROM student;
SELECT * FROM student;

SELECT rollno, AVG (marks ) FROM student GROUP BY rollno;

use college;

SELECT * FROM student WHERE marks>80;
SELECT * FROM student WHERE city="Mumbai";

SELECT * FROM student WHERE city="Mumbai" AND marks>80;

SELECT *
FROM student
WHERE marks+10>100;

SELECT * FROM student WHERE city="Pune" OR marks>80;

SELECT * FROM student WHERE marks BETWEEN 80 AND 90;
SELECT *
FROM student
WHERE city in ("Pune", "Delhi");

SELECT * FROM STUDENT 
ORDER BY MARKS DESC
LIMIT 3;

SELECT COUNT(rollno) FROM student;

