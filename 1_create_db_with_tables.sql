CREATE DATABASE travel_money_cards;

USE travel_money_cards;

CREATE TABLE
  currency_codes (
    currency_code VARCHAR(3) NOT NULL,
    currency_name VARCHAR(50) NOT NULL,
    CONSTRAINT pk_currency_codes_currency_code PRIMARY KEY (currency_code)
  );

CREATE TABLE
  countries (
    country_id INT NOT NULL AUTO_INCREMENT,
    country_name VARCHAR(50) NOT NULL,
    CONSTRAINT pk_countries_country_id PRIMARY KEY (country_id)
  );

CREATE TABLE
  customers (
    customer_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50),
    phone VARCHAR(50),
    CONSTRAINT pk_customers_customer_id PRIMARY KEY (customer_id)
  );

CREATE TABLE
  customer_addresses (
    address_id INT NOT NULL AUTO_INCREMENT,
    customer_id INT NOT NULL,
    address_line1 VARCHAR(50) NOT NULL,
    address_line2 VARCHAR(50) NULL,
    city VARCHAR(50) NOT NULL,
    postcode VARCHAR(10) NOT NULL,
    country_id INT NOT NULL,
    CONSTRAINT pk_customer_address_address_id PRIMARY KEY (address_id),
    CONSTRAINT uc_customer_address_customer_id UNIQUE (customer_id),
    CONSTRAINT fk_customer_address_customer_id FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
    CONSTRAINT fk_customer_address_country_id FOREIGN KEY (country_id) REFERENCES countries (country_id)
  );

CREATE TABLE
  money_cards (
    card_number BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    customer_id INT NOT NULL,
    expiry_date_month INT NOT NULL,
    expiry_date_year INT NOT NULL,
    CONSTRAINT pk_money_card_card_number PRIMARY KEY (card_number),
    CONSTRAINT fk_money_cards_customer_id FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
  );

ALTER TABLE money_cards AUTO_INCREMENT=1000000000;  

CREATE TABLE
  card_balances (
    card_number BIGINT UNSIGNED NOT NULL,
    currency_code VARCHAR(3) NOT NULL,
    balance DECIMAL(12, 2),
    CONSTRAINT pk_card_balance_card_number_currency_code PRIMARY KEY (card_number, currency_code),
    CONSTRAINT fk_card_balance_card_number FOREIGN KEY (card_number) REFERENCES money_cards (card_number),
    CONSTRAINT fk_card_balance_currency_code FOREIGN KEY (currency_code) REFERENCES currency_codes (currency_code)
  );