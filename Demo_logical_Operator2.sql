SELECT title,released_year,
    CASE
        WHEN released_year >=2000 THEN 'Modern Lit'
        ELSE '20th Centurt Lit'
        END as Genre
FROM `books`;

SELECT 10 != 10;
SELECT 15 > 14 && 99 - 5 <=94;
SELECT 1 in (5,3) || 9 between 8 and 10;

SELECT title,released_year FROM `books`
WHERE released_year < 1980;

SELECT author_fname,author_lname,title FROM `books`
WHERE author_lname in('eggers','chabon');

SELECT author_lname,title,released_year FROM `books`
WHERE author_lname = 'Lahiri' and released_year >= 2000;

SELECT * FROM `books`
WHERE pages between 100 and 200;

SELECT author_fname,author_lname,title FROM `books`
WHERE author_lname like 'C%' OR author_lname like 'S%';

SELECT title,author_lname, 
CASE
    WHEN title like '%stories%' THEN 'Short Stories'
    WHEN title like '%Just kids%' or title like 'Hearthbreaking Work%' THEN 'Memoir'
    ELSE 'Novel'
END as Type
FROM `books`;

SELECT * FROM `books`



SELECT title,author_fname, author_lname,
CASE
    WHEN count(*) = 1 THEN '1 book'
    ELSE concat(count(*), ' books')
END as COUNT
from `books`
GROUP BY  author_lname,author_fname
