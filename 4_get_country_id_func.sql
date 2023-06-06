USE travel_money_cards;

-- change delimeter
DELIMITER $$
-- drop func if exists
DROP FUNCTION IF EXISTS get_country_id $$
-- create get country id func
CREATE FUNCTION get_country_id(p_country_name VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN 
-- declare variables
DECLARE r_country_id INT;

-- find country_id using country name
SELECT
  country_id INTO r_country_id
FROM
  countries
WHERE
  country_name = p_country_name
LIMIT 1;  

-- check if valid country
IF(r_country_id IS NULL)
THEN SIGNAL SQLSTATE '45000'
SET
  MESSAGE_TEXT = 'Invalid country name';

END IF;

RETURN r_country_id;

END $$
DELIMITER ;