USE MeetupDB;

DELETE FROM Users WHERE Introduction IS NULL;
DELETE FROM Users Where Avatar LIKE 'A';
ALTER TABLE Users DROP COLUMN Avatar
