CREATE DATABASE product_info;

USE product_info;

CREATE TABLE product_info(id int not null,p_name varchar(20) unique,p_price int primary key,
p_manf_date datetime,p_company varchar(20),p_no bigint);

DESC product_info;

alter table product_info add constraint p_no_chk check(p_no>5);
alter table product_info drop constraint p_no_chk;

INSERT INTO product_info VALUES(21,'maida',50,now(),'sujji',2467889);
INSERT INTO product_info VALUES(22,'wheat',180,now(),'aashirvad',1234567);
INSERT INTO product_info VALUES(23,'raggi',30,now(),'atta',987654);
INSERT INTO product_info VALUES(24,'biscuit',39,now(),'parle',452376);
INSERT INTO product_info VALUES(25,'chocolate',150,now(),'Kitkat',349856);
INSERT INTO product_info VALUES(26,'washingpowder',200,now(),'surfexcel',246818);
INSERT INTO product_info VALUES(27,'soap',20,now(),'Rin',239087);
INSERT INTO product_info VALUES(28,'icecream',25,now(),'amul',111111);
INSERT INTO product_info VALUES(29,'rice',550,now(),'Bhasmati',898989);
INSERT INTO product_info VALUES(30,'powder',10,now(),'ponds',222222);

SELECT * FROM product_info;

SELECT * FROM product_info where id between 21 and 28;

SELECT * FROM product_info where p_name
like 'b%';

SELECT * FROM product_info order by p_company;

SELECT LOWER(p_name) as to_lower from product_info;

SELECT UPPER(p_company) as to_upper from product_info;

SELECT CONCAT(p_name,p_company)from product_info;

SELECT LENGTH(p_manf_date)from product_info;

CREATE INDEX p_name_index on product_info(p_name);
 EXPLAIN SELECT * FROM product_info where p_name = 'icecream';
