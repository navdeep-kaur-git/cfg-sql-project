-- In your database, create a stored function that can be applied to a query in your DB

-- Get country_id using country name
/*
SYNTAX:

get_country_id(<{p_country_name VARCHAR(50)}>)

*/
SELECT get_country_id('United Kingdom') AS country_id;


--############################################################################
--############################################################################

-- Check if provided currency code is present in the database
/*
SYNTAX:

error_if_invalid_currency_code(<{p_currency_code VARCHAR(3)}>)

*/
-- valid codes are: AUD, EUR, USD, etc
-- EUR is valid, should work
SELECT error_if_invalid_currency_code('EUR') AS is_valid_currency_code;


-- RUE is invalid code, should throw an error with details
SELECT error_if_invalid_currency_code('RUE') AS is_valid_currency_code;