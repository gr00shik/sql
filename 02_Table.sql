use testdb;
show tables;
CREATE TABLE users (
    login VARCHAR(20) NOT NULL UNIQUE,
    password VARCHAR(20) NOT NULL DEFAULT '12345',
    sex ENUM('M', 'F') NOT NULL DEFAULT 'M',
    birthday DATE,
    PRIMARY KEY (login)
);
CREATE TABLE phones (
    id INT NOT NULL AUTO_INCREMENT,
    login VARCHAR(20) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    office ENUM('HOME', 'OFFICE'),
    PRIMARY KEY (id),
    CONSTRAINT f_login FOREIGN KEY (login)
        REFERENCES users (login)
        ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE usersTMP (
    login VARCHAR(20) NOT NULL UNIQUE,
    password VARCHAR(20) NOT NULL DEFAULT '12345',
    sex ENUM('M', 'F') NOT NULL DEFAULT 'M',
    birthday DATE,
    PRIMARY KEY (login)
);
describe users;
describe phones;
drop table users;
drop table phones;

create table testqa(
id int not null auto_increment,
age int check(age between 0 AND 100),
primary key (id)
);

drop trigger agelimit;
create trigger agelimit after insert on testqa for each row set @age=10;


