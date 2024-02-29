/*****************************
String functions
created by: Harish Madapakula
purpose :practice
date of created:22/02/2024
******************************/
use Indian_bank 
go
select @@SERVERNAME


/******
1.upper()--to show leeters in uppercase
2.lower()--to convert in lowercase
3.left()--to  get left string--ex :left(name,4)
4.right()-- to get right string--ex:right(name,4)
5.reverse()--to reverse the string
6.len()--to get length of the string
7.ltrim()-- to remove left spaces
8.rtrim()-- to remove right spaces
9.trim-- to remove both spaces
10.substring()-- to get sub-string in a string ()
11.replace()--to replace the paricular string with another string
12.stuff()--without condition it works
13.space()--it give space in btw the strings
14.cancat()--used to add to strings
15.cancat_ws()--used to add two strings with spaces in btw
16.CHARINDEX()-to get index of the character in the string
17.PATINDEX()-- to check the start of a paricular string 
                in the pharse and returns the position of charater
18.String_agg()--it is used to combine the data  who has same column data

*****/
select * from AccountMaster
go


--operatons on strings
select name,UPPER(name) as uppername,LOWER(name) as lowername
from AccountMaster
go

select name,RIGHT(name,3) as rightname, LEFT(name,3) as leftname
from AccountMaster
go

select * from AccountMaster
go


select name,REVERSE(NAME) as reversename
from AccountMaster
go

select name ,LEN(name) as length
from AccountMaster
order by length desc
go

select name,LTRIM(name) as lefttrim,RTRIM(name)as righttrim,TRIM(name)as fulltrim
from AccountMaster
go


select name,SUBSTRING(name,1,4) as substring
from AccountMaster
go

select name,REPLACE(name,'o','m') as replacename
from AccountMaster
go

select name,STUFF(name,1,2,'q') as stuffname
from AccountMaster
go

--stuff works without condition
--replace works with name
select * from AccountMaster
go

select name,address,CONCAT( name, address) as concatenation
from AccountMaster
go
 select name,address,CONCAT( ',,,',name,',,,', address) as concatenation
from AccountMaster
go
  
select CHARINDEX('m','damodhar')
select name,CHARINDEX('a',name)
from AccountMaster
go

--split the name by the space
select name,
	Substring(name,1,CHARINDEX(' ', name)-1)as firstname,
	substring(name,CHARINDEX(' ', name)+1,len(name)-CHARINDEX(' ',name))as lastname
from AccountMaster
go

select name,CHARINDEX(' ',name)-1
from AccountMaster
go

select* from AccountMaster
go
select STRING_AGG(brid,' ') as col
from AccountMaster
go

create table s_emp(
eid int not null,
name VARCHAR(20) NOT NULL
)
GO
INSERT INTO s_emp values(1,'hari')
INSERT INTO s_emp values(1,'krishna')
INSERT INTO s_emp values(2,'mighty')
INSERT INTO s_emp values(2,'raju')
INSERT INTO s_emp values(3,'vamsi')
INSERT INTO s_emp values(3,'krishna')

select eid,STRING_AGG(name,' ') as fullname 
from s_emp
group by eid
go

--between operator
select * from AccountMaster
where CBALANCE between 2000 and 6000
go

--
select * from AccountMaster
where year(doo) between 2023 and 2025
go

select MAX(cbalance) as maximum, MIN(cbalance) as minimum
from AccountMaster
go

-- case operator
select name,cbalance,ubalance,
	case
	when cbalance<=1000   then 'silver'
	when cbalance between 1001 and 2000 then 'gold'
	when cbalance between 2001 and 3000 then 'daimond'
	else 'platinum'
	end as acnttype
from accountmaster
go