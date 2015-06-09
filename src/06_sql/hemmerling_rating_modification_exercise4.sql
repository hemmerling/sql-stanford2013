/* Q4 Remove all ratings 
   where the movie's year is before 1970 or after 2000, 
   and the rating is fewer than 4 stars. */
Delete from Rating where Rating.stars<4 and mID in ( 
select mid from Movie where Movie.year<1970 or Movie.year>2000 
);  
