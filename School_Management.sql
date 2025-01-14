create database school;

use school;

create table teacher(
  id_teacher int auto_increment primary key,
  name varchar(50) not null
);

create table student(
  id_student int auto_increment primary key,
  name varchar(50) not null,
  id_teacher int,
  foreign key(id_teacher) references teacher(id_teacher)
);
