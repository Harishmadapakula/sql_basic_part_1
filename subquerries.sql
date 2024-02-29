/*****************************
Sub querries ,corelated querries,derived tables and cube and roll up
created by: Harish Madapakula
purpose :practice
date of created:23/02/2024
******************************/

use Indian_bank
go
 /**
 --sub querry
 a querry which written in where/select/ having class 
 
 **/
 select max(cbalance) as maximum
  from AccountMaster
  order by cbalance desc
  go

  select * from AccountMaster
  where CBALANCE in ( select max(cbalance) from AccountMaster)

  -- nth higest max balance

  /***
  logic
  1.sort the a data
  2.distinct the data
  3.pick top rows
  4.find min()
  5.identify the name
  *****/

  select acid,name,cbalance-(select AVG(cbalance)  from AccountMaster) as diff
   from AccountMaster
   go

 select * from AccountMaster
 where cbalance=(
					 select MIN(cbalance) from AccountMaster
					  where CBALANCE in(
								 select distinct top 6 cbalance 
								 from AccountMaster
								 order by CBALANCE desc
                                     )
                                     )
 go
/******
corelated querries
1.both innere and outer querry  are depend on one by one so that they excited parellal.
2.inner querry dependent on outer querry
3.excutes top to bottom

***/

--Q1) same cbalance name
select * from AccountMaster 
where CBALANCE in

(
					select cbalance 
					from AccountMaster
					group by CBALANCE
					having COUNT(*) >1
					)
					order by CBALANCE desc
go

select NAME,CBALANCE from AccountMaster
where ACID  in(
	   select distinct acid
        from TransactionMaster
		)
go

/****
exsists()
-which is used tom  check true or false
***/
select name,cbalance from AccountMaster as am
where   exists (
				select * from TransactionMaster as tm
				where am.ACID=tm.ACID
	)
	order by  cbalance desc
go
/***
derived data:
a queery in from clause is called derived table
***/
--derived table daata
select * from AccountMaster as am 
join     (
				select acid,COUNT(*)as cnt
				from TransactionMaster
				where YEAR (DOT)=2023
				group by ACID 
				having COUNT(*)=1
			) as tm
			on am.ACID= tm.acid
go

--sample cube querry
select   pid,brid 
from accountmaster
group by pid,brid with cube
go

--creating table items
create table item(
 item varchar(20) not null,
 color varchar(10) not null,
 qty int not null
)
go

-- insert the values
insert into item(item,color,qty) values
('chair','blue',10),
('table','blue',10),
('chair','black',15),
('table','black',12),
('chair','red',8),
('table','red',10)
go
insert into item values('chair','blue',14)

--cube word querry
select item,color,SUM(qty)
from item 
group by item,color with cube
go