USE balasuriya_db;

CREATE TABLE students(
student_id INT PRIMARY KEY,
name VARCHAR(50));

CREATE TABLE enrollments(
enrollment_id INT PRIMARY KEY, 
student_id INT, 
course VARCHAR(20),
FOREIGN KEY (student_id) references students(student_id)
);

insert into students(student_id, name) 
values (101,'balamurugan'),
(102,'balasuriya'),
(103,'dhanush'),
(104,'dhanushkumar'),
(105,'nanthakumar'),
(106,'kishore'),
(107,'Keerthi');

insert into enrollments(enrollment_id, student_id, course) values 
(5001,101,'cs'),
(5002,102,'ai'),
(5003,103,'python'),
(5004,104,'java'),
(5005,105,'cse'),
(5006,106,'uiux'),
(5007,107,'cse');

 SELECT * FROM STUDENTS;
 
  SELECT * FROM enrollments;