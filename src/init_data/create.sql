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
  movement VARCHAR(10) NOT NULL,
  bio VARCHAR(500) NOT NULL
);

DROP TABLE IF EXISTS pictures CASCADE;
CREATE TABLE pictures(
  picture_id SERIAL PRIMARY KEY,
  picture_url VARCHAR(100) NOT NULL,
  picture_description VARCHAR(500) NOT NULL
);

DROP TABLE IF EXISTS users_to_pictures CASCADE;
CREATE TABLE users_to_pictures(
  user_id VARCHAR(50) NOT NULL,
  picture_id FOREIGN KEY REFERENCES pictures(picture_id) NOT NULL,
);