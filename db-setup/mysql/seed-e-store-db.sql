
use clients_db;
INSERT INTO clients(firsName,lastName,phone)
VALUES ('John','Deer','+1 911 343434'),
       ('Alice','Wonderland', '+4 232323'),
       ('Charlie', 'Fox', '+100');
      
use products_db;
INSERT INTO products(name,description,price,currency)
VALUES ('Razor 6010' , 'Trimmer Phillips, very good product', 10 , 'usd'),
       ('Orbit'      , 'Chewing gum 12 pieces a pack'       , 1.5, 'usd'),
       ('happy miaow', 'Cat carrier'                        , 9  , 'usd');
