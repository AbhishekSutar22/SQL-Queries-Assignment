use abhishek
go

create table Emp
(
Eid int,
Ename varchar(50),
Eadd varchar(50),
Esal int,
Doj varchar(20)
)

insert into Emp values (1,'Abhishek','Pune',50000,'22-03-2002')
insert into Emp values (2,'Manoj','Mumbai',10000,'01-09-2015')
insert into Emp values (3,'Suyog','Satara',20000,'24-06-2013')
insert into Emp values (4,'Nitin','Goa',25000,'05-02-2005')
insert into Emp values (5,'Prashant','Belgaum',30000,'12-04-2011')
insert into Emp values (6,'Pravin','Noida',150000,'08-09-1995')
insert into Emp values (7,'Rohit','Jalgaon',35000,'30-10-2008')
insert into Emp values (8,'Mahesh','Pune',45000,'15-04-2014')

select * from Emp

--1. Find maximun salary of Employee
select * from Emp where Esal=(select max(Esal) from Emp)
-- 6	Pravin	Noida	150000	08-09-1995

--2. Find second maximun salary of Employee
select * from Emp where Esal=(select max(Esal) from Emp where Esal<(select max(Esal) from Emp))
-- 1	Abhishek	Pune	50000	22-03-2002

--3. Name starts with A
select * from Emp where Ename like 'S%'
-- 3	Suyog	Satara	20000	24-06-2013

--4. select all Employee whose salary is 50000,150000,20000
select * from Emp where Esal in(50000,150000,20000)
/* 1	Abhishek	Pune	50000	22-03-2002
3	Suyog	Satara	20000	24-06-2013
6	Pravin	Noida	150000	08-09-1995 */

--5. create a new table with the help of existing table data and structure
select * into Emp2
from Emp

select * from Emp2

--6. Find all Employees records whose salary is Betweeen 30000 to 50000
select * from Emp
where Esal between 30000 and 50000;
/* 1	Abhishek	Pune	50000	22-03-2002
5	Prashant	Belgaum	30000	12-04-2011
7	Rohit	Jalgaon	35000	30-10-2008
8	Mahesh	Pune	45000	15-04-2014  */

--7. write a query to delete more than one record
delete from Emp 
where Eid in(7,8)

select * from Emp






































