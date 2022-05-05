CREATE DATABASE 'demo';
USE demo;

create table users (
	id  int(3) NOT NULL AUTO_INCREMENT,
	name varchar(120) NOT NULL,
	email varchar(220) NOT NULL,
	country varchar(120),
	PRIMARY KEY (id)
);

CREATE USER `demo`
IDENTIFIED BY 'demo';

GRANT ALL ON `demo`.*
TO `demo`;