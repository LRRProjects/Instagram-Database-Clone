CREATE TABLE users(
    email VARCHAR(255) PRIMARY KEY,
    created_at TIMESTAMP DEFAULT now()
);

INSERT INTO users(email) VALUES
('katie34@yahoo.com'),('Tunde@gmail.com');

SELECT * from `users`
ORDER by created_at desc

drop TABLE `users`;
SELECT count(*) from `users`;   



SELECT date_format(min(created_at),"%M %d %Y") as earliest_date from users;

SELECT email,created_at from `users`
where created_at = (select min(created_at) FROM `users` );

SELECT monthname(created_at) as month, count(*) as count FROM `users`
GROUP BY month
ORDER by count desc;


SELECT count(email) as yahoo_users FROM `users`
where email like '%@yahoo.com'


SELECT 
    CASE
        WHEN email like '%@gmail.com' THEN 'gmail'
        WHEN email like '%@yahoo.com' THEN 'yahoo'
        WHEN email like '@hotmail.com' THEN 'hotmail.com'
        ELSE 'other'
    end as provider, count(*) as total_users
FROM `users`
GROUP BY provider
ORDER by total_users DESC;