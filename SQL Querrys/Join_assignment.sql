
create database scl;

USE scl;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    student_id INT,
    course_name VARCHAR(50)
);

INSERT INTO students (student_id, student_name)
VALUES 
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'David');  -- David has no course

INSERT INTO courses (course_id, student_id, course_name)
VALUES
(101, 1, 'Math'),
(102, 2, 'Science'),
(103, 5, 'English');  -- student_id = 5 doesn’t exist in students


## Write an INNER JOIN query to display all students who are enrolled in a course, along with the course name.
SELECT s.student_id,
       s.student_name,
       c.course_name
FROM students s
INNER JOIN courses c
ON s.student_id = c.student_id;

## Write a LEFT JOIN query to display all students and their courses, including students who are not enrolled in any course.
SELECT s.student_id,
       s.student_name,
       c.course_name
FROM students s
LEFT JOIN courses c
ON s.student_id = c.student_id;

## Write a RIGHT JOIN query to display all courses and the students enrolled in them, including courses assigned to nonexistent students.
SELECT s.student_id,
       s.student_name,
       c.course_name
FROM students s
RIGHT JOIN courses c
ON s.student_id = c.student_id;

## Write a FULL JOIN query to display all students and all courses, matching them where possible.
SELECT s.student_id,
       s.student_name,
       c.course_name
FROM students s
LEFT JOIN courses c
ON s.student_id = c.student_id
UNION
SELECT s.student_id,
       s.student_name,
       c.course_name
FROM students s
RIGHT JOIN courses c
ON s.student_id = c.student_id;

