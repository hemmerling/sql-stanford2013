/* Q3 For all movies that have an average rating of 4 stars or higher, 
   add 25 to the release year. 
   (Update the existing tuples; don't insert new tuples.)     
   Analysis -> Subtasks:       
   1. Select mID of movies with average rating >=4
   2, Compute average rating of each movie */

update Movie set year=year+25 where mID in (
select mID from 
(
select Rating.mID, avg(stars) as average
from Movie, Rating where Movie.mID=Rating.mID
group by Rating.mID
) 
where average>=4
);

