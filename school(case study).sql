/***************************************
case study :
 name		: school database
 author		: Harish Madapakula
 created    : 14 nov 2023
 purpose    :learning sql
***************************************/
--creating School databse--
create database school
go
 --mapping school--
 use school
 go


 -- creating tables--

 --creating CourseMaster table--
 create table CourseMaster
 (
	 CID		Integer			Primary key, 
	 Name		Varchar(40)		NOT NULL, 
	Category    Char(1)			null check(Category = 'B' or  Category = 'M' or Category = 'A'), 
	Fee       Smallmoney        NOT NULL check(fee>0)

 
 )
 go

 --reading course master table
 select * from CourseMaster
 go


-- Sample records for CourseMaster table
	INSERT INTO CourseMaster (CID, Name, Category, Fee)VALUES
	(1, 'Introduction to Programming', 'B', 30),
	(2, 'Database Management', 'M', 50),
	(3, 'Advanced Algorithms', 'A', 75),
	(4, 'Web Development Basics', 'B', 25),
	(5, 'Data Science Fundamentals', 'M', 60),
	(6, 'Machine Learning Techniques', 'A', 80),
	(7, 'Software Engineering Principles', 'B', 35),
	(8, 'Network Security', 'M', 55),
	(9, 'Artificial Intelligence Applications', 'A', 70),
	(10, 'Java Programming', 'B', 28),
	(11, 'SQL Query Optimization', 'M', 48),
	(12, 'Cloud Computing Essentials', 'A', 65),
	(13, 'C++ Programming', 'B', 32),
	(14, 'Data Warehousing', 'M', 52),
	(15, 'Robotics and Automation', 'A', 85),
	(16, 'Python for Data Analysis', 'B', 38),
	(17, 'Software Testing and QA', 'M', 58),
	(18, 'Natural Language Processing', 'A', 72),
	(19, 'JavaScript Basics', 'B', 22),
	(20, 'Mobile App Development', 'M', 45),
	(21, 'Blockchain Fundamentals', 'A', 78),
	(22, 'Front-end Web Development', 'B', 40),
	(23, 'Big Data Analytics', 'M', 68),
	(24, 'Cybersecurity Fundamentals', 'A', 90),
	(25, 'Introduction to AI Ethics', 'B', 33),
	(26, 'Object-Oriented Programming', 'M', 53),
	(27, 'Quantum Computing Concepts', 'A', 82),
	(28, 'Responsive Web Design', 'B', 42),
	(29, 'Computer Vision', 'M', 62),
	(30, 'IoT (Internet of Things)', 'A', 88),
	(31, 'Data Structures and Algorithms', 'B', 36),
	(32, 'Software Project Management', 'M', 56),
	(33, 'Deep Learning Fundamentals', 'A', 76),
	(34, 'HTML5 and CSS3 Basics', 'B', 26),
	(35, 'Mobile Security', 'M', 50),
	(36, 'Business Intelligence', 'A', 73),
	(37, 'Game Development Fundamentals', 'B', 29),
	(38, 'Linux System Administration', 'M', 49),
	(39, 'Ethical Hacking Techniques', 'A', 80),
	(40, 'UX/UI Design Principles', 'B', 31),
	(41, 'Cloud Security', 'M', 54),
	(42, 'Augmented Reality Basics', 'A', 79),
	(43, 'PHP Web Development', 'B', 39),
	(44, 'Data Mining Techniques', 'M', 61),
	(45, 'IoT Security', 'A', 87),
	(46, 'AngularJS Framework', 'B', 41),
	(47, 'Network Administration', 'M', 57),
	(48, 'Human-Computer Interaction', 'A', 74),
	(49, 'Swift Programming', 'B', 27),
	(50, 'Data Governance', 'M', 51)
go


--creating table StudentMaster--
create table StudentMaster
(
	SID				TinyInt			Primary Key, 
	StudentName		Varchar(40)		NOT NULL,
	origin			Char(1)         Not Null check(origin = 'l' or origin = 'f'),
	Type			Char(1)         Not Null check(Type='u' or Type = 'g')
	)
go

-- reading StudentMaster--
 select * from StudentMaster
 go

 --creating table EnrollMnetMaster--
 create table EnrollMentMaster
 (

	CID		Integer		Foreign Key references CourseMaster(CID),
	SID		Tinyint		Foreign Key references StudentMaster(SID),
	DOE		DateTime	NOT NULL ,
	FWaF	Bit			Not NULL ,
	Grade	Char(1)		Not NUll check(grade='O' or grade='A' or grade='B' or grade='C'),
)
 go

 -- reading EnrollMentMaster--
 select * from EnrollMentMaster
 go

 -- Sample records for EnrollmentMaster table
	INSERT INTO EnrollmentMaster (CID, SID, DOE, FWaF, Grade)VALUES
	(12, 28, '2023-01-05', 1, 'A'),
	(8, 36, '2023-02-10', 0, 'B'),
	(31, 15, '2023-03-15', 1, 'O'),
	(45, 7, '2023-04-20', 0, 'C'),
	(23, 42, '2023-05-25', 1, 'A'),
	(2, 19, '2023-06-30', 0, 'B'),
	(50, 48, '2023-07-05', 1, 'O'),
	(16, 5, '2023-08-10', 0, 'C'),
	(37, 9, '2023-09-15', 1, 'A'),
	(29, 22, '2023-10-20', 0, 'B'),
	(14, 46, '2023-11-25', 1, 'O'),
	(41, 33, '2023-12-30', 0, 'C'),
	(6, 13, '2024-01-05', 1, 'A'),
	(25, 37, '2024-02-10', 0, 'B'),
	(48, 26, '2024-03-15', 1, 'O'),
	(18, 50, '2024-04-20', 0, 'C'),
	(35, 3, '2024-05-25', 1, 'A'),
	(10, 41, '2024-06-30', 0, 'B'),
	(39, 8, '2024-07-05', 1, 'O'),
	(4, 16, '2024-08-10', 0, 'C'),
	(27, 38, '2024-09-15', 1, 'A'),
	(49, 29, '2024-10-20', 0, 'B'),
	(22, 14, '2024-11-25', 1, 'O'),
	(44, 43, '2024-12-30', 0, 'C'),
	(1, 6, '2025-01-05', 1, 'A'),
	(34, 25, '2025-02-10', 0, 'B'),
	(47, 30, '2025-03-15', 1, 'O'),
	(20, 47, '2025-04-20', 0, 'C'),
	(33, 11, '2025-05-25', 1, 'A'),
	(9, 34, '2025-06-30', 0, 'B'),
	(42, 17, '2025-07-05', 1, 'O'),
	(15, 45, '2025-08-10', 0, 'C'),
	(30, 1, '2025-09-15', 1, 'A'),
	(21, 39, '2025-10-20', 0, 'B'),
	(3, 24, '2025-11-25', 1, 'O'),
	(46, 32, '2025-12-30', 0, 'C'),
	(7, 4, '2026-01-05', 1, 'A'),
	(36, 27, '2026-02-10', 0, 'B'),
	(13, 49, '2026-03-15', 1, 'O'),
	(40, 18, '2026-04-20', 0, 'C'),
	(26, 35, '2026-05-25', 1, 'A'),
	(49, 10, '2026-06-30', 0, 'B'),
	(24, 44, '2026-07-05', 1, 'O'),
	(50, 2, '2026-08-10', 0, 'C'),
	(5, 21, '2026-09-15', 1, 'A'),
	(38, 12, '2026-10-20', 0, 'B'),
	(11, 31, '2026-11-25', 1, 'O'),
	(43, 50, '2026-12-30', 0, 'C')
go








