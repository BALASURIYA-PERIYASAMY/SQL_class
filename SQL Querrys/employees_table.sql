CREATE TABLE employees(
emp_id INT PRIMARY KEY, 
name VARCHAR(20) NOT NULL, 
email VARCHAR(40) UNIQUE, 
age INT CHECK (age>=18), 
status VARCHAR(20) DEFAULT 'ACTIVE');


#with attributes
INSERT INTO employees(emo_id, name, email, age, status)
VALUE(01,"Ram","ram123@gmail.com",21,DEFAULT);

INSERT INTO employees(emo_id, name, email, age, status)
VALUE(02,"Kumar","kumar443@gmail.com",21,"inactive");

#without attributes
INSERT INTO employees VALUES(03,"bala","bala@gmail.com",21,DEFAULT);