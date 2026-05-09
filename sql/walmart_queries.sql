-- business problems 

--  What are the different payment methods, and how many transactions and items were sold with each method?  

select distinct payment_method, count(*) no_of_transaction , sum(quantity) as no_of_item_sold
from walmart_cleaned
group by payment_method;

--  Which category received the highest average rating in each branch?

select branch , category , avg(rating) as highest_avg_rating
from walmart_cleaned
group by branch , category
order by branch , avg(rating) desc


-- What is the busiest day of the week for each branch based on transaction volume?

SET SQL_SAFE_UPDATES = 0;
UPDATE walmart_cleaned
SET date = STR_TO_DATE(date, '%m/%d/%y');
ALTER TABLE walmart_cleaned
MODIFY COLUMN date DATE;
SET SQL_SAFE_UPDATES = 1;

SELECT 
    branch,
    DAYNAME(date) AS day_name,
    COUNT(*) AS total_transactions
FROM walmart_cleaned
GROUP BY branch, day_name
ORDER BY branch, total_transactions DESC;

-- How many items were sold through each payment method?

select distinct payment_method , sum(quantity) as no_of_item_sold
from walmart_cleaned
group by payment_method
order by sum(quantity) desc;

-- What are the average, minimum, and maximum ratings for each category in each city?

select 
category, 
city,
avg(rating) as avg_rating , 
min(rating) as min_rating , 
max(rating) as max_rating
from walmart_cleaned
group by category , city;

-- What is the total profit for each category, ranked from highest to lowest?

select category , sum(total*profit_margin) as total_profit
from walmart_cleaned
group by category
order by total_profit desc;

-- What is the most frequently used payment method in each branch?

select 
branch,
payment_method,
count(*) as total_trans
from walmart_cleaned
group by branch , payment_method
order by  total_trans desc;

-- How many transactions occur in each shift (Morning, Afternoon, Evening) across branches?

SET SQL_SAFE_UPDATES = 0;
UPDATE walmart_cleaned
SET time = STR_TO_DATE(time, '%H:%i:%s');
ALTER TABLE walmart_cleaned
MODIFY COLUMN time TIME;
SET SQL_SAFE_UPDATES = 1;

select branch , 
case
		WHEN time BETWEEN '00:00:00' AND '11:59:59' THEN 'Morning'
        WHEN time BETWEEN '12:00:00' AND '17:59:59' THEN 'Afternoon'
        ELSE 'Evening'
    END AS shift,
    count(*) as total_transactions
from walmart_cleaned
group by branch , shift
order by branch , total_transactions desc;











