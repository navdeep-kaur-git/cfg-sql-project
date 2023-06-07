USE travel_money_cards;

-- change delimeter
DELIMITER $$
-- drop proc if exists
DROP PROCEDURE IF EXISTS reload_card_direct $$
-- reload card proc
CREATE PROCEDURE reload_card_direct (
  IN p_first_name VARCHAR(50),
  IN p_last_name VARCHAR(50),
  IN p_card_number BIGINT,
  IN p_expiry_date_month INT,
  IN p_expiry_date_year INT,
  IN p_amount DECIMAL(12, 2),
  IN p_currency_code VARCHAR(3)
) 
BEGIN

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