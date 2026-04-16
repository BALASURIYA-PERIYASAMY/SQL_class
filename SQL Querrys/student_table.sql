#create a New database
CREATE DATABASE example;

use example;

CREATE table students(
std_id INT PRIMARY KEY AUTO_INCREMENT,
std_name VARCHAR(20) NOT NULL,
reg_no INT UNIQUE,
mob_no INT,
age INT CHECK (age<18),
e_mail VARCHAR(40),
department VARCHAR(20) DEFAULT 'CSE'
);

INSERT INTO students (std_id,std_name,reg_no,mob_no,age,e_mail,department) VALUES(1,'Bala',6022522,63748,17,'bala@gmail.com',DEFAULT);

select * from students;

DROP table students;

DROP DATABASE example;