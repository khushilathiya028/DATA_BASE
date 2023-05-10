create database detail;

use detail;

create table detail
(firstname varchar(20) not null,
lastname varchar(20) not null,
address varchar(20) not null,
city varchar(10) not null,
age int not null);

insert into detail(firstname, lastname, address, city, age)values
('mickey', 'mouse', '123 fantasy way', 'anaheim', 73),
('bat', 'man', '321 cavern ave', 'gotham', 54),
('wonder', 'woman', '987 truth way', 'paradise', 39),
('donald', 'duck', '555 quack street', 'mallard', 65),
('bugs', 'bunny', '567 carrot street', 'rascal', 58),
('wiley', 'coyote', '999 acme way', 'canyon', 61),
('cat', 'woman', '234 purrfect street', 'hairball', 32),
('tweety', 'bird', '543', 'itotltaw', 28);

select * from detail;