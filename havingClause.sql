USE college;

SELECT count(name), city 
FROM student
GROUP BY city 
HAVING max(marks)>90;

SELECT city
FROM student
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks)>90;