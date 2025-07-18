create DATABASE college_db;
use college_db;

create table student(
id int primary key,
name varchar(50)
);

INSERT INTO student (id, name) values (101,'Monica'), (102, 'Chandler'), (103,'Ross');

create table course(
	id int primary key,
    course varchar(50)
);

insert into course (id, course) values (103, 'AI'), (102,'DS'), (101 , 'DBMS');

select * from student;
select * from course;

#inner join
SELECT * FROM student 
INNER JOIN course 
ON student.id = course.id;

insert into student (id, name) values (104, 'Rachel'), (105, 'Phoebe'), (106, 'Joey');
insert into course (id, course) values (107, 'DA'), (108,'Python'), (109 , 'SQL');

#left outer join
SELECT * FROM student as s
LEFT JOIN course as c
ON s.id = c.id;

#right outer join
SELECT * FROM student as s
RIGHT JOIN course as c
ON s.id = c.id;

#full join
SELECT * FROM student as s
LEFT JOIN course as c
ON s.id = c.id 
UNION
SELECT * FROM student as s
RIGHT JOIN course as c
ON s.id = c.id;

#left exclusive join
SELECT * FROM student as s
LEFT JOIN course as c
ON s.id = c.id 
where c.id is NULL;

#right exclusive join
SELECT * FROM student as s
RIGHT JOIN course as c
ON s.id = c.id 
where s.id is NULL;

#full exclusive join
SELECT * FROM student as s
LEFT JOIN course as c
ON s.id = c.id 
where c.id is NULL  
UNION
SELECT * FROM student as s
RIGHT JOIN course as c
ON s.id = c.id
where s.id is NULL;

#self join
create table employee(
id int primary key,
name varchar(50),
manager_id int
);

insert into employee (id, name, manager_id) values (101, "adam" , 103), (102, "adam" , 104),(103, "casey" , null),(104, "donald" , 103);

select * from employee;

select a.name as manager_name, b.name 
from employee as a 
JOIN employee as b
ON a.id = b.manager_id;