CREATE DATABASE fruits;

USE fruits;

CREATE TABLE fruits(id int not null,f_name varchar(20) unique,f_quality int,f_colour varchar(10),
f_price int primary key,f_season varchar(20));

alter table fruits add constraint price_chk check(f_price>100);
alter table fruits drop constraint price_chk;

select * from fruits;

desc fruits;

insert into fruits values(1,'Mango',9,'Green',200,'Summer',20);
insert into fruits values(2,'Orange',5,'orange',300,'All',10);
insert into fruits values(3,'Apple',10,'Red',150,'Winter',15);
insert into fruits values(4,'Banana',5,'Yellow',400,'Rainy',12);
insert into fruits values(5,'Grapes',7,'black',500,'Monsoon',19);

alter table fruits add column f_no_of_fruits int not null;


alter table fruits drop f_no_of_fruits;



