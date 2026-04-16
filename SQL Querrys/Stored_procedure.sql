### STORED PROCEDURE

USE VIEWS;

SELECT * FROM TOPICS;


/*

USE `views`;
DROP procedure IF EXISTS `cre_date`;

DELIMITER $$
USE `views`$$
CREATE PROCEDURE `cre_date` (IN created_date date)
BEGIN
SELECT * FROM topics WHERE topics.created_date = created_date;

END$$

DELIMITER ;

*/

call topic_details(450);


call cre_date('2024-03-05');


/*

USE `views`;
DROP procedure IF EXISTS `top`;

USE `views`;
DROP procedure IF EXISTS `views`.`top`;
;

DELIMITER $$
USE `views`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `top`(OUT RECORDS INT)
BEGIN
SELECT COUNT(*) INTO RECORDS FROM TOPICS WHERE TOPICS.VIEWS=340;
END$$

DELIMITER ;
;

*/

CALL top(@RECORDS);
SELECT @RECORDS AS TOTALRECORDS;


/*

USE `views`;
DROP procedure IF EXISTS `top_inout`;

DELIMITER $$
USE `views`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `top_inout`(INOUT RECORDS INT, IN VIEW INT)
BEGIN
SELECT COUNT(*) INTO RECORDS FROM TOPICS WHERE TOPICS.VIEWS = VIEWS;
END$$

DELIMITER ;
;

*/

CALL top_inout(@RECORDS,410);
SELECT @RECORDS AS REC;