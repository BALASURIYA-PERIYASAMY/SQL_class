USE sales;


# Show the total sales amount by region.
SELECT region, SUM(total_amount) AS total_sales
FROM sales_data
GROUP BY region;


# Find the average customer rating for each category.
SELECT category, AVG(customer_rating) AS avg_rating
FROM sales_data
GROUP BY category;

# List employees whose total sales exceed 1000.
SELECT employee_name, SUM(total_amount) AS total_sales
FROM sales_data
GROUP BY employee_name
HAVING SUM(total_amount) > 1000;

# Count the number of distinct products sold in each category.
SELECT category, COUNT(DISTINCT product) AS distinct_products
FROM sales_data
GROUP BY category;



# Display products that were sold in more than two transactions.
SELECT product, COUNT(*) AS transaction_count
FROM sales_data
GROUP BY product
HAVING COUNT(*) > 2;

# Show total sales by each employee in each region.
SELECT employee_name, region, SUM(total_amount) AS total_sales
FROM sales_data
GROUP BY employee_name, region;

# Find regions where the average customer rating is greater than 4.
SELECT region, AVG(customer_rating) AS avg_rating
FROM sales_data
GROUP BY region
HAVING AVG(customer_rating) > 4;

# Show the total quantity of items sold in each category.
SELECT category, SUM(quantity) AS total_quantity
FROM sales_data
GROUP BY category;

# Display products that have total sales greater than 1500.
SELECT product, SUM(total_amount) AS total_sales
FROM sales_data
GROUP BY product
HAVING SUM(total_amount) > 1500;

# List categories along with the number of distinct employees who sold items in them.
SELECT category, COUNT(DISTINCT employee_name) AS employee_count
FROM sales_data
GROUP BY category;

# Find the average sale amount for each region and category combination.
SELECT region, category, AVG(total_amount) AS avg_sale
FROM sales_data
GROUP BY region, category;

# List employees who sold more than 5 total items.
SELECT employee_name, SUM(quantity) AS total_items
FROM sales_data
GROUP BY employee_name
HAVING SUM(quantity) > 5;

# Show the average price of products in each category.
SELECT category, AVG(price) AS avg_price
FROM sales_data
GROUP BY category;

# Display categories whose total revenue is greater than 3000.
SELECT category, SUM(total_amount) AS total_revenue
FROM sales_data
GROUP BY category
HAVING SUM(total_amount) > 3000;

# Find categories where the average quantity sold is more than 3.
SELECT category, AVG(quantity) AS avg_quantity
FROM sales_data
GROUP BY category
HAVING AVG(quantity) > 3;

# Find regions where the total sales exceed 2000 and display their average rating.
SELECT region,
SUM(total_amount) AS total_sales,
AVG(customer_rating) AS avg_rating
FROM sales_data
GROUP BY region
HAVING SUM(total_amount) > 2000;

# List employees whose average sale value is greater than 600.
SELECT employee_name, AVG(total_amount) AS avg_sale
FROM sales_data
GROUP BY employee_name
HAVING AVG(total_amount) > 600;

# Show each category’s highest and lowest individual sale amount.
SELECT category,
       MAX(total_amount) AS highest_sale,
       MIN(total_amount) AS lowest_sale
FROM sales_data
GROUP BY category;
