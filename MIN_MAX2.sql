SELECT title,pages FROM `books`
WHERE pages = (SELECT max(pages) FROM `books` );
SELECT title,pages FROM `books`
WHERE pages = (SELECT min(pages) FROM `books` );
SELECT title,pages FROM `books`
ORDER BY pages limit 1;
SELECT title,pages FROM `books`
ORDER BY pages DESC limit 1;