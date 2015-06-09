/* Q8 List movie titles and average ratings, from highest-rated to lowest-rated. 
   If two or more movies have the same average rating, 
   list them in alphabetical order. */
select distinct title, avg(stars) from Movie, Rating where Movie.mID = Rating.mID group by title order by avg(stars) desc;

