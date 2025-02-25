CREATE DATABASE college;

USE college;

CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);
INSERT INTO student VALUES(1, "A", 21);
INSERT INTO student VALUES(2, "B", 22);

SELECT * FROM student;