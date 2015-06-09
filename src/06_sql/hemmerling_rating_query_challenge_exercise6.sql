select director, title, max(stars) as max_star
from Movie, Rating
where Movie.mID = Rating.mID and director is not NULL
group by director;