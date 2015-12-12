USE MeetupDB;

SELECT * FROM Meetups WHERE Starttime LIKE '%30%';
SELECT * FROM Statuses WHERE Valuedata LIKE 'Going';
SELECT * FROM Users;

SELECT Id, StatusId, MeetupId, UserId FROM Meetupregistrations
WHERE UserId = 4