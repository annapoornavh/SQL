CREATE DATABASE BISCUIT;

USE BISCUIT;

CREATE TABLE biscuit_details(id int,b_name varchar(20),b_price int,b_quality varchar(10),
b_shape varchar(20),pack_contains int,b_manf_date date);

CREATE TABLE washing_machine(id int,w_company varchar(20),w_door varchar(20),w_price int,
mode_of_payment enum ('online','offline'),wifi_connection enum ('yes','no'),w_weight int);


DESC biscuit_details;

INSERT INTO biscuit_details VALUES(51,'parle',8,'high','square',10,'2024-03-22');
INSERT INTO biscuit_details VALUES(52,'marigold',10,'high','round',15,'2023-02-01');
INSERT INTO biscuit_details VALUES(53,'Krack',5,'medium','rectangle',8,now());
INSERT INTO biscuit_details VALUES(54,'chaska',14,'high','box',20,'2024-08-02');
INSERT INTO biscuit_details VALUES(55,'goodday',8,'medium','circle',5,'2024-01-28');
INSERT INTO biscuit_details VALUES(56,'moms',11,'high','ovel',6,'2022-03-29');
INSERT INTO biscuit_details VALUES(57,'magic',4,'medium','hexagon',7,'2021-08-22');
INSERT INTO biscuit_details VALUES(58,'monaco',12,'high','sphere',9,'2001-01-01');
INSERT INTO biscuit_details VALUES(59,'sunfeast',2,'low','star',25,'2002-06-24');
INSERT INTO biscuit_details VALUES(60,'anmol',3,'medium','triangle',30,'2004-08-06');
INSERT INTO biscuit_details VALUES(61,'pantanjali',13,'low','cuboid',40,'2005-09-21');
INSERT INTO biscuit_details VALUES(62,'priyagold',14,'medium','ring',50,'2006-10-24');
INSERT INTO biscuit_details VALUES(63,'parlegold',15,'medium','parallelogram',60,'2024-06-01');
INSERT INTO biscuit_details VALUES(64,'unibic',16,'high','cone',70,'2024-02-02');
INSERT INTO biscuit_details VALUES(65,'Mcvitie',17,'low','heart',80,'2024-05-22');
INSERT INTO biscuit_details VALUES(66,'burbon',18,'low','unique',90,'2024-04-22');
INSERT INTO biscuit_details VALUES(67,'nutrichoice',19,'medium','octogon',35,'2024-01-22');
INSERT INTO biscuit_details VALUES(68,'oreo',20,'high','nanogon',55,'2021-03-22');
INSERT INTO biscuit_details VALUES(69,'hideandseek',10,'high','square',10,'2018-03-22');
INSERT INTO biscuit_details VALUES(70,'bournvita',10,'high','round',10,'2019-03-22');

INSERT INTO biscuit_details(b_name)values('parle')on duplicate key update b_name = 'puremagic';

SELECT * FROM biscuit_details;



select count(*)as b_name,b_price from biscuit_details
group by b_price;

select avg(b_price)as avg_price,b_name from biscuit_details
group by b_name;

select max(b_quality)as max_quality,b_name from biscuit_details
group by b_name;

select sum(pack_contains)as total_pack_contains,b_name from biscuit_details
group by b_name having total_pack_contains > 10;

select avg(b_price)as avg_price,b_name from biscuit_details
group by b_name having avg_price < 50;


select coalesce(null,null,70);
select ifnull(null,51); 
select coalesce(b_name,b_price) from biscuit_details


