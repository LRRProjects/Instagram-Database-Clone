CREATE TABLE people(
    name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);

INSERT INTO people(name,birthdate,birthtime,birthdt) VALUES
('Padma','1983-11-11','10:07:35','1983-11-11 10:07:35');

INSERT INTO people(name,birthdate,birthtime,birthdt) VALUES
('Larry','1943-12-25','4:10:42','1943-12-25 4:10:42');

SELECT * from people;

SELECT curdate(); 
SELECT curtime(); 
SELECT now(); 

INSERT INTO people (name,birthdate,birthtime,birthdt) 
VALUES('microwave',curdate(),curtime(),now());

SELECT * FROM people;

DELETE from people WHERE name = 'microwave';

SELECT * FROM people;

SELECT name, birthdate FROM people;
SELECT name, day(birthdate) FROM people;
SELECT name,birthdate, day(birthdate) FROM people;
SELECT name,birthdate, dayname(birthdate) FROM people;
SELECT name,birthdate, dayofweek(birthdate) FROM people;
SELECT name,birthdate, dayofyear(birthdate) FROM people;
SELECT name,birthdt, dayofyear(birthdt) FROM people;
SELECT name,birthdate, month(birthdate) FROM people;
SELECT name,birthdate, monthname(birthdate) FROM people;

SELECT date_format('2009-10-04 22:23:00', '%W %M %Y');
SELECT date_format(birthdt, 'Was born a %W' ) from people;
SELECT date_format(birthdt, '%m/%d/%y') from people;
SELECT date_format(birthdt, '%m/%d/%y at %h:%i') from people;

SELECT * from people;

SELECT datediff(NOW(),birthdate) from people

SELECT name, birthdate, datediff(NOW(),birthdate) from people

SELECT birthdt from people;
SELECT birthdt,birthdt + interval 1 month from people;
SELECT birthdt,birthdt - interval 5 month from people;
SELECT birthdt,birthdt + interval 15 month + interval 10 hour from people;

CREATE TABLE comments(
    content VARCHAR(100),
    created_at TIMESTAMP DEFAULT now()
);

INSERT INTO comments(content) 
VALUES('I found this funny');

INSERT INTO comments(content) 
VALUES('I found this offensive');

INSERT INTO comments(content) 
VALUES('baebnstntrs');


SELECT * from comments order by created_at;
SELECT * from comments order by created_at desc;

CREATE TABLE comment2(
    content VARCHAR(100),
    changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO comment2(content) 
VALUES('I found this funny');

INSERT INTO comment2(content) 
VALUES('I found this offensive');

INSERT INTO comment2(content) 
VALUES('baebnstntrs');

INSERT INTO comment2(content) 
VALUES('lol');

SELECT * FROM people;

update comment2 set content='This is not gibberish'
WHERE content='lol'

SELECT * FROM comment2;
SELECT * FROM comment2 ORDER BY changed_at;