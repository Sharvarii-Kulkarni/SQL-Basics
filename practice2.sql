USE college;

CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(50)
);

CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id) references dept(id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

INSERT INTO dept values (101, "English"), (102, "IT");

SELECT * FROM dept;

INSERT INTO teacher values (1, "Adam", 101), (2, "Eve", 102);
SELECT * from teacher;

UPDATE dept 
SET id = 103
where id = 102;

