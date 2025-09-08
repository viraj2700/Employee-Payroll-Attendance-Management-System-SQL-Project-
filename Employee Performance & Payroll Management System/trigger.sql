
-- Auto-calculate net salary in Payroll

DELIMITER $$
CREATE TRIGGER before_payroll_insert
BEFORE INSERT ON Payroll
FOR EACH ROW
BEGIN
   SET NEW.net_salary = NEW.basic_salary - NEW.deductions;
END $$
DELIMITER ;
