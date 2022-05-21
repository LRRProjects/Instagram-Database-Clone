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
Delimiter ;