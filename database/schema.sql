CREATE TABLE ACCOUNT
(
  password_hash INT NOT NULL,
  email INT NOT NULL,
  balance INT NOT NULL,
  account_id INT NOT NULL,
  PRIMARY KEY (account_id)
);

CREATE TABLE PRODUCT
(
  product_id INT NOT NULL,
  name INT NOT NULL,
  description INT NOT NULL,
  price INT NOT NULL,
  on_sale INT NOT NULL,
  creator_id INT NOT NULL,
  PRIMARY KEY (product_id),
  FOREIGN KEY (creator_id) REFERENCES ACCOUNT(account_id)
);

CREATE TABLE PRODUCT_TRANSFER
(
  date_time INT NOT NULL,
  buyer_id INT NOT NULL,
  product_id INT NOT NULL,
  PRIMARY KEY (buyer_id, product_id),
  FOREIGN KEY (buyer_id) REFERENCES ACCOUNT(account_id),
  FOREIGN KEY (product_id) REFERENCES PRODUCT(product_id)
);

CREATE TABLE MONEY_TRANSACTION
(
  amount INT NOT NULL,
  timestamp INT NOT NULL,
  account_id INT NOT NULL,
  PRIMARY KEY (timestamp, account_id),
  FOREIGN KEY (account_id) REFERENCES ACCOUNT(account_id)
);
