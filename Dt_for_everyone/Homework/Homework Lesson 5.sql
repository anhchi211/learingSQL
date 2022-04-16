
/*For each movie that has at least one rating, find the highest number of stars that movie received. 
Return the movie title and number of stars. Sort by movie title.*/

SELECT title, Max(stars) as Max_Stars
FROM Rating
LEFT JOIN Movie ON Movie.mID = Rating.mID
GROUP BY title
ORDER BY title

/*For each movie that has at least one rating, find the highest number of stars that movie received. */
/*Return the movie title and number of stars. Sort by movie title.*/

SELECT title, (MAX(stars) - MIN(stars)) AS rating_spread
FROM Movie
INNER JOIN Rating USING(mId)
GROUP BY mId
ORDER BY rating_spread DESC, title

/*Find the difference between the average rating of movies released before 1980 and the average rating of movies released after 1980. 
(Make sure to calculate the average rating for each movie, then the average of those averages for movies before 1980 and movies after.
 Don't just calculate the overall average rating before and after 1980.)*/


 /*Nhân viên có mã là “123456789” thay đổi địa chỉ thành “123 LýThường Kiệt F.14 Q.10”*/
 
 USE D4E31

 UPDATE EMPLOYEE
 SET Address = 123, N'Lý Thường Kiệt', F.14, Q.10 
 Where Ssn = '123456789'

Select * From EMPLOYEE
Select * From DEPENDENT
 /*Mối quan hệ của nhân viên “Franklin” với người phụ thuộc “Joy” thay đổi thành “Friend”*/

 UPDATE DEPENDENT
 SET Relationship = 'Friend'
 Where Dependent_name = 'Joy' and Essn in (Select Ssn from EMPLOYEE 
                                                   Where FName = 'Franklin')


/*Tất cả nhân viên của phòng ban có ít nhất một vị trí ở “Houston” được tăng lương gấp đôi*/

UPDATE EMPLOYEE
SET Salary = Salary * 2
WHERE Dno IN (SELECT D.DNumber FROM DEPARTMENT D, DEPT_LOCATIONS L
WHERE D. Dnumber = L. Dnumber
AND L.Dlocation ='Houston');


/*Trừ 5% lương cho các nhân viên có tổng số dự án tham gia ít hơn 2*/

UPDATE EMPLOYEE
SET Salary = Salary - 0.05 * Salary
WHERE ssn IN ( SELECT essn FROM WORKS_ON GROUP BY essn HAVING COUNT (pno)< 2) 
