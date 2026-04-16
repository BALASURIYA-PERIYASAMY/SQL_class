CREATE DATABASE sales;

USE sales;

CREATE TABLE sales_data (
    sale_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    region VARCHAR(50),
    product VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2),
    total_amount DECIMAL(10,2),
    sale_date DATE,
    customer_rating INT
);

INSERT INTO sales_data VALUES
(1, 'Alice', 'North', 'Laptop', 'Electronics', 2, 700.00, 1400.00, '2026-02-01', 5),
(2, 'Bob', 'South', 'Mobile', 'Electronics', 3, 300.00, 900.00, '2026-02-02', 4),
(3, 'Charlie', 'East', 'Tablet', 'Electronics', 4, 250.00, 1000.00, '2026-02-03', 3),
(4, 'David', 'West', 'Laptop', 'Electronics', 1, 700.00, 700.00, '2026-02-04', 5),
(5, 'Ella', 'North', 'Chair', 'Furniture', 5, 80.00, 400.00, '2026-02-05', 4),
(6, 'Frank', 'South', 'Table', 'Furniture', 2, 150.00, 300.00, '2026-02-06', 5),
(7, 'Grace', 'East', 'Sofa', 'Furniture', 1, 500.00, 500.00, '2026-02-07', 4),
(8, 'Henry', 'West', 'Lamp', 'Home Decor', 6, 40.00, 240.00, '2026-02-08', 3),
(9, 'Isla', 'North', 'Curtain', 'Home Decor', 3, 60.00, 180.00, '2026-02-09', 5),
(10, 'Jack', 'South', 'Laptop', 'Electronics', 2, 700.00, 1400.00, '2026-02-10', 4),
(11, 'Kathy', 'East', 'Mobile', 'Electronics', 5, 300.00, 1500.00, '2026-02-11', 5),
(12, 'Leo', 'West', 'Table', 'Furniture', 4, 150.00, 600.00, '2026-02-12', 4),
(13, 'Mia', 'North', 'Sofa', 'Furniture', 2, 500.00, 1000.00, '2026-02-13', 5),
(14, 'Nina', 'South', 'Lamp', 'Home Decor', 8, 40.00, 320.00, '2026-02-14', 3),
(15, 'Oscar', 'East', 'Curtain', 'Home Decor', 6, 60.00, 360.00, '2026-02-15', 4),
(16, 'Paul', 'West', 'Laptop', 'Electronics', 3, 700.00, 2100.00, '2026-02-16', 5),
(17, 'Queen', 'North', 'Table', 'Furniture', 2, 150.00, 300.00, '2026-02-17', 3),
(18, 'Ryan', 'South', 'Chair', 'Furniture', 3, 80.00, 240.00, '2026-02-18', 4),
(19, 'Sophia', 'East', 'Lamp', 'Home Decor', 5, 40.00, 200.00, '2026-02-19', 5),
(20, 'Tom', 'West', 'Curtain', 'Home Decor', 2, 60.00, 120.00, '2026-02-20', 4);


SELECT * FROM SALES_DATA;

##GROUP BY
SELECT CATEGORY ,SUM(TOTAL_AMOUNT) FROM SALES_DATA GROUP BY (CATEGORY);

#TOTAL SALES OF BY REGION
SELECT REGION ,SUM(TOTAL_AMOUNT) FROM SALES_DATA GROUP BY (REGION);

#AVERAGE THE CUSTOMER RATING BY CATEGORY
SELECT CATEGORY ,AVG(CUSTOMER_RATING) FROM SALES_DATA GROUP BY (CATEGORY);

#THE NUMBER OF PRODUCTS SOLD PER CATEGORIES
SELECT CATEGORY ,COUNT(PRODUCT) FROM SALES_DATA GROUP BY (CATEGORY);

#TOTAL SALES PER EMPLOYEE PER REGION
SELECT EMPLOYEE_NAME, REGION, SUM(TOTAL_AMOUNT) FROM SALES_DATA GROUP BY EMPLOYEE_NAME, REGION;

#AVERAGE SALE AMOUNT PER REGION PER CATEGORY
SELECT REGION, CATEGORY, SUM(TOTAL_AMOUNT) FROM SALES_DATA GROUP BY REGION, CATEGORY;

##HAVING - OUTPUT OF GROUP BY FUN IS THE INPUT OF HAVING FUN
#EMPLOYEE WITH TOTAL SALES ABOVE 1000
SELECT EMPLOYEE_NAME, SUM(TOTAL_AMOUNT)  AS TOTAL_SALES FROM SALES_DATA GROUP BY EMPLOYEE_NAME HAVING SUM(TOTAL_AMOUNT)>1000;

#AVERAGE QUANTITY SOLD PER PRODUCT (ONLY PRODUCT SOLD MORE THEN 2 TIMES)
SELECT PRODUCT, AVG(QUANTITY) AS AVERAGE_QUANTITY FROM SALES_DATA GROUP BY PRODUCT HAVING COUNT(*)>2;

#REGIONS WITH AVG RATING ABOVE 4
SELECT REGION, AVG(CUSTOMER_RATING) AS AVG_RATING FROM SALES_DATA GROUP BY REGION HAVING AVG(CUSTOMER_RATING)>4;