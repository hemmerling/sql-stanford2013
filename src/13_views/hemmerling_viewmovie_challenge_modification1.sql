update LateRating set mID = mID+50, title = "Worth seeing", stars = 5 
where stars >= 3; 
update LateRating set title = "Mediocre", ratingDate = null 
where stars = 2;
