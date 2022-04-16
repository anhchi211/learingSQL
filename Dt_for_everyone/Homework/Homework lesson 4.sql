
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
