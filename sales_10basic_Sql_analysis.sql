-- 1. Show all customer records
USE sales;
SELECT *
FROM customers;

-- 2. Show total number of customers
SELECT COUNT(*)
FROM customers;


-- 3. Show transactions for Chennai market (market code for chennai is Mark001)
SELECT *
FROM  transactions
WHERE market_code='Mark001';

SELECT *
FROM  transactions
WHERE sales_amount<0;           -- bad data

-- 4. Show distinct product codes that were sold in chennai
SELECT DISTINCT product_code
FROM transactions
WHERE market_code='Mark001';

-- 5. Show transactions where currency is US dollars

SELECT * 
FROM transactions
WHERE currency="USD";


-- 6. Show transactions in 2020 join by date table
SELECT *
FROM transactions a
INNER JOIN sales.date b
ON a.order_date=b.date
WHERE b.year="2020";


-- 7. Show total revenue in year 2020,
SELECT SUM(sales_amount)
FROM transactions a
INNER JOIN sales.date b
ON a.order_date=b.date
WHERE b.year="2020";

-- 8. Show total revenue in year 2020, January Month,

SELECT SUM(sales_amount)
FROM transactions a
INNER JOIN sales.date b
ON a.order_date=b.date
WHERE b.year="2020" AND month_name="January";

-- 9. Show total revenue in year 2020 in Chennai

SELECT SUM(sales_amount)
FROM transactions a
INNER JOIN sales.date b
ON a.order_date=b.date
WHERE b.year="2020" AND market_code="Mark001";
