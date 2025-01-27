create database avlon;

use avlon;

create table customers(
customer_id int primary key,
FirstName varchar (20),
LastName varchar (20)
);

create table orders(
order_id int primary key,
customer_id int,
orderdate date,
foreign key (customer_id) references customers(customer_id)
);

select * from customers;
select * from orders;

insert into customers(customer_id,FirstName,LastName)
values ("101","Saii","Patel"),
("105","Neha","Kacchi"),
("108","Pankaj","Jha"),
("110","Chloe","Fernandes");

insert into orders(order_id,customer_id,orderdate)
values("121","101","2025-01-15"),
("131","105","2025-01-05"),
("151","108","2025-01-10");

