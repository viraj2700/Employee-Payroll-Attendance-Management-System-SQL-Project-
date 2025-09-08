
Setup & Installation
1. Install MySQL 8.0 and MySQL Workbench
2. Create database:
   CREATE DATABASE employee_payroll;
   USE employee_payroll;
3. Create all tables (Departments, Employees, Attendance, Payroll) with foreign keys
4. Insert sample data
5. Create stored procedures, triggers, and views
6. Run queries to test reports
Sample Queries
List employees with department:
SELECT e.first_name, e.last_name, d.dept_name
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id;

Department-wise average salary:
SELECT d.dept_name, AVG(e.basic_salary) AS avg_salary
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

Attendance summary:
SELECT e.first_name, e.last_name,
       SUM(status='Present') AS Present_Days,
       SUM(status='Absent') AS Absent_Days
FROM Attendance a
JOIN Employees e ON a.emp_id = e.emp_id
GROUP BY e.emp_id;

Monthly payroll report (stored procedure):
CALL GetMonthlyPayroll('2025-07');





