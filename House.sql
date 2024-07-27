create database house;

use house;

create table house(id int not null,h_name varchar(50) unique,h_location varchar(20) primary key,h_price bigint,house_no int);

alter table house add constraint price_chk check(h_price>10000000);
alter table house drop constraint price_chk;
desc house;

select*from house;

insert into house values(1,'Ashirvad','rajajinagar',200000000,146);
insert into house values(2,'Gokul','btm',300000000,123);
insert into house values(3,'Ashraya','rrnagar',250000000,234);
insert into house values(4,'Krishav','sampigenagar',38000000,111);
insert into house values(5,'Karna','sumannagar',450000000,122);


alter table house add column house_address int not null;

alter table house drop primary key;

alter table house drop house_address;

