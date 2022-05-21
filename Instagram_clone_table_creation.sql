create table users(
    user_id int auto_increment primary Key,
    username varchar(255) UNIQUE not null,
    created_at timestamp default now()
);
select database();
show tables

insert into users(username) values ('BluetheCat'),
('CharlieBrown'),('ColtSteele');

select * from users;

create table photos(
    photos_id int auto_increment primary key,
    image_url varchar(255) not null,
    user_id int not null,
    created_at timestamp default now(),
    foreign key(user_id) references users(user_id)
);

insert into photos(image_url,user_id) values
('/16dvss',1),('/1vw5gw',2),('/56wvwv',3)

select * from photos;

select username,image_url from photos
join users ON photos.user_id = users.user_id;

create table Comments(
    Comments_id int auto_increment primary key,
    comment_text varchar(255) not null,
    user_id int not null,
    photos_id int not null,
    created_at timestamp default now(),
    foreign key(user_id) references users(user_id),
    foreign key(photos_id) references photos(photos_id)
);

insert into Comments(comment_text,user_id,photos_id)
values('meow',1,2),
('Amazing Shot!',3,2),
('Love this',2,1);

select * from Comments

create table likes(
    user_id int not null,
    photos_id int not null,
    created_at timestamp default now(),
    foreign key(user_id) references users(user_id),
    foreign key(photos_id) references photos(photos_id),
    primary key(user_id,photos_id) --makes so you like per userid in the same photo
);

insert into likes(user_id,photos_id) values
(1,1),(2,1),(1,2),(1,3),(3,3);

--testing the one like per photo
insert into likes(user_id,photos_id)
values(1,1);

CREATE TABLE follows(
    follower_id int not NULL,
    followee_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(follower_id) REFERENCES `users`(user_id),
    FOREIGN KEY(followee_id) REFERENCES `users`(user_id),
    PRIMARY KEY(follower_id,followee_id)
);

INSERT INTO follows(follower_id,followee_id) VALUE
(1,2),(1,3),(3,1),(2,3);

SELECT * FROM follows;

CREATE TABLE tags(
    tag_id int auto_increment PRIMARY KEY,
    tag_name VARCHAR(255) UNIQUE,
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE photo_tags(
    photo_id int NOT NULL, 
    tag_id INT NOT NULL,
    FOREIGN KEY(photo_id) REFERENCES photos(photos_id),
    FOREIGN KEY(tag_id) REFERENCES tags(tag_id),
    PRIMARY KEY(photo_id, tag_id)
);

INSERT INTO tags(tag_name) VALUE
('adorable'),('Cute'),('Sunrise');

INSERT INTO photo_tags(photo_id,tag_id) VALUE
(1,1),(1,2),(2,3),(3,2);

select * FROM tags;
