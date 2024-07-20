CREATE DATABASE CHAIR;
USE CHAIR;
CREATE TABLE chair_details(id int,chair_type varchar(10),chair_name varchar(5),chair_cost bigint,chair_loc varchar(20)
,chair_no int,chair_wheel int,chair_waranty varchar(10));

USE CHAIR;

DESC chair_details;

ALTER TABLE chair_details add column chair_manufactured varchar(10); 
ALTER TABLE chair_details add column wood_used varchar(10);

ALTER TABLE chair_details DROP COLUMN chair_wheel;

SELECT * FROM chair_details;

ALTER TABLE chair_details RENAME COLUMN chair_cost TO chair_price;

ALTER TABLE chair_details MODIFY COLUMN chair_loc varchar(20);

