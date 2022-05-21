DELIMITER $$

CREATE TRIGGER prevent_self_follows
    before insert on `follows` for each ROW
    BEGIN
        if new.follower_id = new.followee_id
        THEN
            signal sqlstate '45000'
            set MESSAGE_TEXT = 'You cannot follow yourself!!';
        END if;
    END;
$$
DELIMITER;