SELECT Users.*, Statuses.*, Meetups.*
FROM Meetupregistrations
JOIN Meetups ON Meetupregistrations.MeetupId = Meetups.Id
JOIN Statuses ON Meetupregistrations.StatusId = Statuses.Id
JOIN Users ON Meetupregistrations.UserId = Users.Id
WHERE Users.Id = 4;

SELECT * FROM Meetups WHERE Starttime > '2015.11.17';

SELECT * FROM Users WHERE Introduction IS NOT NULL