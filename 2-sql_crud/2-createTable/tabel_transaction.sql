CREATE TABLE transaction (
  id INT NOT NULL,
  customer_id INT NOT NULL,
  product_id INT NOT NULL,
  jumlah INT NOT NULL,
  total_price INT NOT NULL,
  date DATE NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (customer_id) REFERENCES customer(id),
  FOREIGN KEY (product_id) REFERENCES product(id)
);