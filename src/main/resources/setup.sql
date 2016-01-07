DROP TABLE IF EXISTS user;

CREATE TABLE user (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  password VARCHAR(50) NOT NULL,
  role VARCHAR(10) NOT NULL DEFAULT 'user'
);

INSERT INTO user (username, password, role) VALUES ('admin', 'admin', 'admin');

DROP TABLE IF EXISTS book;

CREATE TABLE book (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  author VARCHAR(50) NOT NULL,
  publisher VARCHAR(50) NOT NULL,
  pubdate DATETIME,
  isbn VARCHAR(50),
  description VARCHAR(2000) NOT NULL
);

INSERT INTO book (name, author, publisher, description) VALUES ("第一本书", "太初", "太初出版社", "大家好，老子是太初");