use gdb023;

### SQL protfolio project 2

#1. Customer Distribution Analysis.Show the distribution of customers across different channels and platforms.
#Include: channel, platform, customer_count, percentage_of_total
#Sort by customer_count in descending order.

select *, round(customer_count/(select count(*) from dim_customer),2)*100 as percentage_of_total
from (
select channel, platform , count(*) as customer_count from dim_customer
group by channel, platform) as cus_dist
order by customer_count desc;

# 2. Regional Sales Performance
#Compare total sales quantity by region and sub-zone for fiscal year 2021.
#Include: region, sub_zone, total_sold_quantity, percentage_of_region_sales
#Filter for regions with sales > 1 million units.

select *,round((total_sold_quantity)/ (select sum(sold_quantity) from fact_sales_monthly
where fiscal_year ='2021') *100,2) as percentage_of_region_sales
from (
select region, sub_zone, sum(sold_quantity) as total_sold_quantity from dim_customer as c
join fact_sales_monthly as s on c.customer_code = s.customer_code
where fiscal_year ='2021'
group by region , sub_zone
having total_sold_quantity > 1000000) as a;


# 3. Product Variant Popularity
#Analyze which product variants perform best in each market.
#Include: market, variant, total_sold_quantity, market_share_percentage
 
 select *, round(100*total_sold_quantity/sum(total_sold_quantity) over(partition by market),2)
 as market_share from (
 select market,variant, sum(sold_quantity) as total_sold_quantity from dim_customer as c join (
 select variant, sold_quantity, customer_code from dim_product as p
 join fact_sales_monthly as s on p.product_code =s.product_code) as tab 
 on c.customer_code =tab.customer_code
 group by market, variant
 ) as a
 order by market asc , total_sold_quantity desc;
# To get the exact percentage of variant sold in each market do not add the order by in over () instead use it outside

#4. Manufacturing Cost vs. Gross Price Analysis
#Calculate average markup by product division and segment.
#Show: division, segment, avg_markup, products_count
#Filter for segments with ≥5 products.

#markup = (gross_price - manufacturing_cost) / manufacturing_cost
select division, segment, round(avg(markup),2) as avg_markup, count(*) as products_count
 from (
select division, segment, ((gross_price - manufacturing_cost) / manufacturing_cost) as markup
  from (
select prod.product_code, division , segment, gross_price, manufacturing_cost from (
select p.product_code,division, segment, gross_price from dim_product as p
join fact_gross_price as g on
p.product_code = g.product_code
 ) as prod 
 join fact_manufacturing_cost as c on
 prod.product_code =c.product_code
 ) as x
 ) as final
 group by division, segment;
 
 ### Advanced Analytics
 
# 5. Customer Lifetime Value (CLV) Analysis
#Calculate 12-month CLV for each customer.
#Include: customer_code, customer, total_gross_sales, total_manufacturing_cost, clv, clv_rank
#Only include customers with sales in both 2020 and 2021.

#get all the unique customers who appeared in 2020 and 2021 
with customers_both_years as (
select distinct customer_code from fact_sales_monthly as s1
where fiscal_year ='2020'
and exists  (select 1 
from fact_sales_monthly as s2
where s1.customer_code =s2.customer_code
and fiscal_year='2021'
)
),

#CLV = Total Gross Sales – Total Manufacturing Cost
customer_sales AS (
    SELECT 
        s.customer_code,
        c.customer,
        SUM(g.gross_price * s.sold_quantity) AS total_gross_sales,
        SUM(mc.manufacturing_cost * s.sold_quantity) AS total_manufacturing_cost
    FROM fact_sales_monthly AS s
    JOIN dim_customer AS c ON s.customer_code = c.customer_code
    JOIN fact_gross_price AS g ON s.product_code = g.product_code AND s.fiscal_year = g.fiscal_year
    JOIN fact_manufacturing_cost AS mc ON s.product_code = mc.product_code
    WHERE s.customer_code IN (SELECT customer_code FROM customers_both_years)
    GROUP BY s.customer_code, c.customer
)

select *, round(total_gross_sales - total_manufacturing_cost) as clv
, rank() over(order by round(total_gross_sales - total_manufacturing_cost) desc)
as clv_rank  from customer_sales;






