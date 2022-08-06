create database task1

use task1

create table worker(
Work_id varchar(10) NOT NULL PRIMARY KEY,
First_Name varchar (30),
Last_Name varchar (30),
Salary varchar(15),
Joining_Date datetime,
Department varchar (30)
)

insert into worker values (001, 'Monika', 'Arora', 100000, '08-06-2022 12:33:00', 'HR')

select * from worker

insert into worker values (002, 'Niharika', 'Verma', 80000, '08-06-2022 12:33:00', 'Admin')
insert into worker values (003, 'Vishal', 'Singhal', 300000, '08-06-2022 12:33:00', 'HR')
insert into worker values (004, 'Amitabh', 'Singh', 500000, '08-06-2022 12:33:00', 'Admin')
insert into worker values (005, 'Vivek', 'Bhati', 500000, '08-06-2022 12:33:00', 'Admin')
insert into worker values (006, 'Vipul', 'Diwan', 200000, '08-06-2022 12:33:00', 'Account')
insert into worker values (007, 'Satish', 'Kumar', 75000, '08-06-2022 12:33:00', 'Account')
insert into worker values (008, 'Geetika', 'Chauhan', 90000, '08-06-2022 12:33:00', 'Admin')

--Q.No:1
select First_Name as Worker_Name from worker;
select * from worker

--Q.No:2
select upper (First_Name) as Worker_Name from worker
select * from worker

--Q.No:3
select distinct Department from worker 

--Q.No:4
select substring (First_Name, 1,3) from worker 

--Q.No:5
select distinct len(Department) from worker 

--Q.No:6
select concat (First_Name, Last_Name) as Complete_Name from worker

--Q.No:7
select * from worker where First_Name in ('Vipul', 'satish') 

--Q.No:8
select * from worker where Department in ('Admin')

--Q.No:9
select * from worker where First_Name like '%[a]'

--Q.No:10
select * from worker where First_Name like '%[a]%'



