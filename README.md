# Code First Girls - MySQL Project
This repository contains scripts I used to create project database and populate the data.

## Project Idea
My database stores data about travel money cards. A travel money card is similar to a debit card. It can be pre-loaded with one or many currencies. 

A travel money card has card number and expiry date, just like a debit or credit card.

## Database Model

### Tables
| Table Name         | Description                                                                                                                                                                                                    |
|--------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| customers          | Customers table holds customer data such as first name, last name, email and phone.                                                                                                                            |
| customer_addresses | This table is created to hold customer addresses, has columns for address, city, postcode and country. Addresses table linked to customers table using customer_id.                                            |
| money_cards        | Money Cards table has card numbers and expiry month and year.  It’s linked to customers table using customer_id.  It’s one to many relationship, means one customer can have multiple cards.                   |
| card_balances      | Balances table has card balances for each purchased currency.  It’s linked to money cards table using card_number. It’s one to many relationship means one card can hold multiple currencies at the same time. |
| currency_codes     | This is a reference data table for currency codes.                                                                                                                                                             |
| countries          | This is a reference data table for countries.                                                                                                                                                                  |

### Stored Functions

### Stored Procedures 

## How to use it?

## 
