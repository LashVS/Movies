CREATE DATABASE giorgi;

CREATE TABLE Movie (
    MovieId INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255),
    Director VARCHAR(255),
    ReleaseDate DATE,
    Rating VARCHAR(255),
    Description VARCHAR(2048)
);
