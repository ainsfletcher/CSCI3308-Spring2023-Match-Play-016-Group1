DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE IF NOT EXISTS users(
  user_id SERIAL PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  password CHAR(60) NOT NULL
);

DROP TABLE IF EXISTS user_info CASCADE;
CREATE TABLE IF NOT EXISTS user_info(
  info_id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  handicap DOUBLE PRECISION NOT NULL,
  age SMALLINT NOT NULL,
  home_course VARCHAR(50) NOT NULL,
  movement VARCHAR(10) NOT NULL,
  bio VARCHAR(500) NOT NULL,
  phone_number INT NOT NULL,
  image_url VARCHAR(255)
);

DROP TABLE IF EXISTS user_to_info CASCADE;
CREATE TABLE IF NOT EXISTS user_to_info(
  user_id INT NOT NULL,
  info_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (user_id),
  FOREIGN KEY (info_id) REFERENCES user_info (info_id)
);

DROP TABLE IF EXISTS matches CASCADE;
CREATE TABLE matches(
  match_id SERIAL PRIMARY KEY,
  matched_username VARCHAR(50) NOT NULL,
  active_username VARCHAR(50) NOT NULL,
  is_match BOOLEAN NOT NULL,
  match_status varchar(50) NOT NULL
);
