create database joins_db;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    city VARCHAR(50),
    salary DECIMAL(10,2),
    join_date DATE
);

INSERT INTO employees (emp_id, emp_name, department, city, salary, join_date)
VALUES
(1, 'Alice',   'IT',       'New York',   70000, '2020-05-10'),
(2, 'Bob',     'HR',       'Chicago',    55000, '2019-07-15'),
(3, 'Charlie', 'Finance',  'Houston',    65000, '2021-01-20'),
(4, 'David',   'IT',       'Dallas',     72000, '2018-03-12'),
(5, 'Eve',     'Marketing','Seattle',    60000, '2020-11-25'),
(6, 'Frank',   'IT',       'Austin',     71000, '2022-02-18'),
(7, 'Grace',   'Finance',  'Boston',     67000, '2017-08-04'),
(8, 'Heidi',   'HR',       'Denver',     56000, '2019-09-10'),
(9, 'Ivan',    'Marketing','Miami',      59000, '2021-12-01'),
(10,'Judy',    'Sales',    'Phoenix',    63000, '2016-06-05');

CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    emp_id INT,
    project_name VARCHAR(50),
    client VARCHAR(50),
    start_date DATE,
    budget DECIMAL(10,2)
);

INSERT INTO projects (project_id, emp_id, project_name, client, start_date, budget)
VALUES
(101, 1,  'Website Revamp', 'TechCorp',  '2022-05-10', 50000),
(102, 2,  'Recruit Portal', 'HireFast',  '2023-03-01', 30000),
(103, 3,  'Budget Tracker', 'FinServe',  '2021-11-12', 40000),
(104, 6,  'Cloud Migration','SkyNet',    '2022-08-20', 60000),
(105, 7,  'Audit Tool',     'FinServe',  '2020-02-15', 25000),
(106, 11, 'New App',        'Appify',    '2023-07-01', 45000), -- emp_id 11 doesn't exist
(107, 4,  'Security Upgrade','SafeNet',  '2022-01-05', 70000),
(108, 2,  'HR Dashboard',   'PeoplePro', '2020-12-10', 28000),
(109, 10, 'CRM Integration','BizPlus',   '2021-03-22', 32000),
(110, 15, 'Ad Campaign',    'Marketly',  '2024-01-14', 50000); -- emp_id 15 doesn't exist


## INNER JOIN