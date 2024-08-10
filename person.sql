CREATE DATABASE person;

USE person;

CREATE TABLE person_details(id int,p_name varchar(20),person_id int primary key,p_age int,
p_height int,p_weight int,p_ph_no bigint,p_address varchar(20),p_home_no int,p_family_mem int,
p_healthy enum('yes','no'));

CREATE TABLE passport_details(id int,p_bearer varchar(20),p_id int,p_person_id int,
date_of_birth date,place_of_birth varchar(20),date_of_issue date,date_of_expiry date,
signature varchar(10),person_no bigint,type_of_passport varchar(20),
foreign key(p_person_id)references person_details(person_id));


INSERT INTO person_details VALUES(1,'annapoorna',2453,22,5,28,7676001231,'TCI',209,4,'yes');
INSERT INTO person_details VALUES(2,'poorna',2454,23,4,29,7676882345,'MNhalli',208,5,'yes');
INSERT INTO person_details VALUES(3,'anu',2455,24,6,30,9108430908,'Madavara',207,3,'no');
INSERT INTO person_details VALUES(4,'vamadev',2456,55,3,60,9591077688,'koppal',206,8,'yes');
INSERT INTO person_details VALUES(5,'pushpa',2457,45,2,65,9743043212,'haveri',205,9,'yes');




