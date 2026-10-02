-- BATCH 2
/*Q1 — Monthly Order Volume
Find the number of orders for each month of 2026.
Return:
•	month number 
•	month name 
•	total orders */

select month(order_date)as order_month,monthname(order_date)as month_name,count(order_id) as total_orders
from orders
group by order_month,month_name
order by order_month;

/*Q2 — Monthly Revenue
Calculate the total revenue for each month of 2026.
Return:
•	month number 
•	month name 
•	revenue */
select month(order_date)as order_month,monthname(order_date)as month_name,sum(amount) as total_revenye
from orders
group by order_month,month_name
order by order_month;

/*Q3 — Monthly AOV
For each month, calculate:
•	total orders 
•	total revenue 
•	average order value (AOV) 
Round AOV to 2 decimal places.*/
select month(order_date)as order_month, monthname(order_date) as month_name,
count(order_id) as total_orders, sum(amount) as revenue,round(avg(amount),2) as AOV
from orders
group by order_month,month_name
order by order_month;

/*Q4 — Orders in the First Quarter
Find all orders placed during Q1 2026.
Q1 = January, February, March.
Return:
•	order_id 
•	customer_id 
•	amount 
•	order_date */
select* from orders
where order_date<'2026-04-01';

/*Q5 — Orders After a Specific Date
Find all orders placed after June 30, 2026.
Return:
•	order_id 
•	customer_id 
•	amount 
•	order_date */

select* from orders
where order_date>'2026-06-30';

/*Q6 — Customer First and Last Order
For every customer who placed an order, find:
•	customer_id 
•	first order date 
•	last order date */
select customer_id,
min(order_date) as first_order, max(order_date) as last_order
from orders
group by customer_id
order by customer_id;

/*Q7 — Customer Ordering Span
For every customer, calculate the number of days between their first and last order.
Return:
•	customer_id 
•	first order date 
•	last order date 
•	days between first and last order */
select customer_id,
min(order_date) as first_order, max(order_date) as last_order,
datediff(max(order_date),min(order_date)) days_between
from orders
group by customer_id
order by customer_id;

/*Q8 — 30-Day Order Window
For every order, calculate the date 30 days after the order.
Return:
•	order_id 
•	order_date 
•	30_day_date */
select *,date_add(order_date,interval 30 day) as POST_30_DAYS
from orders;

/*Q9 — 30 Days Before Order
For every order, calculate the date 30 days before the order.
Return:
•	order_id 
•	order_date 
•	previous_30_day_date */
select *,date_sub(order_date,interval 30 day) as 30_DAYS_earlier
from orders;

/*Q10 — Customer Recency Classification
As of December 31, 2026, classify every customer based on their most recent order:
•	0–30 days → Recent 
•	31–90 days → Medium 
•	91+ days → Old 
Return:
•	customer_id 
•	last order date 
•	days since last order 
•	customer recency category*/
select customer_id,max(order_date) as most_recent_order,
case
	when datediff('2026-12-31',max(order_date))>90 then 'Old'
    when datediff('2026-12-31',max(order_date))>30 then 'Medium'
    else 'Recent' end as receny
from orders
group by customer_id;







