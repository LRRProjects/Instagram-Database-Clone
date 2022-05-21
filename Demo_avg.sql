SELECT avg(released_year) FROM `books`;
SELECT released_year,avg(stock_quantity)
FROM `books` GROUP BY released_year;
SELECT author_fname,author_lname, avg(pages)
FROM `books` GROUP BY author_lname,author_fname;