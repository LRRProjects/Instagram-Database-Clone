delimiter $$

CREATE TRIGGER unfollows_trigger
    after DELETE ON `follows` for each ROW
        BEGIN
            INSERT INTO unfollow
            SET
            follower_id = old.follower_id,
            followee_id = old.followee_id;
            
        END;
$$

delimiter ;