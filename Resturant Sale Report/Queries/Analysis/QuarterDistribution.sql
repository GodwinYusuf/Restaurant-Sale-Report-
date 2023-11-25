/** Author : Godwin Yusuf
Date:		25/11/2023
Title: 	   BalajiFood
 Tool: 	   SQL on Github 
**/


-- Showing the breakdown of transactiona and quantity through the various quarter.

select
    year,
    quarter,
    SUM(quantity) AS quantity,
    SUM(transaction_amount) AS amount
FROM
    balajifood
GROUP BY year , quarter
ORDER BY year DESC , quarter;