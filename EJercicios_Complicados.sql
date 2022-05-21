SELECT * from `users`;

SELECT username,created_at from `users`
order by created_at LIMIT 5 

SELECT dayname(created_at) as Day_of_Week,count(created_at) as Count from `users`
GROUP By Day_of_Week
order by Count desc;

SELECT username, image_url from `users`
LEFT JOIN `photos` ON `users`.id = photos.user_id
WHERE photos.id is NULL;

SELECT * from `likes`;

SELECT username,photos.id,photos.image_url,
count(*) as total from photos INNER JOIN `likes`
ON likes.photo_id = photos.id INNER JOIN `users`
ON photos.user_id = users.id GROUP BY photos.id
order by total DESC LIMIT 1;

SELECT (SELECT count(*) FROM `photos`)/ (SELECT count(*) from `users`) as avg;

SELECT tags.tag_name,count(*) as total from `photo_tags`
JOIN `tags` ON photo_tags.tag_id = tags.id  
GROUP BY tags.id 
ORDER BY total DESC
LIMIT 5;

SELECT username,count(*) as num_likes from `users`
INNER JOIN `likes` ON users.id = likes.user_id
GROUP BY likes.user_id HAVING num_likes = (select count(*) from `photos`);

