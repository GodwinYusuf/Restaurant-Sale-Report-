/** Author : Godwin Yusuf
Date:		25/11/2023
Title: 	   BalajiFood
 Tool: 	   SQL on Github 
**/


-- Year distribution of transaction and quantity through the years of the dataset.ALTER

(SELECT 
    year , MONTH, SUM(transaction_amount) as Year_Amount, SUM(quantity) as Year_Quantity
FROM
    balajifood
    WHERE YEAR =2023
    group by MONTH
     )
UNION ALL
   (SELECT 
    year , MONTH, SUM(transaction_amount) as Year_Amount, SUM(quantity) as Year_Quantity
FROM
    balajifood
    WHERE YEAR =2022
    group by MONTH
   )
    ORDER BY MONTH;