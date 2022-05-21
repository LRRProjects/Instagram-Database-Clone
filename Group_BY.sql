SELECT count(*) as 'Total books' FROM books;
select count( DISTINCT author_fname) as Authors FROM `books`;
select count( DISTINCT author_lname) as Authors FROM `books`;
select count( DISTINCT author_lname, author_fname) as Authors FROM `books`;
SELECT title FROM `books` WHERE title like '%the%';
SELECT count(*) FROM `books` WHERE title like '%the%';
SELECT title, author_lname FROM books
GROUP BY author_lname limit 3;
SELECT author_lname, count(*) FROM `books`
GROUP BY author_lname;
SELECT title,author_fname,author_lname FROM books;
SELECT title,author_fname,author_lname FROM books
 GROUP BY author_lname;
 SELECT author_fname,author_lname,count(*) FROM books
 GROUP BY author_lname,author_fname;
 SELECT released_year, count(*) FROM `books`
 GROUP BY released_year;
 SELECT concat('In ',released_year,' ', count(*), ' book(s) released.') as Year FROM `books`
 GROUP BY released_year;