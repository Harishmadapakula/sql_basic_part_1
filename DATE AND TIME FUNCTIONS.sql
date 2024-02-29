/*****************************
DATE AND TIME FUNCTIONS
created by: Harish Madapakula
purpose :practicing date and time function
date of created:16/12/2023
******************************/

use Indian_bank
go
--date and time functions are given below--
--getdate()--
select GETDATE() as today_date    --today date
select GETDATE()+1 as tomarrow_date --tomarrow date
select getdate()-1 as yestarday_date --yestarday date
select CONVERT(varchar,GETDATE(),101) as today_date

--2.datediffer(p1,d1,d2)--
--gives difference between two dates shown bellow
select DATEDIFF(yy,'2021/3/09','2025/12/08') as difference  --between years
select DATEDIFF(MM,'2021/3/09','2025/12/08') as difference  --between months
select DATEDIFF(QQ,'2021/3/09','2025/12/08') as difference  --between quaters
select DATEDIFF(WW,'2021/3/09','2025/12/08') as difference  --between weeks
select DATEDIFF(DD,'2021/3/09','2025/12/08') as difference  --betweeen days
select DATEDIFF(HH,'2021/3/09','2025/12/08') as difference  --between hours
select DATEDIFF(SECOND,'2021/3/09','2025/12/08') as difference  --betwee seconds
select DATEDIFF(YY,'1999/08/29',GETDATE()) as difference  
go

select acid,name,cbalance,doo,DATEDIFF(MM,doo,getdate()) as month_differe
from AccountMaster
go
select acid,name,cbalance,doo,DATEDIFF(MM,doo,getdate()) as month_differe
from AccountMaster
where DATEDIFF(MM,doo,getdate())=0

update AccountMaster
 set DOO=GETDATE()
 where ACID in(35,43,1,5,9)

 select *,convert(varchar,doo,103),DATEDIFF(MM,doo,getdate()) as month_differe
 from AccountMaster
 where DATEDIFF(MM,doo,getdate())<8

--3.datepart(p1,d1)
-- gives the particular datedifferences
select DATEPART(dd,getdate()+16)

select acid, name ,cbalance,convert(varchar,doo,101) as DOO ,DATEPART(yy,doo) as year,
'Q'+cast(DATEPART(qq,doo) as varchar)as quater,DATEPART(MM,doo) as month,DATEPART(DD,doo) as day
from AccountMaster
go


