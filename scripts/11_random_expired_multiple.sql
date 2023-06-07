USE travel_money_cards;

-- expire some cards

UPDATE money_cards SET expiry_date_year = 2022 WHERE card_number IN (
1000000001,
1000000024,
1000000036,
1000000061,
1000000071,
1000000091,
1000000122,
1000000165,
1000000173,
1000000185,
1000000189
);

UPDATE money_cards SET expiry_date_year = 2020 WHERE card_number IN (
1000000012,
1000000049,
1000000083,
1000000102,
1000000148,
1000000172,
1000000179,
1000000182,
1000000191
);

-- balance 0 customers
UPDATE card_balances SET balance = 0 WHERE card_number IN(1000000089, 1000000111);

-- customer with no cards and multiple cards
UPDATE money_cards SET customer_id = 33 WHERE customer_id = 13;
UPDATE money_cards SET customer_id = 47 WHERE customer_id = 17;
UPDATE money_cards SET customer_id = 69 WHERE customer_id = 96;
UPDATE money_cards SET customer_id = 159 WHERE customer_id = 186;
UPDATE money_cards SET customer_id = 129 WHERE customer_id = 116;