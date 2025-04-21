CREATE TABLE ACCOUNT
(
  password_hash VARCHAR(255) NOT NULL,  -- Storing hashed passwords as strings
  email VARCHAR(255) NOT NULL,         -- Email addresses are text
  balance DECIMAL(10,2) NOT NULL,      -- Monetary value should be decimal
  account_id INT NOT NULL,
  PRIMARY KEY (account_id)
);

-- Core product data (frequently accessed)
CREATE TABLE PRODUCT_CORE (
  product_id INT NOT NULL,
  name VARCHAR(100) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  on_sale BOOLEAN NOT NULL,
  creator_id INT NOT NULL,
  PRIMARY KEY (product_id),
  FOREIGN KEY (creator_id) REFERENCES ACCOUNT(account_id)
);

-- Product description (rarely accessed)
CREATE TABLE PRODUCT_DESCRIPTION (
  product_id INT NOT NULL PRIMARY KEY,
  description TEXT NOT NULL,
  FOREIGN KEY (product_id) REFERENCES PRODUCT_CORE(product_id)
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

-- Parent table partitioned by timestamp
CREATE TABLE MONEY_TRANSACTION (
  amount DECIMAL(10,2) NOT NULL,
  timestamp TIMESTAMP NOT NULL,
  account_id INT NOT NULL,
  PRIMARY KEY (timestamp, account_id),
  FOREIGN KEY (account_id) REFERENCES ACCOUNT(account_id)
) PARTITION BY RANGE (timestamp);

-- Partition for transactions in 2023
CREATE TABLE MONEY_TRANSACTION_2023 PARTITION OF MONEY_TRANSACTION
  FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

-- Partition for transactions in 2024
CREATE TABLE MONEY_TRANSACTION_2024 PARTITION OF MONEY_TRANSACTION
  FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

-- Partition for transactions in 2025
CREATE TABLE MONEY_TRANSACTION_2025 PARTITION OF MONEY_TRANSACTION
  FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');
