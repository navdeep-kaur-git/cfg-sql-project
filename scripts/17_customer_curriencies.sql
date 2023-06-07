SELECT
    cust.first_name,
    cust.last_name,
    GROUP_CONCAT(curr.currency_name SEPARATOR ', ') customer_currencies,
    GROUP_CONCAT(curr.currency_code SEPARATOR ', ') customer_currencies_codes
FROM
    customers AS cust
    JOIN money_cards AS crd ON crd.customer_id = cust.customer_id
    JOIN card_balances AS bal ON bal.card_number = crd.card_number
    JOIN currency_codes AS curr ON curr.currency_code = bal.currency_code
GROUP BY
    cust.first_name,
    cust.last_name;