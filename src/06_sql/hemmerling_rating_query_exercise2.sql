/* Q2 Find all years that have a movie that received a rating of 4 or 5, 
   and sort them in increasing order.  */
select distinct year from Rating, Movie where Rating.stars>=4 and Rating.mID = Movie.mID ORDER by Movie.year;
