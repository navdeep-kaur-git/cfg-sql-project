-- Using any type of the joins create a view that combines multiple tables in a logical way

USE travel_money_cards;

DROP VIEW IF EXISTS customer_card_balance;

-- View to prepare customer card balances for analysis
CREATE VIEW customer_card_balance AS
SELECT
    cust.first_name,
    cust.last_name,
    crd.card_number,
    `travel_money_cards`.`get_human_readable_expiry_date`(crd.expiry_date_month, crd.expiry_date_year) AS expiry_date,
    curr.currency_code,
    curr.currency_name,
    bal.balance
FROM customers AS cust
JOIN money_cards AS crd ON crd.customer_id = cust.customer_id
JOIN card_balances AS bal ON bal.card_number = crd.card_number
JOIN currency_codes AS curr ON curr.currency_code = bal.currency_code
ORDER BY cust.customer_id, crd.card_number, bal.currency_code;