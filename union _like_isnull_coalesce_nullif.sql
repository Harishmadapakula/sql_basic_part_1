/*****************************
UNION LIKE OPERATOR ISNULL() COALESCE() NULLIF()
created by: Harish Madapakula
purpose :practicE
date of created:20/02/2024
******************************/

/***
UNION
1.used to filter the data
2.duplicated data eleminated
3.same no.of coloumns and corresponding columns must have same data types
4. "union all" to keep duplicates ,it is faster

like operator
-------------
1. it is used to get the letter and particular name in the first, last and any position
by using  "%".

***/

--union
use operartions
go

 create table vendor(
 id int primary key,
 name varchar (15) not null,
 adress varchar(25) not null
 )
 go

insert into vendor values(1, 'hari', 'abcde')
insert into vendor values(2, 'giri', 'hygtu')
insert into vendor values(3, 'dini', 'okrtc')
go

select * from vendor
go
  create table customer(
 id int primary key,
 name varchar (15) not null,
 adress varchar(25) not null
 )
 go

insert into customer values(5, 'raju', 'hutres')
insert into customer values(6, 'vasi', 'hryjs')
insert into customer values(7, 'giri', 'hygtu')
insert into customer values(8, 'hytu', 'hygtu')
go

select * from customer
go

select name,adress from vendor
union
select name,adress from customer

--like operator
------------------
select * from CourseMaster
go

select * from CourseMaster 
where Name like 'p%'               -- to get first letter p
 go

 select * from CourseMaster 
  where Name like '%n'        --- to get last letter n
  go

  select * from CourseMaster
  where Name not like '-a%' --- second letter is a
  go


  select * from CourseMaster
  where name like '%ion'--- last word is ion
  go

 select * from CourseMaster
 where name not like '%ion'  --- last word is not ion
 go


