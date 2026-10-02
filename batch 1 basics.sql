-- BATCH 1
/*Q1 — Orders by Year
Find the number of orders placed in each year.*/

select year(order_date) as order_year,count(order_id) as total_orders
from orders
group by order_year
order by order_year;

/*Q2 — Orders by Month
Find the number of orders placed in each month, showing:
•	year 
•	month number 
•	order count */

select year(order_date) as order_year,month(order_date) as order_month, count(order_id)
from orders
group by year(order_date),month(order_date)
order by year(order_date),month(order_date);

/*Q3 — Monthly Revenue
Calculate total revenue for each year-month combination.*/
select year(order_date) as order_year,month(order_date) as order_month, sum(amount) as revenue 
from orders
group by year(order_date),month(order_date)
order by year(order_date),month(order_date);

/*Q4 — Orders in a Date Range
Find all orders placed between 2026-01-01 and 2026-03-31, inclusive.*/


/*Q5 — Days Since Order
For every order, calculate how many days have passed between order_date and '2025-12-31'.*/
select * ,datediff('2026-12-31',order_date) as days_since_order
from orders;

/*Q6 — Order Age Classification
Classify each order based on the number of days between order_date and '2025-12-31':
•	0–30 days → Recent 
•	31–90 days → Medium 
•	91+ days → Old */

select* ,datediff('2026-12-31',order_date) as days_since_order,
case when datediff('2026-12-31',order_date)<=30 then 'Recent'
	 when datediff('2026-12-31',order_date)<=90 then 'Medium'
     else 'Old' end as order_category 
     from orders;

/*Q7 — Monthly Average Order Value
For each year-month, calculate:
•	total orders 
•	total revenue 
•	average order value */

select year(order_date)as order_year,month(order_date) as order_month , count(order_id) as total_orders, 
sum(amount) as revenue, round(avg(amount),2) as AOV
from orders
group by year(order_date),month(order_date)
order by year(order_date),month(order_date);

/*Q8 — Customer First Order Date
For every customer who has placed an order, find their first order date.*/

SELECT customer_id,MIN(order_date) AS first_order_date
FROM orders
GROUP BY customer_id
ORDER BY customer_id;

/*Q9 — Customer Last Order Date
For every customer who has placed an order, find their most recent order date.*/
select customer_id,max(order_date) as last_order
from orders
group by customer_id
order by customer_id;

/*Q10 — Customer Recency
For every customer who has placed an order, calculate the number of days 
between their most recent order date and '2026-12-31'.*/
	select customer_id,max(order_date) as last_order,
	datediff('2026-12-31',max(order_date)) as gap_between
	from orders
	group by customer_id;







