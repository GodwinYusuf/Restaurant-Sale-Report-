/** Author : Godwin Yusuf
Date:		25/11/2023
Title: 	   BalajiFood
 Tool: 	   SQL on Github 
**/

--  Category distribution of the dataset by gender across the dataset.
SELECT 
    received_by,
    item_type,
    COUNT(item_type) AS categorydistribution, sum(item_price) as `TotalPrice($)`
FROM
    BALAJIFOOD
-- where year =2022 or 2023 to see the distribution of each year.
GROUP BY 1 , 2;




