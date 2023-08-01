-- Create the database that we'll use to populate data and watch the effect in the binlog
CREATE DATABASE contoso;
GRANT ALL PRIVILEGES ON contoso.* TO 'mysqluser'@'%';

use contoso;

-- BEGIN TABLE movies
DROP TABLE IF EXISTS clients;
CREATE TABLE clients
(
    `id`                INT NOT NULL AUTO_INCREMENT,
    `first_name`        varchar(256)  NULL,
    `last_name`         varchar(256)  NOT NULL,
    `phone`             varchar(256)  NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=INNODB;

INSERT INTO clients(first_name,last_name,phone)
VALUES ('John','Deer','+1 911 343434'),
       ('Alice','Wonderland', '+4 232323'),
       ('Charlie', 'Fox', '+100');
      

-- BEGIN TABLE movies
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

INSERT INTO products(name,description,price,currency)
VALUES ('Razor 6010' , 'Trimmer Phillips, very good product', 10 , 'usd'),
       ('Orbit'      , 'Chewing gum 12 pieces a pack'       , 1.5, 'usd'),
       ('happy miaow', 'Cat carrier'                        , 9  , 'usd');

-- BEGIN TABLE movies
DROP TABLE IF EXISTS baskets;
CREATE TABLE baskets
(
    `id`                  INT       NOT NULL,
    `client_id`           INT       NOT NULL,
    `product_id`          INT       NOT NULL,
    `quantity`            INT       NOT NULL,
    `date_closed`         DATE      NULL,
    `date_created`        DATE      NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`client_id`)
        REFERENCES clients(`id`)
        ON DELETE CASCADE,
    FOREIGN KEY (`product_id`)
        REFERENCES products(`id`)
        ON DELETE CASCADE
) ENGINE=INNODB;