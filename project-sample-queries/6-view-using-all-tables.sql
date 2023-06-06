-- Create a view that uses at least 3-4 base tables;
-- prepare and demonstrate a query that uses the view to
-- produce a logically arranged result set for analysis.

USE travel_money_cards;

DROP VIEW IF EXISTS expired_cards_with_balance;

-- View to prepare customer card those are expired but have a positive balances for analysis
CREATE VIEW expired_cards_with_balance AS
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
WHERE bal.balance > 0 AND DATE(CONCAT(crd.expiry_date_year, '-', crd.expiry_date_month, '-01')) < CURRENT_DATE()
ORDER BY cust.customer_id, crd.card_number, bal.currency_code;