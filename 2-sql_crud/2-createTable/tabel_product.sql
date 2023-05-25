CREATE TABLE product (
  id INT NOT NULL,
  nama VARCHAR(255) NOT NULL,
  harga INT NOT NULL,
  deskripsi TEXT,
  category_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (category_id) REFERENCES category(id)
);