SELECT concat(substring(title,1,10),'...') AS 'Short Titles' FROM books;
SELECT 
    substring(replace(title,'e',3),1,10) AS 'Weird String' FROM books;
    SELECT concat(author_fname, reverse(author_fname)) FROM books;
    SELECT concat(author_lname, ' is ', char_length(author_lname), ' characters long ') as 'Size of Last Name' FROM books;