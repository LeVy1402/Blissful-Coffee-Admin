drop database if exists coffee_blissful;
create database coffee_blissful;
use coffee_blissful;

create table `customer`(
`customer_id` 		int 	not null primary key auto_increment,
`fullname`			varchar(45),
`dob`				date,
`gender`			bit(1),
`email`				varchar(255),
`phone_number`		varchar(45),
`profile_img`		varchar(255),
`username`			varchar(45),
`password`			varchar(45),
`account_status`	varchar(255),
`address` 	varchar(255)
);

create table `category`(
`category_id` 	int not null primary key auto_increment,
`category_name` 	varchar(255)
);
create table `product`(
`product_id` 	int not null primary key auto_increment,
`product_name` 	varchar(45),
`price` 	double,
`quantity` 	int,
`description` 	varchar(255),
`product_status` 	bit(1),
`image` 	varchar(45),
`category_id` 	int,
foreign key(`category_id`)		references`category`(`category_id`) on delete cascade
);
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

create table `wishlist`(
`product_id` 	int,
`customer_id` 	int ,
foreign key(`customer_id`)		references`customer`(`customer_id`) on delete cascade,
foreign key(`product_id`)		references`product`(`product_id`) on delete cascade
);
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
create table `role`(
`role_id` 		int not null primary key,
`role_mame` varchar(255)
);
create table `site_inf`(
`site_inf_id` 	int not null primary key,
`site_name` 	varchar(255) ,
`description` 	varchar(255) ,
`contact_info` 	varchar(255) ,
`address` 	varchar(255) ,
`last_update` date NOT NULL
);
    
create table `staff`(
`staff_id` 	int not null primary key,
`fullname` 	varchar(255),
`contact` 	varchar(255) ,
`email` 	varchar(255) ,
`user_name` 	varchar(255) ,
`password` 	varchar(255) ,
`role_id` 	int ,
`site_inf_id` 	int ,
foreign key(`role_id`)			references`role`(`role_id`) on delete cascade,
foreign key(`site_inf_id`)			references`site_inf`(`site_inf_id`) on delete cascade
);
create table `order`(
`order_id` 	int not null primary key,
`customer_id` 	int,
`order_date` 	date ,
`order_status` 	varchar(255),
`process_by` 	int,
foreign key(`process_by`)			references`staff`(`staff_id`) on delete cascade,
foreign key(`customer_id`)		references`customer`(`customer_id`) on delete cascade
);
create table `order_detail`(
`order_detail_id` 	int not null primary key,
`product_id` 	int,
`order_id` 	int ,
`quantity` 	int ,
foreign key(`order_id`)			references`order`(`order_id`) on delete cascade,
foreign key(`product_id`)		references`product`(`product_id`) on delete cascade
);
create table `payment`(
`payment_id` 	int not null primary key,
`order_id` 	int,
`paid_by` 	varchar(255) ,
`payment_date` 	date,
`process_by` 	int,
foreign key(`order_id`)			references`order`(`order_id`) on delete cascade,
foreign key(`process_by`)		references`staff`(`staff_id`) on delete cascade
);


insert into `customer` (`fullname`, `dob`, `gender`, `email`, `phone_number`, `profile_img`, `username`, `password`, `account_status`, `address`)
values
("Nguyễn Thị Hào", "1970-11-07", 0, "thihao07@gmail.com", "0945423362", "img", "hao", "123123", "online", "23 Nguyễn Hoàng, Đà Nẵng"),
("Phạm Xuân Diệu", "1992-08-08", 1, "xuandieu92@gmail.com", "0954333333", "img", "dieu", "123123", "online", "K77/22 Thái Phiên, Quảng Trị"),
("Trương Đình Nghệ", "1990-02-27", 1, "nghenhan2702@gmail.com", "0373213122", "img", "nghe", "123123", "online", "K323/12 Ông Ích Khiêm, Vinh"),
("Dương Văn Quan", "1981-07-08", 1, "duongquan@gmail.com", "0490039241", "img", "quan", "123123", "online", "K453/12 Lê Lợi, Đà Nẵng"),
("Hoàng Trần Nhi Nhi", "1995-12-09", 0, "nhinhi123@gmail.com", "0312345678", "img", "nhi", "123123", "online","224 Lý Thái Tổ, Gia Lai"),
("Tôn Nữ Mộc Châu", "2005-12-06", 0, "tonnuchau@gmail.com", "0988888844", "img", "chau", "123123", "online","37 Yên Thế, Đà Nẵng"),
("Nguyễn Mỹ Kim", "1984-04-08", 0, "kimcuong84@gmail.com", "0912345698", "img", "kim", "123123", "online","K123/45 Lê Lợi, Hồ Chí Minh"),
("Phạm Văn Tuấn", "2000-02-02", 1, "tuan@gmail.com", "0763212345", "img", "tuan", "123123", "online","55 Nguyễn Văn Linh, Kon Tum"),
("Trần Đại Danh", "1994-07-01", 1, "danhhai99@gmail.com", "0643343433", "img", "danh", "123123", "online","24 Lý Thường Kiệt, Quảng Ngãi"),
("Nguyễn Tâm Đắc", "1989-07-01", 1, "dactam@gmail.com", "0987654321", "img", "dac", "123123", "online","22 Ngô Quyền, Đà Nẵng");



insert into `category` (`category_name`)
values
("Coffee"),
("Smoothie - Yogurt"),
("Juice"),
("Tea"),
("Soft Drink");


insert into `product` (`product_name`, `price`, `quantity`, `description`, `product_status`, `image`, `category_id`)
values
("Coffee Muối", 28, 100, "", 0, "img", "1"),
("Blueberry Smoothie", 45, 100, "", 1, "img", "2"),
("Juice Mango", 30, 100, "", 1, "img", "3"),
("Oolong Tea", 29, 100, "", 1, "img", "4"),
("Cocacola", 10, 200, "", 1, "img", "5"),
("Coffee Sữa", 20, 100, "",1, "img", "1"),
("Peach Yogurt", 45, 100, "", 1, "img", "2"),
("Juice Apple", 30, 100, "", 1, "img", "3"),
("Forest Black Tea", 33, 100, "", 1, "img", "4"),
("Pessi", 10, 100, "", 1, "img", "5");



insert into `rating` (`product_id`, `score`, `remarks`, `date_recorded`, `customer_id`)
values
(1, 5, "", "2023-02-23", 8),
(1, 5, "", "2023-02-23", 8),
(2, 5, "", "2023-02-23", 8),
(3, 5, "", "2023-02-24", 7);

insert into `wishlist` (`product_id`, `customer_id`)
values
(1, 8),
(2, 8),
(3, 8);



insert into `discount`(`discount_id`,`discount_code`,`discount_value`,`discount_unit`,`create_date`,`valid_from`,`valid_unil`,`product_id`)
values	
(1, "SALE20", 20, "currency","2023-01-01","2023-01-01","2023-05-01",1),
(2, "SALE20", 20, "currency","2023-01-01","2023-01-01","2023-05-01",2),
(3, "SALE20", 20, "currency","2023-01-01","2023-01-01","2023-05-01",3),
(4, "SALE20", 20, "currency","2023-01-01","2023-01-01","2023-05-01",4),
(5, "SALE20", 20, "currency","2023-01-01","2023-01-01","2023-05-01",5);



insert into `role`(`role_id`,`role_mame`)
values
(1,'Staff'),
(2,'Admin');
	

insert into `site_inf`(`site_inf_id`,`site_name`,`description`,`contact_info`,`address`,`last_update`)
values	
(1,'BLISSFUL COFFEE MONARCHY DA NANG',null,'0236 730 1215','A104 - A105 Block A, Chung cư Monarchy, 535 Trần Hưng Đạo, An Hải Tây, quận Sơn Trà, Tp. Đà Nẵng','2023-02-27'),
(2,'BLISSFUL COFFEE NESTA HOTEL DA NANG',null,'(0236) 730 1219','268 Võ Nguyên Giáp, Bắc Phú Mỹ, Ngũ Hành Sơn, TP Đà Nẵng','2023-02-27'),
(3,'BLISSFUL COFFEE MEGA MARKET DA NANG',null,'(0236) 730 1216',' 5 Cách Mạng Tháng 8, Phường Hòa Cường Nam, Quận Hải Châu','2023-02-27');

    

insert into `staff`(`staff_id`,`fullname`,`contact`,`email`,`user_name`,`password`,`role_id`,`site_inf_id`)
values	
(1,'Lê Thị Trúc Vy','0123456789','vycutevipro@gmail.com','vyvivu1402','vy12345',2,1),
(2,'Phạm Văn Tuấn','0876543210','tuancutevipro@gmail.com','tuantutimtoi159','tuan12345',1,1),
(3,'Nguyễn Nho Quốc Bảo','0569873210','baocutevipro@gmail.com','baobanbiu207','bao12345',1,2),
(4,'Trần Quang Nhân','0890123456','nhan@gmail.com','qnhan2412','nhan12345',1,3);


INSERT INTO `order` (`order_id`,`customer_id`, `order_date`, `order_status`, `process_by`)
VALUES
(1,1, '2023-01-02', 'Delivered', '2'),
(2,3, '2023-01-11', 'On Delivery', '2'),
(3,6, '2023-02-06', 'New order', '2'),
(4,4, '2023-02-22', 'Delivered', '3'),
(5,2, '2022-12-06', 'New order', '1'),
(6,3, '2022-12-15', 'Delivered', '4'),
(7,1, '2023-01-06', 'On Delivery', '1');



INSERT INTO `order_detail` (`order_detail_id`,`product_id`, `order_id`, `quantity`)
VALUES
(1,1, 1, 10),
(2,3, 2, 10),
(3,5, 3, 10),
(4,3, 2, 10),
(5,2, 4, 10),
(6,4, 4, 10),
(7,8, 6, 10),
(8,10, 6, 10),
(9,10, 6, 10),
(10,6, 5, 10),
(11,3, 5, 10);

	

insert into `payment`(`payment_id`,`order_id`,`paid_by`,`payment_date`,`process_by`)
values	
(1,1,'thẻ tín dụng','2023-01-01',1),
(2,2,'thẻ thanh toán','2023-02-02',2),
(3,3,'tiền mặt','2023-03-03',3),
(4,4,'thẻ thanh toán','2023-04-04',4);
	





