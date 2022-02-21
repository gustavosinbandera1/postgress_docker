create table car (
	car_uid UUID NOT NULL PRIMARY KEY ,
	make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price NUMERIC(19, 2) NOT NULL
);

create table if not exists person (
	person_uid UUID NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(150),
	gender VARCHAR(20) NOT NULL,
	date_of_birth DATE NOT NULL,
	country_of_birth VARCHAR(50),
	car_uid UUID REFERENCES car(car_uid),
	UNIQUE(car_uid),
	UNIQUE(email)
);

insert into person (person_uid,first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(),'Thaddeus', 'Clayborn', 'tclayborn0@facebook.com', 'Male', '1975/11/18', 'Czech Republic');
insert into person (person_uid,first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(),'Marnie', 'Banasik', 'mbanasik1@army.mil', 'Male', '1994/04/01', 'Russia');
insert into person (person_uid,first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(),'Modesta', 'McGeffen', 'mmcgeffen2@amazon.com', 'Male', '1965/10/01', 'Indonesia');
insert into person (person_uid,first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(),'Thomasin', 'Kynastone', 'tkynastone3@hostgator.com', 'Female', '2018/11/17', 'Liechtenstein');
insert into person (person_uid,first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(),'Amity', 'Sancho', 'asancho4@ow.ly', 'Female', '2003/03/05', 'Russia');
insert into person (person_uid,first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(),'Emeline', 'Camillo', 'ecamillo5@mac.com', 'Female', '1954/08/28', 'Portugal');
insert into person (person_uid,first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(),'Wynny', 'Brood', 'wbrood6@reference.com', 'Male', '1993/06/15', 'Russia');

insert into car (car_uid, make, model, price) values (uuid_generate_v4(),'Yolanthe', 'Easman', 9641);
insert into car (car_uid, make, model, price) values (uuid_generate_v4(),'Norean', 'Avramovich', 5871);
insert into car (car_uid, make, model, price) values (uuid_generate_v4(),'Conn', 'Fincher', 5566);
insert into car (car_uid, make, model, price) values (uuid_generate_v4(),'Kalle', 'Jorin', 5349);
insert into car (car_uid, make, model, price) values (uuid_generate_v4(),'Cullan', 'Jentin', 8133);
insert into car (car_uid, make, model, price) values (uuid_generate_v4(),'Wynn', 'Sporner', 7085);
insert into car (car_uid, make, model, price) values (uuid_generate_v4(),'Sam', 'Larvent', 6646);