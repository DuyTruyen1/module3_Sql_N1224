create database t12224l1;

use t12224l1;
create table student(
   id int primary key auto_increment,
   name varchar(50),
   score double
);

set sql_safe_updates = 0;
select * from student;

set sql_safe_updates = 0;
insert into student(name, score) value 
('Nguyen Van A' , '9.6'),
('Nguyen Van B' , '8.7'),
('Nguyen Van C' , '2.5');

set sql_safe_updates = 0;
update student 
set score = '5.5'
where id = 3;

delete from student where id = 3;

alter table student add address varchar(200);

drop table student;
drop database t1224l1;

