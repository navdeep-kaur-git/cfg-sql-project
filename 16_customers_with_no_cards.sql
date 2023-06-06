SELECT
    cust.first_name,
    cust.last_name
FROM customers AS cust
LEFT JOIN money_cards AS crd ON crd.customer_id = cust.customer_id
GROUP BY cust.first_name, cust.last_name
HAVING COUNT(crd.card_number) = 0;