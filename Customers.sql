CREATE DATABASE CUSTOMERS;

USE CUSTOMERS;

CREATE TABLE CUSTOMERS(id int,c_id int primary key,c_name varchar(20),c_no int,c_location varchar(20),
c_home_no int,c_payment_type enum('online','offline'),c_dob bigint,c_mail varchar(30),
c_area_pincode int,c_state varchar(20));

CREATE TABLE ORDERS(id int,o_id int,o_date date,o_time time,c_id int,o_address varchar(20),
o_company enum('zomato','swiggy'),total_amount int,o_status enum('pending''shipped','completed'),
payment_method varchar(20),shipping_id int,
foreign key (c_id) references CUSTOMERS(c_id));

DESC CUSTOMERS;

INSERT INTO CUSTOMERS VALUES(1,101,'anu',767600,'TCI',20,'online',2002-06-24,'anuvhgmail',562123,'karnataka');
INSERT INTO CUSTOMERS VALUES(2,102,'poorna',910843,'mnhalli',21,'offline',2003-07-22,'poornavhgmail',562162,'kerala');
INSERT INTO CUSTOMERS VALUES(3,103,'vamadev',959107,'koppal',22,'online',2004-08-23,'vamadevgmail',512123,'andrapradesh');
INSERT INTO CUSTOMERS VALUES(4,104,'pushpa',974304,'haveri',23,'offline',2005-09-25,'pushpagmail',522345,'odisha');
INSERT INTO CUSTOMERS VALUES(5,105,'kirana',985678,'makali',24,'online',2001-04-01,'kiranagmail',501123,'jammu');
INSERT INTO CUSTOMERS VALUES(6,106,'chandru',861878,'hospete',25,'offline',2002-05-17,'chandrugmail',522322,'kashmir');
INSERT INTO CUSTOMERS VALUES(7,107,'likith',876546,'byadgi',26,'online',2000-02-24,'likithgmail',587654,'odisha');
INSERT INTO CUSTOMERS VALUES(8,108,'ratan',74574,'nelmangala',27,'online',2002-08-30,'ratangmail',562456,'assam');
INSERT INTO CUSTOMERS VALUES(9,109,'soumya',76178,'nagasandra',28,'offline',2012-06-31,'soumyagmail',561651,'delhi');
INSERT INTO CUSTOMERS VALUES(10,110,'laxmi',87687,'makali',29,'online',20013-06-29,'laxmigmail',555444,'goa');
INSERT INTO CUSTOMERS VALUES(11,111,'sanjeevini',11111,'dasanapura',30,'online',2005-12-24,'sanjiigmail',561561,'gujarat');
INSERT INTO CUSTOMERS VALUES(12,112,'sneha',22222,'marison',31,'offline',2005-11-11,'snehagmail',200001,'arunachal');
INSERT INTO CUSTOMERS VALUES(13,113,'bharathi',33333,'media',32,'online',2014-07-20,'bharathigmail',562123,'bihar');
INSERT INTO CUSTOMERS VALUES(14,114,'arathi',444444,'peenya',33,'online',2015-09-21,'arathigmail',200111,'chattisgarh');
INSERT INTO CUSTOMERS VALUES(15,115,'harshita',555555,'rajajinagar',34,'online',2016-08-12,'harshitagmail',562123,'punjab');
INSERT INTO CUSTOMERS VALUES(16,116,'rakesh',666666,'mahalaxmi',35,'online',2017-01-24,'rakeshgmail',562123,'bengal');
INSERT INTO CUSTOMERS VALUES(17,117,'vaishakh',777777,'nagarbhavi',36,'online',2018-10-24,'vaishakhgmail',562123,'haryana');
INSERT INTO CUSTOMERS VALUES(18,118,'rahul',88888,'sampige',37,'online',2019-04-24,'rahulgmail',562123,'manipur');
INSERT INTO CUSTOMERS VALUES(19,119,'kadambari',99999,'btm',38,'online',2020-07-24,'kadambarigmail',562123,'meghalaya');
INSERT INTO CUSTOMERS VALUES(20,120,'shashi',123412,'bnashankari',39,'online',2021-06-15,'shashigmail',562123,'madhyapradesh');

SELECT * FROM CUSTONERS;

select c_name,c_state, case when c_state='assam' then c_name
 when c_state='jammu' then c_name
 else null end as CUSTOMERS from CUSTOMERS;
 
 select c_name,c_id, case when c_id=110 then c_name
 when c_id=111 then c_name
 else null end as CUSTOMERS from CUSTOMERS;
 
  select*from CUSTOMERS limit 3,9;
  select*from CUSTOMERS limit 10,5;
  
  select count(*) as c_name, c_dob from CUSTOMERS group by c_dob;
  select count(*) as c_state, c_mail from CUSTOMERS group by c_mail;
  
  select sum(c_id), id from CUSTOMERS group by id having id>5;
  select sum(id), c_id from CUSTOMERS group by c_id having c_id>115;
  
  select*from CUSTOMERS order by id;    /*ascending order*/
  select*from CUSTOMERS order by c_id desc;   /*decending order*/

DESC ORDERS;

INSERT INTO ORDERS VALUES(21,01,'2000-01-01','01:00:00',101,'indiranagar','zomato',250,'completed','CreditCard',201);
INSERT INTO ORDERS VALUES(22,02,'2001-02-02','02:00:00',102,'malleshwaram','swiggy',150,'completed','ATMCard',202);
INSERT INTO ORDERS VALUES(23,03,'2002-03-03','03:00:00',103,'chickpete','zomato',550,'completed','PhonePay',203);
INSERT INTO ORDERS VALUES(24,04,'2003-04-04','04:00:00',104,'vijaynagar','zomato',650,'completed','GogglePay',204);
INSERT INTO ORDERS VALUES(25,05,'2004-05-05','05:00:00',105,'makali','swiggy',750,'completed','Paytm',205);
INSERT INTO ORDERS VALUES(26,06,'2005-05-06','06:00:00',106,'madavara','zomato',800,'completed','CreditCard',206);
INSERT INTO ORDERS VALUES(27,07,'2006-06-07','07:00:00',107,'nagasandra','swiggy',900,'completed','ATMCard',207);
INSERT INTO ORDERS VALUES(28,08,'2007-07-07','08:00:00',108,'dasarahalli','zomato',950,'completed','CreditCard',208);
INSERT INTO ORDERS VALUES(29,09,'2008-08-08','09:00:00',109,'jalahalli','zomato',850,'completed','PhonePay',209);
INSERT INTO ORDERS VALUES(30,10,'2009-09-09','10:00:00',110,'mahalaxmi','swiggy',1000,'completed','CreditCard',210);
INSERT INTO ORDERS VALUES(31,11,'2010-10-09','11:00:00',111,'belgaum','swiggy',2000,'completed','CreditCard',211);
INSERT INTO ORDERS VALUES(32,12,'2011-11-11','12:00:00',112,'bagalkot','zomato',3000,'completed','ATMCard',212);
INSERT INTO ORDERS VALUES(33,13,'2012-09-22','01:10:00',113,'hassan','swiggy',4000,'completed','CreditCard',213);
INSERT INTO ORDERS VALUES(34,14,'2000-02-11','02:00:40',114,'bangalore','zomato',5000,'completed','GogglePay',214);
INSERT INTO ORDERS VALUES(35,15,'2001-06-22','03:00:30',115,'shivamoga','swiggy',6000,'completed','CreditCard',215);
INSERT INTO ORDERS VALUES(36,16,'2000-09-23','04:25:00',116,'shira','zomato',7000,'completed','Paytm',216);
INSERT INTO ORDERS VALUES(37,17,'2000-09-24','05:00:50',117,'tumkur','swiggy',8000,'completed','CreditCard',217);
INSERT INTO ORDERS VALUES(38,18,'2000-09-25','06:15:00',118,'mysore','zomato',9000,'completed','PhonePay',218);
INSERT INTO ORDERS VALUES(39,19,'2000-09-26','07:00:35',119,'mandya','swiggy',1200,'completed','CreditCard',219);
INSERT INTO ORDERS VALUES(40,20,'2000-09-27','08:10:00',120,'shikaripura','zomato',1300,'completed','CreditCard',220);

SELECT * FROM ORDERS;


select o_company,payment_method, case when payment_method='CreditCard' then o_company
 when payment_method='Paytm' then o_company
 else null end as ORDERS from ORDERS;
 
 select o_address,o_id, case when o_id=02 then o_address
 when o_id=05 then o_address
 else null end as ORDERS from ORDERS;
 
  select*from ORDERS limit 3,9;
  select*from ORDERS limit 10,5;
  
  select count(*) as c_company, shipping_id from ORDERS group by shipping_id;
  select count(*) as o_date, o_time from ORDERS group by o_time;
  
  select sum(o_id), id from ORDERS  group by id having id>5;
  select sum(id), o_id from ORDERS  group by o_id having o_id>10;
  
  select*from ORDERS  order by id;    /*ascending order*/
  select*from ORDERS  order by o_id desc;   /*decending order*/




