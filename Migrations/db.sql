/**************************
** Admins table
**************************/
drop table if exists admins;
create table admins (
	id int not null auto_increment primary key,
	name varchar(100),
	email varchar(100),
	password varchar(64)
) engine = InnoDB;




/**************************
** Users table
**************************/
drop table if exists users;
create table users (
	id int not null auto_increment primary key,
	name varchar(100),
	phone varchar(20),
	email varchar(100),
	password varchar(64)
) engine = InnoDB;



/**************************
** Brands table
**************************/
drop table if exists brands;
create table brands (
	id int not null auto_increment primary key,
	name varchar(100),
	image_url varchar(200),
	logo_url varchar(200)
) engine = InnoDB;





/****************************
** Addresses table
****************************/
drop table if exists addresses;
create table addresses (
	id int not null auto_increment primary key,
	user_id int,
	address varchar(100),
	postal_code varchar(12)
) engine = InnoDB;

alter table addresses add foreign key(user_id) references users(id);






/**************************
** Product Models table
**************************/
drop table if exists product_models;
create table product_models (
	id int not null auto_increment primary key,
	brand_id int,
	name varchar(100) not null,
	season bit(1) not null default 0, -- SPRING=0, WINTER=1
	image_url varchar(200)
) engine = InnoDB;

alter table product_models add foreign key(brand_id) references brands(id);





/**************************
** Products table
**************************/
drop table if exists products;
create table products (
	id int not null auto_increment primary key,
	product_model_id int,
	width int,
	ratio int,
	diameter int,
	available int,
	price float
) engine = InnoDB;

alter table products add foreign key(product_model_id) references product_models(id);



/**************************
** Invoices table
**************************/
drop table if exists invoices;
create table invoices (
	id int not null auto_increment primary key,
	user_id int,
	invoice_datetime datetime,
	address_id int,
	total float
) engine = InnoDB;

alter table invoices add foreign key(user_id) references users(id);
alter table invoices add foreign key(address_id) references addresses(id);




/****************************
** Transaction Details table
****************************/
drop table if exists transaction_details;
create table transaction_details (
	id int not null auto_increment primary key,
	product_id int,
	invoice_id int
) engine = InnoDB;

alter table transaction_details add foreign key(product_id) references products(id);
alter table transaction_details add foreign key(invoice_id) references invoices(id);





/****************************
** Promotions table
****************************/
drop table if exists promotions;
create table promotions (
	id int not null auto_increment primary key,
	name varchar(100),
	promotion varchar(100)
) engine = InnoDB;



/****************************
** ProductPromotion table
****************************/
drop table if exists product_promotions;
create table product_promotions (
	id int not null auto_increment primary key,
	product_id int,
	promotion_id int
) engine = InnoDB;

alter table product_promotions add foreign key(product_id) references products(id);
alter table product_promotions add foreign key(promotion_id) references promotions(id);









