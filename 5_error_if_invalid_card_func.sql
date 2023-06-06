USE travel_money_cards;

-- change delimeter
DELIMITER $$
-- drop func if exists
DROP FUNCTION IF EXISTS error_if_invalid_card $$
-- create error_if_invalid_card func
CREATE FUNCTION error_if_invalid_card(
  p_first_name VARCHAR(50),
  p_last_name VARCHAR(50),
  p_card_number BIGINT,
  p_expiry_date_month INT,
  p_expiry_date_year INT
)
RETURNS BIT
DETERMINISTIC
BEGIN 

-- declare variables
DECLARE card_expiry_date DATE;

-- parse date
SELECT DATE(CONCAT(p_expiry_date_year, '-', p_expiry_date_month, '-01')) INTO card_expiry_date;

-- check if card expiry date is valid
IF (card_expiry_date < CURDATE())
THEN SIGNAL SQLSTATE '45000'
SET
  MESSAGE_TEXT = 'Card is expired';

END IF;

-- check if card details are valid
IF NOT EXISTS (
  SELECT
    *
  FROM
    customers AS cust
    JOIN money_cards AS crd ON crd.customer_id = cust.customer_id
  WHERE
    cust.first_name = p_first_name
    AND cust.last_name = p_last_name
    AND crd.card_number = p_card_number
    AND crd.expiry_date_month = p_expiry_date_month
    AND crd.expiry_date_year = p_expiry_date_year
) THEN SIGNAL SQLSTATE '45000'
SET
  MESSAGE_TEXT = 'Invalid card details';

END IF;

RETURN 1;

END $$
DELIMITER ;