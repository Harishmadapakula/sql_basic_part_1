/***
BASIC SQL QUERRIES PRACTICE
date of creaated:14/12/23
created by:Harish madapakula
purpose:practicing the basic sql querries

***/


use [Indian_bank]
go
--all columns and all rows--
select * from[dbo].[AccountMaster]
go
-- few columns all rows--
select acid,name, address,brid from AccountMaster
go
--all columns but only few rows--
select *  from AccountMaster where BRID>=10 and CBALANCE>=700
go

--few columns and few rows--
-- using [ACID]both select and where co[UBALANCE]ndition--
select [ACID],[BRID],[DOO],[CBALANCE],[UBALANCE]
from AccountMaster
where BRID>=10 and CBALANCE>=100
go

select *, * from accountmaster

/**
"select" function
1. this is printng function.
**/
select 100 num

select acid,cbalance,'INR' as currency from AccountMaster

--sorting--
/**
for sorting we use the order by claue , 
desc= decending order.
asc=assending order.
by default we get as assending order.
**/
select * 
from AccountMaster
order by CBALANCE desc
go

select * 
from AccountMaster
order by NAME asc
go

select * 
from AccountMaster
order by 2desc
go

select acid,name ,CBALANCE, 'INR'as currency
from AccountMaster 
where BRID>=15
order by NAME desc
go

-- concatination--
-- if we want to concatinate we use '+' for combining--
select acid,'miss/mr '+name +' doing work' as costumer_name
from AccountMaster
go

 --to convert one data type to another data  type
 -- there are two types cast functions in sql server
 --cast(col as datatype)
 --convert(datatype,col,stylenum)
select acid, name, cast(CBALANCE AS varchar) +'INR' as currency  
from AccountMaster
go

select acid,name, CONVERT(varchar,doo,2)  as open_Date
from AccountMaster
go

select acid, name, convert(varchar,CBALANCE ) +'INR' as currency
from AccountMaster
go

/******
cast()                                                         convert()
1.It is ANSI function                                    1.it is sql server function
ANSI=american national standrad institue                 2.it is used to convert date and time styles
2.it is used to convert the data types

******/
select * from AccountMaster