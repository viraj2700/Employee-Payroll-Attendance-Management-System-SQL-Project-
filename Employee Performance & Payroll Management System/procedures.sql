
--  Procedure to get monthly payroll for all employees
DELIMITER $$
CREATE PROCEDURE GetMonthlyPayroll(IN month_year VARCHAR(7))
BEGIN
    SELECT e.emp_id, e.first_name, e.last_name, 
           p.basic_salary, p.deductions, p.net_salary
    FROM Payroll p
    JOIN Employees e ON p.emp_id = e.emp_id
    WHERE p.pay_month = month_year;
END $$
DELIMITER ;

CALL GetMonthlyPayroll('2025-07');


-- Procedure to add attendance in bulk (for one date)
DELIMITER $$
CREATE PROCEDURE MarkAttendance(IN att_date DATE, IN default_status VARCHAR(10))
BEGIN
    INSERT INTO Attendance (emp_id, att_date, status)
    SELECT emp_id, att_date, default_status
    FROM Employees;
END $$
DELIMITER ;

CALL MarkAttendance('2025-07-06','Present');
