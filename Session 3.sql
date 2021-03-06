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
-----------------------------------------------------

 create table student
  (
  sid int primary key,
  sname varchar(100),
  hs int,
  es int,
  ms int,
  cs int
  )

  
  insert into student(sid, sname, hs, es, ms, cs)
  values (1, 'jatin', 70, 80, 90, 60)
   insert into student (sid, sname, hs, es, ms, cs)
  values (2, 'sonia', 60, 70, 80, 90)
   insert into student (sid, sname, hs, es, ms, cs)
  values (3, 'ankit', 80, 70, 60, 90)
   insert into student (sid, sname, hs, es, ms, cs)
  values (4, 'sam', 60, 50, 60, 70)
   insert into student (sid, sname, hs, es, ms, cs)
  values (5, 'palak', 50, 50, 70, 60)

  select sid, sname, (hs+cs+es+ms) as total_score from student

  select sid, (hs+cs+es+ms)/4 as average from student

  SELECT 
		  SID, 
		  SNAME, 
		  (HS+CS+ES+MS) AS TOTAL_SCORE, 
		  (HS+CS+ES+MS)/4 AS AVERAGE ,

		  CASE WHEN (HS+CS+ES+MS)/4 > 80 
				THEN 
							'A'
			ELSE	CASE WHEN (HS+CS+ES+MS)/4 > 60
					THEN 
						 'B'
				  ELSE 
						 'C'
				  END
				END  AS GRADE
  FROM STUDENT

  SELECT * FROM student

 CREATE VIEW STUDENT_VIEW
  AS 
  SELECT 
		  SID, 
		  SNAME, 
		  (HS+CS+ES+MS) AS TOTAL_SCORE, 
		  (HS+CS+ES+MS)/4 AS AVERAGE ,

		  CASE WHEN (HS+CS+ES+MS)/4 > 80 
				THEN 
							'A'
			ELSE	CASE WHEN (HS+CS+ES+MS)/4 > 60
					THEN 
						 'B'
				  ELSE 
						 'C'
				  END
				END  AS GRADE
  FROM STUDENT

 SELECT top 2 * FROM STUDENT_VIEW
  wh


(select top 3* from emp order by sal asc)
a order by sal desc


SELECT * FROM STUDENT_VIEW 

select top 3* from STUDENT_VIEW


select top 1 * from
(select top 5* from STUDENT_VIEW order by TOTAL_SCORE desc)
a order by TOTAL_SCORE


select * from salary

insert into salary(sid, employeeid, hra, basic)
  values (5, 5, 10000, 30000)

select * from employee

delete from employee

  insert into employee(id, name, gender)
  values (1, 'jatin', 'm')
   insert into employee (id, name, gender)
  values (2, 'sonia', 'f')
   insert into employee (id, name, gender)
  values (3, 'ankit', 'm')
   insert into employee (id, name, gender)
  values (4, 'sam', 'm')
   insert into employee (id, name, gender)
  values (5, 'palak', 'f')

  select * from employee
  select * from salary

  select e.id, e.name, (s.hra+s.basic) as total_salary, (s.hra+s.basic)*12 as per_annum_salary  
  from employee as e inner join salary as s 
  on e.id = s.employeeid

  SELECT 
		  e.id, 
		  e.name, 
		  (s.hra+s.basic) as total_salary, 
		  (s.hra+s.basic)*12 as per_annum_salary,

		  CASE WHEN ((s.hra+s.basic)*12) between 0 and 300000 
				THEN 
							'NO TAX'
			ELSE	CASE WHEN ((s.hra+s.basic)*12) between 300001 and 500000
					THEN 
						 '5%'
				  ELSE CASE WHEN ((s.hra+s.basic)*12) between 500001 and 1000000
					THEN 
						 '20%'
						 ELSE '30%'
				  
				  END
				  END
				END  AS TAX_PERCENTAGE
  FROM employee as e inner join salary as s 
  on e.id = s.employeeid
