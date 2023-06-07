USE travel_money_cards;

-- change delimeter
DELIMITER $$
-- drop func if exists
DROP FUNCTION IF EXISTS get_random_card_expiry_date $$
-- create random expiry date function
CREATE FUNCTION get_random_card_expiry_date()
RETURNS DATE
NO SQL
BEGIN 
-- declare variables
DECLARE r_expiry_date DATE;
DECLARE random_num INT;

-- random date
SELECT ROUND((RAND() * (5-1))+1) INTO random_num;
SELECT DATE_ADD(CURDATE(), INTERVAL random_num YEAR) INTO r_expiry_date;

IF(DATE_FORMAT(r_expiry_date, '%m') < 7)
THEN
  SELECT DATE_ADD(r_expiry_date, INTERVAL random_num MONTH) INTO r_expiry_date;
END IF;

RETURN r_expiry_date;

END $$
DELIMITER ;