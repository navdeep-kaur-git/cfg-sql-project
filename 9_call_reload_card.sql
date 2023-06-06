USE travel_money_cards;

CALL `travel_money_cards`.`reload_card`(
    'Joe',
    'Smith',
    '1000000000',
    10,
    2027,
    50.50, 
    'EUR');

CALL `travel_money_cards`.`reload_card`(
    'Joe',
    'Smith',
    '1000000000',
    10,
    2027,
    250.50, 
    'HUF');