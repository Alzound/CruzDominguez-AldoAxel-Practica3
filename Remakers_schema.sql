CREATE DATABASE IF NOT EXISTS ReMakers;

USE ReMakers; 

CREATE TABLE countries(
    Country_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    country_name VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET = utf8mb4; 

CREATE TABLE Status Category(
    status_id VARCHAR(255) NOT NULL PRIMARY KEY,
    level INTEGER NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE Videogame categories(
    videogames_genre_id VARCHAR(255) PRIMARY KEY,
    genre_name VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE Games(
    game_id VARCHAR(255) PRIMARY KEY,
    game_name VARCHAR(255) NOT NULL,
    game_date DATETIME NOT NULL,
    genre VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE users(
  user VARCHAR(50) PRIMARY KEY,
  user_date DATETIME NOT NULL,
  user_name VARCHAR(255),
  email VARCHAR(50) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL,
  phone VARCHAR(20) UNIQUE NOT NULL,
  bio VARCHAR(255),
  avatar VARCHAR(255),
  birthdate DATE,
  genre ENUM('Hombre', 'Mujer', 'No Binario'),
  country INTEGER UNSIGNED,
  FOREIGN KEY (country)
    REFERENCES countries(country_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
  level INTEGER NOT NULL
  FOREIGN KEY (level)
    REFERENCES Status Category(status_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;