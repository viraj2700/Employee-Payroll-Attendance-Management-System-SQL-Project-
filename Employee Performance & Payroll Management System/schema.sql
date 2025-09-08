create database  employee_payroll;
use employee_payroll;

create table Departments(
dept_id int auto_increment primary key,
dept_name varchar(50) not null,
created_at timestamp default current_timestamp);

create table Employees(
emp_id int auto_increment primary key,
first_name varchar(20),
last_name varchar(20),
email varchar(20) unique,
phone varchar(20),
hire_date date,
job_title varchar(80),
basic_salary decimal(10,2),
dept_id int,
status varchar(20) default 'Active',
created_at timestamp default current_timestamp,
constraint fk_emp_dept foreign key (dept_id) 
references Departments(dept_id) on delete set null
);

create table Attendance(
att_id int auto_increment primary key,
emp_id int not null,
att_date date not null,
status enum('Present','Absent','Leave') not null,
constraint fk_att_emp foreign key(emp_id)
references Employees(emp_id) on delete cascade,
unique key ux_emp_date (emp_id, att_date)
);

create table Performance(
perf_id int auto_increment primary key,
emp_id int not null,
review_date date not null,
rating tinyint not null check (rating between 1 and 5),
remarks TEXT,
constraint fk_perf_emp foreign key (emp_id) 
references Employees(emp_id) on delete cascade
);

create table Payroll(
pay_id int auto_increment primary key,
emp_id int not null,
pay_month date not null,
basic_salary decimal(10,2),
bonus decimal(10,2),
deductions decimal(10,2),
net_salary decimal(10,2),
created_at timestamp default current_timestamp,
constraint fk_pay_emp foreign key(emp_id)
references Employees(emp_id) on delete cascade,
unique key ux_emp_month (emp_id,pay_month)
);

create index idx_att_emp_date on Attendance(emp_id, att_date);
create index idx_perf_emp on performance(emp_id);



