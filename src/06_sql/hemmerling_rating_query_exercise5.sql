/* Q4 Write a query to return the ratings data in a more readable format: 
   reviewer name, movie title, stars, and ratingDate. 
   Also, sort the data, first by reviewer name, 
   then by movie title, and lastly by number of stars. */
select distinct name, title, stars, ratingdate from Reviewer, Rating, Movie where Rating.mID = Movie.mID and Rating.rID = Reviewer.rID order by name, title, stars;