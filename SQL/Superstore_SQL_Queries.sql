USE superstore_db;

-- =====================================================
-- Query 1: Display all records
-- =====================================================
SELECT *
FROM orders;

-- =====================================================
-- Query 2: Customer Name, Sales and Profit
-- =====================================================
SELECT
    `Customer Name`,
    Sales,
    Profit
FROM orders;

-- =====================================================
-- Query 3: Top 10 Highest Sales
-- =====================================================
SELECT
    `Customer Name`,
    Sales
FROM orders
ORDER BY Sales DESC
LIMIT 10;

-- =====================================================
-- Query 4: Top 10 Highest Profit
-- =====================================================
SELECT
    `Customer Name`,
    Profit
FROM orders
ORDER BY Profit DESC
LIMIT 10;

-- =====================================================
-- Query 5: Sales Greater Than 1000
-- =====================================================
SELECT *
FROM orders
WHERE Sales > 1000;

-- =====================================================
-- Query 6: Profit Less Than 0 (Loss Orders)
-- =====================================================
SELECT *
FROM orders
WHERE Profit < 0;

-- =====================================================
-- Query 7: Orders from Consumer Segment
-- =====================================================
SELECT *
FROM orders
WHERE Segment = 'Consumer';

-- =====================================================
-- Query 8: Orders from California
-- =====================================================
SELECT *
FROM orders
WHERE State = 'California';

-- =====================================================
-- Query 9: Total Sales
-- =====================================================
SELECT
SUM(Sales) AS Total_Sales
FROM orders;

-- =====================================================
-- Query 10: Total Profit
-- =====================================================
SELECT
SUM(Profit) AS Total_Profit
FROM orders;

-- =====================================================
-- Query 11: Average Sales
-- =====================================================
SELECT
AVG(Sales) AS Average_Sales
FROM orders;

-- =====================================================
-- Query 12: Average Profit
-- =====================================================
SELECT
AVG(Profit) AS Average_Profit
FROM orders;

-- =====================================================
-- Query 13: Maximum Sales
-- =====================================================
SELECT
MAX(Sales) AS Highest_Sale
FROM orders;

-- =====================================================
-- Query 14: Minimum Sales
-- =====================================================
SELECT
MIN(Sales) AS Lowest_Sale
FROM orders;

-- =====================================================
-- Query 15: Number of Orders
-- =====================================================
SELECT
COUNT(*) AS Total_Orders
FROM orders;

-- =====================================================
-- Query 16: Total Sales by Category
-- =====================================================
SELECT
Category,
SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Category;

-- =====================================================
-- Query 17: Total Profit by Category
-- =====================================================
SELECT
Category,
SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Category;

-- =====================================================
-- Query 18: Total Sales by Region
-- =====================================================
SELECT
Region,
SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Region
ORDER BY Total_Sales DESC;

-- =====================================================
-- Query 19: Total Profit by Region
-- =====================================================
SELECT
Region,
SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Region
ORDER BY Total_Profit DESC;

-- =====================================================
-- Query 20: Top 10 Customers by Sales
-- =====================================================
SELECT
`Customer Name`,
SUM(Sales) AS Total_Sales
FROM orders
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- =====================================================
-- Query 21: Top 10 Customers by Profit
-- =====================================================
SELECT
`Customer Name`,
SUM(Profit) AS Total_Profit
FROM orders
GROUP BY `Customer Name`
ORDER BY Total_Profit DESC
LIMIT 10;

-- =====================================================
-- Query 22: Total Sales by State
-- =====================================================
SELECT
State,
SUM(Sales) AS Total_Sales
FROM orders
GROUP BY State
ORDER BY Total_Sales DESC;

-- =====================================================
-- Query 23: Total Profit by State
-- =====================================================
SELECT
State,
SUM(Profit) AS Total_Profit
FROM orders
GROUP BY State
ORDER BY Total_Profit DESC;

-- =====================================================
-- Query 24: Orders with Profit Greater Than 500
-- =====================================================
SELECT *
FROM orders
WHERE Profit > 500;

-- =====================================================
-- Query 25: Profit Status using CASE
-- =====================================================
SELECT
`Customer Name`,
Sales,
Profit,
CASE
    WHEN Profit > 0 THEN 'Profit'
    WHEN Profit = 0 THEN 'Break Even'
    ELSE 'Loss'
END AS Profit_Status
FROM orders;

-- ===========================================
-- Query 26: Total Sales by Ship Mode
-- ===========================================
SELECT
    `Ship Mode`,
    SUM(Sales) AS Total_Sales
FROM orders
GROUP BY `Ship Mode`
ORDER BY Total_Sales DESC;

-- ===========================================
-- Query 27: Total Profit by Ship Mode
-- ===========================================
SELECT
    `Ship Mode`,
    SUM(Profit) AS Total_Profit
FROM orders
GROUP BY `Ship Mode`
ORDER BY Total_Profit DESC;

-- ===========================================
-- Query 28: Top 10 Cities by Sales
-- ===========================================
SELECT
    City,
    SUM(Sales) AS Total_Sales
FROM orders
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;

-- ===========================================
-- Query 29: Top 10 States by Profit
-- ===========================================
SELECT
    State,
    SUM(Profit) AS Total_Profit
FROM orders
GROUP BY State
ORDER BY Total_Profit DESC
LIMIT 10;

-- ===========================================
-- Query 30: Average Sales by Category
-- ===========================================
SELECT
    Category,
    ROUND(AVG(Sales),2) AS Average_Sales
FROM orders
GROUP BY Category;

-- ===========================================
-- Query 31: Average Profit by Category
-- ===========================================
SELECT
    Category,
    ROUND(AVG(Profit),2) AS Average_Profit
FROM orders
GROUP BY Category;

-- ===========================================
-- Query 32: Customers with More Than 5 Orders
-- ===========================================
SELECT
    `Customer Name`,
    COUNT(*) AS Orders_Count
FROM orders
GROUP BY `Customer Name`
HAVING COUNT(*) > 5
ORDER BY Orders_Count DESC;

-- ===========================================
-- Query 33: Categories with Sales > 50000
-- ===========================================
SELECT
    Category,
    SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Category
HAVING SUM(Sales) > 50000;

-- ===========================================
-- Query 34: Top 5 Most Profitable Customers
-- ===========================================
SELECT
    `Customer Name`,
    SUM(Profit) AS Total_Profit
FROM orders
GROUP BY `Customer Name`
ORDER BY Total_Profit DESC
LIMIT 5;

-- ===========================================
-- Query 35: Top 5 Loss Making Customers
-- ===========================================
SELECT
    `Customer Name`,
    SUM(Profit) AS Total_Profit
FROM orders
GROUP BY `Customer Name`
ORDER BY Total_Profit ASC
LIMIT 5;

SELECT VERSION();

-- ===========================================
-- Query 36: Category with Highest Sales
-- ===========================================
SELECT
    Category,
    SUM(Sales) AS Total_Sales
FROM orders
GROUP BY Category
ORDER BY Total_Sales DESC;

-- ===========================================
-- Query 37: Category with Highest Profit
-- ===========================================
SELECT
    Category,
    SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Category
ORDER BY Total_Profit DESC;

-- ===========================================
-- Query 38: Top 10 Sub-Categories by Sales
-- ===========================================
SELECT
    `Sub-Category`,
    SUM(Sales) AS Total_Sales
FROM orders
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC
LIMIT 10;

-- ===========================================
-- Query 39: Top 10 Sub-Categories by Profit
-- ===========================================
SELECT
    `Sub-Category`,
    SUM(Profit) AS Total_Profit
FROM orders
GROUP BY `Sub-Category`
ORDER BY Total_Profit DESC
LIMIT 10;

-- ===========================================
-- Query 40: Bottom 10 Sub-Categories by Profit
-- ===========================================
SELECT
    `Sub-Category`,
    SUM(Profit) AS Total_Profit
FROM orders
GROUP BY `Sub-Category`
ORDER BY Total_Profit ASC
LIMIT 10;

-- ===========================================
-- Query 41: Top 10 Customers by Sales
-- ===========================================
SELECT
    `Customer Name`,
    SUM(Sales) AS Total_Sales
FROM orders
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- ===========================================
-- Query 42: Top 10 Customers by Profit
-- ===========================================
SELECT
    `Customer Name`,
    SUM(Profit) AS Total_Profit
FROM orders
GROUP BY `Customer Name`
ORDER BY Total_Profit DESC
LIMIT 10;

-- ===========================================
-- Query 43: Top 10 States by Sales
-- ===========================================
SELECT
    State,
    SUM(Sales) AS Total_Sales
FROM orders
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;

-- ===========================================
-- Query 44: Top 10 Cities by Profit
-- ===========================================
SELECT
    City,
    SUM(Profit) AS Total_Profit
FROM orders
GROUP BY City
ORDER BY Total_Profit DESC
LIMIT 10;

-- ===========================================
-- Query 45: Segment Performance
-- ===========================================
SELECT
    Segment,
    COUNT(*) AS Orders,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM orders
GROUP BY Segment
ORDER BY Total_Sales DESC;
SELECT Sales
FROM orders
LIMIT 10;
SELECT Profit
FROM orders
LIMIT 10;
SELECT Sales
FROM orders
LIMIT 10;
SELECT Profit
FROM orders
LIMIT 10;
DESCRIBE orders;
SHOW COLUMNS FROM orders
WHERE Field IN ('Sales', 'Profit', 'Quantity', 'Discount');
SHOW COLUMNS FROM orders
WHERE Field IN ('Sales', 'Profit', 'Quantity', 'Discount');