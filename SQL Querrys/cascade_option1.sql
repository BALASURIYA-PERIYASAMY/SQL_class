CREATE DATABASE casecade;

use casecade;

#Student Table
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    year INT CHECK (year >= 1 AND year <= 4),
    email VARCHAR(100) UNIQUE NOT NULL
);

#Employee Table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(100) NOT NULL,
    job_role VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) CHECK (salary > 0),
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
    ON DELETE CASCADE 
	ON UPDATE CASCADE
);

INSERT INTO Students (student_name, department, year, email) VALUES
('Arun Kumar', 'CSE', 3, 'arun@gmail.com'),
('Karthik Raj', 'IT', 2, 'karthik@gmail.com'),
('Suresh Kumar', 'ECE', 4, 'suresh@gmail.com'),
('Praveen Kumar', 'MECH', 1, 'praveen@gmail.com'),
('Vignesh Kumar', 'EEE', 2, 'vignesh@gmail.com');


INSERT INTO Employees (emp_name, job_role, salary, student_id) VALUES
('Ravi', 'Lab Assistant', 20000, 1),
('Manoj', 'Office Clerk', 18000, 2),
('Balaji', 'Technician', 22000, 3),
('Naveen', 'Support Staff', 17000, 4),
('Saravanan', 'System Admin', 30000, 5);


SELECT * FROM Students;
SELECT * FROM Employees;


DELETE FROM Students WHERE student_id = 3;
SELECT * FROM Students;
SELECT * FROM Employees;

UPDATE Students SET student_id = 10 WHERE student_id = 2;
SELECT * FROM Students;
SELECT * FROM Employees;

