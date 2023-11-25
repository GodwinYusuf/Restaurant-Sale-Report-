/** Author : Godwin Yusuf
Date:		25/11/2023
Title: 	   BalajiFood
 Tool: 	   SQL on Github 
**/

-- Exploratory analysis on the total amouont and total quantity purchase on the various items from balajifood table.
SELECT  
    item_name,
    SUM(quantity) AS T_Quantity,
    SUM(transaction_amount) AS `T_Transaction($)`
FROM
    balajifood
GROUP BY item_name
ORDER BY `T_Transaction($)` DESC;