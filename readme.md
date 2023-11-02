# Movie Catalog

## Overview

This application is a simple web-based movie catalog that allows users to view a list of movies, as well as add, delete, and update movie details. Each movie in the catalog includes the following fields:

- MovieId
- Title
- Director
- ReleaseDate
- Rating
- Description

The application is designed to be run with an embedded Tomcat server and uses MySQL as its database.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- Java JDK 17 is installed
- Maven is installed
- MySQL server is up and running

## Configuration

Before running the application, you need to set up the database with scripts

```properties
CREATE DATABASE giorgi;

CREATE TABLE Movie (
    MovieId INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255),
    Director VARCHAR(255),
    ReleaseDate DATE,
    Rating VARCHAR(255),
    Description VARCHAR(2048)
);
