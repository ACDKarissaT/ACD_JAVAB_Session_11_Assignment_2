USE library_information_system;

-- Q5a)
SELECT book_table.book_name
FROM book_table
WHERE book_table.book_issue_date BETWEEN
	'2008-08-21' AND '2008-08-29';
	
-- Q5b)
SELECT book_table.book_author, count(*) AS num_of_books
FROM book_table
GROUP BY book_table.book_author;

-- Q5c)
SELECT book_table.book_publisher, count(*)
FROM book_table
GROUP BY book_table.book_publisher
ORDER BY count(*) DESC LIMIT 1;

-- Q5d)
SELECT count(*)
FROM book_table;

-- Q5e)
SELECT count(*)
FROM student_table, book_table
WHERE student_table.st_id = book_table.student_id
AND student_table.st_id = 'CSB06001';


-- Q5f)
UPDATE book_table
SET book_table.book_author = 'ABC'
WHERE book_table.b_id = 'BK003';

-- Q5g)
SELECT student_table.st_name
FROM book_table, student_table
WHERE book_table.book_name = 'Database System'
AND book_table.book_author = 'E.Navathe'
AND student_table.st_id = book_table.student_id;

-- Q5h)
SELECT department_table.dept_name, count(*) AS total_books
FROM department_table, book_table
WHERE department_table.dept_id = book_table.book_department
GROUP BY department_table.dept_name;
;

-- Q5i)
SELECT book_table.book_name
FROM book_table
WHERE book_table.book_subject LIKE '%ora%';
