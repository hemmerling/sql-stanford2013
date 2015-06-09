update LateRating set stars = stars - 2 where stars > 2; 
update LateRating set mID = 100, stars = stars + 2; 
update LateRating set ratingDate = null, stars = stars + 2;
select * from LateRating;