CREATE DATABASE COMPANY;

USE COMPANY;

CREATE TABLE employee_details(id int,e_name varchar(10),e_loc varchar(10),e_skills int);

USE COMPANY;

DESC employee_details;

ALTER TABLE employee_details ADD COLUMN e_sal bigint,ADD COLUMN e_team_mem int,ADD COLUMN e_team_name varchar(10),
ADD COLUMN e_hr_name varchar(10),ADD COLUMN e_fresher_skills int,ADD COLUMN e_work_time int;

SELECT * FROM employee_details;

ALTER TABLE employee_details DROP COLUMN e_name,DROP COLUMN e_team_name;

ALTER TABLE employee_details RENAME COLUMN e_loc TO e_place,RENAME COLUMN e_skills TO e_talent,RENAME COLUMN e_sal TO e_price,
RENAME COLUMN e_team_mem TO e_team_no,RENAME COLUMN e_hr_name TO e_hr_details,RENAME COLUMN e_fresher_skills TO e_new_skills,RENAME COLUMN e_work_time TO e_schedule_hours

ALTER TABLE employee_details MODIFY COLUMN e_price int;
ALTER TABLE employee_details MODIFY COLUMN e_talent varchar(10);
ALTER TABLE employee_details MODIFY COLUMN e_schedule_hours bigint;
ALTER TABLE employee_details MODIFY COLUMN e_new_skills bigint;
ALTER TABLE employee_details MODIFY COLUMN e_team_no bigint;


