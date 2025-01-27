show databases;
create database lucy;
use lucy;
create table department(
emp_id int auto_increment primary key,
name varchar (20),
salary int,
city varchar (20),
dept enum ("hr","it","sales","finance"),
date_of_join date,
email varchar(50) unique key,
mobile_no varchar(20) unique key
);
show tables;
select * from department;
insert into department 
(name,salary,city,dept,date_of_join,email,mobile_no)
values
("neha",85000,"mumbai","it","2024-11-20","neha@p4n.in",8974569854),
("Rina",86000,"pune","sales","2023-04-20","rina@p4n.in",8364569854),
("joy",4000,"surat","hr","2023-11-20","joy@p4n.in",8944569854),
("Shubham",83000,"pune","finance","2024-10-20","shubham@p4n.in",8974569856),
("Toy",15000,"bhuj","sales","2024-09-20","toy@p4n.in",8924569854);
select * from department;
