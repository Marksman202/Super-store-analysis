-- File: Super_Store_Monthly_Sales_Trends.sql
-- Purpose: Find Super Store Monthly Sales Trends Analysis
-- Tool: Google BigQuery
-- Dataset: teak-frame-476521-f5.SuperStore.Super Store Data Analysis
-- Author: Mark Nesbitt
-- Date: February 2026
-- Notes: 


SELECT 
  FORMAT_DATE('%Y-%m', `Order Date`) AS Month, 
  SUM(Sales) AS TotalSales
FROM `teak-frame-476521-f5.SuperStore.Super Store Data Analysis` 
GROUP BY 
  Month
ORDER BY 
  Month;