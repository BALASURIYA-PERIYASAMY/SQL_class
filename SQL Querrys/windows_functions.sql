CREATE database sale;

use sale;

CREATE TABLE sales_data (
    id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(50),
    region VARCHAR(50),
    product VARCHAR(50),
    sales_amount DECIMAL(10,2),
    quantity INT,
    sale_date DATE,
    target DECIMAL(10,2),
    bonus_percent DECIMAL(5,2)
);

INSERT INTO sales_data VALUES
(1, 'Alice', 'Electronics', 'North', 'Laptop', 1200.00, 3, '2026-02-01', 1000.00, 5.00),
(2, 'Bob', 'Electronics', 'South', 'Tablet', 800.00, 5, '2026-02-02', 900.00, 4.00),
(3, 'Charlie', 'Furniture', 'East', 'Chair', 400.00, 10, '2026-02-03', 500.00, 3.00),
(4, 'Diana', 'Furniture', 'West', 'Desk', 700.00, 4, '2026-02-04', 600.00, 4.50),
(5, 'Evan', 'Clothing', 'North', 'Jacket', 350.00, 8, '2026-02-05', 300.00, 2.50),
(6, 'Fiona', 'Clothing', 'South', 'Shoes', 450.00, 6, '2026-02-06', 400.00, 3.00),
(7, 'George', 'Electronics', 'East', 'Phone', 900.00, 7, '2026-02-07', 850.00, 4.50),
(8, 'Hannah', 'Furniture', 'North', 'Table', 1000.00, 2, '2026-02-08', 950.00, 5.00),
(9, 'Ian', 'Clothing', 'West', 'Shirt', 200.00, 15, '2026-02-09', 250.00, 1.50),
(10, 'Julia', 'Electronics', 'West', 'Headphones', 300.00, 9, '2026-02-10', 350.00, 2.00);


SELECT * FROM SALES_DATA;

##ROW_NUMBER()
#ROW NUMBER PER DEPARTMENT
SELECT DEPARTMENT, EMPLOYEE_NAME, SALES_AMOUNT, 
ROW_NUMBER() OVER(PARTITION BY DEPARTMENT ORDER BY SALES_AMOUNT DESC) AS ROW_NUM
FROM SALES_DATA;

##RANK()
#RANK PER DEPARTMENT
SELECT DEPARTMENT, EMPLOYEE_NAME, SALES_AMOUNT, 
RANK() OVER(PARTITION BY DEPARTMENT ORDER BY SALES_AMOUNT DESC) AS ROW_NUM
FROM SALES_DATA;

##DENSE_RANK()
#DENSE_RANK PER DEPARTMENT
SELECT DEPARTMENT, EMPLOYEE_NAME, SALES_AMOUNT, 
DENSE_RANK() OVER(PARTITION BY DEPARTMENT ORDER BY SALES_AMOUNT DESC) AS ROW_NUM
FROM SALES_DATA;