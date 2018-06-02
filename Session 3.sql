/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [eid]
      ,[name]
      ,[sal]
  FROM [db_test].[dbo].[emp]

  alter table emp
  add dob date

  --
  use db_test

  select * from dbo.emp

  create table salary
  (
  id int primary key,
  ename varchar(100),
  salary int
  )

  delete emp

  select * from emp

  insert into emp (eid, name, sal)
  values (1, 'abc', 1000)
   insert into emp (eid, name, sal)
  values (2, 'def', 2000)
   insert into emp (eid, name, sal)
  values (3, 'ghi', 3000)
   insert into emp (eid, name, sal)
  values (4, 'jkl', 4000)
   insert into emp (eid, name, sal)
  values (5, 'abc', 5000)

select * from emp


select top 1 * from
  (select top 2* from emp order by sal desc)
a order by sal asc

select top 1 * from
(select top 3* from emp order by sal asc)
a order by sal desc




--function 

select GETDATE()
select  datepart(year,GETDATE())
select  datepart(MONTH,GETDATE())

select  datepart(DAY,GETDATE())
select  datepart(DAYOFYEAR,GETDATE())
select  datepart(WEEK,GETDATE())
select  datepart(HOUR,GETDATE())
select  datepart(MINUTE,GETDATE())



select  DATEADD(year,10,getdate())


select  DATEADD(year,10,'2010-11-01')

select DATEDIFF(day,'1990-11-10',GETDATE())

select DATEDIFF(YEAR,'1990-11-10',GETDATE())

update emp 
set dob  ='1990-11-01'
where eid =1

update emp 
set dob = '1983-08-24'
where eid=2

update emp 
set dob = '1996-08-14'
where eid=3

update emp 
set dob = '1992-06-07'
where eid=4

update emp 
set dob = '1995-06-02'
where eid=5


select *, DATEDIFF(YEAR,emp.dob,GETDATE()) as age from emp


--show list of employee whose b'day is today or will come in  next 5 days 

select * from emp 
where ((DATEPART(Month, dob) = DATEPART(Month, GETDATE())) and (DATEPART(DAY, dob) =  DATEPART(DAY, GETDATE())))
OR ((DATEPART(Month, dob) = DATEPART(Month, GETDATE())) and (DATEPART(DAY, dob) =  DATEADD(DAY, 5, GETDATE())))
 
select * from emp 
	where datepart(mm,dob) = datepart(mm,getdate())
			and 
			(
			datepart(day,dob) = datepart(DAY,getdate())
			
			or

			datepart(day,dob) between  datepart(DAY,getdate()) and datepart(DAY,getdate()+5)

			)

