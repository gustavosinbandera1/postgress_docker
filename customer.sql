create table if not exists customer (
	person_uid UUID NOT NULL PRIMARY KEY DEFAULT uuid_generate_v4(),
	name VARCHAR(50) NOT NULL,
	phone VARCHAR(50) UNIQUE NOT NULL,
	email VARCHAR(150) UNIQUE NOT NULL
);

insert into customer (person_uid, name, phone, email) values (uuid_generate_v4(),'Thaddeus', '11223344', 'tclayborn0@facebook.com');
insert into customer (person_uid, name, phone, email) values (uuid_generate_v4(),'Marnie',   '22334455', 'mbanasik1@army.mil');
insert into customer (person_uid, name, phone, email) values (uuid_generate_v4(),'Modesta',  '33445566', 'mmcgeffen2@amazon.com');
insert into customer (person_uid, name, phone, email) values (uuid_generate_v4(),'Thomasin', '44556677', 'tkynastone3@hostgator.com');
insert into customer (person_uid, name, phone, email) values (uuid_generate_v4(),'Amity',    '55667788', 'asancho4@ow.ly');
insert into customer (person_uid, name, phone, email) values (uuid_generate_v4(),'Emeline',  '66778899', 'ecamillo5@mac.com');
insert into customer (person_uid, name, phone, email) values (uuid_generate_v4(),'Wynny',    '00112233', 'wbrood6@reference.com');
insert into customer (person_uid, name, phone, email) values (uuid_generate_v4(),'Gustavo',  '12345678', 'gustavo@ow.ly');
insert into customer (person_uid, name, phone, email) values (uuid_generate_v4(),'Nicolas',  '23456789', 'nicolas@mac.com');
insert into customer (person_uid, name, phone, email) values (uuid_generate_v4(),'Orlando',  '34567890', 'orlando6@reference.com');