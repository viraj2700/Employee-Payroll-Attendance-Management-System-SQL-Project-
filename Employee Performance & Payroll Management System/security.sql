
-- read-only HR user:

CREATE USER 'hr_user'@'localhost' IDENTIFIED BY 'hr123';
GRANT SELECT ON employee_payroll.* TO 'hr_user'@'localhost';
