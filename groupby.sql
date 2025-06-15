USE college;

SELECT city 
FROM student
GROUP BY city;

SELECT city, COUNT(rollno) 
FROM student
GROUP BY city;

SELECT city,name,  COUNT(rollno) 
FROM student
GROUP BY city,name;

SELECT city, AVG(marks) 
FROM student
GROUP BY city
ORDER BY city ASC;

SELECT grade, count(rollno) 
FROM student
GROUP BY grade
ORDER BY grade;

SELECT city, avg(marks)
FROM student
GROUP BY city
ORDER BY AVG(marks)
