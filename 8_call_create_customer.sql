USE travel_money_cards;

CALL `travel_money_cards`.`create_new_customer`(
    'Joe',
    'Smith', 
    'joesmith@example.com', 
    NULL, 
    '4 Maple Tree Lane', 
    NULL, 
    'Sutton', 
    'SN99 0AA', 
    'United Kingdom', 
    50.00, 
    'EUR');
