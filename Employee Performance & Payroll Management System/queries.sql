-- Show all employees with their department names
SELECT e.emp_id, e.first_name, e.last_name, d.dept_name, e.job_title, e.basic_salary
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id;

-- The employee with the highest salary
SELECT first_name, last_name, basic_salary
FROM Employees
ORDER BY basic_salary DESC
LIMIT 1;

-- Department-wise average salary
SELECT d.dept_name, AVG(e.basic_salary) AS avg_salary
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;


-- Attendance summary for each employee (Present/Absent/Leave count)
SELECT e.emp_id, e.first_name, e.last_name,
       SUM(a.status='Present') AS Present_Days,
       SUM(a.status='Absent') AS Absent_Days,
       SUM(a.status='Leave') AS Leave_Days
FROM Attendance a
JOIN Employees e ON a.emp_id = e.emp_id
GROUP BY e.emp_id, e.first_name, e.last_name;

-- Payroll report for July 2025 (with employee names)
SELECT e.first_name, e.last_name, p.pay_month, 
       p.basic_salary, p.deductions, p.net_salary
FROM Payroll p
JOIN Employees e ON p.emp_id = e.emp_id
WHERE p.pay_month = '2025-07';

-- Top 3 highest-paid employees
SELECT first_name, last_name, job_title, basic_salary
FROM Employees
ORDER BY basic_salary DESC
LIMIT 3;

-- Employees who took at least one Leave
SELECT DISTINCT e.emp_id, e.first_name, e.last_name
FROM Attendance a
JOIN Employees e ON a.emp_id = e.emp_id
WHERE a.status = 'Leave';


