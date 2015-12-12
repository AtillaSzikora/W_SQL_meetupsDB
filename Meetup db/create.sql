CREATE DATABASE IF NOT EXISTS MeetupDB;
USE MeetupDB;

CREATE TABLE IF NOT EXISTS Meetups
(Id INTEGER NOT NULL AUTO_INCREMENT,
Starttime DATETIME NOT NULL,
Location VARCHAR(150) NOT NULL,
Topic VARCHAR(150) NOT NULL,
Description VARCHAR(1000) NOT NULL,
PRIMARY KEY (Id));

CREATE TABLE IF NOT EXISTS Statuses
(Id INTEGER NOT NULL AUTO_INCREMENT,
Valuedata VARCHAR(50) NOT NULL,
PRIMARY KEY (Id));

CREATE TABLE IF NOT EXISTS Users
(Id INTEGER NOT NULL AUTO_INCREMENT,
Username VARCHAR(100) NOT NULL,
Birthdate DATETIME NOT NULL,
Introduction VARCHAR(500),
Avatar VARCHAR(1000),
Email VARCHAR(150),
PRIMARY KEY (Id));

CREATE TABLE IF NOT EXISTS MeetupRegistrations
(Id INTEGER NOT NULL AUTO_INCREMENT,
StatusId INTEGER NOT NULL,
MeetupId INTEGER NOT NULL,
UserId INTEGER NOT NULL,
PRIMARY KEY (Id),
FOREIGN KEY (StatusId) REFERENCES Statuses (Id),
FOREIGN KEY (MeetupId) REFERENCES Meetups (Id),
FOREIGN KEY (UserId) REFERENCES Users (Id));
