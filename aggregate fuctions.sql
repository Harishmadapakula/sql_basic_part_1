/***************************************
PRACTICING THE AGGREGATE FUNCTIONS
Date of created:14/12/23
created by:Harish Madapakula
purpose:to practice the aggregate functions
***************************************/
 use Indian_bank
 go

 --1.COUNT(*)-->used for counting no of rows in a table
 select COUNT(*) as[no of custmoers]
 from AccountMaster
 go

 select COUNT(*) as 'total no of costmoers in branch'
 from AccountMaster
 where BRID=1 or BRID=5
 go
 
 select COUNT(*) 
 from AccountMaster
 where BRID in(1,3,7,10,11) -- in function is used to reduce the sytax
 go

 --2.SUM(colname)-->it is used to get total value 
 select * from AccountMaster
 select SUM(cbalance) as TotalBalance
 from AccountMaster
 go
 select SUM(ubalance) as UnBalance 
 from AccountMaster
 go
 select SUM(cbalance) as TotalBalance, SUM(uBalance) as UnBalance
 from AccountMaster
 go


 --3.MIN(COLNAME)-->used to get minimum value
 select MIN(cbalance) as mini_bal_in_cbal
 from AccountMaster
 go

 select MIN(ubalance) as mini_bal_in_ubal
 from AccountMaster
 go

 select MIN(cbalance) as mini_bal_in_cbal,MIN(ubalance) as mini_bal_in_ubal
 from AccountMaster
 go


 --4.MAX(colname)-->used to get maximum value
 select Max(cbalance) as max_bal_in_cbal
 from AccountMaster
 go

 select Max(UBALANCE) as max_bal_in_cbal
 from AccountMaster
 go

select Max(cbalance) as max_bal_in_cbal,Max(ubalance) as max_bal_in_ubal
from AccountMaster
go



 --5.AVG(colname)-->used to get avrage value
  select avg(cbalance) as avg_bal_in_cbal
 from AccountMaster
 go

 select avg(UBALANCE) as avg_bal_in_cbal
 from AccountMaster
 go


select avg(cbalance) as avg_bal_in_cbal,avg(ubalance) as avg_bal_in_ubal
from AccountMaster
go


--all aggregartions functions --
select count(CBALANCE) as  NO_of_costmers,
       sum(Cbalance) as totalbalance,
	   max(cbalance) as maxbalance,
	   min(cbalance) as minimumbalance,
	   AVG(CBALANCE) as avaragebalance
from AccountMaster
where BRID in(1,3,5,6,20,12,11)
go

select count(UBALANCE) as  NO_of_costmers,
       sum(UBALANCE) as totalbalance,
	   max(UBALANCE) as maxbalance,
	   min(UBALANCE) as minimumbalance,
	   AVG(uBALANCE) as avaragebalance
from AccountMaster
where BRID in(1,3,5,6,20,12,11)
go

-- group by claue--

select brid,count(1) as No_costmers
from accountmaster
group by brid
go

select brid,pid,count(1) as No_costmers
from accountmaster
where UBALANCE<=700
group by brid,pid
order by brid
go

select  brid,count(*),SUM(cbalance),AVG(cbalance)
from AccountMaster
where PID in('p1','p2')
group by brid
go
--any field select in clause must be present in the 
--group by clause in the same order but not vice versa
/*********
purpose of the gruopby cluse
1.group by clause is used to next to agrigate function.
2.don't use group by clause with out aggregation function.
note: group by clause must be used along with the aggritation functions

**********/
select distinct brid
from AccountMaster
--distinct is used to get no of records are present in the table