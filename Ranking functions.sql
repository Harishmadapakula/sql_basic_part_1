/*****************************
Ranking functions
created by: Harish Madapakula
purpose :practice
date of created:24/02/2024
******************************/
 use Indian_bank
 go
/****
1.ranking functions
---------------------
these are used to provide rnking for rows based on one or more conditions
functions
---------
1.Row_Number()
2.Rank()
3.Dense_Rank()
4.Ntile()-splits the data
5.partion by-groups the data
***/
 --row number()
 -- retuns the row_number starting from while retrieving the data from the table
 -- note
 --a row_number function always followed over function must
  select acid,brid,name,ROW_NUMBER() over(order by brid  asc) as rownumber
  from AccountMaster
  
  --partion by caluse
 select acid,brid,name,cbalance,ROW_NUMBER() over(partition by brid order by cbalance asc) as rownumber
 from AccountMaster

 -- getting nth row
 select * from(
				 select acid,name,brid,cbalance ,Row_number() over(order by brid asc)as Rno
				 from Accountmaster
				 ) as k
where Rno=1

--getting alternative  rows
 select * from(
				 select acid,name,brid,cbalance ,Row_number() over(order by brid asc)as Rno
				 from Accountmaster
				 ) as k
where Rno%2=0

--rank and denserank--
--Dense_rank() gives the continous ranks and where as Rank() doesn't have continuity

select* from(
			select *,RANK()over(order by brid asc) as rank,DENSE_RANK() over(order by brid asc) as drank
			from AccountMaster
			) as K
 where drank=1

---Ntile()-splits the data

select*from(
select* ,NTILE(7) over(order by brid asc)as grop_no
from AccountMaster) as k
where grop_no=2







