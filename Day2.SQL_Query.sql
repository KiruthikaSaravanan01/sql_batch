create database new_query

create table employees
(
EID int primary key,
EName varchar (20) not null,
EDesignation varchar (20) not null,
)

insert into employees values (1, 'John', 'Admin')
select * from employees
insert into employees (EID, EName, EDesignation) values (3, 'sathish', 'Developer')

update employees set EName = 'Kiruthika' where EID = 1
insert into employees (EID,EName, EDesignation) values (3, 'Sangeetha', 'Developer')
update employees set EID = 2 where EName = 'Sathish'
