-- In your database, create a stored procedure and demonstrate how it runs

/*
SYNTAX:

CALL create_new_customer(
    <{IN p_first_name VARCHAR(50)}>, 
    <{IN p_last_name VARCHAR(50)}>, 
    <{IN p_email VARCHAR(50)}>, 
    <{IN p_phone VARCHAR(50)}>, 
    <{IN p_address_line1 VARCHAR(50)}>, 
    <{IN p_address_line2 VARCHAR(50)}>, 
    <{IN p_city VARCHAR(50)}>, 
    <{IN p_postcode VARCHAR(10)}>, 
    <{IN p_country VARCHAR(50)}>, 
    <{IN p_initial_balance DECIMAL(12, 2)}>, 
    <{IN p_initial_balance_currency_code VARCHAR(3)}>);

*/

USE travel_money_cards;

CALL create_new_customer(
    'Liam',
    'Adams', 
    'l.adams@outlook.uk', 
    NULL, 
    '4 Uphill Lane', 
    NULL, 
    'Newcastle', 
    'NE99 0WW', 
    'United Kingdom', 
     50.50, 
    'EUR');
