use new_query 

create table employ
(
EId int primary key,
EName varchar (20) not null,
Salary money,
EDesignation varchar(20),
DNo int
)

insert into employ values (130, 'Kiruthika', 30000,'back-end', 01)   
insert into employ values (131, 'Sathish', 100000,'ui', 01)
insert into employ values (132, 'Gayathri', 30000,'testing',04)
insert into employ values (133, 'Yuvaraj', 40000,'back-end', 03)
insert into employ values (134, 'Umamaheshwari', 30000,'ceo', 02)

select avg (Salary) as 'Average Salary' from employ
select min (Salary) as 'Minimum Salary' from employ
select max (Salary) as 'Maximum Salary' from employ
select count (Salary) as 'Count Salary' from employ
select sum (Salary) as 'Sum Salary' from employ

select * from employ

insert into employ values (135, 'Sangeetha', 40000,'back-end', 02)
insert into employ values (136, 'Nathiya', 35000,'testing', 03)
insert into employ values (137, 'Meena', 80000,'ceo', 02)
insert into employ values (138, 'Jasmine', 30000,'ceo', 02)

--Group by clause

select avg (Salary) as 'Average Salary', Edesignation from employ group by EDesignation

select avg (Salary) as 'Average Salary', Edesignation from employ group by EDesignation having EDesignation = 'ceo'

select * from employ order by Salary

select * from employ order by Eid desc 

create synonym E1 for employ 

select * from E1

drop synonym if exists E1

--Joins 
--Student table creation

create table students 
( 
SId int primary key,
SName varchar(20),
SDep varchar (20),
Sclub varchar (30)
)

--Department table creation
create table SDepartment
(
DId int primary key,
DeptName varchar (25) not null,
)

--Club table creation

create table SClub
(
CID int primary key,
ClubName varchar (30),
)

select * from SClub

--INNER JOIN for students and SDept table  

select SId, SName, SDep, DeptName from students inner join SDepartment on SDep = DId

select s.SId, s.SName, s.SDep, d.DeptName from students as s inner join SDepartment as d on s.SDep = d.DId

select s.SID,s.SName,s.SClub,s.SDep, d.DeptName from students as s inner join SDepartment as d on s.SDep=d.DID

--INNER JOIN for students, SDept table and SClub

select s.SID,s.SName,s.SDep, d.DeptName, c.ClubName,s.SClub from students as s inner join SDepartment as d on s.SDep=d.DID inner join SClub as c on s.SClub=c.CID

--LEFT,RIGHT,FULL JOIN

select s.SID,s.SName,s.SClub,s.SDep, d.DeptName from students as s inner join SDepartment as d on s.SDep=d.DID
select s.SID,s.SName,s.SClub,s.SDep, d.DeptName from students as s left join SDepartment as d on s.SDep=d.DID
select s.SID,s.SName,s.SClub,s.SDep, d.DeptName from students as s right join SDepartment as d on s.SDep=d.DID
select s.SID,s.SName,s.SClub,s.SDep, d.DeptName from students as s full join SDepartment as d on s.SDep=d.DID

select s.SID,s.SName,s.SDep,d.DeptName,c.ClubName,s.SClub from students as s left join SDepartment as d on s.SDep=d.DID full join SClub as c on s.SClub=c.CID

--Identity

create table sample
(
id int primary key IDENTITY(1,1),
name varchar(20)
)
drop table sample
insert into sample values ('Kiruthika')
insert into sample values ('Sangeetha')
insert into sample values ('Sathish')
insert into sample values ('Yuvaraj')
select * from sample

--SEQUENCES
--CREATE SEQUENCE
create sequence empid as INT start with 1 increment by 5
create table sample1
(
id int primary key ,
name varchar(20)
)
insert into sample1 values(NEXT VALUE FOR EMPID,'Mufeeth')
select * from sample1
insert into sample1 values(NEXT VALUE FOR EMPID,'Sridhar')
insert into sample1 values(NEXT VALUE FOR EMPID,'Gayathri')


--Alter sequence
alter sequence empid restart with 1 increment by 1
create table sample2
(
id int primary key ,
name varchar(20)
)
insert into sample2 values (NEXT VALUE FOR EMPID, 'Umamaheshwari')
insert into sample2 values (NEXT VALUE FOR EMPID, 'Divya')
insert into sample2 values (NEXT VALUE FOR EMPID, 'Boopesh')

select * from sample2

--CHECK THE CURRENT SEQUENCE VALUE
select NEXT VALUE FOR EMPID

--Views
select * from students

create view sports
as
select * from students where SClub=200
select * from sports

--COMPLEX VIEW
create view students_Dept
as
select s.SID,s.SName,s.SClub,s.SDep,d.DeptName from students as s inner join SDepartment as d on s.SDep=d.DID
select * from students_Dept
