create database Salesperson;

use Salesperson;

create table Salesperson
(PKSNO int primary key,
SNAME varchar(20) not null,
CITY varchar(20) not null,
COMM int
);

insert into Salesperson(PKSNO, SNAME, CITY, COMM)values
(1001, 'peel', 'london', 12),
(1002, 'serres', 'san jose', 13),
(1004, 'motika', 'london', 11),
(1007, 'rafkin', 'barcelona', 15),
(1003, 'axelrod', 'new york', 1);

select * from Salesperson;

create table customer
( 
 PKCNM int not null,
 CNAME varchar(10) not null,
 CITY varchar(10) not null,
 RATING int,
 FKSNO int not null, 
 FOREIGN KEY (FKSNO) REFERENCES Salesperson(PKSNO)
);

insert into customer (pkcnm, CNAME, CITY, RATING, FKSNO)value
(201, 'hoffman', 'london', 100, 1001),
(202, 'giovanne', 'roe', 200, 1003),
(203, 'liu', 'san jose', 300, 1002),
(104, 'grass', 'barcelona', 100, 1002),
(106, 'clemens', 'london', 300, 1007),
(207, 'pereira', 'roe', 100, 1004);

select * from customer;

select sname,city from salesperson where comm>0.12 and city = 'london';

select sname,city from salesperson where city='barcelona' or city = 'london';

select sname,comm from salesperson where comm>0.10 and comm <0.12;

select cname from customer where rating <=100 or city = 'rome';