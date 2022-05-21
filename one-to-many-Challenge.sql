CREATE TABLE students(
    student_id int not null auto_increment,
    first_name VARCHAR(100),
    PRIMARY KEY(student_id)    
);

CREATE TABLE papers(
    title VARCHAR(100),
    grade INT,
    student_id INT,
    FOREIGN KEY(student_id) REFERENCES students(student_id) ON DELETE CASCADE 
);

INSERT INTO `students`(first_name) VALUES
('Caleb'),('Samantha'),('Raj'),('Carlos'),('Lisa');

INSERT INTO papers (student_id,title,grade) VALUES
(1,'My first book report',60),
(1,'My Second book report',75),
(2,'Russian Lit Through The ages',94),
(2,'De Montaige and the art of the essay',98),
(4,'Borges and Magical Realism',89);


SELECT * FROM `students`;
SELECT * FROM papers;

SELECT first_name,title,grade FROM students
JOIN papers ON students.student_id = papers.student_id
order by grade desc;

SELECT first_name,ifnull(title,'Missing'),ifnull(grade,0) as grade FROM `students`
LEFT JOIN papers ON students.student_id = papers.student_id;


SELECT first_name,avg(ifnull(grade,0)) as average FROM `students`
LEFT JOIN papers ON students.student_id = papers.student_id
GROUP BY papers;

SELECT first_name,ifnull(avg(grade),0) as average
FROM students LEFT JOIN papers ON
students.student_id = papers.student_id
GROUP BY  students.student_id
order by average desc;

SELECT first_name,ifnull(avg(grade),0) as average,
CASE
    WHEN avg(grade) is NULL THEN 'FAILING'
    when avg(grade) >=75 THEN "PASSING"
    ELSE "FAILING"
END as passing_status
FROM students LEFT JOIN papers ON
students.student_id = papers.student_id
GROUP BY  students.student_id
order by average desc;