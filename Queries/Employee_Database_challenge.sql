-- FIRST DELIVERABLE
-- Create "retirement_titles" table
SELECT emp.emp_no,
	   emp.first_name,
	   emp.last_name,
	   ti.title,
	   ti.from_date,
	   ti.to_date
INTO retirement_titles
FROM employees AS emp
LEFT JOIN titles AS ti
ON emp.emp_no = ti.emp_no
WHERE (emp.birth_date BETWEEN '1952-01-01' AND '1955.12.31')
ORDER BY emp.emp_no;

-- Confirm that the data was succesfully retrieved. 
SELECT * FROM retirement_titles;

-- Filter the retirement_tables table to only show the recent titles of each current employee.
-- Retrieve the data and put it in the unique_titles table. 
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title

INTO unique_titles
FROM retirement_titles AS rt
WHERE rt.to_date = '9999-01-01'
ORDER BY rt.emp_no ASC, rt.to_date DESC;

-- Confirm that the data was succesfully retrieved.
SELECT * FROM unique_titles;

-- Retrieve the number of employees by their most recent job title who are about to retire.
SELECT COUNT(title),
	title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

-- Confirm that the data was retrieved.
SELECT * FROM retiring_titles;

-- SECOND DELIVERABLE
-- Create a Mentorship Elegibility Table  that holds the employees who are eligible to participate in a mentorship program.
SELECT DISTINCT ON (emp.emp_no) emp.emp_no,
	emp.first_name,
	emp.last_name,
	emp.birth_date,
	de.from_date,
	de.to_date,
	ti.title,
-- INTO mentorship_eligibility
FROM employees AS emp
LEFT JOIN dept_emp AS de
ON de.emp_no = emp.emp_no
LEFT JOIN titles AS ti
ON ti.emp_no = emp.emp_no
WHERE (de.to_date = '9999-01-01')
AND (emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp.emp_no;

-- Confirm that the data was retrieved.
SELECT * FROM mentorship_eligibility;