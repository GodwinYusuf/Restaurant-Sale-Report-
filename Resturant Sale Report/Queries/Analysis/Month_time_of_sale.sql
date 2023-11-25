/** Author : Godwin Yusuf
Date:		25/11/2023
Title: 	   BalajiFood
 Tool: 	   SQL on Github 
**/

-- This is a procedure that show a full sale calender for each month of the year and the time when most sales are happening.

DROP PROCEDURE time_of_sale;

DELIMITER $$

CREATE PROCEDURE Time_of_sale(in mnth int, in yr int)
BEGIN
SELECT 
   month,  day, time_of_sale,
    SUM(quantity) AS S_Quantity,
    SUM(transaction_amount) AS `S_TransactionAmount($)`
FROM
    balajifood
    WHERE month = mnth and year = yr
    GROUP BY   month,day, time_of_sale 
    ORDER BY DAY
    ;
    
END $$
DELIMITER ;

select *
from balajifood;