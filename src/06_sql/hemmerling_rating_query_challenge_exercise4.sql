select title, group_avg
from Movie, (
  select max(group_avg) as max_avg
  from Movie, (
    select Movie.mID, avg(stars) as group_avg
    from Rating, Movie
    where Rating.mID = Movie.mID
    group by Rating.mID
  ) as GroupRating
  where GroupRating.mID = Movie.mID
) as MaxRating,
(
  select Movie.mID, avg(stars) as group_avg
  from Rating, Movie
  where Rating.mID = Movie.mID
  group by Rating.mID
) as GroupRating
where GroupRating.group_avg = MaxRating.max_avg
and Movie.mID = GroupRating.mID
;
