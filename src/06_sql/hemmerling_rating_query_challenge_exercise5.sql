select title, group_avg
from Movie, (
  select min(group_avg) as min_avg
  from Movie, (
    select Movie.mID, avg(stars) as group_avg
    from Rating, Movie
    where Rating.mID = Movie.mID
    group by Rating.mID
  ) as GroupRating
  where GroupRating.mID = Movie.mID
) as minRating,
(
  select Movie.mID, avg(stars) as group_avg
  from Rating, Movie
  where Rating.mID = Movie.mID
  group by Rating.mID
) as GroupRating
where GroupRating.group_avg = minRating.min_avg
and Movie.mID = GroupRating.mID
;