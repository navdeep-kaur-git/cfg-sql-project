-- Prepare an example query with a subquery to demonstrate how to extract data from your DB for analysis

USE travel_money_cards;

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