/** Author : Godwin Yusuf
Date: 	  22:55 17/11/2023
Title: 	   Resturant Sales Report
 Tool: 	   SQL on Github 

/** Data cleaning with MySql was done on the followin column
1- Replacing all empty cells in the `received_by` column in balajifood  with 'Others'
2- Replaced the "Mrs" and "Mr." to "Female" and "Male"
3- Unified the date format, change the data type from text to date.
**/

select *
from balajifood;


-- To show the datatype for each colum in the balajifood table.
desc balajifood;


-- Converting the datatype from 'text' to 'varchar(50)' 
ALTER TABLE balajifood
MODIFY column transaction_type varchar(50);


-- Replacing all empty cells in the transaction_type column to 'Others'
UPDATE balajifood 
SET 
    transaction_type = 'Others'
WHERE
    transaction_type = '';

-- Replacing all the "Mr." and "Mrs" to "Male" and "Female" to clearly state the gender demography in the 'received_by column
-- For Male
UPDATE balajifood 
SET 
    received_by = 'Male'
WHERE
    received_by = 'Mr.';

-- For Female
UPDATE balajifood 
SET 
    received_by = 'Female'
WHERE
    received_by = 'Mrs.';

-- To convert a text date column datatype to date column

-- Step 1 - Converting all date format to the a more conventional format  "01/01/2002". Replace "-" with "/"
UPDATE balajifood 
SET 
    `date` = REPLACE(date, '-', '/');

/** Step 2 - Convert our  text-date datatype column to varchar(20) datatype (You don't convert text date datatype directly to date datatype
this resulted to the %m/%d/%Y format **/

ALTER TABLE  balajifood
modify `date`varchar(20);

-- Step 3 - Change the date to the right format of date %d/%m/%Y
UPDATE balajifood 
SET 
    `date` = STR_TO_DATE(`date`, '%m/%d/%Y');

--  To update the date column format, still varchar(20) datatype
UPDATE balajifood 
SET 
    `date` = DATE_FORMAT((`date` , '%m/%d/%Y'), '%Y-%m-%d');

-- To now change the datatype from Varchar(20) to a date date datatype
ALTER TABLE  balajifood
MODIFY `date` DATE;


-- Add in a Year,Month and Day column

alter table balajifood
add column Year int;

alter table balajifood
add column Month int;

alter table balajifood
add column Day int;


-- Extracting the Year, Month and Day from the date column into the tables created.

update balajifood 
set Year = 
extract(Year from date); 

update balajifood 
set Month = 
extract(Month from date);    

update balajifood 
set Day = 
extract(Day from date);  

-- Extracting the Quarterly period of year from the  date column

alter table balajifood
add column Quarter int;

update  balajifood
set Quarter = Quarter(date);     
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    