## VIEWS 
# VIew do not store the data, they store the SQL Queries that fetch the data dynamicaly

# create view
# UPdate view
# drop view
# show view
# select from view
# CHeck VIew Database

CREATE DATABASE views;

USE VIEWS;

CREATE TABLE topics (
  topic_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(100),
  category VARCHAR(50),
  author VARCHAR(50),
  created_date DATE,
  views INT  # it shows the how many peoples see this topics
);


INSERT INTO topics (title, category, author, created_date, views) VALUES
('Introduction to MySQL', 'Database', 'Alice', '2024-01-15', 150),
('Advanced SQL Queries', 'Database', 'Bob', '2024-02-10', 220),
('Python for Data Science', 'Programming', 'Charlie', '2024-03-05', 340),
('Web Development Basics', 'Web', 'Diana', '2024-03-12', 180),
('Machine Learning Intro', 'AI', 'Eve', '2024-04-01', 410),
('Data Visualization Tools', 'Analytics', 'Frank', '2024-04-18', 290),
('REST API Design', 'Web', 'Grace', '2024-05-09', 370),
('Docker and Containers', 'DevOps', 'Hank', '2024-06-21', 260),
('Cybersecurity Essentials', 'Security', 'Ivy', '2024-07-30', 315),
('Cloud Computing Overview', 'Cloud', 'Jack', '2024-08-14', 405);

SELECT * FROM TOPICS;

## CREATE A VIEW 

# CREATE A VIEW NAMED (VIEW_POPULAR_TOPICS) that show only topics with views > 300
# NORMAL QUERY
SELECT TOPIC_ID, TITLE, CATEGORY, AUTHOR, VIEWS FROM TOPICS WHERE VIEWS>300;

# VIEW QUERY
CREATE VIEW VIEW_POPULAR_TOPICS AS 
SELECT TOPIC_ID, TITLE, CATEGORY, AUTHOR, VIEWS 
FROM TOPICS WHERE VIEWS>300;


## SELECT FROM VIEW
SELECT * FROM VIEW_POPULAR_TOPICS;


## UPDATE VIEW
#
UPDATE TOPICS SET VIEWS = VIEWS+10 WHERE TOPIC_ID=5;
UPDATE TOPICS SET VIEWS = 450 WHERE TOPIC_ID=5;


## REPLACE VIEW 
CREATE OR REPLACE VIEW VIEW_POPULAR_TOPICS AS SELECT TITLE, AUTHOR, VIEWS FROM TOPICS WHERE VIEWS > 300;

SELECT * FROM VIEW_POPULAR_TOPICS;


## SHOW VIEW

SHOW FULL TABLES WHERE TABLE_TYPE ='VIEW';

## DROP VIEW 
DROP VIEW VIEW_POPULAR_TOPICS;