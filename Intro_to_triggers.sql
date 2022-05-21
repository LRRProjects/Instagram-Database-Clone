create DATABASE Trigger_demo;

CREATE TABLE users(
    username VARCHAR(100),
    age INT
);

INSERT INTO users(username,age) values("Yang",15);

Delimiter $$

create TRIGGER must_be_adult
    before INSERT ON users FOR each ROW
    BEGIN
        IF new.age < 18
        THEN
            signal sqlstate '45000'
                SET MESSAGE_TEXT = 'MUST BE AN ADULT';
        END IF;
    END;    
$$