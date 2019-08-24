USE payroll;

-- q3.1a)
SELECT employee.emp_name
FROM employee, department
WHERE department.Name = "CSE"
AND employee.department_id = department.idDepartment;

-- q3.1b)
SELECT employee.emp_name
FROM employee, salary
WHERE employee.emp_id = salary.emp_id
AND salary.gross >= 21000;

-- q3.1c)
SELECT salary.DA, salary.TA, salary.HRA
FROM salary, employee
WHERE employee.emp_name = 'Rob'
AND employee.emp_id = salary.emp_id;

-- q3.1d)
SELECT employee.emp_name, time_off.Daysoff
FROM time_off, employee
WHERE time_off.emp_id = employee.emp_id;

-- q3.1e)
SELECT department.Name AS department_name, employee.emp_name
FROM department, employee
WHERE employee.department_id = department.idDepartment
ORDER BY idDepartment;

-- q3.1f)
SELECT employee.emp_name, employee.name_grade
FROM department, employee
WHERE department.idDepartment = employee.department_id
AND department.Name = "CSE";

-- q3.1g)
SELECT employee.emp_name, salary.TAX
FROM employee, salary
WHERE employee.emp_id = salary.emp_id;

-- q3.1h)
SELECT employee.emp_name, employee.join_date
FROM employee
WHERE employee.join_date BETWEEN CAST('2007-04-10' AS DATE) 
	AND CAST('2008-08-28' AS DATE);

-- q3.1i)
SELECT employee.email
FROM employee, department
WHERE department.Name = "CSE"
AND employee.department_id = department.idDepartment;

-- q3.1j)
SELECT time_off.Daysoff
FROM time_off, employee
WHERE employee.emp_id = time_off.emp_id
AND employee.emp_name = "Rohim";

-- -- q3.1k)
-- ALTER TABLE employee
-- ADD employee_phone VARCHAR(45);

-- q3.1l)
SELECT employee.emp_name
FROM employee, salary
WHERE employee.emp_id = salary.emp_id
AND salary.base = 8000;

-- q3.1m)
SELECT employee.emp_name
FROM employee, balance
WHERE employee.emp_id = balance.emp_id
AND balance.Bank_Balance IN (
	SELECT MAX(balance.Bank_Balance) AS highest
	FROM balance);
	
-- q3.1n)
SELECT employee.emp_name
FROM employee, balance
WHERE employee.emp_id = balance.emp_id
AND balance.Loan_Amount > 0;

-- q3.1o)
SELECT balance.Bank_Balance
FROM balance, employee
WHERE balance.emp_id = employee.emp_id
AND employee.emp_name = "CSEMP07001";