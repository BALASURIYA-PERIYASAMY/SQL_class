CREATE DEFINER=`root`@`localhost` PROCEDURE `topic_details`(IN VIEWS INT)
BEGIN

SELECT * FROM topics WHERE topics.VIEWS = VIEWS;

END