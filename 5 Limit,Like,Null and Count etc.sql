use classicmodels;
select * from customers;

-- like
select * from customers where customerName like "a%";
select * from customers where customerName like "%a%";
select * from customers where customerName like "%e";

-- null
select * from customers where state is null;

-- not null
select * from customers where state is not null;

-- limit(top)
select * from customers limit 5;

-- group by
select country from customers group by country;

-- count()
select country , count(country) as total_country  
from customers group by country;

-- distinct
select distinct country from customers;