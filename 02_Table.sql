use testdb;
show tables;
create table users(
login varchar(20) not null unique,
password varchar(20) not null default '12345',
sex enum('M', 'F') not null default 'M',
birthday date,
primary key(login)
);
describe users;
drop table users;

