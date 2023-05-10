create database  employee;

use  employee;

create table employee
(employee_id int auto_increment primary key,
first_name varchar(20) not null,
last_name varchar(20) not null,
salary int,
joining_date datetime not null,
department varchar(20) not null);

insert into employee (first_name, last_name, salary, joining_date, department)values
('john', 'abraham', 100000, "2013-01-01 12:00:00", 'banking'),
('michael', 'clarke', 800000, "2013-01-01 12:00:00", 'insurance'),
('roy', 'thomas', 700000, "2013-02-01 12:00:00", 'banking'),
('tom', 'jose', 600000, "2013-02-01 12:00:00", 'insurance'),
('jerry', 'pinto', 650000, "2013-02-01 12:00:00", 'insurance'),
('philip', 'mathew', 750000, "2013-01-01 12:00:00", 'services'),
('testname1', '123', 650000, "2013-01-01 12:00:00", 'services'),
('testname2', 'lname%', 600000, "2013-02-01 12:00:00", 'insurance');

drop database employee;
select * from employee;

create table incentive
(
employee_ref_id int,
incentive_date varchar(10) not null,
incentive_amouunt int
);

insert into incentive (employee_ref_id, incentive_date,incentive_amouunt)values
(1, '01-feb-13', 5000),
(2, '01-feb-13', 3000),
(3, '01-feb-13', 4000),
(1, '01-jan-13', 4500),
(2, '01-jan-13', 3500);

select * from incentive;
drop database incentive;

select first_name,joining_date,salary from employee;

select * from employee order by first_name asc;

select * from employee order by salary asc;

select * from employee where first_name like 'j%';

select department,max(salary) maxsalary from employee group by department order by maxsalary asc;

select first_name, incentive_amouunt 
from employee  inner join  incentive
on employee_id = employee_ref_id
  and incentive_amouunt>3000;
  
  create table view
  (employee_id int auto_increment primary key,
  first_name varchar(20) not null,
  last_name varchar(20) not null,
  salary int,
  joining_date datetime not null,
  department varchar(20) not null);

create trigger deta
after insert on employee
for each row
insert into backup values(old.employee_id, old.first_name, old.last_name, old.salary, old.joining_date, old.department);



  
  








