/** Author : Godwin Yusuf
Date:		25/11/2023
Title: 	   BalajiFood
 Tool: 	   SQL on Github 
**/

-- The Year 2022 Sale report, including quantity sold, total transaction amount in the various month through out the year.

SELECT 
    Year, month,
    SUM(quantity) AS S_Quantity,
    SUM(transaction_amount) AS `S_TransactionAmount($)`
FROM
    balajifood
    where year = 2022 
GROUP BY month
order by month;



