/** Author : Godwin Yusuf
Date:		25/11/2023
Title: 	   BalajiFood
 Tool: 	   SQL on Github 
**/

-- Year and month category distribution


select
    year,
    month, item_type, count(item_type) as Count_item, sum(transaction_amount) as sale
FROM
    balajifood
    group by 1,2,3
    order by 1 desc,2 ;


select *
from balajifood;