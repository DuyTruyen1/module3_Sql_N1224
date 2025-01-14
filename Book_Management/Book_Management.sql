create database book_management;

use book_management;

create table author(
	id_author int primary key auto_increment,
    name varchar(50) not null
);

create table book(
	id_book int primary key auto_increment,
    name varchar(50) not null,
    price decimal(10,2) not null,
    id_author int,
    foreign key(id_author) references author(id_author)
);

create table employee(
	id_employee int primary key auto_increment,
    name varchar(50) not null,
    address text not null
);

create table bookkeeper(
	id_employee int,
    id_book int,
    primary key(id_employee , id_book),
    foreign key(id_employee) references employee(id_employee),
	foreign key(id_book) references book(id_book)
);
