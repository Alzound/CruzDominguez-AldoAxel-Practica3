CREATE DATABASE IF NOT EXISTS ReMakers;

USE ReMakers; 

CREATE TABLE countries(
    Country_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    country_name VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET = utf8mb4; 

CREATE TABLE Status_Category(
    status_id VARCHAR(255) NOT NULL,
    level INTEGER NOT NULL PRIMARY KEY
) ENGINE=InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE Videogame_categories(
    videogames_genre_id VARCHAR(255) PRIMARY KEY,
    genre_name VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE Games(
    game_id VARCHAR(255) PRIMARY KEY,
    game_name VARCHAR(255) NOT NULL,
    game_date DATETIME NOT NULL,
    genre VARCHAR(255) NOT NULL
     FOREIGN KEY(genre)
    REFERENCES Videogame_categories(videogames_genre_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE follows(
  follow_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  follow_date DATETIME NOT NULL,
  follow_user VARCHAR(50) NOT NULL,
  user VARCHAR(50) NOT NULL,
  FOREIGN KEY(user)
    REFERENCES users(user)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE posts(
  post_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  post_date DATETIME NOT NULL,
  plot TEXT,
  photo VARCHAR(255) NOT NULL,
  user VARCHAR(50) NOT NULL,
  FOREIGN KEY(user)
    REFERENCES users(user)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE comments(
  comment_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  comment_date DATETIME NOT NULL,
  comment TEXT NOT NULL,
  post_id INTEGER UNSIGNED NOT NULL,
  user VARCHAR(50) NOT NULL,
  FOREIGN KEY(post_id)
    REFERENCES posts(post_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  FOREIGN KEY(user)
    REFERENCES users(user)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Stars(
  stars_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  stars_date DATETIME NOT NULL,
  post_id INTEGER UNSIGNED NOT NULL,
  user VARCHAR(50) NOT NULL,
  FOREIGN KEY(post_id)
    REFERENCES posts(post_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  FOREIGN KEY(user)
    REFERENCES users(user)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  level INTEGER NOT NULL
  FOREIGN KEY (country)
    REFERENCES countries(country_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  FOREIGN KEY (level)
    REFERENCES Status_Category(level)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

