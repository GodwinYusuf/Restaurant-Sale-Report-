/** Author : Godwin Yusuf
Date: 	   00:26 18/11/2023
Title: 	   Resturant Sales Report
 Tool: 	   SQL on Github **/
 
-- The item unit price for each item and total sale for each item in the dataset.

SELECT 
    item_name, MAX(item_price) AS `Item_price($)`, sum(transaction_amount) as `ItemSale($)`
FROM
    balajifood
GROUP BY item_name
;

