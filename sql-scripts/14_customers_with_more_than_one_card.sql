SELECT
    cust.first_name,
    cust.last_name,
    COUNT(crd.card_number) number_of_cards
FROM customers AS cust
JOIN money_cards AS crd ON crd.customer_id = cust.customer_id
GROUP BY cust.first_name, cust.last_name
HAVING number_of_cards > 1;