/* Q4 Some reviewers didn't provide a date with their rating. 
   Find the names of all reviewers who have ratings with a NULL value for the date. */
select distinct name from Reviewer, Rating, Movie where Rating.ratingDate is null and Rating.mID = Movie.mID and Rating.rID = Reviewer.rID;