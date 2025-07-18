use college;

CREATE VIEW VIEW1 AS 
SELECT name, rollno,marks FROM student;

SELECT * FROM VIEW1 where marks>90;