use sales_analytics;
select * from sales;

create view fact_sales as
select `Customer ID`, `Order ID`, `Product ID`, State, City, Quantity, Sales, Profit 
from sales; -- overall sales facts

create view dim_order as
select `Order ID`, `Order Date`, `Order Priority`, `Ship Mode`, `Shipping Cost` 
from sales; -- order details

create view dim_location as
select distinct City, State, Region, Country
from sales; -- location details with distinct city, state

create view dim_product as
select distinct `Product ID`, `Product Name`, Category, `Sub-Category` 
from sales; -- product details