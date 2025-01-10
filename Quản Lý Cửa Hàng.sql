use quan_ly_cua_hang;

create table product (
  id int primary key auto_increment,
  name varchar(200) not null,
  description varchar(255) null,
  price double null,
  quantity int null
);

alter table product add stock int;

INSERT INTO product (name, description, price, quantity, stock) 
VALUES ('laptop', 'A high-performance laptop suitable for gaming and work.', 23.500, 20, 45),
	   ('pc', 'A high-performance pc suitable for gaming and work.', 15.300, 25, 35);
       
update product 
set stock = 23
where id = 2;


select * from product;

select id , name , price
from product;

select id , name , price
from product
where price < 23.5;