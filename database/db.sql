CREATE TABLE cadastro (
  id INT(11) AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  password VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  age INT(11) NOT NULL,
  phone_number VARCHAR(20) NOT NULL,
  curso INT(11) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
