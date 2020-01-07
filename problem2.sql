create database shop;				/*data-base created*/ 
Show databases;					/*it will show the present databases*/
use shop;
create table customer 
(
id int not null auto_increment,
first_name varchar(100) not null,
Last_name varchar(100) not null,
email varchar(500) not null,
Date_of_birth date not null,
Primary key(id)
);
describe customer;
create table seller 
(
id int not null auto_increment,
name varchar(100) not null,
gender varchar(100) not null,
primary key(id)
);
describe seller;
create table sales
(
id int not null auto_increment,
customer_id int not null,
seller_id int not null,
date date not null,
amount int not null,
primary key(id)
);
describe sales;
insert into customer
values(1,'a','b','ab@gmail.com',date(‘2000/02/01')),
(default,'c','d','cd@gmail.com',date('2000/02/02')),
(default,'e','f','ef@gmail.com',date('2000/02/03')),
(default,'g','h','gh@gmail.com',date('2000/02/04')),
(default,'i','j','ij@gmail.com',date('2000/02/05'));
insert into seller 
values(1,'hey','male'),
(default,'hello','female'),
(default,'hell','female'),
(default,'heaven','male'),
(default,'finally','female');
insert into sales
values(1,1,1,date('2019/12/02'),5000),
(default,2,1,date('2019/12/03'),5050),
(default,3,1,date('2019/12/04'),15000),
(default,4,1,date('2019/12/04'),50100),
(default,5,1,date('2019/12/05'),5400),
(default,1,2,date('2019/12/06'),2000),
(default,2,2,date('2019/12/06'),2100),
(default,3,2,date('2019/12/06'),21000),
(default,4,2,date('2019/12/07'),20010),
(default,5,2,date('2019/12/08'),13000),
(default,1,3,date('2019/12/09'),9000),
(default,2,3,date('2019/12/10'),9100),
(default,3,3,date('2019/12/10'),9050),
(default,4,4,date('2019/12/11'),19100),
(default,4,5,date('2019/12/11'),1900);



select select customer name from concat(last_name,',',first_name) as customer_name order by customer_name  ,name as seller_name,amount from customer inner join seller inner join sales on customer.id=seller.id where customer_id=seller_id;



create table copy
    (
   customer_name varchar(200) not null,
   seller_name varchar(200) not null,
   amount int not null
   );
   insert into copy select concat(last_name,',',first_name) as customer_name  ,name as 				seller_name,amount from customer inner join seller inner join sales on customer.id=seller.id where customer_id=seller_id;
   
 select * from copy order by customer_name asc, amount asc ;  
