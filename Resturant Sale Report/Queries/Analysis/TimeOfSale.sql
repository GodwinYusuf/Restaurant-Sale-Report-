/** Author : Godwin Yusuf
Date: 	   00:26 18/11/2023
Title: 	   Resturant Sales Report
 Tool: 	   SQL on Github **/
 
-- The time of sale made all through from balajifood table.
SELECT  
  time_of_sale,
    SUM(quantity) AS T_Quantity,
    SUM(transaction_amount) AS `T_Transaction($)`
FROM
    balajifood
GROUP BY time_of_sale
ORDER BY `T_transaction($)` ;








Select *
from balajifood;
