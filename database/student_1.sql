create database college;

use college;

create table student
(RollNo int auto_increment primary key,
Name varchar(20) not null,
Barnch varchar(20) not null);
 
 insert into student(Name, Barnch)values
('jay', 'computar science');

insert into student(Name, Barnch)values
('suhani', 'electronic and com'),
('kriti', 'electronic and com');

select * from student;

create table Exam
( 
RollNo int,
s_code varchar(10) not null ,
marks int,
p_code varchar(10) not null, 
FOREIGN KEY (RollNo) REFERENCES student(RollNo));

insert into Exam (RollNo, s_code, marks, p_code)values
(1, 'CS11', 50, 'CS'),
(1, 'CS12', 60, 'CS'),
(2, 'EC101', 66, 'EC'),
(2, 'EC102', 70, 'EC'),
(3, 'EC101', 45, 'EC'),
(3, 'EC102', 50, 'EC');

select * from Exam;






