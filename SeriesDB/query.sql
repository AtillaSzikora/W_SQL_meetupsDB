SELECT Series.*, Statuses.StatusValue
FROM Watching
JOIN Series ON Watching.SeriesId = Series.Id
JOIN Statuses ON Watching.StatusId = Statuses.Id
WHERE Statuses.Id = 1