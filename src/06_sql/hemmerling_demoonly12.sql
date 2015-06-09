/* Compute average rating of each movie */
select Rating.mID, avg(stars) as average
from Movie, Rating where Movie.mID=Rating.mID
group by Rating.mID

