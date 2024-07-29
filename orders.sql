CREATE DATABASE orders;

USE orders;

CREATE TABLE orders(id int,order_name varchar(20),cost int,order_id int primary key,
created_at timestamp,created_by varchar(20),modifies_at timestamp,modified_by varchar(20));

CREATE TABLE payment(id int,price bigint,payment_id int primary key,p_order_id int ,payment_status
varchar(20),created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20),
foreign key(p_order_id)references orders(order_id));

CREATE TABLE restaurant(id int,restaurant_name varchar(20),restaurant_id int primary key,loc varchar(20),
r_order_id int,ratings int,r_payment_id int,
created_by timestamp,created_at varchar(20),modified_by timestamp,modified_at varchar(20),
foreign key(r_order_id)references orders(order_id),foreign key(r_payment_id)references payment(payment_id));

CREATE TABLE delivery(id int,person_name varchar(20),mode_of_payment enum('online','offline'),
d_restaurant_id int,delivery_id int primary key,d_order_id int,created_at timestamp,
created_by varchar(20),modified_at timestamp,modified_by varchar(20),
foreign key(d_restaurant_id)references restaurant(restaurant_id),
foreign key(d_order_id)references orders(order_id));

select * from orders;
select * from payment;
select * from restaurant;
select * from delivery;


insert into orders values(1,'pizza',250,24,'2024-07-29','anu','2024-07-28','company');
insert into orders values(2,'burger',500,10,'2024-07-25','poorna','2024-07-29','manager');
insert into orders values(3,'momos',100,5,'2021-06-24','sanjeevini','2021-07-22','server');
insert into orders values(4,'samosa',60,2,'2024-06-24','sneha','2024-07-26','manager');
insert into orders values(5,'masala',30,15,'2022-02-19','sushmita','2022-04-27','casher');

insert into payment values(1,50000,201,24,'success',now(),'anu',now(),'poorna');
insert into payment values(2,100000,605,10,'fail',now(),'sanjeevini',now(),'sneha');
insert into payment values(3,80000,202,5,'success',now(),'chandru',now(),'manager');
insert into payment values(4,10000,666,2,'success',now(),'bharathi',now(),'aarathi');
insert into payment values(5,90000,111,15,'fail',now(),'ratan',now(),'HR');


insert into restaurant values(1,'sogadu',2244,'rajajinagar',24,10,201,now(),'chandru',now(),'likith');
insert into restaurant values(2,'ruchi',1556,'koppal',10,9,605,now(),'sushmita',now(),'laxmi');
insert into restaurant values(3,'succhi',9876,'hospete',5,8,202,now(),'harshita',now(),'sanjeevini');
insert into restaurant values(4,'president',5455,'hubli',2,5,666,'2020-03-22','anu','2020-03-24','vamadev');
insert into restaurant values(5,'green',1019,'haveri',15,7,111,now(),'nagaraj',now(),'rakesh');


insert into delivery values(1,'anu','online',2244,110,15,now(),'poorna',now(),'chandru');
insert into delivery values(2,'ruchi','offline',1556,101,24,now(),'sanjii',now(),'sneha');
insert into delivery values(3,'likith','offline',9876,120,2,now(),'vamadev',now(),'annapoorna');
insert into delivery values(4,'nagaraj','online',5455,121,10,now(),'nagaraj',now(),'ratan');
insert into delivery values(5,'chandana','online',1019,100,5,now(),'rakesh',now(),'remo');

desc delivery;