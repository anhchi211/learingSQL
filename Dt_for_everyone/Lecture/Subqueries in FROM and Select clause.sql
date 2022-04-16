Use D4E31
/*Subqueries in FROM and SELECT clause*/

/*Students whose scaled GPA (GPA*(sizeHS/1000.0)) changes 
GPA by more than 1.*/

Select *
From Student
Where abs (GPA * (sizeHS/1000.0) - GPA) > 1

Select *
From (Select * From Student
           Where abs (GPA * (sizeHS/1000.0) - GPA) > 1) A

/*Colleges paired with the highest GPA of their applicants*/

SELECT Distinct Apply.cName, GPA
From Student,Apply
WHERE Student.sID = APPLY.sID 
   AND GPA > = all (Select TOP 1 GPA from Apply A, Student S 
                                where A.sID=S.sID and [Apply].cName = A.cName
                                ORDER By GPA Desc ) 

