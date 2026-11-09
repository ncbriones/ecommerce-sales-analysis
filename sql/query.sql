-- SQL Queries Used in Exploratory Data Analysis

-- Total Revenue
SELECT ROUND(SUM(revenue), 2) AS total_revenue
FROM `my-first-cloud-project-512602.ecommerce.sales`;


-- Total Orders
SELECT COUNT(order_id) AS total_orders
FROM `my-first-cloud-project-512602.ecommerce.sales`;


-- Quantity Sold Per Region
SELECT region, SUM(quantity) AS quantity_sold
FROM `my-first-cloud-project-512602.ecommerce.sales`
GROUP BY region;


-- Quantity Sold Per Category
SELECT product_category, SUM(quantity) AS quantity_sold
FROM `my-first-cloud-project-512602.ecommerce.sales`
GROUP BY product_category;


-- Total Revenue Per Region
SELECT region, ROUND(SUM(revenue), 2) AS total_revenue
FROM `my-first-cloud-project-512602.ecommerce.sales`
GROUP BY region
ORDER BY total_revenue DESC;



-- Total Revenue Per Category
SELECT product_category, ROUND(SUM(revenue), 2) AS total_revenue
FROM `my-first-cloud-project-512602.ecommerce.sales`
GROUP BY product_category
ORDER BY total_revenue DESC;


-- Yearly Total Revenue
SELECT EXTRACT(YEAR FROM order_date) AS year, ROUND(SUM(revenue), 2) AS total_revenue
FROM `my-first-cloud-project-512602.ecommerce.sales`
GROUP BY year
ORDER BY year;
