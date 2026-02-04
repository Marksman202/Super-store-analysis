-- File: Super_Store_Top_Selling_Categories.sql
-- Purpose: Find Super Store Sales Top Selling Categories Analysis
-- Tool: Google BigQuery
-- Dataset: teak-frame-476521-f5.SuperStore.Super Store Data Analysis
-- Author: Mark Nesbitt
-- Date Feb 2026
-- Notes: 



SELECT 
  `Product Category`, Sales, 
  ROUND(SUM(SALES), 2) AS Total_Sales
FROM `teak-frame-476521-f5.SuperStore.Super Store Data Analysis`
GROUP BY `Product Category`, Sales
ORDER BY Total_Sales DESC