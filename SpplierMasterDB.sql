/**************************************************
case study :
 name		: supplier case study
 author		: Harish Madapakula
 created    : 23rd nov 2023
 purpose    :learning sql
********************************************************/
-- creating database supplier 
create database supplier
go

use supplier
go

--creating table SupplierMaster--
create table SupplierMaster
(
	SID		Int			    Primary Key, 
	NAME	Varchar(40 )	 NULL, 
	CITY	Char(6)			 NOT NULL, 
	GRADE	Tinyint			 NOT NULL check(GRADE > 0 and GRADE <5)

)
go

-- Reading the suplierMaster--
select * from SupplierMaster
go

-- insert into SupplierMaster--
-- Sample records for SupplierMaster table
INSERT INTO SupplierMaster (SID, NAME, CITY, GRADE) VALUES
(1, 'Supplier1', 'CityA', 3),
(2, 'Supplier2', 'CityB', 2),
(3, 'Supplier3', 'CityC', 4),
(4, 'Supplier4', 'CityD', 1),
(5, 'Supplier5', 'CityE', 3),
(6, 'Supplier6', 'CityF', 2),
(7, 'Supplier7', 'CityG', 4),
(8, 'Supplier8', 'CityH', 1),
(9, 'Supplier9', 'CityI', 3),
(10, 'Supplier10', 'CityJ', 2),
(11, 'Supplier11', 'CityK', 4),
INSERT INTO SupplierMaster (SID, NAME, CITY, GRADE) VALUES
(12, 'Supplier11', 'CityK', 4),
INSERT INTO SupplierMaster (SID, NAME, CITY, GRADE) VALUES
(13, 'Sarika Merchants', 'Patna', 3),
INSERT INTO SupplierMaster (SID, NAME, CITY, GRADE) VALUES
(14, 'Rohan Traders', 'Kochi', 2),
(15, 'Meera Suppliers', 'Bhopal', 4),
(16, 'Aryan Enterprises', 'Guwah', 1),
(17, 'Pooja Trading', 'Coimba', 3),
(18, 'Akash Distributors', 'Nagpr', 2),
(19, 'Deepa Industries', 'Surat', 4),
(20, 'Vikas Suppliers', 'Vizag', 1),
(21, 'Priya Merchants', 'Ranchi', 3),
(22, 'Rajat Traders', 'Shimla', 2),
(23, 'Nisha Distributors', 'Jammu', 4),
(24, 'Vinay Industries', 'Gangtk', 1),
(25, 'Swati Suppliers', 'Aizawl', 3),
(26, 'Aditya Trading', 'Jhansi', 2),
(27, 'Geeta Enterprises', 'Trichy', 4),
(28, 'Ankit Industries', 'Jamshd', 1),
(29, 'Nandini Traders', 'Guntur', 3),
(30, 'Rajesh Merchants', 'Kanpur', 2)
go

INSERT INTO SupplierMaster (SID, NAME, CITY, GRADE) VALUES
(31, 'Amit Distributors', 'Cuttck', 4),
(32, 'Neha Industries', 'Agra', 1),
(33, 'Vishal Suppliers', 'Dhanba', 3),
(34, 'Kritika Trading', 'Gwalio', 2),
(35, 'Sanjay Enterprises', 'Gandhi', 4),
(36, 'Shiv Traders', 'Bhuj', 1),
(37, 'Aditi Distributors', 'Amrits', 3),
(38, 'Alok Merchants', 'Dharam', 2),
(39, 'Megha Industries', 'Kozhik', 4),
(40, 'Rahul Suppliers', 'Bhuban', 1),
(41, 'Preeti Trading', 'Ooty', 3),
(42, 'Avinash Traders', 'Palakk', 2),
(43, 'Naina Enterprises', 'Jaisal', 4),
(44, 'Vijay Industries', 'Shillo', 1),
(45, 'Suman Suppliers', 'Durgap', 3),
(46, 'Rohit Trading', 'Kozikh', 2),
(47, 'Sakshi Distributors', 'Nanded', 4),
(48, 'Ankush Merchants', 'Ratlam', 1),
(49, 'Juhi Industries', 'Thane', 3),
(50, 'Alok Traders', 'Gurgon', 2),
(
go

--creating table PartMasterr--
create table PartMaster
(
	PID			TinyInt		     Primary  key, 
	NAME		Varchar(40 )	 NULL,
	PRICE		Money			 NOT NULL, 
	CATEGORY	Tinyint		     NOT NULL check( CATEGORY > 0 and CATEGORY < 4),
	QTYONHAND	Int			     NULL
)
go

-- Reading the PartMaster--
select * from  PartMaster
go

--insert into PartMaster--
-- Sample records for PartMaster table
INSERT INTO PartMaster (PID, NAME, PRICE, CATEGORY, QTYONHAND) VALUES
(1, 'Brake Pad', 150, 1, 50),
(2, 'Oil Filter', 120, 1, 80),
(3, 'Headlight Bulb', 80, 1, 30),
(4, 'Spark Plug', 110, 1, 60),
(5, 'Chain Kit', 250, 1, 40),
(6, 'Brake Disc', 180, 1, 45),
(7, 'Clutch Cable', 130, 1, 25),
(8, 'Air Filter', 100, 1, 70),
(9, 'Tyre Tube', 200, 1, 55),
(10, 'Handle Grips', 90, 1, 35),
(11, 'Car Battery', 300, 2, 20),
(12, 'Brake Caliper', 220, 2, 30),
(13, 'Windshield Wiper', 150, 2, 25),
(14, 'Engine Oil', 130, 2, 40),
(15, 'Radiator Fan', 180, 2, 15),
(16, 'Car Lights Set', 250, 2, 35),
(17, 'Spark Plug Wire Set', 120, 2, 50),
(18, 'Cabin Air Filter', 100, 2, 60),
(19, 'Brake Fluid', 160, 2, 20),
(20, 'Transmission Oil', 140, 2, 30),
(21, 'Bike Mirror Set', 70, 1, 40),
(22, 'Car Alternator', 400, 2, 10),
(23, 'Steering Wheel Cover', 80, 2, 55),
(24, 'Motorcycle Battery', 120, 1, 25),
(25, 'Car Brake Pads', 180, 2, 30),
(26, 'Exhaust Pipe', 200, 1, 20),
(27, 'Car Shock Absorber', 300, 2, 15),
(28, 'Bike Brake Cable', 110, 1, 45),
(29, 'Car Radiator', 250, 2, 25),
(30, 'Bike Sprocket Kit', 160, 1, 35),
(31, 'Car Spark Plugs', 120, 2, 40),
(32, 'Bike Seat Cover', 90, 1, 50),
(33, 'Car Air Filter', 100, 2, 30),
(34, 'Clutch Kit', 180, 1, 20),
(35, 'Car Timing Belt', 150, 2, 35),
(36, 'Bike Footrest', 70, 1, 60),
(37, 'Car Oxygen Sensor', 200, 2, 15),
(38, 'Brake Cable', 130, 1, 25),
(39, 'Car Fuel Pump', 250, 2, 20),
(40, 'Chain Lube', 80, 1, 40),
(41, 'Car Brake Rotors', 180, 2, 30),
(42, 'Horn Kit', 100, 1, 55),
(43, 'Car Headlight Assembly', 300, 2, 10),
(44, 'Clutch Lever', 120, 1, 45),
(45, 'Car Power Steering Pump', 220, 2, 25),
(46, 'Engine Coolant', 150, 2, 35),
(47, 'Bike Brake Fluid', 160, 1, 20),
(48, 'Car Serpentine Belt', 130, 2, 30),
(49, 'Fuel Injector Cleaner', 90, 1, 50),
(50, 'Car Starter Motor', 250, 2, 15)
go

--create table SupplyMaster--
create table SupplyMaster
(
	PID				TinyInt			Foreign Key references PartMaster(PID),
	SID				 Integer		Foreign key references  SupplierMaster(SID),		
	DATEOFSUPPLY	 DateTime		NOT NULL, 
	CITY			Varchar(40)		NOT NULL, 
	QTYSUPPLIED		Integer			NOT NULL
)
go

--reaing the SupplyMaster--
select * from SupplyMaster
go
 
-- insert into SupplyMaster--
-- Sample records for SupplyMaster table
INSERT INTO SupplyMaster (PID, SID, DATEOFSUPPLY, CITY, QTYSUPPLIED) VALUES
(1, 1, '2023-11-23 08:00:00', 'Hyderabad', 100),
(2, 3, '2023-11-24 10:30:00', 'Bangalore', 75),
(3, 5, '2023-11-25 12:45:00', 'Chennai', 50),
(4, 8, '2023-11-26 15:15:00', 'Mumbai', 120),
(5, 12, '2023-11-27 09:30:00', 'Delhi', 90),
(6, 16, '2023-11-28 11:00:00', 'Kolkata', 60),
(7, 20, '2023-11-29 14:00:00', 'Ahmedabad', 80),
(8, 24, '2023-11-30 16:45:00', 'Pune', 110),
(9, 28, '2023-12-01 08:30:00', 'Jaipur', 70),
(10, 32, '2023-12-02 10:00:00', 'Chandigarh', 95)
go
-- Sample records for SupplyMaster table
INSERT INTO SupplyMaster (PID, SID, DATEOFSUPPLY, CITY, QTYSUPPLIED) VALUES
(1, 1, '2023-01-01 08:00:00', 'Hyderabad', 50),
(2, 2, '2023-01-02 09:15:00', 'Bangalore', 30),
(3, 3, '2023-01-03 10:30:00', 'Chennai', 20),
(4, 4, '2023-01-04 11:45:00', 'Mumbai', 40),
(5, 5, '2023-01-05 12:00:00', 'Delhi', 25),
(6, 6, '2023-01-06 13:30:00', 'Kolkata', 35),
(7, 7, '2023-01-07 14:45:00', 'Ahmedabad', 15),
(8, 8, '2023-01-08 15:00:00', 'Pune', 45),
(9, 9, '2023-01-09 16:15:00', 'Jaipur', 25),
(10, 10, '2023-01-10 17:30:00', 'Lucknow', 30),
(11, 11, '2023-01-11 18:45:00', 'Bhopal', 40),
(12, 12, '2023-01-12 19:00:00', 'Indore', 20),
(13, 13, '2023-01-13 20:15:00', 'Chandigarh', 15),
(14, 14, '2023-01-14 21:30:00', 'Dehradun', 35),
(15, 15, '2023-01-15 22:45:00', 'Shimla', 50),
(16, 16, '2023-01-16 23:00:00', 'Srinagar', 30),
(17, 17, '2023-01-17 00:15:00', 'Jammu', 25),
(18, 18, '2023-01-18 01:30:00', 'Amritsar', 40),
(19, 19, '2023-01-19 02:45:00', 'Ludhiana', 20),
(20, 20, '2023-01-20 03:00:00', 'Kanpur', 15),
(21, 21, '2023-01-21 04:15:00', 'Allahabad', 35),
(22, 22, '2023-01-22 05:30:00', 'Varanasi', 45),
(23, 23, '2023-01-23 06:45:00', 'Patna', 25),
(24, 24, '2023-01-24 07:00:00', 'Ranchi', 30),
(25, 25, '2023-01-25 08:15:00', 'Bhubaneswar', 20),
(26, 26, '2023-01-26 09:30:00', 'Raipur', 40),
(27, 27, '2023-01-27 10:45:00', 'Nagpur', 15),
(28, 28, '2023-01-28 11:00:00', 'Nashik', 50),
(29, 29, '2023-01-29 12:15:00', 'Aurangabad', 35),
(30, 30, '2023-01-30 13:30:00', 'Goa', 25),
(31, 31, '2023-01-31 14:45:00', 'Panaji', 30),
(32, 32, '2023-02-01 15:00:00', 'Thiruvananthapuram', 40),
(33, 33, '2023-02-02 16:15:00', 'Kochi', 20),
(34, 34, '2023-02-03 17:30:00', 'Kozhikode', 15),
(35, 35, '2023-02-04 18:45:00', 'Mangalore', 45),
(36, 36, '2023-02-05 19:00:00', 'Bangalore', 30),
(37, 37, '2023-02-06 20:15:00', 'Hubli', 25),
(38, 38, '2023-02-07 21:30:00', 'Belgaum', 40),
(39, 39, '2023-02-08 22:45:00', 'Mysuru', 20),
(40, 40, '2023-02-09 23:00:00', 'Gulbarga', 35),
(41, 41, '2023-02-10 00:15:00', 'Mangalore', 50),
(42, 42, '2023-02-11 01:30:00', 'Udupi', 30),
(43, 43, '2023-02-12 02:45:00', 'Shimoga', 25),
(44, 44, '2023-02-13 03:00:00', 'Davanagere', 15),
(45, 45, '2023-02-14 04:15:00', 'Bellary', 40),
(46, 46, '2023-02-15 05:30:00', 'Bidar', 20),
(47, 47, '2023-02-16 06:45:00', 'Raichur', 25),
(48, 48, '2023-02-17 07:00:00', 'Kolar', 30),
(49, 49, '2023-02-18 08:15:00', 'Tumkur', 45),
(50, 50, '2023-02-19 09:30:00', 'Hassan', 35)

go
-- Sample records for SupplyMaster table
INSERT INTO SupplyMaster (PID, SID, DATEOFSUPPLY, CITY, QTYSUPPLIED) VALUES
(5, 12, '2023-11-01', 'Hyderabad', 30),
(18, 35, '2023-11-02', 'Mumbai', 25),
(10, 8, '2023-11-03', 'Delhi', 40),
(45, 22, '2023-11-04', 'Bangalore', 15),
(27, 42, '2023-11-05', 'Chennai', 20),
(36, 17, '2023-11-06', 'Kolkata', 35),
(14, 31, '2023-11-07', 'Jaipur', 25),
(3, 5, '2023-11-08', 'Lucknow', 30),
(46, 13, '2023-11-09', 'Ahmedabad', 18),
(25, 49, '2023-11-10', 'Pune', 22),
(8, 1, '2023-11-11', 'Hyderabad', 28),
(21, 29, '2023-11-12', 'Mumbai', 32),
(37, 6, '2023-11-13', 'Delhi', 45),
(48, 20, '2023-11-14', 'Bangalore', 12),
(15, 44, '2023-11-15', 'Chennai', 15),
(30, 3, '2023-11-16', 'Kolkata', 38),
(2, 39, '2023-11-17', 'Jaipur', 23),
(12, 26, '2023-11-18', 'Lucknow', 27),
(49, 9, '2023-11-19', 'Ahmedabad', 17),
(32, 47, '2023-11-20', 'Pune', 20),
(9, 2, '2023-11-21', 'Hyderabad', 25),
(44, 24, '2023-11-22', 'Mumbai', 30),
(19, 40, '2023-11-23', 'Delhi', 42),
(7, 15, '2023-11-24', 'Bangalore', 10),
(26, 33, '2023-11-25', 'Chennai', 18),
(41, 11, '2023-11-26', 'Kolkata', 32),
(16, 28, '2023-11-27', 'Jaipur', 26),
(4, 46, '2023-11-28', 'Lucknow', 23),
(50, 36, '2023-11-29', 'Ahmedabad', 14),
(33, 23, '2023-11-30', 'Pune', 21),
(11, 4, '2023-12-01', 'Hyderabad', 27),
(29, 37, '2023-12-02', 'Mumbai', 35),
(6, 14, '2023-12-03', 'Delhi', 40),
(47, 19, '2023-12-04', 'Bangalore', 11),
(24, 45, '2023-12-05', 'Chennai', 16),
(39, 32, '2023-12-06', 'Kolkata', 30),
(13, 7, '2023-12-07', 'Jaipur', 24),
(1, 27, '2023-12-08', 'Lucknow', 29),
(42, 50, '2023-12-09', 'Ahmedabad', 16),
(22, 10, '2023-12-10', 'Pune', 25),
(31, 3, '2023-12-11', 'Hyderabad', 22),
(17, 43, '2023-12-12', 'Mumbai', 28),
(38, 16, '2023-12-13', 'Delhi', 38),
(5, 21, '2023-12-14', 'Bangalore', 13),
(28, 38, '2023-12-15', 'Chennai', 19),
(43, 5, '2023-12-16', 'Kolkata', 34),
(14, 30, '2023-12-17', 'Jaipur', 27),
(3, 45, '2023-12-18', 'Lucknow', 24),
(49, 8, '2023-12-19', 'Ahmedabad', 15),
(32, 49, '2023-12-20', 'Pune', 23),
(10, 1, '2023-12-21', 'Hyderabad', 26),
(45, 28, '2023-12-22', 'Mumbai', 33),
(27, 39, '2023-12-23', 'Delhi', 44),
(36, 14, '2023-12-24', 'Bangalore', 9),
(20, 48, '2023-12-25', 'Chennai', 14),
(31, 7, '2023-12-26', 'Kolkata', 28),
(2, 18, '2023-12-27', 'Jaipur', 23),
(12, 25, '2023-12-28', 'Lucknow', 26),
(50, 9, '2023-12-29', 'Ahmedabad', 16),
(33, 46, '2023-12-30', 'Pune', 19),
(9, 2, '2024-01-01', 'Hyderabad', 24),
(44, 23, '2024-01-02', 'Mumbai', 29),
(19, 38, '2024-01-03', 'Delhi', 41),
(7, 15, '2024-01-04', 'Bangalore', 12),
(26, 32, '2024-01-05', 'Chennai', 17),
(41, 11, '2024-01-06', 'Kolkata', 31)
go
-- Sample records for SupplyMaster table
INSERT INTO SupplyMaster (PID, SID, DATEOFSUPPLY, CITY, QTYSUPPLIED) VALUES
(5, 15, '2023-11-23 10:30:00', 'Hyderabad', 20),
(12, 28, '2023-11-22 09:45:00', 'Mumbai', 15),
(8, 6, '2023-11-21 14:15:00', 'Chennai', 25),
(20, 42, '2023-11-20 12:00:00', 'Delhi', 30),
(4, 9, '2023-11-19 11:00:00', 'Bangalore', 18),
(16, 34, '2023-11-18 08:30:00', 'Kolkata', 22),
(7, 23, '2023-11-17 13:45:00', 'Ahmedabad', 28),
(14, 17, '2023-11-16 16:00:00', 'Pune', 12),
(10, 40, '2023-11-15 10:00:00', 'Jaipur', 15),
(25, 11, '2023-11-14 09:30:00', 'Lucknow', 20),
(6, 31, '2023-11-13 14:45:00', 'Surat', 25),
(22, 50, '2023-11-12 11:15:00', 'Hyderabad', 18),
(18, 5, '2023-11-11 10:00:00', 'Mumbai', 30),
(15, 22, '2023-11-10 12:30:00', 'Chennai', 22),
(9, 38, '2023-11-09 08:45:00', 'Delhi', 15),
(27, 2, '2023-11-08 15:00:00', 'Bangalore', 25),
(13, 35, '2023-11-07 09:00:00', 'Kolkata', 20),
(26, 47, '2023-11-06 11:30:00', 'Ahmedabad', 12),
(21, 14, '2023-11-05 13:45:00', 'Pune', 28),
(17, 10, '2023-11-04 16:15:00', 'Jaipur', 22),
(11, 39, '2023-11-03 10:30:00', 'Lucknow', 18),
(30, 7, '2023-11-02 14:00:00', 'Surat', 15),
(23, 46, '2023-11-01 12:45:00', 'Hyderabad', 25),
(19, 4, '2023-10-31 09:00:00', 'Mumbai', 30),
(16, 20, '2023-10-30 11:30:00', 'Chennai', 18),
(12, 33, '2023-10-29 10:15:00', 'Delhi', 22),
(28, 3, '2023-10-28 14:45:00', 'Bangalore', 15),
(14, 49, '2023-10-27 13:00:00', 'Kolkata', 20),
(7, 26, '2023-10-26 15:30:00', 'Ahmedabad', 25),
(20, 1, '2023-10-25 11:45:00', 'Pune', 12),
(25, 36, '2023-10-24 10:00:00', 'Jaipur', 28),
(8, 43, '2023-10-23 12:30:00', 'Lucknow', 22),
(19, 19, '2023-10-22 09:15:00', 'Surat', 15),
(10, 45, '2023-10-21 14:00:00', 'Hyderabad', 25),
(29, 8, '2023-10-20 11:45:00', 'Mumbai', 30)
go


/**
q1)List the month-wise average supply of parts supplied for all parts. Provide the 
information only if the average is higher than 20.
**/
