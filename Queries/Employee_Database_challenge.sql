-- Join tables into retirement_titles table
SELECT e.emp_no, 
e.first_name, 
e.last_name,
ti.title, 
ti.from_date, 
ti.to_date
INTO retirement_titles
FROM employee as e
Left JOIN titles as ti
ON (e.emp_no=ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;
-- Join tables into unique_titles table
SELECT DISTINCT ON(emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no ASC, to_date DESC
-- Create table to group by titles
SELECT COUNT (title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title 
ORDER BY COUNT DESC

-- Join title, employee and dept_emp tables
SELECT DISTINCT ON (e.emp_no) e.emp_no, 
e.first_name, 
e.last_name, 
e.birth_date,
ti.title,
de.from_date,
de.to_date
INTO mentorship_eligibility
FROM employee as e
INNER JOIN titles as ti
ON (e.emp_no=ti.emp_no)
INNER JOIN dept_emp as de
ON (e.emp_no=de.emp_no)
WHERE de.to_date=('9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') 
ORDER BY e.emp_no
