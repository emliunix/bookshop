DROP TABLE IF EXISTS user;

CREATE TABLE user (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  password VARCHAR(50) NOT NULL,
  role VARCHAR(10) NOT NULL DEFAULT 'user'
);

INSERT INTO user (username, password, role) VALUES ('admin', 'admin', 'admin');