USE MeetupDB;

INSERT INTO Meetups (Starttime, Location, Topic, Description)
VALUES
('2015-11-15', 'Miskolc', 'Teamwork', 'No such thing.'),
('2015-11-16', 'Szuholy', 'Fuckups', 'Fucking up.'),
('2015-12-29', 'Pest', 'Drinking', 'Kozepes froccs.'),
('2015-12-28', 'Buda', 'Destructing', 'Easy to do.'),
('2015-12-27', 'Puszta', 'Hupakolas', 'Istallonal.');

INSERT INTO Statuses (Valuedata)
VALUES
('Going'),
('Tentative'),
('Not going'),
('Presenting');

INSERT INTO Users (Username, Birthdate, Introduction, Avatar, Email)
VALUES
('En', '2000-10-10', 'Engem nem basztok at.', 'F', 'vak@ond.hu'),
('Te', '2001-01-11', 'Teszed vissza.', 'A', 'fa@szalli.to'),
('O', '2010-11-01', NULL, 'A', 'se@gg.ek'),
('Mi', '2011-11-11', 'Mikor lesz ma vege?', 'S', 'tosz@odj.meg'),
('Ti', '2010-10-01', 'Ti se jottok tobbet.', 'Z', 'eleg@lesz.ma');

INSERT INTO Meetupregistrations (StatusId, MeetupId, UserId)
VALUES
(4, 2, 2),
(3, 2, 3),
(2, 3, 4),
(1, 1, 4),
(3, 5, 1);