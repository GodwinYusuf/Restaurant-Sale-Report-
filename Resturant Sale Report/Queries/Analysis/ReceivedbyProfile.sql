/** Author : Godwin Yusuf
Date: 	   00:26 18/11/2023
Title: 	   Resturant Sales Report
 Tool: 	   SQL on Github **/
 
 -- Gender Distribution.
SELECT 
    received_by, count(received_by) as GenderDistribution
FROM
    balajifood
GROUP BY received_by;
 
 
 -- receivedby quantity and transaction summary from the balajifood table
SELECT 
    received_by,
    SUM(quantity) AS S_quantity,
    SUM(transaction_amount) AS `S_transactionAmount($)`
FROM
    balajifood
GROUP BY received_by;



from  balajifood;
