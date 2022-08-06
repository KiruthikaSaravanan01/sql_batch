use new_query

create table voting
(
ID int primary key,
Name varchar (25) not null,
Dob datetime not null  check (dob <= current_timestamp),
Age int not null check (age > 18),
Designation varchar (30) default 'self_employed'
)
insert into voting values (1, 'Kiruthika', '2001-01-08 05:30:04', 22, 'IT employee')
insert into voting values (2, 'Sathish', '1999-11-30 02:07:04',26, 'IT employee')

update voting set Age = 22 where Name = 'Sathish'
update voting set Age = 21 where Name = 'Kiruthika'

select * from voting

--create table for department and employee 

create table department
(
DId int primary key,
DName varchar (20) not null
)

insert into department values (01, 'Developer')
insert into department values (02, 'Admin')
insert into department values (03, 'Designer')
insert into department values (04, 'Tester')

select * from department

create table employee
(
EId int primary key,
EName varchar (20) not null,
Salary money,
DNo int foreign key references department (DId)
)

insert into employee values (130, 'Kiruthika', 30000, 01)   
insert into employee values (131, 'Sathish', 100000, 01)
insert into employee values (132, 'Gayathri', 30000, 04)
insert into employee values (133, 'Yuvaraj', 40000, 03)
insert into employee values (134, 'Umamaheshwari', 30000, 02)

select * from employee

-- parent and child table creation

create table parent
(
pid int primary key,
pname varchar (20) not null,
)
insert into parent values (1, 'Saravanan')
insert into parent values (2, 'Umamaheshwari')

select * from parent

create table child
(
Cid int primary key,
CName varchar (20) not null,
pno int default 1 foreign key references parent(pid) on delete set default on update set default
)
insert into child values (100, 'Kiruthika', 2)
insert into child values (101, 'Divya', 1)
insert into child values (102, 'Boopesh', 1)

select * from child

update parent set pid=10 where pid=2
select * from parent
select * from child

