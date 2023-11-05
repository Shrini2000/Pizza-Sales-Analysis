
select * from pizza_sales

select SUM(total_price) AS Total_Revenue from pizza_sales

select SUM(total_price) / COUNT(DISTINCT order_id) AS Avg_order_value from pizza_sales

select SUM(quantity) AS Total_pizza_sold from pizza_sales

select COUNT(DISTINCT order_id) AS Total_orders from pizza_sales

select CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / 
   CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS Avg_Pizzas_Per_Order from pizza_sales

select DATENAME(WEEKDAY, order_date) AS Order_day, COUNT(DISTINCT order_id) AS Total_orders
from pizza_sales
GROUP BY DATENAME(WEEKDAY, order_date)

select DATENAME(MONTH, order_date) AS Order_month, COUNT(DISTINCT order_id) AS Total_orders
from pizza_sales
GROUP BY DATENAME(MONTH, order_date)
ORDER BY Total_orders DESC

select pizza_category, CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_sales, 
CAST(SUM(total_price) * 100 / (select SUM(total_price) from pizza_sales) AS DECIMAL(10, 2)) AS PCT
from pizza_sales
GROUP BY pizza_category

select pizza_size, CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_sales, 
CAST(SUM(total_price) * 100 / (select SUM(total_price) from pizza_sales) AS DECIMAL(10, 2)) AS PCT
from pizza_sales
GROUP BY pizza_size
ORDER BY PCT DESC

select TOP 5 pizza_name, SUM(total_price) AS Total_Revenue from pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC

select TOP 5 pizza_name, SUM(total_price) AS Total_Revenue from pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue ASC

select TOP 5 pizza_name, SUM(quantity) AS Total_quantity from pizza_sales
GROUP BY pizza_name
ORDER BY Total_quantity DESC

select TOP 5 pizza_name, SUM(quantity) AS Total_quantity from pizza_sales
GROUP BY pizza_name
ORDER BY Total_quantity ASC

select TOP 5 pizza_name, COUNT(DISTINCT order_id) AS Total_orders from pizza_sales
GROUP BY pizza_name
ORDER BY Total_orders DESC

select TOP 5 pizza_name, COUNT(DISTINCT order_id) AS Total_orders from pizza_sales
GROUP BY pizza_name
ORDER BY Total_orders ASC









