-- Prepare an example query with a subquery to demonstrate how to extract data from your DB for analysis

USE travel_money_cards;

-- select customers who have positive balance for Euros
SELECT
    first_name,
    last_name
FROM customers
WHERE customer_id IN (
    SELECT customer_id FROM money_cards
    WHERE card_number IN (
        SELECT card_number FROM card_balances
        WHERE currency_code = 'EUR'
        AND balance > 0
    )
)

-- select customers with addresses
SELECT
    cust.customer_id,
    cust.first_name,
    cust.last_name,
    cust.email,
    cust.phone,
    addr.address_line1,
    addr.city,
    addr.postcode,
    (SELECT country_name FROM countries WHERE country_id = addr.country_id) AS Country
FROM
    customers AS cust
    JOIN customer_addresses AS addr ON addr.customer_id = cust.customer_id;