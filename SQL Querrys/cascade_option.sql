CREATE TABLE students(
student_id INT PRIMARY KEY, 
name VARCHAR(50));


CREATE TABLE enrollments(
enrollment_id INT PRIMARY KEY, 
student_id INT, 
course VARCHAR(20), 
FOREIGN KEY (student_id) references students(student_id) 
ON DELETE CASCADE 
ON UPDATE CASCADE);
 
insert into students(student_id, name) values 
(101,'balamurugan'),
(102,'balasuriya'),
(103,'dhanush'),
(104,'dhanushkumar'),
(105,'nanthakumar');
 
insert into enrollments(enrollment_id, student_id, course) values 
(5001,101,'cs'),
(5002,102,'ai'),
(5003,103,'python'),
(5004,104,'java'),
(5005,105,'cse');

 
DELETE FROM students WHERE student_id=103;
 
SELECT * FROM students;
SELECT * FROM enrollments;

UPDATE students
SET student_id=103
WHERE student_id=104;

SELECT * FROM students;
SELECT * FROM enrollments;

