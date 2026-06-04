-- Databricks notebook source
SELECT*
FROM `retail`.`default`.`retail_sales_dataset`
Limit 10;
 
 SELECT COUNT(DISTINCT `CUSTOMER ID`) AS unique_customers,
 Date,
 YEAR(Date) AS trans_year,
 MONTH(Date) AS trans_month,
 MONTHNAME(Date) AS trans_month_name,
 DAY(Date) AS trans_day,
 DAYNAME(Date) AS trans_day_name,
 SUM(`TOTAL AMOUNT`) AS revenue,
  `Product Category`
 FROM `retail`.`default`.`retail_sales_dataset`
 GROUP BY ALL;

 


