/* Select mID of movies with average rating >=4 */
select mID from 
(
select Rating.mID, avg(stars) as average
from Movie, Rating where Movie.mID=Rating.mID
group by Rating.mID
) 
where average>=4;

