show databases;
use classicmodels;
show tables;
select * from customers;

-- where 
select * from customers where country = "USA";

-- and 
select * from customers where country = "USA" and state = "NY";

select * from customers where country = "USA" and creditlimit > 100000;

select * from customers where city = "NYC" and creditlimit < 100000;

-- or 
select * from customers where country = "USA" or creditlimit > 100000;

-- update 
select customerName,city,state,country,creditlimit, creditlimit+50000 as update_creditlimit
from customers where city = "NYC";

-- limit
select * from customers
limit 5;

-- order by
-- creditlimit
select * from customers order by creditlimit asc;
select * from customers order by creditlimit desc;

-- customername
select * from customers order by customername asc;
select * from customers order by customername desc;

