#start
show databases;

#UC1
create database address_book_service;
show databases;
use address_book_service;
select database();

#UC2
create table address_book(
	fname varchar(100) not null,
	lname varchar(100) not null,
	address varchar(200) not null,
	city varchar(50) not null,
	zip numeric(6) not null,
	phone numeric(10) not null,
	email nvarchar(255) not null,
	primary key(fname, lname)
);
describe address_book;