-- SQL Transactions

-- Date : 17 Feb 2025
-- SQL Transactions

-- create database 
create database bank;

use bank;

create table accounts(
account_id int primary key,
account_name varchar(100),
balance decimal(10,2)
);

-- insert record 
insert into accounts (account_id,account_name,balance) values
(1,'rina',1000.00),
(2,'Shivam',4566.45),
(3,'Neha',2000.56),
(4,'Pooja',9000.00),
(5,'Krish',5600.00),
(6,'Rohan',500.00),
(7,'Shubham',400.00);

-- check table 
select * from accounts;

-- Start Transaction 

-- this transaction transfers rupee 200 from pooja to neha

Start transaction;

-- Step 1 take rupee 200 from pooja's account
update accounts 
set balance = balance - 200
where account_id = 4;

-- Step 2 add rupee 200 from neha's account
update accounts 
set balance = balance + 200
where account_id = 3;

-- commit the transaction - make changes permanent
commit;

-- show final balances after transation
select * from accounts;

-- Transaction with roll back
start transaction;

-- try to withdraw to much money from neha
update accounts 
set balance = balance - 1000
where account_id = 3;

-- cancel the transactions 
rollback;

select * from accounts;
