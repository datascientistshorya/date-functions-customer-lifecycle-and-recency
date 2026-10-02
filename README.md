# MySQL Date & Time Analytics

A practical SQL analytics project focused on using MySQL date and time functions to analyze transactional data from an analyst's perspective.

The project progresses from basic date extraction and monthly reporting to customer recency, order aging, date arithmetic, and customer lifecycle analysis.

## Project Objective

The objective of this project is to build practical proficiency in MySQL date functions and learn how dates can be transformed into useful business metrics.

Rather than treating dates as simple columns, this project focuses on answering business questions such as:

* How many orders are generated each month?
* How does revenue change across months?
* What is the monthly Average Order Value?
* When did customers first and most recently purchase?
* How long has a customer been active?
* How recently has a customer purchased?
* Which orders are recent, medium-aged, or old?
* How can date arithmetic be used to create analytical time windows?

## Dataset

The project uses a transactional e-commerce dataset containing:

* `order_id`
* `customer_id`
* `product_id`
* `amount`
* `status`
* `order_date`

The analysis is performed using MySQL.

## Batch 1 — Core Date Analysis

The first batch established the fundamentals of working with dates in SQL.

### Questions Covered

**Q1 — Orders by Year**

Used `YEAR()` and aggregation to determine annual order volume.

**Q2 — Orders by Month**

Used `YEAR()` and `MONTH()` to analyze order volume by year-month combination.

**Q3 — Monthly Revenue**

Grouped transactions by year and month to calculate total revenue.

**Q4 — Orders in a Date Range**

Introduced filtering orders within a specific date range.

**Q5 — Days Since Order**

Used `DATEDIFF()` to calculate the number of days between an order date and a reference date.

**Q6 — Order Age Classification**

Combined `DATEDIFF()` with `CASE` to classify orders into:

* Recent
* Medium
* Old

**Q7 — Monthly Average Order Value**

Combined multiple metrics into one monthly business view:

* Total orders
* Revenue
* Average Order Value

**Q8 — Customer First Order Date**

Used `MIN(order_date)` to identify each customer's first purchase.

**Q9 — Customer Last Order Date**

Used `MAX(order_date)` to identify each customer's most recent purchase.

**Q10 — Customer Recency**

Used `MAX()` and `DATEDIFF()` to measure the gap between a customer's latest purchase and a reference date.

## Batch 2 — Advanced Date & Customer Analysis

The second batch extended the foundation into more practical business analysis.

### Questions Covered

**Q1 — Monthly Order Volume**

Calculated monthly order volume using:

* `MONTH()`
* `MONTHNAME()`
* `COUNT()`

**Q2 — Monthly Revenue**

Calculated monthly revenue and presented both month number and month name.

**Q3 — Monthly AOV**

Combined order count, revenue, and average order value into a monthly KPI view.

**Q4 — Orders in Q1**

Filtered transactions belonging to January, February, and March 2026.

**Q5 — Orders After a Specific Date**

Used date filtering to identify transactions after a defined business cutoff.

**Q6 — Customer First and Last Order**

Combined `MIN()` and `MAX()` to establish each customer's purchase timeline.

**Q7 — Customer Ordering Span**

Used `DATEDIFF()` between first and last orders to measure the customer's observed ordering span.

**Q8 — 30-Day Order Window**

Used `DATE_ADD()` to calculate a date 30 days after every order.

**Q9 — 30 Days Before Order**

Used `DATE_SUB()` to calculate a date 30 days before every order.

**Q10 — Customer Recency Classification**

Combined aggregation, `DATEDIFF()`, and `CASE` to classify customers according to their latest purchase:

* Recent: 0–30 days
* Medium: 31–90 days
* Old: 91+ days

## MySQL Functions Practiced

### Date Extraction

```sql
YEAR()
MONTH()
MONTHNAME()
```

### Date Difference

```sql
DATEDIFF()
```

### Date Arithmetic

```sql
DATE_ADD()
DATE_SUB()
```

### Aggregation

```sql
COUNT()
SUM()
AVG()
MIN()
MAX()
```

### Conditional Analysis

```sql
CASE
WHEN
THEN
ELSE
END
```

### Filtering and Grouping

```sql
WHERE
GROUP BY
ORDER BY
```

## What I Mastered

Through these two batches, I strengthened my ability to:

1. Extract year and month information from dates.
2. Build monthly business reports.
3. Calculate monthly revenue and AOV.
4. Filter transactions using business date ranges.
5. Calculate elapsed days using `DATEDIFF()`.
6. Create business classifications using `CASE`.
7. Identify customer first and last purchase dates.
8. Measure customer ordering spans.
9. Perform forward and backward date calculations.
10. Build customer recency segments.
11. Combine date functions with aggregation.
12. Translate raw transaction dates into business-oriented metrics.

## Business Analytics Perspective

Date analysis becomes significantly more useful when connected to business questions.

For example:

**Order Date → Monthly Performance**

Order dates can be transformed into monthly order volume, revenue, and AOV to understand business performance over time.

**Customer Order History → Customer Lifecycle**

First order and last order dates provide the foundation for understanding customer activity.

**Last Order Date → Recency**

Customer recency can help distinguish recently active customers from customers who have become inactive.

**Order Date → Aging**

Order-age classifications can organize transactions into meaningful analytical groups.

**Date Arithmetic → Analytical Windows**

`DATE_ADD()` and `DATE_SUB()` make it possible to create practical time windows around transactions.

## Key Analytical Concepts

### Monthly Performance

```text
Orders
Revenue
AOV
```

These metrics provide a basic monthly performance framework.

### Customer Recency

```text
Last Order Date
        ↓
Days Since Last Order
        ↓
Recent / Medium / Old
```

### Customer Ordering Span

```text
First Order Date
        ↓
Customer Activity Period
        ↓
Last Order Date
```

### Order Aging

```text
Order Date
    ↓
Days Since Order
    ↓
Recent / Medium / Old
```

## Skills Demonstrated

* MySQL
* SQL Aggregation
* Date & Time Functions
* Business KPI Analysis
* Customer Analytics
* Recency Analysis
* Transaction Analysis
* Conditional Logic
* Date Arithmetic
* Analytical Thinking

## Project Outcome

This project strengthened the ability to move beyond basic SQL querying and use dates as analytical dimensions.

The main focus was not simply learning date functions, but understanding how those functions can answer practical business questions around performance, customer activity, recency, and transaction aging.

## Next Step

This project forms the foundation for more advanced analytical SQL involving:

* Business KPI analysis
* Funnel analysis
* Conversion analysis
* Customer analytics
* Product analytics
* Advanced business cases

## Author

**Shorya Dev Bisht**

Data Analyst | Data Scientist | Web Analyst

LinkedIn: https://www.linkedin.com/in/shorya-bisht-a20144349/

GitHub: https://github.com/datascientistshorya

Medium: https://medium.com/@its.shoryabisht
