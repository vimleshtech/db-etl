
sp_who2

select  *, DATEDIFF(SECOND,StartTime,EndTime) from [dbo].[MyTrace_26_May]
where TextData like 'select%'


create table cust
(
cid int,
cname varchar(100)
)

insert into cust 
values(1,'jatin'),
(2,'chaht'),
(3,'ayush'),
(4,'raman')



insert into cust 
select 1,'jatin'


insert into cust 
select 1,'jatin'
union 
select 11,'jatin'
union 
select 12,'jatin'
union 
select 13,'jatin'

insert into cust 
select 111,'jatin'
union select 22,'jatin'
union select 22,'chaht'
union select 323,'ayush'
union select 2,'raman'
union select 2,'jatin'
union select 2,'jatin'
union select 2,'jatin'
union select 333,'jatin'
union select 13,'jatin'

select * from cust_new 

select * from NEW_DATA


UPDATE C 
SET C.CNAME = D.CNAME 
FROM CUST_NEW AS C INNER JOIN NEW_DATA D
	ON C.CID = D.CID 


select * from cust 