

insert into Departments (dept_name) Values ('Engineering'),
('HR');

INSERT INTO Employees 
(first_name, last_name, email, hire_date, job_title, basic_salary, dept_id) 
VALUES
('Amit','Shah','amit@example.com','2023-01-15','Software Engineer',45000,1),
('Riya','Patil','riya@example.com','2022-07-20','Sr. Software Engineer',65000,1),
('Siddh','Kumar','siddh@example.com','2021-03-10','Team Lead',90000,1),
('Neha','Joshi','neha@example.com','2024-02-02','HR Executive',35000,2),
('Vikram','Desai','vikram@example.com','2020-06-25','HR Manager',70000,2);

INSERT INTO Attendance (emp_id, att_date, status) VALUES
(1,'2025-07-01','Present'),(2,'2025-07-01','Present'),(3,'2025-07-01','Present'),(4,'2025-07-01','Present'),(5,'2025-07-01','Present'),
(1,'2025-07-02','Present'),(2,'2025-07-02','Absent'),(3,'2025-07-02','Present'),(4,'2025-07-02','Present'),(5,'2025-07-02','Present'),
(1,'2025-07-03','Present'),(2,'2025-07-03','Present'),(3,'2025-07-03','Present'),(4,'2025-07-03','Present'),(5,'2025-07-03','Present'),
(1,'2025-07-04','Present'),(2,'2025-07-04','Present'),(3,'2025-07-04','Present'),(4,'2025-07-04','Leave'),(5,'2025-07-04','Present'),
(1,'2025-07-05','Present'),(2,'2025-07-05','Present'),(3,'2025-07-05','Present'),(4,'2025-07-05','Present'),(5,'2025-07-05','Present');


INSERT INTO Payroll (emp_id, pay_month, basic_salary, deductions, net_salary) VALUES
(1,'2025-07',45000,2000,43000),
(2,'2025-07',65000,5000,60000),
(3,'2025-07',90000,7000,83000),
(4,'2025-07',35000,1000,34000),
(5,'2025-07',70000,4000,66000);


INSERT INTO Performance (emp_id, review_date, rating, remarks) VALUES
(1,'2025-06-30',4,'Good work'),
(2,'2025-06-30',5,'Excellent'),
(3,'2025-06-30',5,'Outstanding'),
(4,'2025-06-30',3,'Satisfactory'),
(5,'2025-06-30',4,'Strong leadership');