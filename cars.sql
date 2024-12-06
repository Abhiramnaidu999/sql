CREATE DATABASE sonic;

USE sonic;

CREATE TABLE cars (id INT PRIMARY KEY AUTO_INCREMENT,
                    NAME VARCHAR(255), price INTEGER);

INSERT INTO cars(NAME,price) VALUES ('audi',52642);
INSERT INTO cars(NAME,price)VALUES('mercedes',57127);
INSERT INTO cars(NAME,price)VALUES('skoda',9000);
INSERT INTO cars(NAME,price)VALUES('Volvo',29000);
INSERT INTO cars(NAME,price)VALUES('Bentley',350000);
INSERT INTO cars(NAME,price)VALUES('Citroen',21000);
INSERT INTO cars(NAME,price)VALUES('Hummer',41400);
INSERT INTO cars(NAME,price)VALUES('Volksawagen',21500);
INSERT INTO cars(NAME,price)VALUES('Tata',15000);

SELECT * FROM cars;