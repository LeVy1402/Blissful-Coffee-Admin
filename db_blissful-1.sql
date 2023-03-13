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

ALTER TABLE customer AUTO_INCREMENT = 1;

insert into `customer` (`fullname`, `dob`, `gender`, `email`, `phone_number`, `profile_img`, `password`, `account_status`, `address`)
values
("Nguyễn Thị Hào", "1970-11-07", 0, "thihao07@gmail.com", "0945423362", "customer1.jpg", "123123", "online", "23 Nguyễn Hoàng, Đà Nẵng"),
("Mr ABC","2002-01-20",1,"abc@gmail.com","01010101202","customer2.jpg","abcabc","online","23 Phan Châu Trinh, ĐN"),
("Nguyễn Văn X","2000-11-12",1,"xxxxx@gmail.com","0993284013","profile.jpg","vjpprobruhbruh","online","10 Nguyễn Thị Minh Khai, Đà Nẵng");


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
values	(1,'BLISSFUL COFFEE MONARCHY DA NANG',null,'0236 730 1215','A104 - A105 Block A, Chung cư Monarchy, 535 Trần Hưng Đạo, An Hải Tây, quận Sơn Trà, Tp. Đà Nẵng','2023-02-27'),
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
("Coffee Muối", 28, 100, "", "Feature", "img", "2023-02-28", "1"),
("Blueberry Smoothie", 45, 100, "", "Feature", "img", "2023-02-28", "2"),
("Juice Mango", 30, 100, "", "Feature", "img", "2023-02-28", "3"),
("Oolong Tea", 29, 100, "", "Feature", "img", "2023-02-28", "4"),
("Cocacola", 10, 200, "", "Feature", "img", "2023-02-28", "5"),
("Coffee Sữa", 20, 100, "","Feature", "img", "2023-02-28", "1"),
("Peach Yogurt", 45, 100, "", "Feature", "img", "2023-02-28", "2"),
("Juice Apple", 30, 100, "", "Special", "img", "2023-02-28", "3"),
("Forest Black Tea", 33, 100, "", "Special", "img", "2023-02-28", "4"),
("Pessi", 10, 100, "", "Special", "img", "2023-02-28", "5");


ALTER TABLE product AUTO_INCREMENT = 1;
insert into `product` (`product_name`, `price`, `quantity`, `description`, `product_status`, `image`, `date_update`, `category_id`)
values
("Coffee Muối", 28, 100, "", "Feature", "caphemuoi.jpg", "2023-02-28", "1"),
("Blueberry Smoothie", 45, 100, "", "Feature", "blueberrysmoothie.jpg", "2023-02-28", "2"),
("Juice Mango", 30, 100, "", "Feature", "juiceMango.jpg", "2023-02-28", "3"),
("Oolong Tea", 29, 100, "", "Feature", "oolong-tea-assam.jpg", "2023-02-28", "4"),
("Cocacola", 10, 200, "", "Feature", "cocacola.jpg", "2023-02-28", "5"),
("Coffee Sữa", 20, 100, "","Feature", "caphesua.jpg", "2023-02-28", "1"),
("Peach Yogurt", 45, 100, "", "Feature", "peachyogurt.jpg", "2023-02-28", "2"),
("Juice Apple", 30, 100, "", "Special", "juiceapple.jpg", "2023-02-28", "3"),
("Forest Black Tea", 33, 100, "", "Special", "forestBlackTea.jpg", "2023-02-28", "4"),
("Pessi", 10, 100, "", "Special", "pessi.jpg", "2023-02-28", "5");


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
(1, 1, "Chạ có j", "2023-02-23", 1),
(10, 4.5, "Hê cũng ok phết", "2023-03-02", 2),
(5, 5, "Admin bảo tao vote 5* cho 50k", "2023-01-26", 3),
(2, 3.2, "Ngon đấy nhưng ko bằng ny tôi", "2023-02-14", 2),
(6, 5, "Tuyệt", "2023-03-01", 3);


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
values	(1, 'Lê Thị Trúc Vy', 0, '0123456789', 'vycutevipro@gmail.com','vyvivu1402', '' , 2, 1),
 (2, 'Trân Quang Nhân', 1, '0123456789', 'nhanvipro@gmail.com','tranquangnhan', '' , 2, 1),
 (3,'Phạm Văn Tuấn', 1, '0123456789', 'tuanvipro@gmail.com','phamvantuan', '' , 2, 1);
 

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
(1,1, '2023-01-02', 'Delivered', '1'),
(2,'2', '2023-01-02', 'Delivered', '2'),
(3,'2', '2023-01-11', 'On delivery', '2'),
(4,'2', '2023-02-06', 'New order', '2'),
(5,'1', '2023-02-22', 'Delivered', '3'),
(6,'1', '2022-12-06', 'New order', '1'),
(7,'1', '2022-12-15', 'Delivered', '3'),
(8,'1', '2023-01-06', 'On delivery', '1');

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
             from `staff` inner join `role` using(role_id) join `site_inf`
		 using(site_inf_id);

	


select count(*) from product

delimiter //
create function count_menus()
returns int
deterministic
begin
	return (select count(*) from product);
end //
delimiter ;
-- sử dụng function
select count_menus();

delimiter //
create function count_revenues()
returns int
deterministic
begin
	return (select count(*) from product);
end //
delimiter ;

select sum(price*order_detail.quantity) from `payment` 
inner join `order` on payment.order_id = `order`.order_id
inner join order_detail on `order`.order_id = order_detail.order_id
inner join product on product.product_id = order_detail.product_id;

select count(*) from order_detail;

select count(*) from customer;

select count(*) from `order`where order_status='Delivered' and month(order_date)=Month(CURRENT_DATE());

delimiter //
create procedure order_statistic_today()
begin 
		select 
		(select count(*) as a from `order`where order_status='Delivered' and order_date=CURRENT_DATE()) as delivered,
		(select count(*) as b from `order`where order_status='On delivery' and order_date=CURRENT_DATE()) as on_delivery,
        (select count(*) as c from `order`where order_status='New order' and order_date=CURRENT_DATE()) as new_order;
end //
delimiter ;

call order_statistic_today();

delimiter //
create procedure order_statistic(in moment varchar(50))
begin
	case moment
    when "month" then (
		select 
		(select count(*)from `order`where order_status='Delivered' and month(order_date)=Month(CURRENT_DATE())) as delivered,
		(select count(*) from `order`where order_status='On delivery' and month(order_date)=Month(CURRENT_DATE())) as on_delivery,
        (select count(*) from `order`where order_status='New order' and month(order_date)=Month(CURRENT_DATE())) as new_order
    );
    when "week" then (
        select 
		(select count(*)from `order`where order_status='Delivered' and YEARWEEK(order_date, 1) = YEARWEEK(CURDATE(), 1)) as delivered,
		(select count(*) from `order`where order_status='On delivery' and YEARWEEK(order_date, 1) = YEARWEEK(CURDATE(), 1)) as on_delivery,
        (select count(*) from `order`where order_status='New order' and YEARWEEK(order_date, 1) = YEARWEEK(CURDATE(), 1)) as new_order
        
    );
    else (
		select 
		(select count(*) as a from `order`where order_status='Delivered' and order_date=CURRENT_DATE()) as delivered,
		(select count(*) as b from `order`where order_status='On delivery' and order_date=CURRENT_DATE()) as on_delivery,
        (select count(*) as c from `order`where order_status='New order' and order_date=CURRENT_DATE()) as new_order
    );
	end case;
end //
delimiter ;

call order_statistic("month");

select sum(price*order_detail.quantity) AS total_payment from `payment` inner join `order` on payment.order_id = `order`.order_id inner join order_detail on `order`.order_id = order_detail.order_id inner join product on product.product_id = order_detail.product_id ;

SELECT rating_id, product.product_id, product_name, score, remarks, date_recorded, customer.customer_id ,fullname FROM rating 
inner join product on product.product_id = rating.product_id 
inner join customer on customer.customer_id = rating.customer_id
order by date_recorded desc