
CREATE DATABASE employees;

USE EMPLOYEES;

CREATE TABLE employee_performance (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    designation VARCHAR(30),
    joining_date DATE,
    salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    project_count INT,
    performance_score INT,
    location VARCHAR(30)
);


INSERT INTO employee_performance VALUES
(1, 'Alice', 'Sales', 'Executive', '2020-01-10', 45000, 3000, 5, 85, 'New York'),
(2, 'Bob', 'Sales', 'Manager', '2018-05-12', 70000, 5000, 8, 90, 'New York'),
(3, 'Charlie', 'HR', 'Executive', '2021-07-22', 40000, 2000, 3, 75, 'Boston'),
(4, 'Diana', 'IT', 'Engineer', '2019-11-05', 60000, 4000, 7, 88, 'Chicago'),
(5, 'Ethan', 'IT', 'Engineer', '2020-02-10', 58000, 3500, 6, 84, 'Chicago'),
(6, 'Fiona', 'Finance', 'Analyst', '2021-01-15', 50000, 2500, 4, 82, 'Boston'),
(7, 'George', 'Finance', 'Manager', '2017-03-01', 75000, 5500, 10, 92, 'Boston'),
(8, 'Hannah', 'Sales', 'Executive', '2022-05-20', 43000, 2800, 4, 80, 'New York'),
(9, 'Ian', 'IT', 'Lead', '2016-09-10', 90000, 6000, 9, 95, 'Chicago'),
(10, 'Jane', 'HR', 'Manager', '2018-06-25', 68000, 4500, 6, 89, 'Boston'),
(11, 'Kyle', 'Finance', 'Analyst', '2020-09-09', 52000, 2600, 5, 83, 'Boston'),
(12, 'Laura', 'Sales', 'Executive', '2021-12-12', 46000, 3100, 5, 82, 'New York'),
(13, 'Mike', 'IT', 'Engineer', '2022-03-03', 59000, 3200, 5, 81, 'Chicago'),
(14, 'Nina', 'Finance', 'Executive', '2019-10-10', 47000, 2400, 4, 80, 'Boston'),
(15, 'Oscar', 'HR', 'Executive', '2020-11-20', 42000, 2300, 3, 78, 'Boston'),
(16, 'Paul', 'Sales', 'Lead', '2017-04-18', 85000, 5700, 10, 93, 'New York'),
(17, 'Quinn', 'IT', 'Manager', '2018-08-30', 88000, 5800, 8, 91, 'Chicago'),
(18, 'Rachel', 'Finance', 'Executive', '2021-04-11', 48000, 2500, 5, 81, 'Boston'),
(19, 'Steve', 'Sales', 'Analyst', '2020-06-17', 52000, 3000, 6, 83, 'New York'),
(20, 'Tina', 'HR', 'Analyst', '2019-12-15', 50000, 2700, 5, 86, 'Boston');


SELECT * FROM employee_performance;

## What is a window function in MySQL?
SELECT emp_name,
       salary,
       AVG(salary) OVER() AS avg_salary
FROM employee_performance;

## How is a window function different from a GROUP BY aggregate function?
SELECT emp_name,
       department,
       salary,
       AVG(salary) OVER(PARTITION BY department)
FROM employee_performance;

## Write a query to rank employees by salary within each department.
SELECT emp_name,
       department,
       salary,
       RANK() OVER(
           PARTITION BY department
           ORDER BY salary DESC
       ) AS salary_rank
FROM employee_performance;

## How do you get a unique row number for each employee ordered by joining date?
SELECT emp_name,
       joining_date,
       ROW_NUMBER() OVER(ORDER BY joining_date) AS row_num
FROM employee_performance;

## What’s the difference between RANK() and DENSE_RANK()?
SELECT emp_name,
       salary,
       RANK() OVER(ORDER BY salary DESC) AS rnk,
       DENSE_RANK() OVER(ORDER BY salary DESC) AS dense_rnk
FROM employee_performance;

## Find the top 3 highest-paid employees in each department.
SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER(
               PARTITION BY department
               ORDER BY salary DESC
           ) AS rn
    FROM employee_performance
) t
WHERE rn <= 3;

## How to find each employee’s salary difference from the department average?
SELECT emp_name,
       department,
       salary,
       salary - AVG(salary)
       OVER(PARTITION BY department) AS diff_from_avg
FROM employee_performance;

## Display cumulative salary by department based on joining date.
SELECT emp_name,
       department,
       joining_date,
       salary,
       SUM(salary) OVER(
           PARTITION BY department
           ORDER BY joining_date
       ) AS cumulative_salary
FROM employee_performance;

## Show each employee’s performance compared to the previous employee (using LAG).
SELECT emp_name,
       performance_score,
       LAG(performance_score)
       OVER(ORDER BY joining_date) AS previous_score
FROM employee_performance;

## Show the next employee’s salary (using LEAD).
SELECT emp_name,
       salary,
       LEAD(salary) OVER(ORDER BY joining_date) AS next_salary
FROM employee_performance;

## Find the percentile rank of each employee based on salary.
SELECT emp_name,
       salary,
       PERCENT_RANK() OVER(ORDER BY salary) AS percentile_rank
FROM employee_performance;

## Calculate running total of bonuses ordered by joining date.
SELECT emp_name,
       joining_date,
       bonus,
       SUM(bonus) OVER(
           ORDER BY joining_date
       ) AS running_bonus
FROM employee_performance;

## Find employees whose salary is above their department’s average.
SELECT *
FROM (
    SELECT *,
           AVG(salary) OVER(
               PARTITION BY department
           ) AS avg_sal
    FROM employee_performance
) t
WHERE salary > avg_sal;

## What does the PARTITION BY clause do in a window function?
#It divide the Data into Group without merging the rows
#PARTITION BY department

## How can you limit a window to a range of rows (for example, last 3 rows)?
SELECT emp_name,
       salary,
       AVG(salary) OVER(
           ORDER BY joining_date
           ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
       ) AS last3_avg
FROM employee_performance;

## What’s the purpose of ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW?
#Meaning:
# Start from first row
# Continue until current row
#Used for:
# Running totals
# Cumulative sums
#SUM(salary) OVER( ORDER BY joining_date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW )

## Create a query to find each department’s highest salary using window functions (without GROUP BY).
SELECT DISTINCT department,
       MAX(salary) OVER(
           PARTITION BY department
       ) AS highest_salary
FROM employee_performance;

## Explain the difference between SUM() OVER() and SUM() with GROUP BY.

## How do you calculate a moving average of performance score over last 3 joining employees?
SELECT emp_name,
       performance_score,
       AVG(performance_score) OVER(
           ORDER BY joining_date
           ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
       ) AS moving_avg
FROM employee_performance;
	
## How can you use window functions to find duplicate salaries within departments?
SELECT *
FROM (
   SELECT *,
          COUNT(*) OVER(
              PARTITION BY department, salary
          ) AS salary_count
   FROM employee_performance
) t
WHERE salary_count > 1;