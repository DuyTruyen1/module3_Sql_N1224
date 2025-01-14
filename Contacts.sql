create database contacts;

use contacts;

create table person(
  id_person int primary key auto_increment,
  name varchar(50) not null
);

create table phone_number(
  id_phone_number int primary key auto_increment,
  id_person int ,
  number varchar(11) not null,
  foreign key(id_person) references person(id_person)
);

create table email(
  id_email int primary key auto_increment,
  id_person int ,
  email_address varchar(255) not null ,
  foreign key(id_person) references person(id_person)
);