CREATE DATABASE IF NOT EXISTS SeriesDB;
USE SeriesDB;

CREATE TABLE IF NOT EXISTS Series
(Id INT AUTO_INCREMENT,
SeriesName VARCHAR(100),
Category VARCHAR(100),
Seasons INT,
PRIMARY KEY (Id));

CREATE TABLE IF NOT EXISTS Statuses
(Id INT AUTO_INCREMENT,
StatusValue VARCHAR(100),
PRIMARY KEY (Id));

CREATE TABLE IF NOT EXISTS Watching
(Id INT AUTO_INCREMENT,
SeriesId INT,
StatusId INT,
PRIMARY KEY (Id),
FOREIGN KEY (SeriesId) REFERENCES Series (Id),
FOREIGN KEY (StatusId) REFERENCES Statuses (Id));