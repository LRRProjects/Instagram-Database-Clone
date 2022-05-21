CREATE TABLE items (
    price DECIMAL(5,2));

    INSERT INTO items(price) VALUES(7);
    INSERT INTO items(price) VALUES(7535465);
    INSERT INTO items(price) VALUES(34.88);
    INSERT INTO items(price) VALUES(298.9999);
    INSERT INTO items(price) VALUES(1.9999);

    SELECT * FROM items;

    CREATE TABLE thingies (
        price FLOAT);

    INSERT INTO thingies(price) VALUES(88.45)
    INSERT INTO thingies(price) VALUES(8877.45)
    INSERT INTO thingies(price) VALUES(8877670000.45)
    SELECT * FROM thingies