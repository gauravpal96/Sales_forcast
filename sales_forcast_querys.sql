
CREATE DATABASE sales_forcasting;
USE sales_forcasting;
select * from raw_data;              -- UNCLEAN DATA
select * from clean_data;            -- CLEAN DATA
select count(*) FROM raw_data;


/* Query
 What is the total revenue generated?
 Which product category sold the most?
 Which month had the highest sales? 
 What is the late delivery percentage?
 Which customer segment brings the highest revenue?
 What are the top 5 best-selling products by quantity?
 What is the average order value?
 Which payment method is most used?
 Monthly and yearly Sales 
 Sales by Region
 Category-wise Sales
 Year-wise Total Revenue 
 Average Order Value per Store
 Rank of Total Sales by Store (Using RANK)
*/

# What is the total revenue generated?
create view total_revenue_generated as
select sum(total_price) as Total_Revenue from clean_data;

select * from total_revenue_generated;


# Which product category sold the most?
create view most_sold_porduct_category as
select category, count(quantity)as quantity_unit from clean_data
group by category
order by quantity_unit desc
limit 1;

select * from most_sold_porduct_category;

# Which month had the highest sales?
create view highest_sale_month as
select date_format(order_date, "%b")as month , sum(total_price)as total_sales from clean_data
group by date_format(order_date, "%b")
order by total_sales desc;

select * from highest_sale_month;

# What is the late delivery percentage?
create view late_delivery_percentage as
select round(100 * sum(case when delivery_status = "late" then 1 else 0 end) / count(*),2)
as late_delivery_percentage from clean_data;

select * from late_delivery_percentage;

# Which customer segment brings the highest revenue?
create view brings_highest_revenue_segment as
select customer_segment, sum(total_price)as high_revenue from clean_data
group by customer_segment
order by high_revenue desc
limit 1;

select * from brings_highest_revenue_segment;

# What are the top 5 best-selling products by quantity?
create view top_5_best_selling_products_by_quantity as
select product_name, count(quantity) as quantity_count from clean_data
group by product_name
order by quantity_count
limit 5;

select * from top_5_best_selling_products_by_quantity;


# What is the average order value?
create view average_order_value as
SELECT SUM(total_price) / COUNT(DISTINCT order_id) AS avg_order_value FROM clean_data;

select * from average_order_value;

# Which payment method is most used?
create view mostly_used_payment_method as
select payment_method, count(payment_method)as payment_count from clean_data
group by payment_method
order by payment_count desc;

select * from mostly_used_payment_method;

# Monthly and yearly Sales
create view monthly_and_yearly_sale as
select date_format(order_date, "%Y-%m") as yearly_month_sale,
sum(total_price)as total_sale from clean_data
group by date_format(order_date, "%Y-%m")
order by yearly_month_sale desc;

select * from monthly_and_yearly_sale;

# Sales by Region
create view sales_by_region as
select region, sum(total_price) as total_sales from clean_data
group by region
order by total_sales desc;

select * from sales_by_region;

# Category-wise Sales
create view category_sales as
select category, sum(total_price)as total_sales from clean_data
group by category
order by total_sales desc;

select * from category_sales;

# year wise total revenue
create view yearly_total_revenue as
select date_format(order_date, "%Y")as year, sum(total_price)as total_sale from clean_data
group by date_format(order_date, "%Y")
order by total_sale desc;

select * from yearly_total_revenue;


# Average Order Value per Store 
create view avg_order_value_per_store as
select store_id, round(sum(total_price) / count(order_id), 2)as order_count from clean_data
group by store_id
order by order_count desc;

select * from avg_order_value_per_store;

# Rank of Total Sales by Store
create view rank_of_total_sale_by_store as
select store_id, sum(total_price)as store_sales,
rank()over (order by sum(total_price))as sales_rank
from clean_data
group by store_id;

select * from rank_of_total_sale_by_store;
