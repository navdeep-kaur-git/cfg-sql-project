-- Prepare an example query with group by and having to
-- demonstrate how to extract data from your DB for analysis

-- customer with more than 1 cards
SELECT
    cust.first_name,
    cust.last_name,
    COUNT(crd.card_number) number_of_cards
FROM customers AS cust
JOIN money_cards AS crd ON crd.customer_id = cust.customer_id
GROUP BY cust.first_name, cust.last_name
HAVING number_of_cards > 1;

-- customers with no cards
SELECT
    cust.first_name,
    cust.last_name
FROM customers AS cust
LEFT JOIN money_cards AS crd ON crd.customer_id = cust.customer_id
GROUP BY cust.first_name, cust.last_name
HAVING COUNT(crd.card_number) = 0;

-- customers with zero card balance
SELECT
    cust.first_name,
    cust.last_name
FROM customers AS cust
JOIN money_cards AS crd ON crd.customer_id = cust.customer_id
JOIN card_balances AS bal ON bal.card_number = crd.card_number
GROUP BY cust.customer_id
HAVING SUM(bal.balance) = 0;