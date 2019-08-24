USE school;

-- Q2.1.a)
SELECT students.name, students.city, courses.course_name
FROM students, courses, courses_registered, departments
WHERE students.roll_number = courses_registered.student_code
AND courses.course_number = courses_registered.course_code
AND courses.department_code = departments.department_code
AND departments.department_name = "CSE";

-- Q2.1b)
SELECT count(*)
FROM teachers, departments
WHERE teachers.department_code = departments.department_code
AND departments.department_name = "CSE";

-- Q2.1c)
SELECT courses.course_number, courses.course_name
FROM courses, departments
WHERE courses.department_code = departments.department_code
AND departments.department_name = "CSE";

-- Q2.1d)
SELECT *
FROM students
WHERE students.semester = "FALL2019";

-- Q2.1e)
SELECT a.name, a.CGPA
FROM (SELECT students.name, CAST(sum(grade * course_credit) / (sum(course_credit)*10) AS DECIMAL(9,1)) AS CGPA
	FROM students, courses_registered, courses
	WHERE courses_registered.student_code = students.roll_number
	AND courses.course_number = courses_registered.course_code
	GROUP BY students.name) a
WHERE a.CGPA >= 8.5;

-- Q2.1f)
SELECT courses_registered.sem, sum(CASE courses_registered.student_code WHEN "CSI08001" THEN 1 ELSE 0 END) AS num_course_by_CSI08001
FROM courses_registered
GROUP BY courses_registered.sem;

-- Q2.1g)
SELECT students.name
FROM students, courses_registered
WHERE students.roll_number = courses_registered.student_code
	AND courses_registered.course_code IN (
	SELECT a.course_code
	FROM courses_required a, academic_programs a1, courses_required b, academic_programs b1
	WHERE a.program_code = a1.program_code
		AND a1.program_name = "MCA"
		AND b.program_code = b1.program_code
		AND b1.program_name = "M.Tech"
	 	AND a.course_code = b.course_code);
	
-- Q2.1h)
SELECT students.name
FROM students, courses, courses_registered
WHERE students.roll_number = courses_registered.student_code
	AND courses.course_number = courses_registered.course_code
	AND courses.course_name = "DBMS";

-- Q2.1i)
SELECT students.name, students.semester
FROM students, courses, courses_registered
WHERE students.roll_number = courses_registered.student_code
	AND courses.course_number = courses_registered.course_code
	AND courses.course_name = "DBMS";
	
-- Q2.1j)
SELECT students.name
FROM students
ORDER BY students.name;

-- Q2.1k)
UPDATE students 
SET city = 'TEZPUR'
WHERE roll_number = 'CSI08002';

-- Q2.1l)
SELECT sum(courses.course_credit) AS total_credits_required
FROM courses JOIN courses_required ON courses_required.course_code = courses.course_number
	JOIN academic_programs ON academic_programs.program_code = courses_required.program_code
WHERE
	academic_programs.program_name = "MCA";

-- Q2.1m)
SELECT *
FROM courses
WHERE courses.course_name LIKE '%Computer Science%';

-- Q2.1n)
SELECT *
FROM students
WHERE students.city = "Tezpur";

-- Q2.1o)
SELECT count(*)
FROM departments;