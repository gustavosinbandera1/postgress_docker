ALTER TABLE orders
ADD CONSTRAINT fk_order_customer FOREIGN KEY (fk_customer_id)
REFERENCES customer(person_uid);

ALTER TABLE orders
RENAME COLUMN customer_id TO fk_customer_id;

ALTER TABLE order_detail
ADD CONSTRAINT fk_detail_product FOREIGN KEY (fk_product_sku)
REFERENCES products(sku);

CREATE TABLE address(
address_id BIGSERIAL NOT NULL PRIMARY KEY,
city VARCHAR(30) NOT NULL,
state VARCHAR (30) NOT NULL,
zip_code VARCHAR(5) NOT NULL,
country VARCHAR(30) NOT NULL);

CREATE TABLE customer_address(
fk_customer_id UUID NOT NULL,
fk_address_id BIGINT NOT NULL,
is_physical BIT NOT NULL,
is_shipping BIT NOT NULL,
is_billing BIT NOT NULL,
created_date_time DATE NOT NULL);

ALTER TABLE customer_address
ADD CONSTRAINT customer_address_pk PRIMARY KEY (fk_customer_id,fk_address_id);

ALTER TABLE customer_address
ADD CONSTRAINT customer_address_to_address_fk FOREIGN KEY (fk_address_id)
references address(address_id);

ALTER TABLE customer_address
ADD CONSTRAINT customer_address_to_customer_fk FOREIGN KEY (fk_customer_id)
references customer(person_uid);

ALTER TABLE orders
ADD CONSTRAINT order_to_shipping_address_fk FOREIGN KEY (fk_customer_id,shipping_address_id)
references customer_address(fk_customer_id,fk_address_id);

ALTER TABLE orders ADD COLUMN billing_address_id BIGINT NOT NULL;

INSERT INTO customer values(uuid_generate_v4(), 'Gustavo','3207433507','gustavo@hotmail.com','my adress');

ALTER TABLE customer ADD CONSTRAINT unique_phone UNIQUE(phone);

ALTER TABLE customer ALTER column email SET NOT NULL;


















ALTER TABLE customer_address
ADD CONSTRAINT customer_address_pk PRIMARY KEY (fk_customer_id,fk_address_id);


--ALTER TABLE customer_address
--ADD CONSTRAINT customer_address_pk ADD PRIMARY KEY (fk_customer_id,fk_address_id);




--ALTER TABLE customer_address
--ADD CONSTRAINT customer_address_to_address_fk FOREIGN KEY (fk_address_id)
--references address(address_id);

--ALTER TABLE customer_address
--ADD CONSTRAINT customer_address_to_customer_fk FOREIGN KEY (fk_customer_id)
--references customer(person_uid);

--ALTER TABLE orders
--ADD CONSTRAINT order_to_shipping_address_fk FOREIGN KEY (fk_customer_id,shipping_address_id)
--references customer_address(fk_customer_id,fk_address_id);

--ALTER TABLE order_detail
--ADD CONSTRAINT order_detail_to_orders_fk FOREIGN KEY (fk_order_id)
--references orders(order_id);

--ALTER TABLE order_detail
--ADD CONSTRAINT order_detail_to_product FOREIGN KEY (fk_product_sku)
--REFERENCES products(sku);





ALTER TABLE order_detail
ADD CONSTRAINT order_detail_to_orders_fk FOREIGN KEY (fk_order_id)
references orders(order_id);

ALTER TABLE order_detail
ADD CONSTRAINT order_detail_to_product FOREIGN KEY (fk_product_sku)
REFERENCES products(sku);



ALTER TABLE orders
ADD CONSTRAINT order_to_CUSTOMER_address_fk FOREIGN KEY (fk_customer_id,shipping_address_id)
references customer_address(fk_customer_id,fk_address_id);



ALTER TABLE customer_address
ADD CONSTRAINT customer_address_to_customer_fk FOREIGN KEY (fk_customer_id)
references customer(person_uid);


ALTER TABLE customer_address
ADD CONSTRAINT customer_address_pk PRIMARY KEY (fk_customer_id,fk_address_id);

ALTER TABLE customer_address
ADD CONSTRAINT customer_address_to_address_fk FOREIGN KEY (fk_address_id)
references address(address_id);


CREATE TABLE IF NOT EXISTS customer_address(
    fk_customer_id BIGINT NOT NULL,
    fk_address_id BIGINT NOT NULL,
    created_date_time DATE NOT NULL,
    CONSTRAINT customer_address_pk 
        PRIMARY KEY (fk_customer_id, fk_address_id),
    CONSTRAINT customer_address_to_address_fk FOREIGN KEY (fk_address_id)
        REFERENCES address (address_id),
    CONSTRAINT customer_address_to_customer_fk FOREIGN KEY (fk_customer_id)
        REFERENCES customer (CUSTOMER_id)
);



--CREATE TABLE IF NOT EXISTS order_detail (
--    num_detail BIGINT NOT NULL PRIMARY KEY,
--    fk_order_id BIGINT NOT NULL,
--    fk_product_sku BIGINT NOT NULL,
--    quantity INTEGER NOT NULL,
--    price NUMERIC(7,2) NOT NULL,
--    CONSTRAINT detail__to_orders_fk FOREIGN KEY (fk_order_id)
--        REFERENCES orders (order_id)
--        ON UPDATE NO ACTION
--        ON DELETE NO ACTION,
--    CONSTRAINT detail_to_products FOREIGN KEY (fk_product_sku)
--        REFERENCES products (sku)
--        ON UPDATE NO ACTION
--        ON DELETE NO ACTION
--    );
