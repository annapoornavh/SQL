CREATE DATABASE TRAIN;

USE TRAIN;

CREATE TABLE train_details(id int,train_name varchar(10),train_no bigint,train_box bigint,train_seatno int,
train_passengerName varchar(20),train_source varchar(10),train_destination varchar(10),train_row int);

USE TRAIN;

DESC train_details;