CREATE DATABASE college;

USE college;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender CHAR(1),
    department VARCHAR(50),
    gpa DECIMAL(3,2),
    city VARCHAR(50),
    country VARCHAR(50),
    enrollment_year INT,
    scholarship VARCHAR(3)
);

INSERT INTO students (student_id, name, age, gender, department, gpa, city, country, enrollment_year, scholarship) VALUES
(1, 'Alice Johnson', 20, 'F', 'Computer Science', 3.8, 'New York', 'USA', 2023, 'Yes'),
(2, 'Bob Smith', 22, 'M', 'Business', 3.2, 'Los Angeles', 'USA', 2022, 'No'),
(3, 'Carol Lee', 19, 'F', 'Psychology', 3.5, 'Toronto', 'Canada', 2024, 'Yes'),
(4, 'Daniel Kim', 21, 'M', 'Engineering', 3.9, 'Seoul', 'South Korea', 2021, 'No'),
(5, 'Emma Brown', 23, 'F', 'Economics', 3.1, 'London', 'UK', 2020, 'No'),
(6, 'Faisal Ahmed', 24, 'M', 'Computer Science', 3.7, 'Dubai', 'UAE', 2021, 'Yes'),
(7, 'Grace Miller', 20, 'F', 'Law', 3.3, 'Sydney', 'Australia', 2023, 'No'),
(8, 'Henry Clark', 22, 'M', 'Computer Science', 3.6, 'Chicago', 'USA', 2022, 'Yes'),
(9, 'Irene Gonzalez', 21, 'F', 'Business', 3.4, 'Madrid', 'Spain', 2021, 'No'),
(10, 'Jack Wilson', 25, 'M', 'Engineering', 3.0, 'Berlin', 'Germany', 2019, 'No'),
(11, 'Karen Patel', 20, 'F', 'Psychology', 3.9, 'Mumbai', 'India', 2023, 'Yes'),
(12, 'Liam Johnson', 19, 'M', 'Law', 3.5, 'Dublin', 'Ireland', 2024, 'No'),
(13, 'Maria Silva', 22, 'F', 'Economics', 3.8, 'São Paulo', 'Brazil', 2022, 'Yes'),
(14, 'Noah Evans', 23, 'M', 'Computer Science', 3.6, 'Vancouver', 'Canada', 2020, 'Yes'),
(15, 'Olivia Martin', 21, 'F', 'Business', 3.2, 'Paris', 'France', 2021, 'No'),
(16, 'Peter Zhang', 24, 'M', 'Engineering', 3.7, 'Beijing', 'China', 2019, 'No'),
(17, 'Quinn Davis', 20, 'F', 'Psychology', 3.4, 'Boston', 'USA', 2023, 'Yes'),
(18, 'Rahul Mehta', 22, 'M', 'Economics', 3.1, 'Delhi', 'India', 2022, 'No'),
(19, 'Sarah Wilson', 19, 'F', 'Computer Science', 3.9, 'Auckland', 'New Zealand', 2024, 'Yes'),
(20, 'Tom Baker', 23, 'M', 'Business', 3.0, 'Manchester', 'UK', 2020, 'No'),
(21, 'Uma Nair', 21, 'F', 'Law', 3.6, 'Kochi', 'India', 2021, 'Yes'),
(22, 'Victor Hugo', 24, 'M', 'Engineering', 3.8, 'Mexico City', 'Mexico', 2019, 'Yes'),
(23, 'Wendy Park', 22, 'F', 'Psychology', 3.5, 'Seoul', 'South Korea', 2022, 'No'),
(24, 'Xavier Thomas', 25, 'M', 'Economics', 3.2, 'Cape Town', 'South Africa', 2019, 'No'),
(25, 'Yuki Tanaka', 20, 'F', 'Computer Science', 4.0, 'Tokyo', 'Japan', 2023, 'Yes');

SELECT * FROM STUDENTS;

## SELECT
# SHOW THE STUDENTS NAME AND DEPARTMENT
SELECT NAME, DEPARTMENT FROM STUDENTS;

## WHERE
# DISPLAY ALL COLUMNS FOR STUDENTS FROM INDIA
SELECT * FROM STUDENTS WHERE COUNTRY ="INDIA";

# SHOW THE STUDENTS NAME AND GPA AND GPA GREATER 3.5
SELECT NAME, GPA FROM STUDENTS WHERE GPA>3.5;

## DISTINCT
# SHOW ONLY UNIQUE CONTRIES REPRESENTED BY STUDENTS
SELECT DISTINCT COUNTRY FROM STUDENTS;

# FIND ALL UNIQUE DEPARTMENT THAT OFFER SCHOLARSHIPS
SELECT DISTINCT DEPARTMENT FROM STUDENTS WHERE SCHOLARSHIP='YES';

# LIST ALL UNIQUE COMBINATIONS OF DEPARTMENT AND ENROLLMENT YEAR
SELECT DISTINCT DEPARTMENT, ENROLLMENT_YEAR FROM STUDENTS;

# FIND ALL UNIQUE COMBINATION OF GENDER AND DEPARTMENT
SELECT DISTINCT GENDER, DEPARTMENT FROM STUDENTS;

## ORDER BY
# LIST ALL STUDENT ORDER BY NAME A->Z
SELECT * FROM STUDENTS ORDER BY NAME ASC;

# DISPLAY STUDENTS ORDERED BY DEPARTMENT, THEN GPA DESCENDING
SELECT * FROM STUDENTS ORDER BY DEPARTMENT, GPA DESC;

# SHOW STUDENTS ORDERED BY SCHOLARSHIP FIRST(YES->NO) THEN BY GPA(hIGHEST FIRST)
SELECT NAME, SCHOLARSHIP, GPA FROM STUDENTS ORDER BY SCHOLARSHIP DESC, GPA DESC;

## LIMIT
# LIST TOP 5 STUDENTS WITH HIGHEST GPA
SELECT NAME, GPA FROM STUDENTS LIMIT 5;

# LIST THE TOP 3 STUDENTS HAVING CGPA FROM ENGINEERING DEPT
SELECT NAME, DEPARTMENT, GPA FROM STUDENTS WHERE DEPARTMENT="ENGINEERING" ORDER BY GPA DESC LIMIT 3;

# SHOW ALL STUDENTS ORDERED BY GPA ROUNDED TO NEARST INTEGER
SELECT NAME, GPA FROM STUDENTS ORDER BY ROUND(GPA) DESC;

## OFFSET
# SKIP THE FIRST 5 STUDENTS AND SHOW THE NEXT 5
SELECT * FROM STUDENTS LIMIT 5 OFFSET 5; #THE OFFSET IS SKIP THE ROWS AND STARTS WITH THE NEXT TO THE LIMIT
SELECT * FROM STUDENTS LIMIT 5 OFFSET 20; #THE OFFSET IS SKIP THE ROWS AND STARTS WITH THE NEXT TO THE LIMIT

# GET 6TH-10TH STUDENTS ORDERED BY ENROLLMENT YEAR LATEST FIRST
SELECT * FROM STUDENTS ORDER BY ENROLLMENT_YEAR DESC LIMIT 5 OFFSET 5;
