SELECT title from `books`
WHERE title like '%stories%';

SELECT title,pages FROM `books` ORDER BY pages DESC limit 1;

select concat(title,' - ',released_year) as Summary from `books`
ORDER BY released_year DESC LIMIT 3;

SELECT title,author_lname FROM `books`
WHERE author_lname like '% %';

SELECT title,released_year,stock_quantity from `books`
ORDER BY stock_quantity LIMIT 3;

SELECT title,author_lname FROM `books`
ORDER BY 2,1;

SELECT concat('MY FAVORITE AUTHOR IS ',author_fname,' ',author_lname,'!') as Yell
FROM `books` ORDER BY author_lname,author_fname DESC;