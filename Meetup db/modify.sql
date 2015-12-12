USE MeetupDB;

UPDATE Users SET Avatar = 'A' WHERE Avatar = 'Q';
UPDATE Users SET Avatar = 'Q' WHERE Id BETWEEN 3 AND 5;
UPDATE Users SET Email = NULL WHERE Id = 9
