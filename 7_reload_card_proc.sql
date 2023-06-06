USE travel_money_cards;

-- change delimeter
DELIMITER $$
-- drop proc if exists
DROP PROCEDURE IF EXISTS reload_card $$
-- reload card proc
CREATE PROCEDURE reload_card (
  IN p_first_name VARCHAR(50),
  IN p_last_name VARCHAR(50),
  IN p_card_number BIGINT,
  IN p_expiry_date_month INT,
  IN p_expiry_date_year INT,
  IN p_amount DECIMAL(12, 2),
  IN p_currency_code VARCHAR(3)
) 
BEGIN
-- declare variables
DECLARE new_balance DECIMAL(12, 2);

-- check if card details are valid
SELECT `travel_money_cards`.`error_if_invalid_card`(p_first_name, p_last_name, p_card_number, p_expiry_date_month, p_expiry_date_year);

-- check if valid currency code
select `travel_money_cards`.`error_if_invalid_currency_code`(p_currency_code);

-- load card
IF NOT EXISTS (
  SELECT
    *
  FROM
    card_balances
  WHERE
    card_number = p_card_number
    AND currency_code = p_currency_code
) THEN
INSERT INTO
  card_balances (card_number, currency_code, balance) VALUE (p_card_number, p_currency_code, p_amount);

ELSE
UPDATE card_balances
SET
  balance = balance + p_amount
WHERE
  card_number = p_card_number
  AND currency_code = p_currency_code;

END IF;

END $$
-- restore delimeter
DELIMITER ;