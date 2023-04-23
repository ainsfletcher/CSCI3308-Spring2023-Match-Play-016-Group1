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
  bio VARCHAR(500) NOT NULL
);

DROP TABLE IF EXISTS user_to_info CASCADE;
CREATE TABLE IF NOT EXISTS user_to_info(
  user_id INT NOT NULL,
  info_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (user_id),
  FOREIGN KEY (info_id) REFERENCES user_info (info_id)
);

INSERT INTO users (username, password) VALUES ('Adam', 'Yes');
INSERT INTO users (username, password) VALUES ('Ainsley', 'Yes');
INSERT INTO users (username, password) VALUES ('Sean', 'Yes');
INSERT INTO users (username, password) VALUES ('Matthew', 'Yes');
INSERT INTO users (username, password) VALUES ('Moses', 'Yes');

INSERT INTO user_info (name, handicap, age, home_course, movement, bio) VALUES ('Adam', 10.0, 20, 'Golf Course', 'Walk', 'I am a golfer');
INSERT INTO user_info (name, handicap, age, home_course, movement, bio) VALUES ('Ainsley', 11.0, 30, 'Boulder Golf Course', 'Cart', 'I am a golfer');
INSERT INTO user_info (name, handicap, age, home_course, movement, bio) VALUES ('Sean', 12.0, 40, 'Boulder Golf Course', 'Walk', 'I am a golfer');
INSERT INTO user_info (name, handicap, age, home_course, movement, bio) VALUES ('Matthew', 13.0, 50, 'Boulder Golf Course', 'Cart', 'I am a golfer');
INSERT INTO user_info (name, handicap, age, home_course, movement, bio) VALUES ('Moses', 14.0, 60, 'Boulder Golf Course', 'Cart', 'I am a golfer');

INSERT INTO user_to_info (user_id, info_id) VALUES (1, 1);
INSERT INTO user_to_info (user_id, info_id) VALUES (2, 2);
INSERT INTO user_to_info (user_id, info_id) VALUES (3, 3);
INSERT INTO user_to_info (user_id, info_id) VALUES (4, 4);
INSERT INTO user_to_info (user_id, info_id) VALUES (5, 5);
