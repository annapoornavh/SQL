CREATE DATABASE bank_details;


USE bank_details;


CREATE TABLE bank_details(id int,b_name varchar(20),b_location varchar(20));


SELECT * FROM bank_details;


ALTER TABLE bank_details ADD COLUMN b_manager_name varchar(20);
ALTER TABLE bank_details ADD COLUMN b_check_no int;
ALTER TABLE bank_details ADD COLUMN b_account_no bigint;
ALTER TABLE bank_details ADD COLUMN b_budget bigint;
ALTER TABLE bank_details ADD COLUMN b_worker_name varchar(20);
ALTER TABLE bank_details ADD COLUMN b_passbook_no int;
ALTER TABLE bank_details ADD COLUMN b_passbook_details varchar(20);
ALTER TABLE bank_details ADD COLUMN b_running  boolean;


ALTER TABLE bank_details RENAME COLUMN b_name TO b_title;
ALTER TABLE bank_details RENAME COLUMN b_manager_name TO b_manager_details;
ALTER TABLE bank_details RENAME COLUMN b_location TO b_place;
ALTER TABLE bank_details RENAME COLUMN b_worker_name TO b_worker_details;
ALTER TABLE bank_details RENAME COLUMN b_passbook_details TO b_passbook_content;


INSERT INTO bank_details VALUES(1,'KTK','koppal','chandru',222,77689324522,500000,'anu',221,'koppalktk',1);
INSERT INTO bank_details VALUES(2,'SBI','bangalore','poorna',888,22222222222,230000,'pushpa',453,'bangaloresbi',0);
INSERT INTO bank_details VALUES(3,'BARODA','haveri','vamadev',777,23456782765,7600000,'nagaraj',455,'haverbaroda',1);
INSERT INTO bank_details VALUES(4,'ICICI',