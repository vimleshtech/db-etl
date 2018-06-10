/*
ddl : create , alter , drop , truncate
dml : insert, update, date 
dql  : select

Data type 
Constraints
Where
Operator
Order by
Group By
Functions
Case When 
Union and its type
Join and its type


TL - SQL  : transactional structural query langauge 
==================================================
-declarion of variable
-set statement
-print comamnd
-condition 
-loop 
-procedure 

*/
-- declarion of variable
declare @n1  as int
declare @n2  int
		,@name varchar(100)

set @n1  =100
set @n2 =2333

--select @n1 
--select @n2

--or 
print @n1   -- show message
print @n2	-- show message


set @name  ='nitin'
print @name

-------------------------------
-------------------------------
declare @a  as int
		,@b  int

set @a  =111333
set @b =555

if @a> @b
begin 
	
		print 'a is greater'
end
else
begin
		print 'b is greater'
end

-------------- multiple condition 
declare @a  as int = 1111
		,@b  int   =4444433
		,@c  int    =4555

if @a>@b and @a> @c
begin 
			print 'a is gt'
end 
else if @b>@a and @b> @c
begin

	print 'b is gt'
end
else 
begin
	print 'c is gt'

end


---------------------
-------------------------
--- loop : is iteraor or repeation  of statement
declare @i int 

set @i  = 1  -- init/start

while @i <10   -- condition 
begin

	print @i
	set @i = @i+1  -- incremetn 
end

--------------------------
---------------------------
-- procedure  : is set of sql statement/comand which is precomplied and reusable 
-- -> procedure may or may not return value 
-- -> procedure may or may not take input/argument
-- -> any types of sql command can bre written in procedure
-- -> procedure can return multple values/tables 

-- create procedure 

--EXECUTE / CALL TO PROC
empAction 'G'
empAction 'C'

--OR 

EXEC empAction 'S'
EXEC empAction 'C'
EXECUTE empAction 'S'



-----
-- CREATE PROCEDURE TO INSERT, UDPATE, DELETE ROWS
---



empAction2 'I',111222,'NTINSEE','ABC@GMAIL.COM'

empAction2 'U',111222,'NEWNAME ','ABC@GMAIL.COM'

empAction2 'D',111222,'NEWNAME ','ABC@GMAIL.COM'


---Q : ADD NEW COLUMN PWD IN TABLE
 -- RECORD SHOULD BE INSERTED, UPDATE WHEN PWD LENGTH BETWEEN 8 TO 12

 drop procedure empAction_add_column_pwd1

 ALTER TABLE EMPLOYEE 
				ADD PASSWORD varchar(12);
				
				select * from employee
 
 alter proc emp_sp
 (
 @check varchar(50),
 @ID INT,
@fn varchar(100),
@ln varchar(100),
@g char(1),
@c varchar(100),
@d varchar(200),
@emailid varchar(40),
@mob bigint,
@dob date,
@doj date,
@pwd varchar(12)
 )
as
begin
		IF len(@check) < 8 or len(@check) > 12
		BEGIN 
		print 'Incorrect Input'
		END 		
		ELSE 
		BEGIN
				INSERT INTO employee(eid,fn,ln,gender,country,department,emailid,[mobile no], dob, doj,[PASSWORD])
			SELECT @ID, @fn, @ln, @g, @c, @d, @emailid, @mob, @dob, @doj,@pwd
			END
		end

		
emp_sp dfkhsh3576jdfkf,7001,'Neha','Negi','F','India','IT','Neha@GMAIL.COM',8908765643,'1996-09-23','08-11-2015',53523552

select * from employee