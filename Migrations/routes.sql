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

	('GET', 'signin',      'UsersController', 'signin'),
	('GET', 'signin.html', 'UsersController', 'signin'),
	('GET', 'signin.htm',  'UsersController', 'signin'),
	('GET', 'signin.php',  'UsersController', 'signin'),

	('POST', 'login', 'UsersController', 'login'),

	('GET', 'signup',      'UsersController', 'signup'),
	('GET', 'signup.html', 'UsersController', 'signup'),
	('GET', 'signup.htm',  'UsersController', 'signup'),
	('GET', 'signup.php',  'UsersController', 'signup'),
	
	('POST', 'register', 'UsersController', 'register'),

	('POST', 'signout', 'UsersController', 'signout'),


	-- index mapping
	('GET', '',           'MainController', 'index'),
	('GET', 'index',      'MainController', 'index'),
	('GET', 'index.html', 'MainController', 'index'),
	('GET', 'index.php',  'MainController', 'index')

;