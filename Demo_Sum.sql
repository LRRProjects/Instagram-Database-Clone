SELECT sum(pages) FROM `books`;
select author_fname,author_lname,
sum(pages) FROM `books`
GROUP BY author_lname,author_fname;