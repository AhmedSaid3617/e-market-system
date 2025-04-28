-- schema.sql
-- This SQL script creates the database schema for e-market system.
-- This is in PostgreSQL syntax, for SQLite, replace `SERIAL PRIMARY KEY` with `INTEGER PRIMARY KEY`

CREATE TABLE ACCOUNT
(
  password_hash VARCHAR(255) NOT NULL,  -- Storing hashed passwords as strings
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,         -- Email addresses are text
  balance DECIMAL(10,2) NOT NULL,      -- Monetary value should be decimal
  account_id SERIAL PRIMARY KEY
);

CREATE TABLE PRODUCT
(
  product_id SERIAL PRIMARY KEY,
  picture_url VARCHAR(255) NOT NULL,       -- URLs are text
  name VARCHAR(100) NOT NULL,          -- Product names are text
  description TEXT NOT NULL,           -- Descriptions can be longer text
  price DECIMAL(10,2) NOT NULL,        -- Prices should be decimal for accuracy
  on_sale BOOLEAN NOT NULL,            -- Sale status is true/false
  creator_id INT NOT NULL,
  FOREIGN KEY (creator_id) REFERENCES ACCOUNT(account_id)
);

CREATE TABLE PRODUCT_TRANSFER
(
  date_time TIMESTAMP NOT NULL,        -- Date/time should be timestamp type
  buyer_id INT NOT NULL,
  product_id INT NOT NULL,
  PRIMARY KEY (buyer_id, product_id),
  FOREIGN KEY (buyer_id) REFERENCES ACCOUNT(account_id),
  FOREIGN KEY (product_id) REFERENCES PRODUCT(product_id)
);

CREATE TABLE MONEY_TRANSACTION
(
  amount DECIMAL(10,2) NOT NULL,       -- Monetary value should be decimal
  timestamp TIMESTAMP NOT NULL,         -- Proper timestamp type
  account_id INT NOT NULL,
  PRIMARY KEY (timestamp, account_id),
  FOREIGN KEY (account_id) REFERENCES ACCOUNT(account_id)
);