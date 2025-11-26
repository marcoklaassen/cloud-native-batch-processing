-- Access mariadb container
-- oc exec -n streaming-demo -it mariadb -- /bin/bash

-- mariadb -uroot
GRANT SELECT, RELOAD, SHOW DATABASES, REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO 'maria';


-- Login to mariadb database
-- mariadb -umaria -pmaria

-- create tables and rows
use mariadb;

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

