USE travel_money_cards;

DROP VIEW IF EXISTS customer_details;

CREATE VIEW
    customer_details AS
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