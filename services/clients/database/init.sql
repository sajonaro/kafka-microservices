START TRANSACTION;


CREATE TABLE Clients (
    "Id" SERIAL,
    "FirstName" text NOT NULL,
    "LastName" text NOT NULL,
    "Phone" text NOT NULL,
    CONSTRAINT "PK_Clients" PRIMARY KEY ("Id")
);

INSERT INTO Clients ("FirstName", "LastName", "Phone")
VALUES ('Miguel', 'de Cervantes', 75);

INSERT INTO Clients ("FirstName", "LastName", "Phone")
VALUES ('Gustave', 'Flaubert', 67);

INSERT INTO Clients ("FirstName", "LastName", "Phone")
VALUES ('Ibn', 'Khaldun', 73);


COMMIT;