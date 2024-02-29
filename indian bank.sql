/**************************************************
case study :
 name		: bank database
 author		: Harish Madapakula
 created    : 22nd nov 2023
 purpose    :learning sql     
********************************************************/
-- creating bank database
create database Indian_bank
go

use Indian_bank
go

-- create table account master
create table AccountMaster
(	
		ACID	 int				Primary Key, 
		NAME	 VARCHAR(40)		NOT NULL,
		ADDRESS	 VARCHAR(50)		NOT NULL,
		BRID	 CHAR(3)			NOT NULL, --fk
		PID		 CHAR(2)			NOT NULL,--FK 
	    DOO		 DATETIME           NOT NULL,
		CBALANCE MONEY			    NULL ,
		UBALANCE MONEY              NULL, 
		STATUS   CHAR(1)			not null check (STATUS = 'O'  or STATUS = 'I' or STATUS = 'C' )


)
go

-- create table ProductMaster
create table ProductMaster
(
	PID			CHAR(2)		 Primary Key, 
	PNAME		VARCHAR(15)	 NOT NULL
)
go

-- create table RegionMaster 
 create table RegionMaster
 (
	 RID			INt		 Primary Key ,
	 RegionName		CHAR(6)  NOT NULL 
 )
 
 go

 -- create table BranchMaster 
  create table BranchMaster 
 (
	 BRID			CHAR(3)			    Primary Key ,
	 BranchName		VARCHAR(30)		  	NOT NULL ,
	 BranchAddress	VARCHAR(50)			NOT NULL ,
	 RID				INT					NOT NULL Foreign Key references RegionMaster(RID)
 )
 go

   -- create table UserMaster 
 create table  UserMaster 
 (
		USERID			INT				 Primary Key,
		USERNAME		VARCHAR(30)	    NOT NULL ,
		DESIGNATION		CHAR(1)        NOT NULL check(DESIGNATION ='M' or  DESIGNATION = 'T' or DESIGNATION ='')

 ) 
 go

    -- create table TransactionMaster
 create table TransactionMaster
 (
		 TNO		 INT	        Primary Key Identity(1,1),
		DOT			 DATETIME		NOT NULL, 
		ACID		 INTEGER		NOT NULL Foreign Key references AccountMaster(ACID),
		BRID		 CHAR(3)		NOT NULL Foreign Key references  BranchMaster( BRID),
		TXN_TYPE     CHAR(3)        NOT NULL check(TXN_TYPE ='CW' or TXN_TYPE ='CD' or TXN_TYPE ='CQD'),
	    CHQ_NO       INT            NULL, 
	    CHQ_DATE    SMALLDATETIME   NULL,
	   TXN_AMOUNT   MONEY           NOT NULL ,
	   USERID       INT             NOT NULL Foreign Key references UserMaster( USERID )

 )
go

--read the AccountMastr table
select *  from AccountMaster
go

 -- read table ProductMaster
 select *from ProductMaster   
 go

 -- read table RegionMaster
 select *from RegionMaster
 go

 -- read table  BranchMaster 
 select *from  BranchMaster 
 go

 -- read table UserMaster 
 select *from  UserMaster 
 go
 
-- read table TransactionMaster 
 select *from  TransactionMaster 
 go

--inserting into AccountMaster--
-- Inserting records into the AccountMaster table
INSERT INTO AccountMaster (ACID, NAME, ADDRESS, BRID, PID, DOO, CBALANCE, UBALANCE, STATUS)VALUES 
    (1, 'John Doe', '123 Main St', '001', 'P1', '2023-01-01', 1000.00, 800.00, 'O'),
    (2, 'Jane Smith', '456 Oak St', '002', 'P2', '2023-02-15', 1500.00, 1200.00, 'I'),
    (3, 'Bob Johnson', '789 Pine St', '003', 'P3', '2023-03-20', 2000.00, 1800.00, 'O'),
    (4, 'Alice Brown', '101 Elm St', '001', 'P4', '2023-04-10', 1200.00, 1000.00, 'C'),
    (5, 'Charlie Wilson', '202 Maple St', '002', 'P5', '2023-05-05', 1800.00, 1500.00, 'I'),
    (6, 'Eva Davis', '303 Birch St', '003', 'P1', '2023-06-08', 2200.00, 2000.00, 'O'),
    (7, 'Frank White', '404 Cedar St', '001', 'P2', '2023-07-12', 1300.00, 1100.00, 'O'),
    (8, 'Grace Taylor', '505 Walnut St', '002', 'P3', '2023-08-18', 1600.00, 1400.00, 'C'),
    (9, 'Harry Miller', '606 Pineapple St', '003', 'P4', '2023-09-22', 1900.00, 1700.00, 'I'),
    (10, 'Ivy Green', '707 Banana St', '001', 'P5', '2023-10-30', 2100.00, 1900.00, 'O')
go

INSERT INTO AccountMaster (ACID, NAME, ADDRESS, BRID, PID, DOO, CBALANCE, UBALANCE, STATUS)VALUES
    (11, 'Ravi Kumar', '123 Main Street', '001', 'IN', '2023-01-01', 1000.00, 500.00, 'O'),
    (12, 'Priya Sharma', '456 Park Avenue', '002', 'TN', '2023-02-15', 1500.00, 800.00, 'I'),
    (13, 'Amit Singh', '789 Oak Lane', '003', 'KA', '2023-03-20', 2000.00, 1200.00, 'C'),
    (14, 'Neha Patel', '101 Maple Road', '001', 'MH', '2023-04-05', 800.00, 400.00, 'O'),
    (15, 'Suresh Verma', '202 Cedar Court', '002', 'GJ', '2023-05-10', 3000.00, 2000.00, 'I'),
    (16, 'Meera Agarwal', '303 Pine Avenue', '003', 'UP', '2023-06-25', 2500.00, 1800.00, 'C'),
    (17, 'Rajesh Yadav', '404 Elm Street', '001', 'KA', '2023-07-12', 1200.00, 900.00, 'O'),
    (18, 'Anita Desai', '505 Birch Lane', '002', 'TN', '2023-08-18', 1800.00, 1500.00, 'I'),
    (19, 'Vikram Joshi', '606 Cedar Court', '003', 'GJ', '2023-09-23', 2200.00, 1600.00, 'C'),
    (20, 'Sarika Kapoor', '707 Maple Road', '001', 'MH', '2023-10-30', 1300.00, 700.00, 'O'),
    -- Add more records as needed
    (21, 'Arun Sharma', '808 Oak Lane', '002', 'UP', '2023-11-15', 1900.00, 1400.00, 'I'),
    (22, 'Pooja Singh', '909 Pine Avenue', '003', 'KA', '2023-12-22', 2700.00, 2200.00, 'C'),
    (23, 'Sanjay Verma', '121 Cedar Court', '001', 'TN', '2024-01-07', 1600.00, 1100.00, 'O'),
    (24, 'Divya Agarwal', '232 Birch Lane', '002', 'MH', '2024-02-12', 2300.00, 1700.00, 'I'),
    (25, 'Rohan Desai', '343 Maple Road', '003', 'GJ', '2024-03-18', 1400.00, 1000.00, 'C'),
    (26, 'Anjali Kapoor', '454 Elm Street', '001', 'UP', '2024-04-25', 2000.00, 1500.00, 'O'),
    (27, 'Alok Yadav', '565 Cedar Court', '002', 'KA', '2024-05-30', 1800.00, 1200.00, 'I'),
    (28, 'Nisha Joshi', '676 Oak Lane', '003', 'TN', '2024-06-15', 2500.00, 2000.00, 'C'),
    (29, 'Sunil Agarwal', '787 Pine Avenue', '001', 'MH', '2024-07-22', 1200.00, 900.00, 'O'),
    (30, 'Mamta Kapoor', '898 Birch Lane', '002', 'GJ', '2024-08-27', 1900.00, 1500.00, 'I')
go

INSERT INTO AccountMaster (ACID, NAME, ADDRESS, BRID, PID, DOO, CBALANCE, UBALANCE, STATUS)VALUES
(31, 'Aarav Sharma', '123 Main Street', '001', 'IN', '2023-01-01', 1000.00, 500.00, 'O'),
(32, 'Aanya Kapoor', '456 Oak Avenue', '002', 'UP', '2023-02-01', 1500.00, 800.00, 'I'),
(33, 'Advait Patel', '789 Elm Road', '003', 'MH', '2023-03-01', 2000.00, 1200.00, 'C'),
(34, 'Ananya Singh', '321 Pine Lane', '004', 'KA', '2023-04-01', 1200.00, 600.00, 'O'),
(35, 'Arjun Yadav', '654 Cedar Drive', '005', 'TN', '2023-05-01', 1800.00, 1000.00, 'I'),
(36, 'Avni Verma', '987 Birch Trail', '006', 'DL', '2023-06-01', 2500.00, 1500.00, 'C'),
(37, 'Aryan Reddy', '234 Maple Street', '007', 'AP', '2023-07-01', 3000.00, 2000.00, 'O'),
(38, 'Amaira Kumar', '567 Oak Avenue', '008', 'HR', '2023-08-01', 1600.00, 900.00, 'I'),
(39, 'Advika Gupta', '890 Elm Road', '009', 'RJ', '2023-09-01', 2200.00, 1300.00, 'C'),
(40, 'Ahaan Singh', '432 Pine Lane', '010', 'GJ', '2023-10-01', 1300.00, 700.00, 'O'),
(41, 'Anvi Patel', '765 Cedar Drive', '011', 'MP', '2023-11-01', 1900.00, 1100.00, 'I'),
(42, 'Aarohi Sharma', '098 Birch Trail', '012', 'PB', '2023-12-01', 2600.00, 1600.00, 'C'),
(43, 'Aadit Reddy', '321 Maple Street', '013', 'KL', '2024-01-01', 3100.00, 2100.00, 'O'),
(44, 'Aanya Gupta', '654 Oak Avenue', '014', 'BR', '2024-02-01', 1700.00, 950.00, 'I'),
(45, 'Arnav Yadav', '987 Elm Road', '015', 'TG', '2024-03-01', 2300.00, 1400.00, 'C'),
(46, 'Aadya Verma', '234 Pine Lane', '016', 'KA', '2024-04-01', 1400.00, 750.00, 'O'),
(47, 'Advit Kumar', '567 Cedar Drive', '017', 'MH', '2024-05-01', 2000.00, 1200.00, 'I'),
(48, 'Anika Singh', '890 Birch Trail', '018', 'UP', '2024-06-01', 2700.00, 1700.00, 'C'),
(49, 'Aarav Reddy', '432 Maple Street', '019', 'TN', '2024-07-01', 3200.00, 2200.00, 'O'),
(50, 'Anvi Kapoor', '765 Oak Avenue', '020', 'DL', '2024-08-01', 1800.00, 1000.00, 'I')
go


 


 -- Inserting sample data into ProductMaster table 
INSERT INTO ProductMaster (PID, PNAME)VALUES
	('01', 'Product_A'),
	('02', 'Product_B'),
	('03', 'Product_C'),
	('04', 'Product_D'),
	('05', 'Product_E'),
	('06', 'Product_F'),
	('07', 'Product_G'),
	('08', 'Product_H'),
	('09', 'Product_I'),
	('10', 'Product_J'),
	('11', 'Product_K'),
	('12', 'Product_L'),
	('13', 'Product_M'),
	('14', 'Product_N'),
	('15', 'Product_O'),
	('16', 'Product_P'),
	('17', 'Product_Q'),
	('18', 'Product_R'),
	('19', 'Product_S'),
	('20', 'Product_T'),
	('21', 'Product_U'),
	('22', 'Product_V'),
	('23', 'Product_W'),
	('24', 'Product_X'),
	('25', 'Product_Y'),
	('26', 'Product_Z'),
	('27', 'Product_AA'),
	('28', 'Product_BB'),
	('29', 'Product_CC'),
	('30', 'Product_DD'),
	('31', 'Product_EE'),
	('32', 'Product_FF'),
	('33', 'Product_GG'),
	('34', 'Product_HH'),
	('35', 'Product_II'),
	('36', 'Product_JJ'),
	('37', 'Product_KK'),
	('38', 'Product_LL'),
	('39', 'Product_MM'),
	('40', 'Product_NN'),
	('41', 'Product_OO'),
	('42', 'Product_PP'),
	('43', 'Product_QQ'),
	('44', 'Product_RR'),
	('45', 'Product_SS'),
	('46', 'Product_TT'),
	('47', 'Product_UU'),
	('48', 'Product_VV'),
	('49', 'Product_WW'),
	('50', 'Product_XX')
go





-- Inserting sample data into RegionMaster table
INSERT INTO RegionMaster (RID, RegionName)VALUES
	(1, 'East'),
	(2, 'West'),
	(3, 'North'),
	(4, 'South'),
	(5, 'Cntr'),
	(6, 'Nrth'),
	(7, 'Suth'),
	(8, 'Ewst'),
	(9, 'Nwst'),
	(10, 'Sest'),
	(11, 'Wnth'),
	(12, 'Snth'),
	(13, 'Enth'),
	(14, 'Weth'),
	(15, 'Neth'),
	(16, 'Ehst'),
	(17, 'Wist'),
	(18, 'Nest'),
	(19, 'Sest'),
	(20, 'Cest'),
	(21, 'Nrth'),
	(22, 'Srth'),
	(23, 'Wnth'),
	(24, 'Enth'),
	(25, 'East'),
	(26, 'West'),
	(27, 'North'),
	(28, 'South'),
	(29, 'Cntr'),
	(30, 'Nrth'),
	(31, 'Suth'),
	(32, 'Ewst'),
	(33, 'Nwst'),
	(34, 'Sest'),
	(35, 'Wnth'),
	(36, 'Snth'),
	(37, 'Enth'),
	(38, 'Weth'),
	(39, 'Neth'),
	(40, 'Ehst'),
	(41, 'Wist'),
	(42, 'Nest'),
	(43, 'Sest'),
	(44, 'Cest'),
	(45, 'Nrth'),
	(46, 'Srth'),
	(47, 'Wnth'),
	(48, 'Enth'),
	(49, 'East'),
	(50, 'West')
go



 -- Inserting sample data into BranchMaster table
INSERT INTO BranchMaster (BRID, BranchName, BranchAddress, RID)VALUES
('001', 'East Branch', '123 Main Street, East City', 1),
('002', 'West Branch', '456 Oak Avenue, West City', 2),
('003', 'North Branch', '789 Elm Road, North City', 3),
('004', 'South Branch', '321 Pine Lane, South City', 4),
('005', 'Central Branch', '654 Cedar Drive, Central City', 5),
('006', 'Northeast Branch', '987 Birch Trail, Northeast City', 6),
('007', 'Southwest Branch', '234 Maple Street, Southwest City', 7),
('008', 'East Central Branch', '567 Oak Avenue, East Central City', 8),
('009', 'Northwest Branch', '890 Elm Road, Northwest City', 9),
('010', 'Southeast Branch', '432 Pine Lane, Southeast City', 10),
('011', 'West North Branch', '765 Cedar Drive, West North City', 11),
('012', 'South North Branch', '098 Birch Trail, South North City', 12),
('013', 'East Southeast Branch', '321 Maple Street, East Southeast City', 13),
('014', 'West Southwest Branch', '654 Oak Avenue, West Southwest City', 14),
('015', 'North Central Branch', '987 Elm Road, North Central City', 15),
('016', 'South Central Branch', '234 Pine Lane, South Central City', 16),
('017', 'East Northeast Branch', '567 Cedar Drive, East Northeast City', 17),
('018', 'West Northwest Branch', '890 Birch Trail, West Northwest City', 18),
('019', 'South Southeast Branch', '432 Maple Street, South Southeast City', 19),
('020', 'North Southwest Branch', '765 Oak Avenue, North Southwest City', 20)
go

-- Inserting 50 sample records into the UserMaster table
INSERT INTO UserMaster (USERID, USERNAME, DESIGNATION)
VALUES 
(1, 'John Doe', 'M'),
(2, 'Jane Smith', 'T'),
(3, 'Alice Johnson', 'M'),
(4, 'Bob Miller', 'T'),
(5, 'Charlie Brown', 'M'),
(6, 'Diana Clark', 'T'),
(7, 'Eva Davis', 'M'),
(8, 'Frank White', 'T'),
(9, 'Grace Taylor', 'M'),
(10, 'Harry Jones', 'T'),
(11, 'Isaac Martinez', 'M'),
(12, 'Jill Anderson', 'T'),
(13, 'Kevin Harris', 'M'),
(14, 'Linda Wilson', 'T'),
(15, 'Mike Lee', 'M'),
(16, 'Nancy Carter', 'T'),
(17, 'Oscar Robinson', 'M'),
(18, 'Pamela Reed', 'T'),
(19, 'Quincy Turner', 'M'),
(20, 'Rachel Hall', 'T'),
(21, 'Samuel Green', 'M'),
(22, 'Tina Brown', 'T'),
(23, 'Ulysses Perez', 'M'),
(24, 'Valerie Moore', 'T'),
(25, 'Walter Evans', 'M'),
(26, 'Xena Taylor', 'T'),
(27, 'Yvonne Garcia', 'M'),
(28, 'Zachary Wright', 'T'),
(29, 'Sophia Kim', 'M'),
(30, 'Leo Davis', 'T'),
(31, 'Emma Johnson', 'M'),
(32, 'Noah Smith', 'T'),
(33, 'Ava Williams', 'M'),
(34, 'James Brown', 'T'),
(35, 'Olivia Jones', 'M'),
(36, 'Liam Taylor', 'T'),
(37, 'Mia Davis', 'M'),
(38, 'Ethan Wilson', 'T'),
(39, 'Aria Moore', 'M'),
(40, 'Jackson Lee', 'T'),
(41, 'Amelia Robinson', 'M'),
(42, 'Lucas Hall', 'T'),
(43, 'Ella Turner', 'M'),
(44, 'Carter Garcia', 'T'),
(45, 'Scarlett Perez', 'M'),
(46, 'Logan Smith', 'T'),
(47, 'Chloe Johnson', 'M'),
(48, 'Mason Brown', 'T'),
(49, 'Lily Davis', 'M'),
(50, 'Oliver Wilson', 'T')
go

-- Inserting 50 sample records into the TransactionMaster table
INSERT INTO TransactionMaster (DOT, ACID, BRID, TXN_TYPE, CHQ_NO, CHQ_DATE, TXN_AMOUNT, USERID)
VALUES 
('2023-01-15 08:30:00', 1, '001', 'CW', NULL, NULL, 500.00, 1),
('2023-01-16 09:45:00', 2, '002', 'CD', NULL, NULL, 1500.00, 2),
('2023-01-17 10:15:00', 3, '003', 'CQD', 101, '2023-01-17 10:20:00', 1000.00, 3),
('2023-01-18 11:30:00', 4, '004', 'CW', NULL, NULL, 800.00, 4),
('2023-01-19 12:45:00', 5, '005', 'CD', NULL, NULL, 2000.00, 5),
('2023-01-20 14:00:00', 6, '006', 'CQD', 102, '2023-01-20 14:05:00', 1200.00, 6),
('2023-01-21 15:15:00', 7, '007', 'CW', NULL, NULL, 300.00, 7),
('2023-01-22 16:30:00', 8, '008', 'CD', NULL, NULL, 1800.00, 8),
('2023-01-23 17:45:00', 9, '009', 'CQD', 103, '2023-01-23 17:50:00', 900.00, 9),
('2023-01-24 18:00:00', 10, '010', 'CW', NULL, NULL, 600.00, 10),
('2023-01-25 19:15:00', 11, '011', 'CD', NULL, NULL, 2500.00, 11),
('2023-01-26 20:30:00', 12, '012', 'CQD', 104, '2023-01-26 20:35:00', 1500.00, 12),
('2023-01-27 21:45:00', 13, '013', 'CW', NULL, NULL, 700.00, 13),
('2023-01-28 22:00:00', 14, '014', 'CD', NULL, NULL, 2200.00, 14),
('2023-01-29 23:15:00', 15, '015', 'CQD', 105, '2023-01-29 23:20:00', 1100.00, 15),
('2023-01-30 00:30:00', 16, '016', 'CW', NULL, NULL, 400.00, 16),
('2023-02-01 01:45:00', 17, '017', 'CD', NULL, NULL, 1600.00, 17),
('2023-02-02 02:00:00', 18, '018', 'CQD', 106, '2023-02-02 02:05:00', 800.00, 18),
('2023-02-03 03:15:00', 19, '019', 'CW', NULL, NULL, 1000.00, 19),
('2023-02-04 04:30:00', 20, '020', 'CD', NULL, NULL, 3000.00, 20),
('2023-02-05 05:45:00', 21, '001', 'CQD', 107, '2023-02-05 05:50:00', 2000.00, 21),
-- ... Continue with additional records up to 50
('2023-02-15 15:30:00', 41, '001', 'CW', NULL, NULL, 500.00, 41),
('2023-02-16 16:45:00', 42, '002', 'CD', NULL, NULL, 1500.00, 42),
('2023-02-17 17:15:00', 43, '003', 'CQD', 111, '2023-02-17 17:20:00', 1000.00, 43),
('2023-02-18 18:30:00', 44, '004', 'CW', NULL, NULL, 800.00, 44),
('2023-02-19 19:45:00', 45, '005', 'CD', NULL, NULL, 2000.00, 45),
('2023-02-20 21:00:00', 46, '006', 'CQD', 112, '2023-02-20 21:05:00', 1200.00, 46),
('2023-02-21 22:15:00', 47, '007', 'CW', NULL, NULL, 300.00, 47),
('2023-02-22 23:30:00', 48, '008', 'CD', NULL, NULL, 1800.00, 48),
('2023-02-23 00:45:00', 49, '009', 'CQD', 113, '2023-02-23 00:50:00', 900.00, 49),
('2023-02-24 01:00:00', 50, '010', 'CW', NULL, NULL, 600.00, 50)
go



