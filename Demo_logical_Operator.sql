SELECT title,released_year FROM books
WHERE released_year != 2017 ORDER BY released_year DESC; 

SELECT title,author_lname FROM `books` 
WHERE author_lname = 'Harris'

SELECT title,author_lname FROM `books` 
WHERE author_lname != 'Harris'

SELECT title FROM `books` 
WHERE title like 'w%';

SELECT title FROM `books` 
WHERE title like '%w%';

SELECT title FROM `books` 
WHERE title NOT like 'w%';

SELECT title,released_year FROM `books`
ORDER by released_year;

SELECT title,released_year FROM `books`
 WHERE released_year>2000 ORDER by released_year;

SELECT title,released_year FROM `books`
 WHERE released_year>=2000 ORDER by released_year;

SELECT title,stock_quantity FROM `books`
where stock_quantity >= 100;

SELECT 99 > 5564;
SELECT 100 > 5;
SELECT 9 > -10;
SELECT 1 > 1;
SELECT 'a' > 'b';
SELECT 'A' > 'a';



