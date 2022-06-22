CREATE TABLE review (
  id SERIAL NOT NULL PRIMARY KEY,
  product_id INT NOT NULL,
  rating VARCHAR,
  summary VARCHAR,
  body VARCHAR,
  recommend VARCHAR,
  reported VARCHAR,
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


\COPY review(id, product_id, summary, body, recommend, reported, reviewer_name, reviewer_email, response, helpfulness) from '/Users/chloe/Desktop/HackReactor/SDC/reviews.csv' CSV HEADER DELIMITER ',';

