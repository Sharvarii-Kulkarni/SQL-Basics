USE college;

SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET grade = "O"
where grade = "A";

SELECT * FROM student;

UPDATE student
SET marks = 92
WHERE rollno = 105;

UPDATE student
SET marks = marks +1;

SELECT * FROM student;

DELETE FROM student
WHERE marks < 33;
