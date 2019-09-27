SET NAMES utf8;


CREATE DATABASE IF NOT EXISTS mydb DEFAULT CHARACTER SET utf8;


CREATE TABLE mydb.user (
	
    uid INT UNSIGNED AUTO_INCREMENT,
	
    uname VARCHAR(255) NOT NULL UNIQUE,
	
    passwd VARCHAR(50) NOT NULL,
	
    phone CHAR(11) NOT NULL,
	
    email varchar(255) NOT NULL,
	
)PRIMARY KEY (uid)
) ENGINE=INNODB AUTO_INCREMENT=1000 DEFAULT CHARACTER SET utf8;



CREATE USER 'dj'@'127.0.0.1' IDENTIFIED BY '123456';

GRANT ALL ON mydb.* to 'dj'@'127.0.0.1';

FLUSH PRIVILEGES;
