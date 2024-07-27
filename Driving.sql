CREATE DATABASE driving_license;

USE driving_license;

SELECT*FROM driving_license;


CREATE TABLE driving_license(id int not null,d_id bigint primary key,d_name varchar(20),d_address varchar(40) unique,
d_vid bigint,d_issue_date datetime,constraint d_id_chk check(d_id>30));

alter table driving_license add constraint id_chk check(d_id<100);
alter table driving_license drop constraint id_chk;


desc driving_license;

insert into driving_license values(31,345300996677,'annapoorna','madanayakanahalli',1234567894763425,'2015-06-24 11:10:00');
insert into driving_license values(32,987623452376,'sanjeevini','dharwad',7654236273617489,'2013-07-22 12:11:11');
insert into driving_license values(33,276983547829,'sneha','hulgund',8368785729271973,'2012-08-11 08:00:00');
insert into driving_license values(44,642474927647,'bharathi','haveri',2098765428973547,'2008-09-04 09:12:24');
insert into driving_license values(45,998766356434,'aarathi','laxmeshwara',6576734937497486,'2009-12-17 01:00:00');


alter table driving_license add column d_no_of_deatils int not null;
alter table driving_license drop primary key;
alter table driving_license drop  d_no_of_deatils;





