USE balasuriya_db;

##CREATE A TABLE
CREATE TABLE employees (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Age INT,
    Gender CHAR(1),
    Department VARCHAR(50),
    Designation VARCHAR(50),
    Salary DECIMAL(10,2),
    City VARCHAR(50),
    Join_Date DATE,
    Experience INT
);

DESC EMPLOYEES;

##INSERTING THE VALUES
INSERT INTO employees VALUES
(1, 'Amit Kumar', 28, 'M', 'IT', 'Software Engineer', 65000.00, 'Bengaluru', '2020-03-15', 4),
(2, 'Riya Sharma', 26, 'F', 'HR', 'HR Executive', 48000.00, 'Mumbai', '2021-05-10', 3),
(3, 'Karan Patel', 32, 'M', 'Finance', 'Accountant', 58000.00, 'Ahmedabad', '2019-08-20', 6),
(4, 'Pooja Singh', 29, 'F', 'IT', 'UI Designer', 72000.00, 'Delhi', '2020-10-05', 5),
(5, 'Vivek Reddy', 35, 'M', 'Operations', 'Manager', 90000.00, 'Hyderabad', '2018-02-12', 8),
(6, 'Sneha Gupta', 27, 'F', 'Marketing', 'Marketing Analyst', 55000.00, 'Pune', '2021-09-17', 3),
(7, 'Arjun Mehta', 31, 'M', 'IT', 'Team Lead', 85000.00, 'Chennai', '2019-12-01', 7),
(8, 'Neha Joshi', 24, 'F', 'HR', 'Recruiter', 42000.00, 'Kolkata', '2022-04-10', 2),
(9, 'Rohit Verma', 30, 'M', 'Finance', 'Senior Accountant', 67000.00, 'Delhi', '2020-01-25', 5),
(10, 'Divya Nair', 33, 'F', 'Operations', 'Supervisor', 75000.00, 'Bengaluru', '2019-06-14', 7);



##ASSIGNMENT QUESTUONS
#Find employees whose salary is greater than 60,000.
SELECT * FROM EMPLOYEES WHERE SALARY>60000;

#Display employees whose age is less than 30.
SELECT * FROM EMPLOYEES WHERE AGE<30;

#Find employees who have exactly 5 years of experience.
SELECT * FROM EMPLOYEES WHERE EXPERIENCE=5;

#List employees who joined before the year 2020.
SELECT * FROM EMPLOYEES WHERE YEAR(JOIN_DATE)<2020;

#Find employees whose salary is not equal to 55,000.
SELECT * FROM EMPLOYEES WHERE SALARY!=55000;

#Find employees whose salary is greater than 70,000 and experience is greater than 5 years.
SELECT * FROM EMPLOYEES WHERE SALARY>70000 AND EXPERIENCE >5;

#Show employees who work in the IT or HR department.
SELECT * FROM EMPLOYEES WHERE DEPARTMENT='IT' OR DEPARTMENT ='HR';

#Display employees who are not from Delhi.
SELECT * FROM EMPLOYEES WHERE CITY !='DELHI';

#Find employees with experience between 3 and 7 years and salary greater than 50,000.
SELECT * FROM EMPLOYEES WHERE (EXPERIENCE BETWEEN 3 AND 7) AND SALARY >50000;

#Show all female employees who work in the Marketing department.
SELECT * FROM EMPLOYEES WHERE GENDER='F' AND DEPARTMENT ='MARKETING';

#Find employees whose city is either Bengaluru, Mumbai, or Pune.
SELECT * FROM EMPLOYEES WHERE CITY IN('BENGALURU','MUMBAI','PUNE');

#Show employees whose experience is between 4 and 8 years.
SELECT * FROM EMPLOYEES WHERE EXPERIENCE BETWEEN 4 AND 8;

#Find employees whose name starts with the letter ‘R’.
SELECT * FROM EMPLOYEES WHERE NAME LIKE 'R%';

#Display employees whose designation contains the word ‘Engineer’.
SELECT * FROM EMPLOYEES WHERE DESIGNATION LIKE "%ENGINEER%";

#Find employees whose name ends with the letter ‘a’.
SELECT * FROM EMPLOYEES WHERE NAME LIKE '%A';

#Show employees with salary between 50,000 and 80,000, excluding those in the HR department.
SELECT * FROM EMPLOYEES WHERE (SALARY BETWEEN 50000 AND 80000) AND NOT DEPARTMENT ="HR";

#Find male employees who have more than 5 years of experience or salary above 80,000.
SELECT * FROM EMPLOYEES WHERE EXPERIENCE >5 OR SALARY >80000;

#Display employees who joined after 2020 and are from Bengaluru or Chennai.
SELECT * FROM EMPLOYEES WHERE YEAR(JOIN_DATE)>2020 AND CITY IN('BENGALURU','CHENNAI');

#List employees whose designation is not ‘Manager’ or ‘Team Lead’.
SELECT * FROM EMPLOYEES WHERE DESIGNATION NOT IN("MANAGER","TEAM LEAD");

#Show employees who work in the IT department and earn more than 70,000.
SELECT * FROM EMPLOYEES WHERE DEPARTMENT='IT' AND SALARY>70000;

#Display all employees sorted by salary in descending order.
SELECT * FROM EMPLOYEES ORDER BY SALARY DESC;

#Show the top three highest-paid employees.
SELECT * FROM EMPLOYEES ORDER BY SALARY DESC LIMIT 3;

#Find employees who joined in the year 2020.
SELECT * FROM EMPLOYEES WHERE YEAR(JOIN_DATE)=2020;

#Display employees whose name has exactly five characters.
SELECT * FROM EMPLOYEES WHERE EMP_NAME LIKE"_____";

#Find all female employees who are not from HR and earn more than 50,000.
SELECT * FROM EMPLOYEES WHERE (GENDER = 'F' AND DEPARTMENT !='HR') AND SALARY>50000;