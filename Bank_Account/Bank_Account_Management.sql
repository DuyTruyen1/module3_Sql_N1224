create database bank_account;

use bank_account;

create table customer(
  id_customer int auto_increment primary key,
  name varchar(50) not null
);

create table account(
  id_student int auto_increment primary key,
  name varchar(50) not null,
  id_customer int,
  balance decimal(15,2) not null,
  foreign key(id_customer) references customer(id_customer)
);
