SELECT COUNT (title) title FROM unique_titles

SELECT COUNT (DISTINCT emp_no) FROM retirement_titles

SELECT COUNT (emp_no) FROM mentorship_eligibility

SELECT COUNT (emp_no) FROM unique_titles

SELECT COUNT (emp_no) FROM mentorship_eligibility

SELECT COUNT (emp_no)emp_no, title FROM mentorship_eligibility
GROUP BY title;

SELECT * FROM retiring_titles
--Retiring by department
SELECT e.emp_no, 
e.first_name, 
e.last_name, 
de.dept_no
INTO retiring_by_department
FROM employee as e
LEFT JOIN dept_emp as de
ON (e.emp_no=de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY dept_no ASC;

SELECT COUNT (DISTINCT emp_no) emp_no, dept_no
INTO dept_retiries
FROM retiring_by_department
GROUP BY dept_no
ORDER BY dept_no

--RESULTS
--new tables
SELECT * FROM retiring_titles
SELECT * FROM mentorship_eligibility

--1. Total employees,  employeees retiring, total employees eligable
SELECT COUNT (DISTINCT emp_no) emp_no FROM employee

SELECT COUNT (emp_no) FROM unique_titles

SELECT COUNT (emp_no) FROM mentorship_eligibility

---2. amount of retiring employees by title versus eligible by title
SELECT * FROM retiring_titles


SELECT COUNT (emp_no)emp_no, title FROM mentorship_eligibility
GROUP BY title;

--3. amount of retiring by dept versus total employees by dept
SELECT * FROM departments
--total
SELECT COUNT (DISTINCT emp_no) emp_no, dept_no
FROM dept_emp
GROUP BY dept_no
ORDER BY dept_no ASC
	
--retiring
SELECT * FROM employeecount_by_department

--a. FIND eligible by department
SELECT me.emp_no, 
me.first_name, 
me.last_name, 
de.dept_no
FROM mentorship_eligibility as me
LEFT JOIN dept_emp as de
ON (me.emp_no=de.emp_no)
ORDER BY de.dept_no ASC;
--b. FIND the NUMBER of eligible by department
SELECT COUNT (DISTINCT emp_no), dept_no
FROM eligible_by_department
GROUP BY dept_no
ORDER BY dept_no



