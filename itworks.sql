#DROP DATABASE IF EXISTS burgers_db;
#CREATE DATABASE IF NOT EXISTS burgers_db;
#USE burgers_db;

USE ye8oqbgsyn49q7yp;
CREATE TABLE IF NOT EXISTS burgers
(
	id int NOT NULL AUTO_INCREMENT,
	burger_name varchar(255) NOT NULL,
	devoured BOOLEAN DEFAULT false,
	date_added TIMESTAMP,
	PRIMARY KEY (id)
);
INSERT INTO burgers (burger_name) VALUES ('Black Bean');
INSERT INTO burgers (burger_name) VALUES ('Tempeh');
INSERT INTO burgers (burger_name, devoured) VALUES ('Chickpeas', true);
INSERT INTO burgers (burger_name, devoured) VALUES ('Lentils', true);
INSERT INTO burgers (burger_name, devoured) VALUES ('Tofu', true);
INSERT INTO burgers (burger_name) VALUES ('Chickn');