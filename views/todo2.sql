CREATE TABLE todo (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(1000) ,
  priority INTEGER DEFAULT 1 NOT NULL,
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP
);

//////////20 Insert into Statements/////////////////
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Finish my laundry', 'I need socks', 5, '2017-08-28 12:00:30', '2017-08-28 12:55:32');
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Finish painting my bathroom', 'I need beige paint', 5, '2017-08-30 12:00:30'  ,'2017-08-28 12:55:32');
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Finish my week1 z-index work ', 'It is almost done', 4,'2017-08-30 12:00:30');
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('clean my car', 'wash and wax', 5,'2017-08-30 12:00:30');
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Finish downloading that new album', 'Chance the Rapper', 5,'2017-08-30 12:00:30');
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('call my grandma', 'I do not see him often', 4,   '2017-08-30 12:00:30' ,'2017-08-28 12:55:32');
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('call my grandpa', 'She is almost 90', 4,'2017-08-30 12:00:30');
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('go visit my nephew', 'I should see him more often', 4,'2017-08-30 12:00:30');
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('call the dmv', 'I do not owe taxes', 5,'2017-08-28 12:55:32');
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('read the bible', 'Matthew and Ephesians', 3,   '2017-08-30 12:00:30' ,'2017-08-28 12:55:32');
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Meet up with my cousin David', 'He moved to Hawaii', 5,'2017-08-30 12:00:30');
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Clean my room', 'organize it better', 5,'2017-08-30 12:00:30');
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Meet up with Arthur', 'I do not see him often anymore', 3,'2017-08-30 12:00:30');
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Find a new job', 'I need a good job', 1,'2017-08-30 12:00:30');
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Download some music', 'Russian and English music', 5,'2017-08-30 12:00:30');
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Unsubscribe from Netflix', 'I do not need it', 5,'2017-08-30 12:00:30');
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Delete my youtube account', 'I have two other accounts', 5,'2017-08-30 12:00:30');
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Find a girlfirend', 'I need a girlfriend', 4,'2017-08-30 12:00:30');
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Buy the Java Book', 'I need to read it', 2,    '2017-08-30 12:00:30' ,'2017-08-28 12:55:32');
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Go to the gym', 'I need to stay in shape', 5,'2017-08-30 12:00:30');
////////////////End of Insert into Statements//////////

//////Select Statement to find incomplete todos with a priority of 3//////////
SELECT created_at FROM todo WHERE priority = 3 ;


///////////Write a SELECT statement to find the number of incomplete todos by priority./////
SELECT * FROM created_at WHERE priority DESC


////////Write a SELECT statement to find the number of todos by priority created in the last 30 days.///////////   ROMAN! YOU NEED TO EDIT THE 30 DAY RULE IN YOUR SCHEMA
SELECT priority FROM todo
