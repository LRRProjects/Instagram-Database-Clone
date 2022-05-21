SELECT lower('Hello World');
SELECT upper(title) AS Mayusculas FROM books;
SELECT concat('My FAVORITE BOOK IS ', upper(title)) FROM books;
SELECT upper(reverse('Why does my cat look at me with such hatred?'));
SELECT replace(concat('I',' ','like',' ','cats'),' ','_');
SELECT replace(title,' ','->') AS Titles FROM books;
SELECT author_lname as forward, reverse(author_lname) as backwards FROM books;
SELECT upper(concat(author_fname,' ',author_lname)) as 'full name in caps' from books;
SELECT concat(title,' was released ',released_year) as Info FROM books;
SELECT title,char_length(title) as ' character count ' FROM books;
SELECT concat(substring(title,1,10),'...') as ' short title',
concat(author_lname,',',author_fname) as author,
concat(stock_quantity,' in stock ') as quantity from books; 