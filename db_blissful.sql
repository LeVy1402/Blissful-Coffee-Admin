drop database if exists coffee_blissful;
create database coffee_blissful;
use coffee_blissful;

create table `category`(
`category_id` 	int not null primary key auto_increment,
`category_name` 	varchar(255)
);

insert into `category` (`category_name`)
values
("Coffee"),
("Smoothie - Yogurt"),
("Juice"),
("Tea"),
("Soft Drink");

create table `customer`(
`customer_id` 		int not null primary key auto_increment,
`fullname`			varchar(45),
`dob`				date,
`gender`			bit(1),
`email`				varchar(255),
`phone_number`		varchar(45),
`profile_img`		varchar(255),
`password`			varchar(45),
`account_status`	varchar(255),
`address` 	varchar(255)
);

insert into `customer` (`fullname`, `dob`, `gender`, `email`, `phone_number`, `profile_img`, `password`, `account_status`, `address`)
values
("Nguyễn Thị Hào", "1970-11-07", 0, "thihao07@gmail.com", "0945423362", "img", "123123", "online", "23 Nguyễn Hoàng, Đà Nẵng");

create table `role`(
`role_id` 		int not null primary key,
`role_mame` varchar(255)
);

insert into `role`(`role_id`,`role_mame`)
values
(1,'Staff'),
(2,'Admin');
	

create table `site_inf`(
`site_inf_id` 	int not null primary key,
`site_name` 	varchar(255) ,
`description` 	varchar(255) ,
`contact_info` 	varchar(255) ,
`address` 	varchar(255) ,
`last_update` date NOT NULL
);

insert into site_inf(`site_inf_id`,`site_name`,`description`,`contact_info`,`address`,`last_update`)
values	
(1,'BLISSFUL COFFEE MONARCHY DA NANG',null,'0236 730 1215','A104 - A105 Block A, Chung cư Monarchy, 535 Trần Hưng Đạo, An Hải Tây, quận Sơn Trà, Tp. Đà Nẵng','2023-02-27'),
(2,'BLISSFUL COFFEE NESTA HOTEL DA NANG',null,'(0236) 730 1219','268 Võ Nguyên Giáp, Bắc Phú Mỹ, Ngũ Hành Sơn, TP Đà Nẵng','2023-02-27'),
(3,'BLISSFUL COFFEE MEGA MARKET DA NANG',null,'(0236) 730 1216',' 5 Cách Mạng Tháng 8, Phường Hòa Cường Nam, Quận Hải Châu','2023-02-27');
	
    
create table `product`(
`product_id` 	int not null primary key auto_increment,
`product_name` 	varchar(45),
`price` 	double,
`quantity` 	int,
`description` 	varchar(255),
`product_status` 	varchar(45),
`image` 	varchar(45),
`date_update` date,
`category_id` 	int,
foreign key(`category_id`)		references`category`(`category_id`) on delete cascade
);

insert into `product` (`product_name`, `price`, `quantity`, `description`, `product_status`, `image`, `date_update`, `category_id`)
values
("Coffee Muối", 28, 100, "", "Feature", "caphemuoi", "2023-02-28", "1"),
("Blueberry Smoothie", 45, 100, "", "Feature", "blueberrysmoothie", "2023-02-28", "2"),
("Juice Mango", 30, 100, "", "Feature", "juiceMango", "2023-02-28", "3"),
("Oolong Tea", 29, 100, "", "Feature", "oolong-tea-assam", "2023-02-28", "4"),
("Cocacola", 10, 200, "", "Feature", "cocacola", "2023-02-28", "5"),
("Coffee Sữa", 20, 100, "","Feature", "caphesua", "2023-02-28", "1"),
("Peach Yogurt", 45, 100, "", "Feature", "peachyogurt", "2023-02-28", "2"),
("Juice Apple", 30, 100, "", "Special", "juiceapple", "2023-02-28", "3"),
("Forest Black Tea", 33, 100, "", "Special", "forestBlackTea", "2023-02-28", "4"),
("Pessi", 10, 100, "", "Special", "pessi", "2023-02-28", "5");

create table `rating`(
`rating_id` 	int not null primary key auto_increment,
`product_id` 	int,
`score` 		double,
`remarks` 		varchar(255),
`date_recorded`	date,
`customer_id` 	int,
foreign key(`customer_id`)		references`customer`(`customer_id`) on delete cascade,
foreign key(`product_id`)		references`product`(`product_id`) on delete cascade
);

insert into `rating` (`product_id`, `score`, `remarks`, `date_recorded`, `customer_id`)
values
(1, 5, "", "2023-02-23", 1);


create table `discount`(
`discount_id` 	int not null primary key,
`discount_code` varchar(45),
`discount_value` double,
`discount_unit` 	varchar(255) ,
`create_date` 	date ,
`valid_from` 	date ,
`valid_unil` 	date ,
`product_id` 	int ,
foreign key(`product_id`)	references`product`(`product_id`) on delete cascade
);

insert into `discount`(`discount_id`,`discount_code`,`discount_value`,`discount_unit`,`create_date`,`valid_from`,`valid_unil`,`product_id`)
values	
(1, "SALE20", 20, "currency","2023-01-01","2023-01-01","2023-05-01",1),
(2, "SALE20", 20, "currency","2023-01-01","2023-01-01","2023-05-01",2),
(3, "SALE20", 20, "currency","2023-01-01","2023-01-01","2023-05-01",3),
(4, "SALE20", 20, "currency","2023-01-01","2023-01-01","2023-05-01",4),
(5, "SALE20", 20, "currency","2023-01-01","2023-01-01","2023-05-01",5);

create table `wishlist`(
`product_id` 	int,
`customer_id` 	int ,
foreign key(`customer_id`)		references`customer`(`customer_id`) on delete cascade,
foreign key(`product_id`)		references`product`(`product_id`) on delete cascade
);

insert into `wishlist` (`product_id`, `customer_id`)
values
(1, 1),
(2, 1),
(3, 1);


create table `staff`(
`staff_id` 	int not null primary key,
`fullname` 	varchar(255),
`gender` bit(1),
`contact` 	varchar(255) ,
`email` 	varchar(255) ,
`password` 	varchar(255) ,
`profile_staff` varchar(255),
`role_id` 	int ,
`site_inf_id` 	int ,
foreign key(`role_id`)	references`role`(`role_id`) on delete cascade,
foreign key(`site_inf_id`)	references`site_inf`(`site_inf_id`) on delete cascade
);

insert into `staff`(`staff_id`,`fullname`,`gender`, `contact`,`email`, `password`, `profile_staff`,`role_id`,`site_inf_id`)
values	(1, 'Lê Thị Trúc Vy', 1, '0123456789', 'vycutevipro@gmail.com','vyvivu1402', '' , 2, 1);

create table `order`(
`order_id` 	int not null primary key,
`customer_id` 	int,
`order_date` 	date ,
`order_status` 	varchar(255),
`process_by` 	int,
foreign key(`process_by`)			references`staff`(`staff_id`) on delete cascade,
foreign key(`customer_id`)		references`customer`(`customer_id`) on delete cascade
);

INSERT INTO `order` (`order_id`,`customer_id`, `order_date`, `order_status`, `process_by`)
VALUES
(1,1, '2023-01-02', 'Delivered', '1');

create table `order_detail`(
`order_detail_id` 	int not null primary key,
`product_id` 	int,
`order_id` 	int ,
`quantity` 	int ,
foreign key(`order_id`)			references`order`(`order_id`) on delete cascade,
foreign key(`product_id`)		references`product`(`product_id`) on delete cascade
);

INSERT INTO `order_detail` (`order_detail_id`,`product_id`, `order_id`, `quantity`)
VALUES
(1,1, 1, 10);


create table `payment`(
`payment_id` 	int not null primary key,
`order_id` 	int,
`paid_by` 	varchar(255) ,
`payment_date` 	date,
`process_by` 	int,
foreign key(`order_id`)			references`order`(`order_id`) on delete cascade,
foreign key(`process_by`)		references`staff`(`staff_id`) on delete cascade
);

insert into `payment`(`payment_id`,`order_id`,`paid_by`,`payment_date`,`process_by`)
values	(1,1,'thẻ tín dụng','2023-01-01',1);
	

SELECT `staff_id` ,`fullname`,`contact`,`email`,`password`,`profile_staff`,`role_id`,`site_inf_id`,`gender`,`role_mame`,`site_name`,`description`,`contact_info`,`address`,`last_update`
from `staff` 
inner join `role` using(role_id) join `site_inf`
				using(site_inf_id);

select `product_id`, `product_name`, `price`, `quantity`, `description`, `product_status`, `image`, `date_update`, category.category_id, `category_name` from product
inner join category
on product.category_id = category.category_id;

-- insert into `payment`(`payment_id`,`order_id`,`paid_by`,`payment_date`,`process_by`)
-- values	
-- (1,1,'thẻ tín dụng','2023-01-01',1),
-- (2,2,'thẻ thanh toán','2023-02-02',2),
-- (3,3,'tiền mặt','2023-03-03',3),
-- (4,4,'thẻ thanh toán','2023-04-04',4);
-- 	

-- select `product_id`, `product_name`, `price`, `quantity`, `description`, `product_status`, `image`, category.category_id, `category_name` from product
-- inner join category
-- on product.category_id = category.category_id;

-- select `product_id`, `product_name`, `price`, `quantity`, `description`, `product_status`, `image`, `category_name` from product inner join category
--                     on product.category_id = category.category_id;

-- DELIMITER //
-- create procedure select_product()
-- begin
-- select `product_id`, `product_name`, `price`, `quantity`, `description`, `product_status`, `image`, `category_name` from product inner join category
--                     on product.category_id = category.category_id;
-- end;
-- // DELIMITER ;
-- call select_product();

-- select `product_id`, `product_name`, `price`, `quantity`, `description`, `product_status`, `image`, category.category_id, `category_name` from product
-- inner join category 
-- on product.category_id = category.category_id
-- where product_id = 1;




