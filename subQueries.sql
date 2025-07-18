use college;

select * from student;



select name,marks from student where marks > (select avg(marks) from student);


select name from student where rollno IN (select rollno from student where rollno%2=0);

#max marks of students from mumbai
select MAX(marks) from (select * from student where city="Mumbai") as temp; 