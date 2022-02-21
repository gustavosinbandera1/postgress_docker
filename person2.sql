create table car (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price NUMERIC(19, 2) NOT NULL
);

create table if not exists person (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL
	email VARCHAR(150),
	gender VARCHAR(20) NOT NULL,
	date_of_birth DATE NOT NULL,
	country_of_birth VARCHAR(50),
	car_id BIGINT REFERENCES car(id),
	UNIQUE(car_id)
);




insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Thaddeus', 'Clayborn', 'tclayborn0@facebook.com', 'Male', '1975/11/18', 'Czech Republic');
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Marnie', 'Banasik', 'mbanasik1@army.mil', 'Male', '1994/04/01', 'Russia');
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Modesta', 'McGeffen', 'mmcgeffen2@amazon.com', 'Male', '1965/10/01', 'Indonesia');
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Thomasin', 'Kynastone', 'tkynastone3@hostgator.com', 'Female', '2018/11/17', 'Liechtenstein');
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Amity', 'Sancho', 'asancho4@ow.ly', 'Female', '2003/03/05', 'Russia');
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Emeline', 'Camillo', 'ecamillo5@mac.com', 'Female', '1954/08/28', 'Portugal');
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Wynny', 'Brood', 'wbrood6@reference.com', 'Male', '1993/06/15', 'Russia');

insert into car (make, model, price) values ('Yolanthe', 'Easman', 9641);
insert into car (make, model, price) values ('Norean', 'Avramovich', 5871);
insert into car (make, model, price) values ('Conn', 'Fincher', 5566);
insert into car (make, model, price) values ('Kalle', 'Jorin', 5349);
insert into car (make, model, price) values ('Cullan', 'Jentin', 8133);
insert into car (make, model, price) values ('Wynn', 'Sporner', 7085);
insert into car (make, model, price) values ('Sam', 'Larvent', 6646);