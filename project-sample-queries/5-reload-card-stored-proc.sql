-- In your database, create a stored procedure and demonstrate how it runs

/*
SYNTAX:

CALL reload_card(
    <{IN p_first_name VARCHAR(50)}>, 
    <{IN p_last_name VARCHAR(50)}>, 
    <{IN p_card_number BIGINT}>, 
    <{IN p_expiry_date_month INT}>, 
    <{IN p_expiry_date_year INT}>, 
    <{IN p_amount DECIMAL(12, 2)}>, 
    <{IN p_currency_code VARCHAR(3)}>);

*/

USE travel_money_cards;

CALL reload_card(
    'Dane',
    'Wallace',
    '1000000003',
     11,
     2028,
     250.70, 
    'EUR');


CALL reload_card(
    'Dane',
    'Wallace',
    '1000000003',
     11,
     2028,
     1589.00, 
    'USD');