USE travel_money_cards;

-- change delimeter
DELIMITER $$
-- drop func if exists
DROP FUNCTION IF EXISTS error_if_invalid_currency_code $$
-- create error_if_invalid_currency_code func
CREATE FUNCTION error_if_invalid_currency_code(p_currency_code VARCHAR(3))
RETURNS BIT
DETERMINISTIC
BEGIN 

-- check if valid currency
IF NOT EXISTS(
  SELECT
    *
  FROM
    currency_codes
  WHERE
    currency_code = p_currency_code
)
THEN SIGNAL SQLSTATE '45000'
SET
  MESSAGE_TEXT = 'Invalid currency code';

END IF;

RETURN 1;

END $$
DELIMITER ;