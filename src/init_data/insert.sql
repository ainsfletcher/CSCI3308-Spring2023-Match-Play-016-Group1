INSERT INTO users (username, password) VALUES ('Adam', 'Yes');
INSERT INTO users (username, password) VALUES ('Ainsley', 'Yes');
INSERT INTO users (username, password) VALUES ('Shaun', 'Yes');
INSERT INTO users (username, password) VALUES ('Moses', 'Yes');
INSERT INTO users (username, password) VALUES ('Matthew', 'Yes');
INSERT INTO users (username, password) VALUES ('Nate', 'Yes');

INSERT INTO user_info (name, handicap, age, home_course, movement, bio, phone_number) VALUES ('Adam', 10.0, 20, 'Boulder', 'Walk', 'Hey', 1234567890);
INSERT INTO user_info (name, handicap, age, home_course, movement, bio, phone_number) VALUES ('Ainsley', 11.0, 30, 'Boulder', 'Cart', 'Hey', 1234567890);
INSERT INTO user_info (name, handicap, age, home_course, movement, bio, phone_number) VALUES ('Shaun', 12.0, 40, 'Boulder', 'Walk', 'Hey', 1234567890);
INSERT INTO user_info (name, handicap, age, home_course, movement, bio, phone_number) VALUES ('Moses', 13.0, 50, 'Boulder', 'Cart', 'Hey', 1234567890);
INSERT INTO user_info (name, handicap, age, home_course, movement, bio, phone_number) VALUES ('Matthew', 14.0, 60, 'Boulder', 'Cart', 'Hey', 1234567890);
INSERT INTO user_info (name, handicap, age, home_course, movement, bio, phone_number) VALUES ('Nate', 14.0, 60, 'Boulder', 'Cart', 'Hey', 1234567890);

INSERT INTO user_to_info (user_id, info_id) VALUES (1, 1);
INSERT INTO user_to_info (user_id, info_id) VALUES (2, 2);
INSERT INTO user_to_info (user_id, info_id) VALUES (3, 3);
INSERT INTO user_to_info (user_id, info_id) VALUES (4, 4);
INSERT INTO user_to_info (user_id, info_id) VALUES (5, 5);
INSERT INTO user_to_info (user_id, info_id) VALUES (6, 6);

-- this is just a hardcoded match (test case)
INSERT INTO matches (matched_username, active_username, is_match, match_status) VALUES ('test', 'Ainsley', TRUE, 'Pending');