SELECT
    cust.first_name,
    cust.last_name
FROM customers AS cust
JOIN money_cards AS crd ON crd.customer_id = cust.customer_id
JOIN card_balances AS bal ON bal.card_number = crd.card_number
GROUP BY cust.customer_id
HAVING SUM(bal.balance) = 0;