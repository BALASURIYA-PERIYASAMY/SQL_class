USE JOINS_DB;

CREATE TABLE sizes (
    size_id INT PRIMARY KEY,
    size_name VARCHAR(10)
);

CREATE TABLE colors (
    color_id INT PRIMARY KEY,
    color_name VARCHAR(20)
);

INSERT INTO sizes (size_id, size_name)
VALUES 
(1, 'Small'),
(2, 'Medium'),
(3, 'Large');

INSERT INTO colors (color_id, color_name)
VALUES 
(1, 'Red'),
(2, 'Blue'),
(3, 'Black'),
(4, 'White');


#IMAGINE YOU WORK FOR A COMPANY ALL POSIBLE T-SHIRT COMBINATIONS BASED ON SIZE AND COLOR 
#USE CROSS JOINS
SELECT
	S.SIZE_NAME,
	C.COLOR_NAME
FROM 
	SIZES S CROSS JOIN COLORS C;
    
