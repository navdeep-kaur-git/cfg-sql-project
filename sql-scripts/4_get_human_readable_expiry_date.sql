USE travel_money_cards;

-- change delimeter
DELIMITER $$
-- drop func if exists
DROP FUNCTION IF EXISTS get_human_readable_expiry_date $$
-- create get_human_readable_expiry_date func
CREATE FUNCTION get_human_readable_expiry_date(p_expiry_date_month INT, p_expiry_date_year INT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN 

  RETURN DATE_FORMAT(DATE(CONCAT(p_expiry_date_year, '-', p_expiry_date_month, '-01')), '%M %Y');

END $$
DELIMITER ;