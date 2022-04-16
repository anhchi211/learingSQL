CREATE DATABASE Homework
Use Homework
create table Movie(mID int, title text, year int, director text);
create table Reviewer(rID int, name text);
create table Rating(rID int, mID int, stars int, ratingDate date);

/* Populate the tables with our data */
insert into Movie values(101, 'Gone with the Wind', 1939, 'Victor Fleming');
insert into Movie values(102, 'Star Wars', 1977, 'George Lucas');
insert into Movie values(103, 'The Sound of Music', 1965, 'Robert Wise');
insert into Movie values(104, 'E.T.', 1982, 'Steven Spielberg');
insert into Movie values(105, 'Titanic', 1997, 'James Cameron');
insert into Movie values(106, 'Snow White', 1937, null);
insert into Movie values(107, 'Avatar', 2009, 'James Cameron');
insert into Movie values(108, 'Raiders of the Lost Ark', 1981, 'Steven Spielberg');

insert into Reviewer values(201, 'Sarah Martinez');
insert into Reviewer values(202, 'Daniel Lewis');
insert into Reviewer values(203, 'Brittany Harris');
insert into Reviewer values(204, 'Mike Anderson');
insert into Reviewer values(205, 'Chris Jackson');
insert into Reviewer values(206, 'Elizabeth Thomas');
insert into Reviewer values(207, 'James Cameron');
insert into Reviewer values(208, 'Ashley White');

insert into Rating values(201, 101, 2, '2011-01-22');
insert into Rating values(201, 101, 4, '2011-01-27');
insert into Rating values(202, 106, 4, null);
insert into Rating values(203, 103, 2, '2011-01-20');
insert into Rating values(203, 108, 4, '2011-01-12');
insert into Rating values(203, 108, 2, '2011-01-30');
insert into Rating values(204, 101, 3, '2011-01-09');
insert into Rating values(205, 103, 3, '2011-01-27');
insert into Rating values(205, 104, 2, '2011-01-22');
insert into Rating values(205, 108, 4, null);
insert into Rating values(206, 107, 3, '2011-01-15');
insert into Rating values(206, 106, 5, '2011-01-19');
insert into Rating values(207, 107, 5, '2011-01-20');
insert into Rating values(208, 104, 3, '2011-01-02');

Select * from Movie
SELECT * FROM Rating
SELECT * FROM Reviewer

/*Change data type*/
ALTER TABLE Movie
ALTER COLUMN title varchar(100)

ALTER TABLE Movie
ALTER COLUMN director varchar(100)

ALTER TABLE Reviewer
ALTER COLUMN name varchar(100)

/*1.	Find the titles of all movies directed by Steven Spielberg./

Select *
From Movie
Where director = 'Steven Spielberg'


Select *
From Movie,Rating
Where Movie.mID=Rating.mID

/*2.Find all years that have a movie that received a rating of 4 or 5, and sort them in increasing order. */

Select distinct (year)
From Movie,Rating
Where Movie.mID=Rating.mID and stars in (4,5)
Order by year

/*3.Find the titles of all movies that have no ratings.*/

Select title
From Movie
Where Movie.mID not in (Select mID from Rating)

/*4.Some reviewers didn't provide a date with their rating. 
Find the names of all reviewers who have ratings with a NULL value for the date.*/

Select name
From Reviewer, Rating
Where Reviewer.rID = Rating.rID 
     and ratingDate is null

 select name from reviewer where rID in(select rID from rating where ratingDate is null) 

 /*5.Write a query to return the ratings data in a more readable format: 
     reviewer name, movie title, stars, and ratingDate. 
     Also, sort the data, first by reviewer name, then by movie title, and lastly by number of stars. */

     Select name, title, stars, ratingDate
     From Movie, Rating, reviewer
     Where Movie.mId = Rating.mId AND Reviewer.rId = Rating.rId
     Order by name, title, stars

/*6.	For all cases where the same reviewer rated the same movie twice 
        and gave it a higher rating the second time, return the reviewer's 
        name and the title of the movie. */

        Select title, name
        From Movie,Reviewer,Rating
        Where Movie.mId = Rating.mId AND Reviewer.rId = Rating.rId 

        
        
    










