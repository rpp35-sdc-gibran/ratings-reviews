CREATE TABLE review (
  id SERIAL NOT NULL PRIMARY KEY,
  product_id INT NOT NULL,
  rating VARCHAR,
  summary VARCHAR.
  body VARCHAR,
  recommend VARCHAR,
  reported VARCHAR,
  reviewer_name VARCHAR.
  reviewer_email VARCHAR,
  response VARCHAR,
  helpfulness INT
);

CREATE TABLE photos (
  id INT PRIMARY KEY,
  review_id INT,
  url_address VARCHAR,
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


COPY reviews FROM '/Users/chloe/Desktop/HackReactor/SDC/ratings-reviews/reviews.csv' WITH (FORMAT csv);




