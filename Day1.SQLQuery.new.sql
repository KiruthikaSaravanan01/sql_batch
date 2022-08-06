create database Sql_query

create table tab1
(
EID int,
EName varchar(20),
EContact varchar (10),
Designation varchar (30),
)
select * from tab1

insert into tab1 values (1, 'Kiruthika', 9865104235, 'Developer')
insert into tab1 values (2, 'Sathish', 8012120222, 'UI Developer')
insert into tab1 values (3, 'Sangeetha', 7373123123, 'Developer')
insert into tab1 values (4, 'Yuvaraj', 9952522309, 'Developer')

update tab1 set EName = 'Gayathri' where Eid = 3

delete from tab1 where EID = 4

alter table tab1 add ESalary varchar (10)

update tab1 set ESalary =20000 where EID = 1
update tab1 set ESalary =30000 where EID = 2
update tab1 set ESalary =40000 where EID = 3

alter database Sql_query modify Name = Query_Sql

select ESalary as Salary from tab1
select * from tab1 where EID = 1 

select * from tab1 where ESalary > 25000
select * from tab1 where ESalary <= 25000

select * from tab1 where Esalary >25000 AND Designation = 'Designer' 
select * from tab1 where Esalary <25000 OR Designation = 'Designer'
select * from tab1 where Esalary between 25000 and 30000 
select * from tab1 where EID in (1)
select * from tab1 where EID not in (1)
select * from tab1 where Designation in ('Developer')


select * from tab1 where EName like 's%'
select * from tab1 where EName not like 's%'
select * from tab1 where EName like '[a - g]%'


