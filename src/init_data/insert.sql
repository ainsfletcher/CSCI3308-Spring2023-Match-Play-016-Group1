INSERT INTO users (username, password) VALUES ('user1', 'Yes');
INSERT INTO users (username, password) VALUES ('user2', 'Yes');
INSERT INTO users (username, password) VALUES ('user3', 'Yes');
INSERT INTO users (username, password) VALUES ('user4', 'Yes');
INSERT INTO users (username, password) VALUES ('user5', 'Yes');

INSERT INTO user_info (name, handicap, age, home_course, movement, bio, phone_number) VALUES ('user1', 10.0, 20, 'Boulder', 'Walk', 'Hey', 1234567890);
INSERT INTO user_info (name, handicap, age, home_course, movement, bio, phone_number) VALUES ('user2', 11.0, 30, 'Boulder', 'Cart', 'Hey', 1234567890);
INSERT INTO user_info (name, handicap, age, home_course, movement, bio, phone_number) VALUES ('user3', 12.0, 40, 'Boulder', 'Walk', 'Hey', 1234567890);
INSERT INTO user_info (name, handicap, age, home_course, movement, bio, phone_number) VALUES ('user4', 13.0, 50, 'Boulder', 'Cart', 'Hey', 1234567890);
INSERT INTO user_info (name, handicap, age, home_course, movement, bio, phone_number) VALUES ('user5', 14.0, 60, 'Boulder', 'Cart', 'Hey', 1234567890);

INSERT INTO user_to_info (user_id, info_id) VALUES (1, 1);
INSERT INTO user_to_info (user_id, info_id) VALUES (2, 2);
INSERT INTO user_to_info (user_id, info_id) VALUES (3, 3);
INSERT INTO user_to_info (user_id, info_id) VALUES (4, 4);
INSERT INTO user_to_info (user_id, info_id) VALUES (5, 5);

INSERT INTO matches (matched_username, active_username, is_match, match_status) VALUES ('a', 'user1', TRUE, 'Pending');