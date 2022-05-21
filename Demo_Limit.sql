SELECT title FROM `books`;
SELECT title FROM `books` LIMIT 3;
SELECT * FROM `books` LIMIT 1;
SELECT title,released_year from `books`;
SELECT title,released_year from `books` ORDER BY released_year DESC LIMIT 5;
SELECT title,released_year from `books` ORDER BY released_year DESC LIMIT 0,5;