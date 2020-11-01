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
    state varchar(50) not null,
	zip numeric(6) not null,
	phone numeric(10) not null,
	email nvarchar(255) not null,
	primary key(fname, lname)
);
describe address_book;

#UC3
insert into address_book (fname, lname, address, city, state, zip, phone, email) VALUES
('Shubham', 'Jangale', 'Jail Road', 'Nashik', 'Maharashtra', 422101, 9987646236, 'shu@gmail.com'),
('Rohan', 'Patil', 'x road', 'Mumbai', 'Gujrat', 411110, 9999999999, 'rohan@gmail.com'),
('Aditya', 'Kharade', 'y road', 'Akola', 'Delhi', 455550, 8888888888, 'aditya@gmail.com');
select * from address_book;

#UC4
update address_book set address = "Kala Nagar" where fname = "Shubham";
select * from address_book;

#UC5
delete from address_book where fname = 'Aditya';
select * from address_book;

#UC6
select * from address_book where city = 'Nashik' or state = 'Maharashtra';
select * from address_book where city = 'Mumbai' or state = 'Maharashtra';

#UC7
select count(*) from address_book where city = 'Nashik' and state = 'Maharashtra' group by city;
select count(*) from address_book where city = 'Mumbai' and state = 'Gujrat' group by city,state;