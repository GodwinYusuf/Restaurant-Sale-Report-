/** Author : Godwin Yusuf
Date: 	   00:26 18/11/2023
Title: 	   Resturant Sales Report
 Tool: 	   SQL on Github **/
 
-- The Transaction made with various means, showing the purchase and amount spent from balajifood table.
SELECT  
   transaction_type,
    SUM(quantity) AS S_quantity,
    SUM(transaction_amount) AS `S_TransactionAmount($)`
FROM
    balajifood
GROUP BY transaction_type
ORDER BY transaction_type ;








Select *
from balajifood;
