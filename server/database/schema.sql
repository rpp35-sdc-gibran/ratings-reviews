CREATE TABLE review (
  id SERIAL NOT NULL PRIMARY KEY,
  product_id INT NOT NULL,
  rating VARCHAR,
  date NUMERIC,
  summary VARCHAR,
  body VARCHAR,
  recommend BOOLEAN,
  reported BOOLEAN,
  reviewer_name VARCHAR,
  reviewer_email VARCHAR,
  response VARCHAR,
  helpfulness INT
);

CREATE TABLE photos (
  id INT PRIMARY KEY,
  review_id INT,
  url_address VARCHAR
);

CREATE TABLE characteristics (
  id INT PRIMARY KEY,
  product_id INT,
  name VARCHAR
);

CREATE TABLE char_reviews (
  id INT PRIMARY KEY,
  characteristic_id INT,
  review_id INT,
  value INT
);


COPY review FROM '/Users/chloe/Desktop/HackReactor/SDC/reviews.csv' WITH (FORMAT csv);


\COPY review FROM '/Users/chloe/Desktop/HackReactor/SDC/reviews.csv' DELIMITER ',' CSV HEADER;

CREATE INDEX product_id_index ON characteristics_csv(product_id);

