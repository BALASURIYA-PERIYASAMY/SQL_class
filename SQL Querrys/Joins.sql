#### JOIN ####

# SYNTAX
# SELECT COLUMNS FROM TABLE1 JOIN_TYPE TABLE2 ON TABLE1.COLUMN1=TABLE.COLUMN2

## INNER JOIN - Returns rows where there is a match in both tables
## LEFT JOIN - Returns all row from the left table and match rows from the right table unmatched rows as NULL
## RIGHT JOIN - Returns all row from the Right table and match rows from the Left table unmatched rows as NULL
## FULL OUTER JOIN - Left Join + Right Join
## CROSS JOIN - 
## SELF JOIN

CREATE DATABASE joins;

USE joins;

## TABLE 1 DEPARTMENTS
CREATE TABLE departments (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(50),
    manager_name VARCHAR(50),
    location VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR(50),
    floor_no INT,
    building VARCHAR(50),
    budget DECIMAL(10,2),
    established_year INT
);

INSERT INTO departments 
(dept_name, manager_name, location, phone, email, floor_no, building, budget, established_year)
VALUES
('HR', 'Alice Brown', 'New York', '111-1111', 'hr@company.com', 1, 'A', 50000.00, 2015),
('Finance', 'John Smith', 'New York', '222-2222', 'finance@company.com', 2, 'A', 80000.00, 2012),
('IT', 'Maria Garcia', 'Boston', '333-3333', 'it@company.com', 3, 'B', 150000.00, 2010),
('Sales', 'David Wilson', 'Chicago', '444-4444', 'sales@company.com', 4, 'B', 100000.00, 2014),
('Marketing', 'Sophia Johnson', 'Chicago', '555-5555', 'marketing@company.com', 5, 'C', 120000.00, 2013),
('Support', 'James Lee', 'Dallas', '666-6666', 'support@company.com', 6, 'C', 60000.00, 2018),
('Logistics', 'Olivia Davis', 'Miami', '777-7777', 'logistics@company.com', 7, 'D', 90000.00, 2016),
('Legal', 'Emma White', 'Seattle', '888-8888', 'legal@company.com', 8, 'E', 70000.00, 2011),
('Admin', 'William Clark', 'Austin', '999-9999', 'admin@company.com', 9, 'F', 40000.00, 2017),
('Research', 'Liam Lewis', 'San Jose', '101-0101', 'research@company.com', 10, 'G', 200000.00, 2009);


## TABLE 2 EMPLOYEES
CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender ENUM('M','F'),
    job_title VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE,
    email VARCHAR(50),
    phone VARCHAR(20),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO employees 
(first_name, last_name, gender, job_title, salary, hire_date, email, phone, dept_id)
VALUES
('John', 'Doe', 'M', 'HR Assistant', 35000, '2020-01-15', 'john.doe@company.com', '111-1112', 1),
('Jane', 'Miller', 'F', 'Accountant', 55000, '2019-03-10', 'jane.miller@company.com', '222-3333', 2),
('Alex', 'Brown', 'M', 'IT Analyst', 70000, '2021-05-20', 'alex.brown@company.com', '333-4444', 3),
('Emily', 'Clark', 'F', 'Sales Rep', 60000, '2018-07-25', 'emily.clark@company.com', '444-5555', 4),
('Daniel', 'Adams', 'M', 'Marketing Exec', 65000, '2017-09-30', 'daniel.adams@company.com', '555-6666', 5),
('Olivia', 'Martin', 'F', 'Support Staff', 40000, '2022-02-10', 'olivia.martin@company.com', '666-7777', 6),
('Liam', 'Taylor', 'M', 'Logistics Officer', 55000, '2020-04-12', 'liam.taylor@company.com', '777-8888', 7),
('Sophia', 'Hernandez', 'F', 'Legal Advisor', 75000, '2016-10-18', 'sophia.hernandez@company.com', '888-9999', 8),
('Noah', 'Walker', 'M', 'Admin Officer', 45000, '2021-01-22', 'noah.walker@company.com', '999-0000', 9),
('Ava', 'Anderson', 'F', 'Research Scientist', 95000, '2015-08-14', 'ava.anderson@company.com', '101-2020', 10);



SELECT * FROM JOINS.DEPARTMENTS;

SELECT * FROM JOINS.EMPLOYEES;

## INNER JOIN
SELECT * FROM DEPARTMENTS INNER JOIN EMPLOYEES ON DEPARTMENTS.DEPT_ID = EMPLOYEES.DEPT_ID;

## LEFT JOIN 
SELECT * FROM DEPARTMENTS LEFT JOIN EMPLOYEES ON DEPARTMENTS.DEPT_ID = EMPLOYEES.DEPT_ID;

## RIGHT JOIN

## FULL OUTER JOIN

## CROSS JOIN

## SELF JOIN
