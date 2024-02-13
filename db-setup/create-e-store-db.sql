CREATE DATABASE clients_db;
GRANT ALL PRIVILEGES ON clients_db.* TO 'mysqluser'@'%';
use clients_db;

-- BEGIN TABLE movies
DROP TABLE IF EXISTS clients;
CREATE TABLE clients
(
    `id`                INT NOT NULL AUTO_INCREMENT,
    `firsName`        varchar(256)  NULL,
    `lastName`         varchar(256)  NOT NULL,
    `phone`             varchar(256)  NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=INNODB;


CREATE DATABASE products_db;
GRANT ALL PRIVILEGES ON products_db.* TO 'mysqluser'@'%';
use products_db;

DROP TABLE IF EXISTS products;
CREATE TABLE products
(
    `id`                 INT NOT NULL AUTO_INCREMENT,
    `name`               varchar(256)  NOT NULL,
    `description`        varchar(256)  NOT NULL,
    `price`              DOUBLE        NOT NULL,
    `currency`           varchar(256)  NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=INNODB;



CREATE DATABASE orders_db;
GRANT ALL PRIVILEGES ON orders_db.* TO 'mysqluser'@'%';
use orders_db;

-- BEGIN TABLE movies
DROP TABLE IF EXISTS orders;
CREATE TABLE orders
(
    `id`                  INT       NOT NULL,
    `client_id`           INT       NOT NULL,
    `product_id`          INT       NOT NULL,
    `quantity`            INT       NOT NULL,
    `date_closed`         DATE      NULL,
    `date_created`        DATE      NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=INNODB;