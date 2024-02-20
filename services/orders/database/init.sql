START TRANSACTION;


CREATE TABLE Products (
    "Id" SERIAL,
    "Name" text NOT NULL,
    "Description" text NOT NULL,
    "Price" decimal NOT NULL,
    "Currency" text NOT NULL,
    CONSTRAINT "PK_Products" PRIMARY KEY ("Id")
);

INSERT INTO Products ("Name", "Description", "Price", "Currency")
VALUES ('Razor 6010' , 'Trimmer Phillips, very good product', 10 , 'usd'),;

INSERT INTO Products ("Name", "Description", "Price", "Currency")
VALUES ('Orbit'      , 'Chewing gum 12 pieces a pack'       , 1.5, 'usd');

INSERT INTO Products ("Name", "Description", "Price", "Currency")
VALUES ('happy miaow', 'Cat carrier'                        , 9  , 'usd');


COMMIT;
