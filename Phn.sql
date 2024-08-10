CREATE DATABASE PHONE;

USE PHONE;


CREATE TABLE cust_details(id int primary key,use_id int,user_name varchar(20),password_hash varchar(20),email varchar(50),first_name varchar(30),last_name varchar(30),date_of_birth date,address varchar(40),phone_no bigint,created_by varchar(40));

INSERT INTO cust_details VALUES(1,200,'anu','hash1','anu@example.com','anu89','S','2003-05-31','kanakapura',7760576544,'keerthi');
INSERT INTO cust_details VALUES(2,201,'poorna','hash2','poorna@example.com','poorna23','HR','2003-03-13','harihara',9908765434,'keerthi');
INSERT INTO cust_details VALUES(3,202,'varsha','hash3','varsha@example.com','varsha23','M','2003-01-16','ramanagara',7776745679,'shivu');
INSERT INTO cust_details VALUES(4,203,'rakesh','hash4','rakesh@example.com','rakesh23','S','2003-07-31','vijaynagar',9977665544,'nayana');
INSERT INTO cust_details VALUES(5,204,'shashi','hash5','shashi@example.com','shashi56','M','2002-05-31','girinagar',3344567834,'keerthi');
INSERT INTO cust_details VALUES(6,205,'chandru','hash6','chandru@example.com','chandru89','S','2003-08-31','rr nagar',7788654745,'deeraj');
INSERT INTO cust_details VALUES(7,206,'kirana','hash7','kirana@example.com','kirana36','K','2003-05-05','hampinagar',5476893656,'keerthi');
INSERT INTO cust_details VALUES(8,207,'vamadev','hash8','vamadev@example.com','vamadev87','S','2003-05-06','gadag',9988765432,'keerthi');
INSERT INTO cust_details VALUES(9,208,'shivu','hash9','shivu@example.com','shivu55','K','2003-05-07','goa',3456789423,'surya');
INSERT INTO cust_details VALUES(10,209,'likith','hash11','likith@example.com','likith98','S','2002-06-09','kerala',7765467344,'deeraj');
INSERT INTO cust_details VALUES(11,209,'preeti','hash10','preeti@example.com','preeti98','U','2002-05-09','jaynagar',9855467344,'dee');
INSERT INTO cust_details VALUES(12,209,'chandana','hash12','chandana@example.com','chandana98','H','2003-05-09','chikpete',834467344,'nagraj');
INSERT INTO cust_details VALUES(13,209,'bhavya','hash13','bhavya@example.com','bhavya8','R','2002-05-10','deepamjalinagar',7765467344,'shivaraj');
INSERT INTO cust_details VALUES(14,209,'kavya','hash14','kavya@example.com','kavya98','P','2001-05-11','delhi',7765467344,'geetha');
INSERT INTO cust_details VALUES(15,209,'sanvi','hash15','sanvi@example.com','sanvi98','N','2001-05-09','maharastra',7765467344,'pavitra');


USE PHONE;

CREATE TABLE Cust_Profile(id int primary key,user_id int,FirstName varchar(50),LastName varchar(50),Email varchar(100),PasswordHash varchar(255),Gender varchar(10),PhoneNumber bigint,Address varchar(70),City varchar(60),Country varchar(50));


 
INSERT INTO Cust_Profile values(1,300,'poorna','s','poorna@example.com','hashe_password1','female',7764567890,'kkp','ramanagar','india');
INSERT INTO Cust_Profile values(2,301,'sowmya','hr','sowmya@example.com','hashe_password2','female',9874567890,'vijay nagar','bangalore','india');
INSERT INTO Cust_Profile values(3,302,'anu','s','anu@example.com','hashe_password3','female',7834567890,'jay nagar','bangalore','india');
INSERT INTO Cust_Profile values(4,303,'varsha','m','varsha@example.com','hashe_password4','female',9734567890,'channaptna','ramanagar','india');
INSERT INTO Cust_Profile values(5,304,'geetha','f','geetha@example.com','hashe_password5','female',9034567890,'rr nagr','banglore','india');
INSERT INTO Cust_Profile values(6,305,'naveen','k','naveen@example.com','hashe_password6','male',3454567890,'kr pete','banglore','india');
INSERT INTO Cust_Profile values(7,306,'shivu','h','shivu@example.com','hashe_password7','male',9874567890,'sathnur','ramanagar','india');
INSERT INTO Cust_Profile values(8,307,'nagaraj','k','nagaraj@example.com','hashe_password8','male',4984567890,'shiv nagar','banglore','india');
INSERT INTO Cust_Profile values(9,308,'vamadev','r','vamadev@example.com','hashe_password9','female',3454567890,'giri nagar','banglore','india');
INSERT INTO Cust_Profile values(10,309,'anusha','patel','anusha@example.com','hashe_password10','male',9876567890,'kanakapura','ramanagar','india');
INSERT INTO Cust_Profile values(11,310,'jeevan','shankar','jeevan@example.com','hashe_password11','male',9834567890,'vidyanagar','banglore','india');
INSERT INTO Cust_Profile values(12,311,'pratap','pachi','pratap@example.com','hashe_password12','male',9544567890,'hoskote','banglore','india');
INSERT INTO Cust_Profile values(13,312,'rahul','ks','rahul@example.com','hashe_password13','male',9234567890,'chikpete','banglore','india');
INSERT INTO Cust_Profile values(14,313,'vimal','patil','vimal@example.com','hashe_password14','male',9864567890,'harohalli','ramanagar','india');
INSERT INTO Cust_Profile values(15,314,'chaitra','m','chaitraexample.com','hashe_password15','male',2344567654,'rajajinagar','banglore','india');


SELECT * FROM Cust_Profile;
SELECT * from cust_details;

SELECT  * FROM cust_details a inner join Cust_Profile b on a.id=b.id;
SELECT  * FROM Cust_Profile a inner join cust_details b on a.id=b.id;
SELECT  * FROM cust_details c inner join Cust_Profile d on c.user_name=d.FirstName;
SELECT  * FROM Cust_Profile c inner join cust_details d on c.FirstName=d.user_name;

SELECT  * FROM cust_details a left join Cust_Profile b on a.id=b.id;
SELECT  * FROM cust_details c left join Cust_Profile d on c.user_name=d.FirstName;
SELECT  * FROM Cust_Profile a left join cust_details b on a.id=b.id;
SELECT  * FROM Cust_Profile c left join cust_details d on c.FirstName=d.user_name;

SELECT  * FROM cust_details a right join Cust_Profile b on a.id=b.id;
SELECT  * FROM Cust_Profile b right join cust_details d on b.id=d.id;
SELECT  * FROM cust_details c right join Cust_Profile d on c.user_name=d.FirstName;
SELECT  * FROM Cust_Profile c right join cust_details d on c.FirstName=d.user_name;


SELECT  * FROM cust_details a inner join Cust_Profile b on a.id=b.id left join cust_details c on c.id=b.id;
SELECT  * FROM Cust_Profile a inner join  cust_details b on a.FirstName=b.user_name left join Cust_Profile c on c.FirstName=b.user_name;

SELECT  * FROM cust_details a inner join Cust_Profile b on a.id=b.id right join cust_details c on c.id=b.id;
SELECT  * FROM cust_details a inner join Cust_Profile b on a.user_name=b.FirstName right join cust_details c on c.user_name=b.FirstName;
SELECT  * FROM Cust_Profile a inner join  cust_details b on a.FirstName=b.user_name right join Cust_Profile c on c.FirstName=b.user_name;


SELECT  * FROM cust_details a left join Cust_Profile b on a.id=b.id right join cust_details c on c.id=b.id;
SELECT  * FROM cust_details a right join Cust_Profile b on a.id=b.id left join cust_details c on c.id=b.id;
SELECT  * FROM Cust_Profile c left join cust_details d on c.FirstName=d.user_name right join Cust_Profile e on e.FirstName=d.user_name;
SELECT  * FROM Cust_Profile c left join cust_details d on c.id=d.id right join Cust_Profile e on e.id=d.id;
SELECT  * FROM Cust_Profile c right join cust_details d on c.FirstName=d.user_name left join Cust_Profile e on e.FirstName=d.user_name;

USE PHONE;


CREATE TABLE state_info(id int,s_name varchar(40),capital varchar(50),population int,governer varchar(60),s_pincode int);
insert into state_info values(1,'karnataka','india',50987654,'thaawarchand geholt',562126);
insert into state_info values(2,'goa','india',60987654,'shreedharan pillal',562126);
insert into state_info values(3,'maryland','annapolis',874657654,'gehlot',562126);
insert into state_info values(4,'bihar','india',46737654,'rajendra viswanath arlekar',562126);
insert into state_info values(5,'arunachal','india',67577654,'shiv pratap',562126);
insert into state_info values(6,'gujarat','india',97657654,'acharya dev vrat',654726);
insert into state_info values(7,'haryana','india',547857654,'bandaru dattatreya',456726);
insert into state_info values(8,'bhopal','india',45637654,'ramen deka',563426);
insert into state_info values(9,'meghalaya','india',645376754,'vijayshankar',982126);
insert into state_info values(10,'punjab','india',98765654,'gulab chand kataria',537126);
insert into state_info values(11,'madya pradesh','india',56787654,'mangbhul patel',876126);
insert into state_info values(12,'maharastra','india',567487654,'radhakrishnan',523126);
insert into state_info values(13,'delhi','india',98767654,'gurmith singh',782126);
insert into state_info values(14,'jharkhand','india',456378654,'anandiben patel',543126);
insert into state_info values(15,'manipur','india',987657654,'laksman prasad',987626);

USE PHONE;

CREATE TABLE city_info(id int,c_name varchar(40),country varchar(50),c_population int,c_pincode int,state varchar(50));

INSERT INTO city_info  VALUES(1,'kankapura','india',564356,562126,'karnataka');
INSERT INTO city_info  VALUES(2,'bangalore','india',654356,612126,'karnataka');
INSERT INTO city_info  VALUES(3,'manglore','india',984356,534126,'karnataka');
INSERT INTO city_info  VALUES(4,'belagavi','india',986356,762126,'karnataka');
INSERT INTO city_info  VALUES(5,'ballari','india',987356,832126,'karnataka');
INSERT INTO city_info  VALUES(6,'davangere','india',985356,732126,'karnataka');
INSERT INTO city_info  VALUES(7,'tumkuru','india',567356,962126,'karnataka');
INSERT INTO city_info  VALUES(8,'udupi','india',456356,232126,'karnataka');
INSERT INTO city_info  VALUES(9,'bidar','india',678556,545126,'karnataka');
INSERT INTO city_info  VALUES(10,'hassan','india',786556,592126,'karnataka');
INSERT INTO city_info  VALUES(11,'raichur','india',456356,568126,'karnataka');
INSERT INTO city_info  VALUES(12,'shivmogga','india',987656,567426,'karnataka');
INSERT INTO city_info  VALUES(13,'kalburgi','india',456356,572126,'karnataka');
INSERT INTO city_info  VALUES(14,'mysoru','india',984556,564626,'karnataka');
INSERT INTO city_info  VALUES(15,'hubballi','india',9456356,587126,'karnataka');

SELECT * FROM state_info a inner join city_info b on a.id=b.id;
SELECT * FROM state_info a inner join city_info b on a.s_name=b.c_name;
SELECT * FROM city_info a inner join state_info b on a.id=b.id;
SELECT * FROM city_info a inner join state_info b on a.country=b.capital;

SELECT * FROM state_info a left join city_info b on a.capital=b.country;
SELECT * FROM state_info a left join city_info b on a.id=b.id;
SELECT * FROM city_info a left join state_info b on a.country=b.capital;
SELECT * FROM city_info a right join state_info b on a.country=b.capital;
SELECT * FROM city_info a right join state_info b on a.c_pincode=b.s_pincode;
SELECT * FROM city_info a right join state_info b on a.c_name=b.s_name;

SELECT * FROM state_info a inner join city_info b on a.id=b.id left join state_info c on c.s_pincode=b.id;
SELECT * FROM state_info a inner join city_info b on a.capital=b.country left join state_info c on c.s_pincode=b.country;
SELECT * FROM state_info a inner join city_info b on a.s_name=b.c_name right join state_info c on c.s_name=b.c_name;
SELECT * FROM city_info a inner join state_info b on a.country=b.capital right join city_info c on c.c_name=b.capital;
SELECT * FROM city_info a inner join state_info b on a.id=b.id right join city_info c on c.c_name=b.id;

SELECT * FROM state_info a left join city_info b on a.id=b.id right join state_info c on c.id=b.id;
SELECT * FROM city_info a left join state_info b on a.id=b.capital right join city_info c on c.country=b.capital;
SELECT * FROM city_info a right join state_info b on a.id=b.id left join city_info c on c.id=b.id;
SELECT * FROM state_info a right join city_info b on a.capital=b.country left join state_info c on c.capital=b.country;
SELECT * FROM state_info a right join city_info b on a.s_name=b.c_name left join state_info c on c.s_name=b.c_name;
