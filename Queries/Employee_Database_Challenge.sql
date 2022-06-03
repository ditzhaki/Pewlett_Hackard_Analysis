-- Deliverable 1

-- List of Retiring Employees
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees AS e
	INNER JOIN titles AS ti
		ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Check the table
SELECT * FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

-- Check the table
SELECT * FROM unique_titles;

-- Number of employees by their most recent job title who are about to retire
SELECT COUNT (emp_no), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT DESC;

-- Check the table
SELECT * FROM retiring_titles;

-- Deliverable 2

-- Employees Eligible for the Mentorship Program
SELECT DISTINCT ON (e.emp_no,de.emp_no,ti.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees AS e
	INNER JOIN dept_emp AS de
		ON (e.emp_no = de.emp_no)
	INNER JOIN titles AS ti
		ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

-- Check the table
SELECT * FROM mentorship_eligibility;

-- Additional Queries

-- Total Salary of Retirees per Title
SELECT ut.emp_no,
	ut.first_name,
	ut.last_name,
	ut.title,
	sl.salary
INTO retiring_salaries
FROM unique_titles AS ut
	INNER JOIN titles AS ti
		ON (ut.emp_no = ti.emp_no)
	INNER JOIN salaries AS sl
		ON (ut.emp_no = sl.emp_no)
ORDER BY ut.emp_no;

SELECT * FROM retiring_salaries;

-- Counts of retiring employees salaries
SELECT SUM (salary), title
INTO retiring_salary_sum
FROM retiring_salaries
GROUP BY title
ORDER BY SUM DESC;

SELECT * FROM retiring_salary_sum;

-- Retiring employees per Department
SELECT ut.emp_no,
	ut.first_name,
	ut.last_name,
	ut.title,
	d.dept_name
INTO retiring_depts
FROM unique_titles AS ut
	INNER JOIN dept_emp AS de
		ON (ut.emp_no = de.emp_no)
	INNER JOIN departments AS d
		ON (de.dept_no = d.dept_no)
ORDER BY ut.last_name, ut.first_name;

-- Counts of retiring employees by department
SELECT COUNT (emp_no), dept_name
INTO retiring_dept_count
FROM retiring_depts
GROUP BY dept_name
ORDER BY COUNT DESC;

SELECT * FROM retiring_dept_count;