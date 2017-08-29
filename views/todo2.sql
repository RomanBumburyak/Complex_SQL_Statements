CREATE TABLE todo (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(1000) ,
  priority INTEGER DEFAULT 1 NOT NULL,
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP
);

//////////20 Insert into Statements/////////////////
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Finish my laundry', 'I need socks', 5, '2017-08-24 12:00:30', '2017-08-28 12:45:32');
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Finish painting my bathroom', 'I need beige paint', 5, '2017-08-24 12:00:30','2017-08-28 13:25:32');
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Finish my week1 z-index work ','It is almost done', 4,'2017-08-16 12:00:30', NULL);
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('clean my car', 'wash and wax', 5,'2017-08-30 12:00:30',NULL);
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Finish downloading that new album', 'Chance the Rapper', 5,'2017-08-29 12:00:30', NULL);
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('call my grandma', 'I do not see him often', 4,   '2017-08-30 12:00:30' ,'2017-08-28 22:38:32');
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('call my grandpa', 'She is almost 90', 4,'2017-08-30 12:00:30',NULL);
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('go visit my nephew', 'I should see him more often', 4,'2017-08-30 12:00:30',NULL);
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('call the dmv', 'I do not owe taxes', 5,'2017-08-28 12:55:32', NULL);
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('read the bible', 'Matthew and Ephesians', 3,   '2017-08-20 12:00:30' ,NULL);
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Meet up with my cousin David', 'He moved to Hawaii', 5,'2017-08-30 12:00:30', NULL);
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Clean my room', 'organize it better', 5,'2017-08-30 12:00:30', NULL);
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Meet up with Arthur', 'I do not see him often anymore', 3,'2017-08-22 12:00:30', NULL);
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Find a new job', 'I need a good job', 1,'2017-08-30 12:00:30', NULL);
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Download some music', 'Russian and English music', 5,'2017-08-30 12:00:30', NULL);
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Unsubscribe from Netflix', 'I do not need it', 5,'2017-08-11 12:00:30', NULL);
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Delete my youtube account', 'I have two other accounts', 5,'2017-08-20 12:00:30', NULL);
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Find a girlfirend', 'I need a girlfriend', 4,'2017-08-30 12:00:30', NULL);
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Buy the Java Book', 'I need to read it', 2,    '2017-08-30 12:00:30' ,'2017-08-28 23:55:32');
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Go to the gym', 'I need to stay in shape', 5,'2017-08-13 12:00:30', NULL);
////////////////End of Insert into Statements//////////

//////Select Statement to find incomplete todos with a priority of 3//////////
SELECT created_at FROM todo WHERE priority = 3 ;


///////////Write a SELECT statement to find the number of incomplete todos by priority./////

SELECT * FROM todo WHERE completed_at IS NULL ORDER BY priority DESC;


////////Write a SELECT statement to find the number of todos by priority created in the last 30 days.///////////

SELECT * FROM todo WHERE created_at > current_date - interval '30' ORDER BY priority;

////////////////////////////
Write a SELECT statement to find the next todo you should work on. This is the todo with the highest priority that was created first.

  SELECT * FROM todo WHERE priority = (SELECT max(priority) FROM todo) AND completed_at IS NULL ORDER BY created_at ASC ;
