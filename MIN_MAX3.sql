SELECT author_fname,author_lname,
min(released_year) as 'First Book' FROM `books`
GROUP BY author_lname,author_fname;

SELECT author_fname,author_lname,
max(pages) FROM `books`
GROUP BY author_lname,author_fname;