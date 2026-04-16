USE joins;

CREATE TABLE students (
  student_id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  gender ENUM('M','F'),
  age INT,
  city VARCHAR(50),
  email VARCHAR(100),
  phone VARCHAR(20),
  admission_year INT,
  course_id INT
);

INSERT INTO students
(first_name, last_name, gender, age, city, email, phone, admission_year, course_id)
VALUES
('John', 'Doe', 'M', 21, 'New York', 'john@example.com', '555-1111', 2023, 1),
('Jane', 'Smith', 'F', 22, 'Boston', 'jane@example.com', '555-2222', 2022, 2),
('Alex', 'Brown', 'M', 20, 'Chicago', 'alex@example.com', '555-3333', 2023, 3),
('Emily', 'Clark', 'F', 23, 'Dallas', 'emily@example.com', '555-4444', 2021, 4),
('Daniel', 'Adams', 'M', 24, 'Miami', 'daniel@example.com', '555-5555', 2020, 5),
('Sophia', 'Johnson', 'F', 21, 'Seattle', 'sophia@example.com', '555-6666', 2023, 6),
('Liam', 'Taylor', 'M', 22, 'Denver', 'liam@example.com', '555-7777', 2022, 7),
('Olivia', 'Martinez', 'F', 20, 'Houston', 'olivia@example.com', '555-8888', 2023, 8),
('Noah', 'Walker', 'M', 23, 'San Diego', 'noah@example.com', '555-9999', 2021, 9),
('Ava', 'Lopez', 'F', 19, 'Austin', 'ava@example.com', '555-0000', 2024, 10);


CREATE TABLE courses (
  course_id INT PRIMARY KEY AUTO_INCREMENT,
  course_name VARCHAR(100),
  department VARCHAR(50),
  duration_months INT,
  credits INT,
  instructor VARCHAR(100),
  room_no VARCHAR(10),
  schedule VARCHAR(50),
  start_date DATE,
  fee DECIMAL(10,2)
  FOREIGN KEY (course_id) REFERENCES students(course_id)
);

INSERT INTO courses
(course_name, department, duration_months, credits, instructor, room_no, schedule, start_date, fee)
VALUES
('Database Systems', 'Computer Science', 6, 4, 'Dr. Allen', 'B101', 'Mon-Wed 9-11', '2024-01-10', 500.00),
('Web Development', 'Computer Science', 6, 4, 'Dr. Kim', 'B102', 'Tue-Thu 10-12', '2024-01-15', 600.00),
('Networking Basics', 'IT', 4, 3, 'Dr. Clark', 'B103', 'Mon-Wed 1-3', '2024-02-01', 450.00),
('AI Fundamentals', 'Computer Science', 8, 5, 'Dr. White', 'B104', 'Fri 9-12', '2024-01-20', 800.00),
('Cloud Computing', 'IT', 6, 4, 'Dr. Davis', 'B105', 'Tue-Thu 2-4', '2024-02-05', 700.00),
('Data Structures', 'Computer Science', 5, 4, 'Dr. Smith', 'B106', 'Mon-Wed 11-1', '2024-01-25', 550.00),
('Software Testing', 'IT', 4, 3, 'Dr. Patel', 'B107', 'Fri 1-3', '2024-03-01', 400.00),
('Machine Learning', 'Computer Science', 8, 5, 'Dr. Lee', 'B108', 'Tue-Thu 3-5', '2024-01-30', 900.00),
('Cyber Security', 'IT', 6, 4, 'Dr. Adams', 'B109', 'Mon-Wed 3-5', '2024-02-10', 650.00),
('Mobile App Dev', 'IT', 5, 4, 'Dr. Brown', 'B110', 'Tue-Thu 9-11', '2024-02-15', 600.00);

## INNER JOIN
SELECT * FROM students INNER JOIN courses ON students.course_id = courses.course_id;

## LEFT JOIN 

## RIGHT JOIN

## FULL OUTER JOIN

## CROSS JOIN

## SELF JOIN
