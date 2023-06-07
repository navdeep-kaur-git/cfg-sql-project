USE travel_money_cards;

-- change delimeter
DELIMITER $$
-- drop proc if exists
DROP PROCEDURE IF EXISTS create_new_customer $$
-- create new customer proc
CREATE PROCEDURE create_new_customer (
  IN p_first_name VARCHAR(50),
  IN p_last_name VARCHAR(50),
  IN p_email VARCHAR(50),
  IN p_phone VARCHAR(50),
  IN p_address_line1 VARCHAR(50),
  IN p_address_line2 VARCHAR(50),
  IN p_city VARCHAR(50),
  IN p_postcode VARCHAR(10),
  IN p_country VARCHAR(50),
  IN p_initial_balance DECIMAL(12, 2),
  IN p_initial_balance_currency_code VARCHAR(3)
) BEGIN
-- declare variables
DECLARE customer_country_id INT;

DECLARE new_customer_id INT;

DECLARE new_card_number INT;

DECLARE new_card_expiry_date DATE;

-- find country_id using country name
select `travel_money_cards`.`get_country_id`(p_country) INTO customer_country_id;

-- check if valid currency code
select `travel_money_cards`.`error_if_invalid_currency_code`(p_initial_balance_currency_code);

-- create new customer
INSERT INTO
  customers (first_name, last_name, email, phone) VALUE (p_first_name, p_last_name, p_email, p_phone);

-- find new customer's id
SELECT LAST_INSERT_ID() INTO new_customer_id;

-- create new customer's address
INSERT INTO
  customer_addresses (
    customer_id,
    address_line1,
    address_line2,
    city,
    postcode,
    country_id
  ) VALUE (
    new_customer_id,
    p_address_line1,
    p_address_line2,
    p_city,
    p_postcode,
    customer_country_id
  );

-- calculate card expiry date  
SELECT `travel_money_cards`.`get_random_card_expiry_date`() INTO new_card_expiry_date;

-- create a default card for new customer
INSERT INTO
  money_cards (customer_id, expiry_date_month, expiry_date_year) 
VALUE (new_customer_id, DATE_FORMAT(new_card_expiry_date, '%m'), DATE_FORMAT(new_card_expiry_date, '%Y'));

-- find new card number
SELECT LAST_INSERT_ID() INTO new_card_number;

-- load card with intial balance
INSERT INTO
  card_balances (card_number, currency_code, balance) VALUE (
    new_card_number,
    p_initial_balance_currency_code,
    p_initial_balance
  );

END $$
-- restore delimeter
DELIMITER ;