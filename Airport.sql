CREATE DATABASE AIRPORT;

USE AIRPORT;

CREATE TABLE airport_details(id int,airport_loc varchar(10),airport_name varchar(5),visa_details bigint);

USE AIRPORT;

DESC airport_details;

ALTER TABLE airport_details ADD COLUMN plane_no int,ADD COLUMN plane_seats bigint,ADD COLUMN traveller_name varchar(10),
ADD COLUMN traveller_lag int,ADD COLUMN plane_source varchar(10),ADD COLUMN plane_destination varchar(20);

SELECT * FROM airport_details;

ALTER TABLE airport_details DROP COLUMN visa_details,DROP COLUMN plane_source;

ALTER TABLE airport_details RENAME COLUMN airport_loc TO airport_place,RENAME COLUMN plane_no TO plane_code,RENAME COLUMN traveller_lag TO traveller_carrer,
RENAME COLUMN traveller_name TO traveller_address,RENAME COLUMN visa_details TO traveller_address;

ALTER TABLE airport_details MODIFY COLUMN plane_seats int;
ALTER TABLE airport_details MODIFY COLUMN traveller_carrer bigint;
ALTER TABLE airport_details MODIFY COLUMN plane_code bigint;
ALTER TABLE airport_details MODIFY COLUMN traveller_address int;
