DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE users(
  user_id VARCHAR(50) PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  username VARCHAR(50) NOT NULL,
  password CHAR(50) NOT NULL,
  handicap DOUBLE PRECISION NOT NULL,
  avg_drinks SMALLINT NOT NULL,
  age SMALLINT NOT NULL,
  home_course VARCHAR(50) NOT NULL,
  movement(walk/cart) VARCHAR(10) NOT NULL,
  bio VARCHAR(500) NOT NULL
);