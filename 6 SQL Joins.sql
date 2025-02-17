create database p4n0091;
use p4n0091;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2)
);

INSERT INTO Customers (CustomerID, FirstName, LastName, Email)
VALUES
    (1, 'Pankaj', 'Sharma', 'pankaj@codeswithpankaj.com'),
    (2, 'Nishant', 'Patel', 'nishant@codeswithpankaj.com'),
    (3, 'Kiran', 'Desai', 'kiran@codeswithpankaj.com'),
    (4, 'Tanvi', 'Mehta', 'tanvi@codeswithpankaj.com'),
    (5, 'Kritek', 'Singh', 'kritek@codeswithpankaj.com'),
    (7, 'pooja', 'Sharma', 'pooja@codeswithpankaj.com');
    
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
    (101, 1, '2023-01-15', 250.00),
    (102, 2, '2023-02-20', 120.50),
    (103, 3, '2023-03-10', 320.75),
    (105, 4, '2023-05-12', 210.00),
    (106, 9, '2024-06-11', 910.00);
    
select * from customers;
select * from orders;

-- left join 

select customers.firstname,customers.email ,orders.orderdate , orders.totalamount 
from customers left join orders 
on customers.customerid = orders.customerid;

-- right join 

select customers.firstname,customers.email ,orders.orderdate , orders.totalamount 
from customers right join orders 
on customers.customerid = orders.customerid;

-- inner join

select customers.firstname,customers.email ,orders.orderdate , orders.totalamount 
from customers inner join orders 
on customers.customerid = orders.customerid;

-- full join 

select customers.firstname,customers.email ,orders.orderdate , orders.totalamount 
from customers left join orders 
on customers.customerid = orders.customerid
union
select customers.firstname,customers.email ,orders.orderdate , orders.totalamount 
from customers right join orders 
on customers.customerid = orders.customerid;