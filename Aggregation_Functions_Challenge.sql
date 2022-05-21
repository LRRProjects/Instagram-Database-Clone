SELECT count(*) FROM `books`;

 SELECT released_year, count(*) FROM `books`
 GROUP BY released_year

 SELECT count(stock_quantity) as Quantity FROM `books`;
 SELECT sum(stock_quantity) as Quantity2 FROM `books`;

SELECT author_fname, author_lname, avg(released_year)
FROM `books` GROUP BY author_lname,author_fname;

SELECT concat(author_fname,' ',author_lname) as 'Full Name', pages FROM `books`
WHERE pages = (SELECT max(pages) FROM `books`);

SELECT released_year as year,count(*) as '# books',avg(pages) as 'avg pages'
FROM `books` GROUP BY  released_year;

