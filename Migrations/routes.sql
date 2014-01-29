/**************************
** Routes table
**************************/
drop table if exists routes;
create table routes (
	id int not null auto_increment primary key,
	method varchar(4),
	route varchar(200),
	controller varchar(50),
	action varchar(50)
) engine = InnoDB;

insert into routes (method, route, controller, action) values 

	-- Statics Pages --
	-- ('GET', 'brands/show-all.asp', 'BrandController', 'afficheBrands'),
	-- ('GET', 'brands/show/:id', 'BrandController', 'showBrand'),
	-- ('GET', 'brands/new', 'BrandController', 'addBrand'),
	-- ('POST', 'brands/create', 'BrandController', 'createBrand'),
	('GET', 'product/detail', 'CrisTestController', 'showProduct'),
	('GET', 'products/all', 'CrisTestController', 'showAllProduct'),
	-- index mapping
	('GET', '',           'MainController', 'index'),
	('GET', 'index',      'MainController', 'index'),
	('GET', 'index.html', 'MainController', 'index'),
	('GET', 'index.php',  'MainController', 'index')

;