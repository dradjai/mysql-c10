--create candystore database:
create database candystore;

--switch to candystore database:
use candystore;

--create the customers table
create table customers(
  customerId int auto_increment primary key,
  firstName varchar(20) not null,
  lastName varchar(20) not null,
  email varchar(30) not null,
  phone varchar(20) not null,
  createdAt Timestamp default current_timestamp
);

-- Add our first customer:
insert into customers (firstName, lastName, email, phone) 
values('Bridgette', 'Lemus', 'bridgette@bocacode', '954-CATS'),
('Kaniel', 'Tapper', 'kaniel@bocacode', '950-COOL'),
('Liz', 'Cerami', 'liz@bocacode', '484-DUNO');


--Lets get all of the customers:
select * from customers;

--To find a specific customer, run:
select * from customers where firstName = 'Cassandra';

--create the orders table:
create table orders(
  orderId int auto_increment primary key,
  customerId int not null,
  total decimal(8,2),
  tax decimal(7,2),
  createdAt Timestamp default current_timestamp
);

insert into orders (customerId, total, tax)
values(1, 14.95, 2.50),
(1, 8.99, 1.50),
(2, 3.75, .90),
(2, 14.95, 2.50);


--How can i search for Damian's orders
select * from customers 
join orders on orders.customerId = customers.customerId
where firstName = 'Damian';