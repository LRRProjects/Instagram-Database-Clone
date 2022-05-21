CREATE TABLE reviewers(
    reviewers_id INT NOT NULL auto_increment,
    reviewers_fname VARCHAR(100),
    reviewers_lname VARCHAR(100),
    PRIMARY KEY(reviewers_id)
);

CREATE TABLE series(
    series_id int NOT NULL auto_increment,
    title VARCHAR(100),
    release_year year(4),
    genre VARCHAR(100),
    PRIMARY KEY(series_id)
);

CREATE TABLE reviewer(
    reviewer_id INT NOT NULL auto_increment,
    rating DECIMAL(2.1),
    series_id INT,
    reviewers_id INT,
    PRIMARY KEY(reviewer_id),
    FOREIGN KEY(series_id) REFERENCES series(series_id) ON DELETE CASCADE,
    FOREIGN KEY(reviewers_id) REFERENCES reviewers(reviewers_id) ON DELETE CASCADE
);

INSERT INTO reviewers(reviewers_fname,reviewers_lname)
VALUES('Thomas','Stoneman'),('Wyatt','Skaggs'),
('Kimbra','Masters'),('Domingo','Cortes'),('Colt', 'Steele'),
('Pinkie','Petit'),('Marlon','Crafford');

SELECT * FROM reviewers;

INSERT INTO series(title,release_year,genre)
VALUES('Ancher',2009,'Animation'),('Fargo',2014,'Drama'),
('Arrested Development',2003,'Comedy'),
('Bobs Burgers',2011,'Animation'),
('Bojack Horseman',2014,'Animation'),
('Breaking Bad',2008,'Drama'),
('Curb your Enthusiasm',2000,'Comedy'),
('Freaks and Geeks',1999,'Comedy'),
('General Hospital',1963,'Drama'),
('Halt and Catch Fire',2014,'Drama'),
('Malcom in the Middle',2000,'Comedy'),
('Pushing Daisies',2007,'Comedy'),
('Seinfled',1989,'Comedy'),
('Stranger Things',2016,'Drama')

SELECT * FROM series;

SELECT * FROM reviewer;

DROP TABLE reviewer;
DROP TABLE reviewers;
DROP TABLE series;

INSERT INTO series (title, release_year, genre) VALUES
    ('Archer', 2009, 'Animation'),
    ('Arrested Development', 2003, 'Comedy'),
    ("Bob's Burgers", 2011, 'Animation'),
    ('Bojack Horseman', 2014, 'Animation'),
    ("Breaking Bad", 2008, 'Drama'),
    ('Curb Your Enthusiasm', 2000, 'Comedy'),
    ("Fargo", 2014, 'Drama'),
    ('Freaks and Geeks', 1999, 'Comedy'),
    ('General Hospital', 1963, 'Drama'),
    ('Halt and Catch Fire', 2014, 'Drama'),
    ('Malcolm In The Middle', 2000, 'Comedy'),
    ('Pushing Daisies', 2007, 'Comedy'),
    ('Seinfeld', 1989, 'Comedy'),
    ('Stranger Things', 2016, 'Drama');

    INSERT INTO reviewers (reviewers_fname,reviewers_lname) VALUES
    ('Thomas', 'Stoneman'),
    ('Wyatt', 'Skaggs'),
    ('Kimbra', 'Masters'),
    ('Domingo', 'Cortes'),
    ('Colt', 'Steele'),
    ('Pinkie', 'Petit'),
    ('Marlon', 'Crafford');

    INSERT INTO reviewer(series_id, reviewers_id, rating) VALUES
    (1,1,8.0),(1,2,7.5),(1,3,8.5),(1,4,7.7),(1,5,8.9),
    (2,1,8.1),(2,4,6.0),(2,3,8.0),(2,6,8.4),(2,5,9.9),
    (3,1,7.0),(3,6,7.5),(3,4,8.0),(3,3,7.1),(3,5,8.0),
    (4,1,7.5),(4,3,7.8),(4,4,8.3),(4,2,7.6),(4,5,8.5),
    (5,1,9.5),(5,3,9.0),(5,4,9.1),(5,2,9.3),(5,5,9.9),
    (6,2,6.5),(6,3,7.8),(6,4,8.8),(6,2,8.4),(6,5,9.1),
    (7,2,9.1),(7,5,9.7),
    (8,4,8.5),(8,2,7.8),(8,6,8.8),(8,5,9.3),
    (9,2,5.5),(9,3,6.8),(9,4,5.8),(9,6,4.3),(9,5,4.5),
    (10,5,9.9),
    (13,3,8.0),(13,4,7.2),
    (14,2,8.5),(14,3,8.9),(14,4,8.9);

SELECT * FROM reviewers;
SELECT * FROM series;

SELECT * FROM reviewer;

SELECT title,rating FROM series JOIN
reviewer ON series.series_id = reviewer.series_id;

SELECT title,avg(rating) AS Avg_rating FROM series
JOIN reviewer ON series.series_id = reviewer.series_id
GROUP BY series.series_id
ORDER By Avg_rating;

SELECT reviewers_fname, reviewers_lname, rating FROM `reviewers`
INNER JOIN 
`reviewer` ON `reviewers`.reviewers_id =`reviewer`.reviewers_id;

SELECT title as Unreviewed_series FROM `series`
LEFT JOIN `reviewer`
ON `series`.series_id = `reviewer`.series_id
WHERE rating is NULL

SELECT genre,round(avg(rating),2) as avg_rating FROM
`reviewer` LEFT JOIN `series` ON
`reviewer`.series_id = `series`.series_id
GROUP BY genre
ORDER BY rating LIMIT 3 

SELECT * from `reviewers`
FROM `reviewer` LEFT JOIN
ON `reviewers`.reviewers_id = `reviewer`.reviewers_id;

SELECT 
    title,
    rating,
    CONCAT(first_name,' ', last_name) AS reviewer
FROM reviewers
INNER JOIN reviews 
    ON reviewers.id = reviews.reviewer_id
INNER JOIN series
    ON series.id = reviews.series_id
ORDER BY title;