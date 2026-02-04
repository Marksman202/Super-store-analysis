-- File: super_store_most_profitable_regions.sql
-- Purpose: Find Super Store most profitable regions analysis
-- Tool: Google BigQuery
-- Dataset: teak-frame-476521-f5.SuperStore.Super Store Data Analysis
-- Author: Mark Nesbitt
-- Date: February 2026
-- Notes: 


SELECT Region, SUM(PROFIT) AS TotalProfit
FROM `teak-frame-476521-f5.SuperStore.Super Store Data Analysis` 
GROUP BY Region
ORDER BY TotalProfit DESC;