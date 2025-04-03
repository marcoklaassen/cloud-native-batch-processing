create table customer(
    customer_id int auto_increment,
    name varchar(255) not null,
    primary key(customer_id)
);

INSERT INTO customer (name) VALUES ("customer-one");

create table supplier(
    customer_id int auto_increment,
    name varchar(255) not null,
    primary key(customer_id)
);

INSERT INTO supplier (name) VALUES ("supplier-one");

