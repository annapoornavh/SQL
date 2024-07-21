CREATE DATABASE FILM;

USE FILM;

CREATE TABLE movie_info(id int,m_name varchar(10),m_ticket_no int);

DESC movie_info;

ALTER TABLE movie_info ADD COLUMN m_producer_name varchar(10),ADD COLUMN m_director_name varchar(10),
ADD COLUMN m_actor_name varchar(15),ADD COLUMN m_actress_name varchar(10),ADD COLUMN m_budget_price bigint,
ADD COLUMN m_release_date bigint,ADD COLUMN m_booking_no int, ADD COLUMN movie_info m_releasing_date boolean;

ALTER TABLE movie_info RENAME COLUMN m_name TO m_title,RENAME COLUMN m_actor_name TO m_hero_details,
RENAME COLUMN m_actress_name TO m_heroine_details,RENAME COLUMN m_budget_price TO m_budget_collection,
RENAME COLUMN m_booking_no TO m_online_booking;


INSERT INTO movie_info VALUES(1,'appu',245,'parvathi','puri J','puneeth','rakshita',100000,24-06-2005,78,0);
INSERT INTO movie_info VALUES(2,'kotee',187,'murty','srinivas','dhananjay','tara',500000,10-06-2024,12,1);
INSERT INTO movie_info VALUES(3,'moggina',987,'krishna','shashank','yash','radhika',8000000,18-07-2008,24,1);
INSERT INTO movie_info VALUES(4,'ranna',768,'chandru','nanda','sudeep','rachita',5000000,4-06-2015,7,1);
INSERT INTO movie_info VALUES(5,'kaatera',987,'rockline','tarun','darshan','aaradana',4000000,29-12-2023,2,0);
INSERT INTO movie_info VALUES(6,'sitarama',532,'aswani','hanu','dulquer','mrunal',2500000,5-08-2022,6,1);
INSERT INTO movie_info VALUES(7,'kgf',223,'vijay','neel','yash','shrinidhi',8000000,21-12-2018,10,1);
INSERT INTO movie_info VALUES(8,'shershaah',966,'hiroo','vishnu','malhotra','kiara',900000,12-08-2021,10,1);
INSERT INTO movie_info VALUES(9,'bytwolove',222,'kvn','santosh','dhanveer','leela',500000,18-02-2022,5,1);
INSERT INTO movie_info VALUES(10,'mocktail',111,'nagaraj','milana','krishna','amruta',100000,17-05-2022,17,1);


UPDATE movie_info SET m_title = 'rajkumara' WHERE id = 9;
UPDATE movie_info SET m_title = 'lucia' WHERE id = 2;
UPDATE movie_info SET m_title = 'aatagara' WHERE id = 10;
UPDATE movie_info SET m_title = 'aadhuri' WHERE id = 5;
UPDATE movie_info SET m_title = 'barjarri' WHERE id = 8;
UPDATE movie_info SET m_title = 'kush' WHERE id = 3;
UPDATE movie_info SET m_title = 'amar' WHERE id = 7;
UPDATE movie_info SET m_title = 'kanasu' WHERE id = 1;
UPDATE movie_info SET m_title = 'bulbul' WHERE id = 4;
UPDATE movie_info SET m_title = 'premaloka' WHERE id = 6;


DELETE FROM movie_info WHERE m_hero_details = 'darshan' AND id = 5;
DELETE FROM movie_info WHERE m_heroine_details = 'rachita' AND id = 4;
DELETE FROM movie_info WHERE m_hero_details = 'malhotra' AND id = 8;


SELECT * FROM movie_info where id = 1 or m_title = 'kanasu';
SELECT * FROM movie_info where id in(6,7,2);
SELECT * FROM movie_info where id  not in(10,9);


TRUNCATE movie_info;

SELECT * FROM movie_info;



CREATE DATABASE BANK;

USE BANK;

CREATE TABLE bank_info(id int,