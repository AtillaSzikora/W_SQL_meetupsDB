USE SeriesDB;

INSERT INTO Series (SeriesName, Category, Seasons)
VALUES
('Good Wife', 'Drama', 7),
('Leftovers', 'Drama', 2),
('Homeland', 'Drama', 5),
('TBBT', 'Sitcom', 9),
('Madam Secretary', 'Political', 2),
('Justfied', 'Drama', 6),
('Breaking Bad', 'Drama', 5),
('Banshee', 'Action', 3),
('House of Cards', 'Political', 3);

INSERT INTO Statuses (StatusValue)
VALUES
('Running'),
('Pending'),
('Ended');

INSERT INTO Watching (SeriesID, StatusID)
VALUES
(4, 1),
(3, 1),
(1, 1),
(5, 1),
(7, 3),
(2, 1),
(6, 3),
(9, 2),
(8, 2);