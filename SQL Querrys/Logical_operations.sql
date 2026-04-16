CREATE database company;

USE company;

CREATE TABLE employees (
    Emp_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Gender CHAR(1),
    Department VARCHAR(50),
    Designation VARCHAR(50),
    Salary INT,
    City VARCHAR(50),
    Hire_Date DATE,
    Experience INT
);


INSERT INTO employees VALUES
(1, 'Aarav Mehta', 28, 'M', 'IT', 'Developer', 60000, 'Bengaluru', '2020-05-12', 3),
(2, 'Neha Sharma', 32, 'F', 'HR', 'Manager', 75000, 'Mumbai', '2018-03-10', 6),
(3, 'Ravi Kumar', 26, 'M', 'Finance', 'Analyst', 52000, 'Delhi', '2021-02-15', 2),
(4, 'Sneha Rao', 30, 'F', 'IT', 'Tester', 55000, 'Hyderabad', '2019-07-01', 4),
(5, 'Vikram Singh', 40, 'M', 'Sales', 'Manager', 88000, 'Chennai', '2015-11-20', 10),
(6, 'Anjali Verma', 27, 'F', 'Marketing', 'Executive', 48000, 'Pune', '2021-05-17', 2),
(7, 'Rajesh Nair', 35, 'M', 'IT', 'Team Lead', 90000, 'Bengaluru', '2016-09-09', 8),
(8, 'Divya Patel', 29, 'F', 'Finance', 'Accountant', 58000, 'Ahmedabad', '2019-06-25', 4),
(9, 'Karan Gupta', 31, 'M', 'IT', 'Developer', 61000, 'Delhi', '2018-01-19', 5),
(10, 'Pooja Iyer', 33, 'F', 'HR', 'Recruiter', 54000, 'Mumbai', '2017-03-30', 7),
(11, 'Sahil Jain', 25, 'M', 'IT', 'Developer', 50000, 'Chandigarh', '2022-01-10', 1),
(12, 'Meena Das', 28, 'F', 'Marketing', 'Analyst', 49000, 'Kolkata', '2020-11-18', 3),
(13, 'Rohit Sen', 36, 'M', 'Finance', 'Manager', 87000, 'Bengaluru', '2014-12-01', 12),
(14, 'Priya Reddy', 29, 'F', 'Sales', 'Executive', 47000, 'Hyderabad', '2021-09-22', 2),
(15, 'Deepak Yadav', 34, 'M', 'IT', 'Developer', 65000, 'Pune', '2017-06-05', 6),
(16, 'Aditi Joshi', 27, 'F', 'Finance', 'Clerk', 42000, 'Mumbai', '2022-04-11', 1),
(17, 'Nikhil Das', 31, 'M', 'Marketing', 'Manager', 72000, 'Delhi', '2018-02-12', 5),
(18, 'Riya Kapoor', 30, 'F', 'HR', 'Executive', 56000, 'Chennai', '2019-12-19', 4),
(19, 'Arun Bhat', 29, 'M', 'IT', 'Tester', 53000, 'Kochi', '2020-08-08', 3),
(20, 'Kavya Menon', 26, 'F', 'IT', 'Developer', 58000, 'Bengaluru', '2021-03-15', 2),
(21, 'Suresh Pillai', 38, 'M', 'Sales', 'Manager', 89000, 'Delhi', '2013-10-10', 13),
(22, 'Maya D’Souza', 33, 'F', 'Finance', 'Analyst', 62000, 'Pune', '2017-01-20', 7),
(23, 'Raman Kaur', 28, 'M', 'IT', 'Support', 50000, 'Amritsar', '2020-10-25', 3),
(24, 'Asha Thomas', 35, 'F', 'HR', 'Manager', 78000, 'Hyderabad', '2016-08-12', 8),
(25, 'Tarun Patel', 27, 'M', 'Marketing', 'Executive', 49000, 'Ahmedabad', '2021-07-07', 2),
(26, 'Shruti Ghosh', 31, 'F', 'Finance', 'Accountant', 57000, 'Kolkata', '2018-09-09', 5),
(27, 'Vijay Kumar', 39, 'M', 'Sales', 'Manager', 91000, 'Mumbai', '2012-04-02', 14),
(28, 'Leena George', 28, 'F', 'IT', 'Developer', 60000, 'Chennai', '2019-05-05', 4),
(29, 'Rohit Das', 26, 'M', 'Marketing', 'Executive', 48000, 'Kolkata', '2021-02-02', 2),
(30, 'Pallavi Singh', 34, 'F', 'Finance', 'Manager', 86000, 'Delhi', '2015-07-15', 9),
(31, 'Yash Agarwal', 25, 'M', 'IT', 'Intern', 30000, 'Pune', '2023-02-01', 0),
(32, 'Sana Khan', 29, 'F', 'Sales', 'Executive', 50000, 'Hyderabad', '2020-06-01', 3),
(33, 'Aditya Rao', 30, 'M', 'Marketing', 'Analyst', 55000, 'Bengaluru', '2019-03-11', 4),
(34, 'Renu Jain', 28, 'F', 'HR', 'Executive', 52000, 'Chennai', '2020-12-20', 3),
(35, 'Gaurav Mishra', 33, 'M', 'Finance', 'Clerk', 46000, 'Pune', '2018-10-17', 5),
(36, 'Kiran Shetty', 37, 'M', 'IT', 'Team Lead', 94000, 'Bengaluru', '2013-08-25', 12),
(37, 'Simran Gill', 26, 'F', 'Sales', 'Executive', 49000, 'Delhi', '2021-04-19', 2),
(38, 'Manish Jain', 32, 'M', 'Finance', 'Analyst', 63000, 'Jaipur', '2017-11-10', 6),
(39, 'Ankita Roy', 29, 'F', 'Marketing', 'Manager', 71000, 'Kolkata', '2018-06-08', 5),
(40, 'Ramesh Iyer', 41, 'M', 'Sales', 'Director', 120000, 'Mumbai', '2010-02-25', 16),
(41, 'Priti Nair', 27, 'F', 'IT', 'Developer', 57000, 'Bengaluru', '2021-06-12', 2),
(42, 'Harsh Gupta', 30, 'M', 'IT', 'Tester', 54000, 'Delhi', '2019-09-05', 4),
(43, 'Monika Singh', 31, 'F', 'Marketing', 'Executive', 49000, 'Lucknow', '2020-11-15', 3),
(44, 'Rajat Kapoor', 34, 'M', 'Finance', 'Analyst', 65000, 'Pune', '2016-04-04', 8),
(45, 'Anu Pillai', 29, 'F', 'HR', 'Recruiter', 50000, 'Chennai', '2021-01-12', 2),
(46, 'Parth Shah', 28, 'M', 'Marketing', 'Analyst', 55000, 'Ahmedabad', '2019-02-02', 4),
(47, 'Komal Tiwari', 35, 'F', 'Finance', 'Manager', 87000, 'Lucknow', '2015-12-22', 9),
(48, 'Rohan Joshi', 27, 'M', 'IT', 'Developer', 58000, 'Bengaluru', '2021-08-08', 2),
(49, 'Mitali Jain', 30, 'F', 'HR', 'Manager', 80000, 'Pune', '2016-10-10', 8),
(50, 'Akash Singh', 24, 'M', 'IT', 'Intern', 32000, 'Delhi', '2023-05-02', 0);

SELECT * FROM employees;

##LOGICAL OPERATIONS

#AND OPERATOR [Both conditions needs to be true]

#FIND THE EMPLOYEES WHO WORK IN THE IT DEPARTMENT AND ARE DEVELOPER
SELECT * FROM EMPLOYEES WHERE DEPARTMENT ="IT" AND DESIGNATION ="DEVELOPER";

#FIND THE EMPLOYEE WHOE ARE FEMALE AND WORK IN THE FINANCE DEPARTMENT 
SELECT * FROM EMPLOYEES WHERE GENDER ='F' AND DEPARTMENT = 'FINANCE';


#OR OPERATOR[Any one condition is to be true]

#FIND THE EMPLOYEES WHO ARE FROM BENGALURU OR MUMBAI
SELECT * FROM EMPLOYEES WHERE CITY ='BENGALURU' OR CITY ='MUMBAI';

#FIND THE EMPLOYEES WHO ARE WORK IN SALES OR MARKETING DEPARTMENT
SELECT * FROM EMPLOYEES WHERE DEPARTMENT ='SALES' OR DEPARTMENT ='MARKETING';


#NOT OPERATOR
#FIND THE EMPLOYEES WHO ARE NOT IN THE HR DEPARTMENT
SELECT * FROM EMPLOYEES WHERE NOT DEPARTMENT ='HR';

#FIND THE EMPLOYEES WHO ARE MALE AND NOT FROM DELHI
SELECT * FROM EMPLOYEES WHERE GENDER ='M' AND NOT CITY='DELHI';

#FIND THE EMPLOYEE WHO ARE NOT FEMALE AND NOT MANAGER
SELECT * FROM EMPLOYEES WHERE NOT GENDER ='F' AND NOT DESIGNATION ='MANAGER';

#FIND EMPLOYEES WHO ARE FROM PUNE OR BENGALURU AND HAVE MARKITING JOB
SELECT * FROM EMPLOYEES WHERE (CITY ="PUNE" OR CITY ="BENGALURU") AND DEPARTMENT="MARKETING";


###COMBINATION OF COMPARISION + LOGICAL OPERATORS

#FIND THE EMPLOYEES WHO EARN MORE THAN 70000 AND HAVE OVER 5 YEAR OF EXPERIENCE
SELECT * FROM EMPLOYEES WHERE SALARY > 70000 AND EXPERIENCE > 5;

#FIND THE EMPLOYEES WHOSES Age IS BELOW 30 OR WHO WORK IN MARKETING
SELECT * FROM EMPLOYEES WHERE AGE < 30 OR DEPARTMENT ="MARKETING";

#FIND THE EMPLOYEES WHO ARE FEMALE HAVE SALARY LESS THEN ARE EQUAL TO 60000
SELECT * FROM EMPLOYEES WHERE GENDER = 'F' AND SALARY <= 60000;

#FIND THE EMPLOYEES WHO JOIN BEFORE 2020 AND ARE MANAGERS;
SELECT * FROM EMPLOYEES WHERE HIRE_DATE < '2020-01-01' AND DESIGNATION='MANAGER';
SELECT * FROM EMPLOYEES WHERE YEAR (HIRE_DATE) < 2020 AND DESIGNATION='MANAGER';

#FIND THE EMPLOYEE WHOES EXPERIENCE IS NOT MORE THEN 3 YEARS AND DEPARTMENT IS IT OR HR
SELECT * FROM EMPLOYEES WHERE EXPERIENCE <= 3 AND NOT (DEPARTMENT ='IT' OR DEPARTMENT ='HR');

#FIND THE EMPLOYEES WHO ARE FROM MUMBAI AND HAVE A SALARY BETWEEN 60000 AND 90000
SELECT * FROM EMPLOYEES WHERE CITY = "MUMBAI" AND SALARY BETWEEN 60000 AND 90000;