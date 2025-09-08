
-- View for department-wise salary summary

CREATE VIEW DeptSalarySummary AS
SELECT d.dept_name, COUNT(e.emp_id) AS total_employees,
       AVG(e.basic_salary) AS avg_salary, MAX(e.basic_salary) AS max_salary
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

SELECT * FROM DeptSalarySummary;
