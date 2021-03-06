use D4E31

/*Join Operators*/

 /*Student names and majors for which they've applied*/

 Select Distinct S.sName, A.major
 From Student S
 Inner JOIN Apply A on S.sID = A.sID

 Select *
 From [Apply], Student

 /*Names and GPAs of students with sizeHS < 1000 applying to CS at Stanford*/

 Select sName, GPA
 From Student S
 JOIN Apply A on S.sID = A.sID 
 WHERE sizeHS < 1000 and major = 'CS' and cName = 'Stanford'

 /*Application info: ID, name, GPA, college name, enrollment*/

 select distinct Apply.sID, sName, GPA, Apply.cName, enrollment
 from (Apply join Student on Apply.sID = Student.sID )
 join College on Apply.cName = College.Cname 




 
 









