CREATE DATABASE suguma_travels;

USE suguma_travels;

CREATE TABLE suguma_travels(id int,s_source varchar(20),s_destination varchar(20),
s_cusname varchar(20) unique,s_cusage int,s_no int primary key);

alter table suguma_travels add constraint age_chk check(s_cusage>20);

alter table suguma_travels drop constraint age_chk;

select * from suguma_travels;

desc suguma_travels;

insert into suguma_travels values(1,'tci','nagasandra','poorna',22,5463);
insert into suguma_travels values(2,'nagasandra','rajajinagar','anu',24,9769);
insert into suguma_travels values(3,'JPnagar','jayanagar','sanjeevini',23,2344);
insert into suguma_travels values(4,'koppal','bangalore','vamadev',45,7656);
insert into suguma_travels values(5,'haveri','hospete','chandru',24,9898);

alter table suguma_travels add column s_no_of_passengers  int not null;
alter table suguma_travels drop primary key;
alter table suguma_travels drop  s_no_of_passengers;


