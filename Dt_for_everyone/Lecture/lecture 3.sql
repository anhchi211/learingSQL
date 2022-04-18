USE D4E31
/* Delete the tables if they already exist */
drop table if exists College;
drop table if exists Student;
drop table if exists Apply;

/* Create the schema for our tables */
create table College(Cname varchar(100), state varchar(100), enrollment int);
create table Student(sID int, sName varchar(100), GPA float, sizeHS int);
create table Apply(
	sID int,
	cName varchar(100), 
	major varchar(100), 
	decision varchar(100)
);


/* Populate the tables with our data */
insert into College values('Stanford', 'CA', 15000);
insert into College values('Berkeley', 'CA', 36000);
insert into College values('MIT', 'MA', 10000);
insert into College values('Cornell', 'NY', 21000);	

insert into Student values(201, 'Sarah Martinez', 3.3, 1000);
insert into Student values(202, 'Daniel Lewis', 3.9, 1500);
insert into Student values(203, 'Brittany Harris', 3.8, 1200);
insert into Student values(204, 'Mike Anderson', 2.4, 1400);
insert into Student values(205, 'Chris Jackson', 3.6, 900);
insert into Student values(206, 'Elizabeth Thomas', 3.2, 400);
insert into Student values(207, 'James Cameron', 2.9, 1600);
insert into Student values(208, 'Ashley White', 2.7, 2000);

insert into Apply values(201, 'Stanford', 'CS', 'Y');
insert into Apply values(201, 'Stanford', 'EE', 'N');
insert into Apply values(201, 'Berkeley', 'CS', 'Y');
insert into Apply values(201, 'Cornell', 'EE', 'Y');
insert into Apply values(202, 'Berkeley', 'biology', 'N');
insert into Apply values(203, 'MIT', 'bioengineer', 'Y');
insert into Apply values(203, 'Cornell', 'bioengineer', 'N');
insert into Apply values(203, 'Cornell', 'CS', 'Y');	
insert into Apply values(203, 'Cornell', 'EE', 'N');
insert into Apply values(204, 'Stanford', 'CS', 'Y');
insert into Apply values(205, 'Stanford', 'EE', 'Y');
insert into Apply values(205, 'Cornell', 'EE', 'N');
insert into Apply values(205, 'Stanford', 'EE', 'Y');
insert into Apply values(206, 'Stanford', 'history', 'Y');
insert into Apply values(206, 'Cornell', 'history', 'Y');
insert into Apply values(207, 'Cornell', 'psychology', 'Y');
insert into Apply values(208, 'MIT', 'CS', 'Y');

select top 10 * from Apply where cName = 'Stanford'
select top 10 * from College

Select *
From Student

Select *
From [Apply]


/*IDs, names, and GPAs of students with GPA > 3.6*/
Select sID, sName, GPA From Student Where GPA > 3.6


/*Select sID, sName, GPA From Student Where GPA > 3.6*/
Select *
From Apply, Student
Where Apply.sID = Student.sID

Select Distinct sName, major
From Apply, Student
Where Apply.sID = Student.sID

/*Names and GPAs of students with sizeHS < 1000 applying to CS at Stanford, and the
application decision*/

Select sName, GPA, decision
From Apply, Student
Where Apply.sID = Student.sID and major='CS' and cName='Stanford' 

/*All large (enrollment > 20000) campuses with CS applicants*/
      
SELECT distinct Apply.cName
From Apply, College 
Where Apply.cName = College.Cname and major='CS' and enrollment > 20000 

SELECT *
From Apply, College 
Where Apply.cName = College.Cname

SELECT *
From Student
Order by sName

/*Application information*/
/*a. Sort by decreasing GPA*/
SELECT *
From Student, [Apply]
Where Apply.sID = Student.sID
ORDER BY GPA DESC

/*b. Increasing enrollment*/
SELECT *
From Apply, College 
Where Apply.cName = College.Cname
Order by enrollment

/*Add scaled GPA(GPA*(sizeHS/1000.0)) based on sizeHS*/
select *, GPA*(sizeHS/1000.0) As scaled_GPA


/*IDs and names of students applying to CS.*/
Select sName, sID
From Student
Where sID in (select sID from [Apply] where major='CS')

/*Names of students applying to CS*/
Select sName
From Student
Where sID in (select sID from [Apply] where major='CS')

/*Students who applied to CS but not EE*/
Select sName
From Student
WHERE  sID in (select sID from [Apply] where major='CS') and sID not in (select sID from [Apply] where major='EE')

/* Student with highest GPA*/
Select *
From Student
where GPA >= ALL(select GPA from Student)

/*Students not from the smallest HS*/
Select *
From Student
Where GPA > (Select distinct GPA
                From Student
                   where GPA <= All (select GPA from Student) )












