create table products (
	sku BIGSERIAL NOT NULL PRIMARY KEY,
	description VARCHAR(50),
	price DECIMAL(5,2),
	weight DECIMAL(5,2)
);

insert into products (sku, description, price, weight) values (1, 'Mouse dxpl-21', 6819.17, 94.4);
insert into products (sku, description, price, weight) values (2, 'LCD Monitor', $6469.63, 2.86);
insert into products (sku, description, price, weight) values (3, 'Laptop 3G', 5456.36, 33.59);
insert into products (sku, description, price, weight) values (4, 'Printer HP', 4513.59, 64.04);
insert into products (sku, description, price, weight) values (5, 'Desktop pc', 5638.55, 74.6);
insert into products (sku, description, price, weight) values (6, 'Power batery', 9722.98, 33.92);
insert into products (sku, description, price, weight) values (7, 'Modem HP', 7171.35, 49.73);
insert into products (sku, description, price, weight) values (8, 'Access point', 4682.84, 27.4);
insert into products (sku, description, price, weight) values (9, 'TV - 42', 5962.58, 30.12);
insert into products (sku, description, price, weight) values (10, 'Smart tv', 5987.86, 67.6);
