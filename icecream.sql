CREATE DATABASE icecream;

USE icecream;

CREATE TABLE icecream(id int not null,i_name varchar(20) unique,i_company varchar(20),i_price int primary key,
i_type varchar(20),i_quality int);


alter table icecream add constraint i_quality_chk check(i_quality>10);
alter table icecream drop constraint i_quality_chk;

INSERT INTO icecream VALUES(91,'chocolate','amul',55,'cone',8);
INSERT INTO icecream VALUES(92,'vanila','aavin',60,'cup',7);
INSERT INTO icecream VALUES(93,'butterpecan','Abbott',15,'waffle',6);
INSERT INTO icecream VALUES(94,'butter','ample',100,'sugarcone',5);
INSERT INTO icecream VALUES(95,'gelato','arun',25,'culfi',3);
INSERT INTO icecream VALUES(96,'mint','australian',45,'sticks',9);
INSERT INTO icecream VALUES(97,'strawberry','algida',30,'buckets',3);
INSERT INTO icecream VALUES(98,'cookies','anita',10,'sundae',4);
INSERT INTO icecream VALUES(99,'choco','Mv',99,'pretzel',1);
INSERT INTO icecream VALUES(100,'chocolatechip','Daddy',87,'floats',8);

SELECT * FROM icecream;

SELECT * FROM icecream where id between 91 and 95;

SELECT * FROM icecream where i_name
like 'c%';

SELECT * FROM icecream order by i_company;

SELECT LOWER(i_name) as to_lower from icecream;

SELECT UPPER(i_company) as to_upper from icecream;

SELECT CONCAT(i_name,i_company)from icecream;

SELECT LENGTH(i_company)from icecream;

CREATE INDEX i_name_index on icecream(i_name);
 EXPLAIN SELECT * FROM icecream where i_name = 'vanila';


